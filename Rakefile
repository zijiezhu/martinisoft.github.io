require 'rake'

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

desc 'Publish draft post'
task :publish do
  files = Dir.glob("_drafts/*.markdown")
  case files.size
  when 0
    puts "Nothing to publish :("
  when 1
    post_data = files.first.match(/(?<date>\d{4}-\d{2}-\d{2})-(?<title>.+).markdown$/)
    if ask("Do you want to publish #{post_data[:title]}? (Y/n)") == 'Y'
      sh "git mv #{files.first} '_posts'"
      # FileUtils.mv files.first, "_posts"
    end
  end
end
