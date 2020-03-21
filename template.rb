def apply_template!
  add_template_repository_to_source_path

  template 'Gemfile', force: true

  remove_unuse_files

  apply 'spec/template.rb'
  template 'rubocop.yml'

  after_bundle do
    set_database_password_and_db_create
    git_commit
  end
end

def remove_unuse_files
  remove_dir 'app/channels'
  remove_dir 'app/jobs'
  remove_file 'config/cable.yml'
  remove_file 'config/storage.yml'
  remove_dir 'storage'
  remove_dir 'test'
end

def set_database_password_and_db_create
  inside 'config' do
    # TODO: Don't set password of production environment.
    mysql_password = ask("What database password?")
    gsub_file "database.yml", /password:/, "password: #{mysql_password}"
  end

  rails_command("db:create")
end

def git_commit
  return unless yes? 'git commit? [y/n]'

  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end

require "fileutils"
require "shellwords"

# Add this template directory to source_paths so that Thor actions like
# copy_file and template resolve against our source files. If this file was
# invoked remotely via HTTP, that means the files are not present locally.
# In that case, use `git clone` to download them to a local temporary dir.
def add_template_repository_to_source_path
  if __FILE__ =~ %r{\Ahttps?://}
    require "tmpdir"
    source_paths.unshift(tempdir = Dir.mktmpdir("rails-template-"))
    at_exit { FileUtils.remove_entry(tempdir) }
    git clone: [
      "--quiet",
      "https://github.com/shota-yamashita/rails-template.git",
      tempdir
    ].map(&:shellescape).join(" ")

    if (branch = __FILE__[%r{rails-template/(.+)/template.rb}, 1])
      Dir.chdir(tempdir) { git checkout: branch }
    end
  else
    source_paths.unshift(File.dirname(__FILE__))
  end
end

apply_template!
