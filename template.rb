def apply_template!
  template 'Gemfile', force: true

  after_bundle do
    set_database_password_and_db_create
    git_commit
  end
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

apply_template!
