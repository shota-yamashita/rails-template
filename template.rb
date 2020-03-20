def apply_template!
  template 'Gemfile', force: true

  after_bundle do
    git_commit
  end
end

def git_commit
  return unless yes? 'git commit? [y/n]'

  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end

apply_template!
