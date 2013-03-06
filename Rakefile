require 'rake'
require 'htmldoc'

# Template for the post
post_template = <<END_TEMPLATE
---
layout: post
title: POST_TITLE
---

END_TEMPLATE

# Helper method for user input
def ask(message)
  print message
  STDIN.gets.chomp
end

desc "Update Site"
task :update do
  sh "jekyll --no-auto"
end

desc 'Make a new draft post'
task :new do
  title = ask("Title: ")
  filename = title.downcase.gsub(/[^a-z0-9]/,"-")
  filepath = "_drafts/#{Time.now.strftime('%Y-%m-%d-')}#{filename}.markdown"
  File.open(filepath, 'w+') do |f|
    f << post_template.gsub(/POST_TITLE/, title)
  end
  sh "git add #{filepath}"
end
