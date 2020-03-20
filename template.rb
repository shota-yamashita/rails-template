def apply_template!
  p 'start apply rails-template'

  template 'Gemfile', force: true

  p 'finish apply rails-template!'
end

apply_template!
