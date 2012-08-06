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

# Still a work in progress
desc "Convert Resume File"
task :resume do
  # pdf = PDF::HTMLDoc.new
  # pdf.set_option :bodycolor, :white
  # pdf.set_option :toc, false
  # pdf.set_option :portrait, true
  # pdf.set_option :links, false
  # pdf.set_option :webpage, true
  # pdf.set_option :left, '2cm'
  # pdf.set_option :right, '2cm'
  # pdf << File.read("resume.html")
  # File.open("resume2.pdf", "w+") {|f| f.write(pdf.generate)}
  
  # Flying Saucer!
  # class_path = ".:#{File.join(File.expand_path(File.dirname(__FILE__)), "lib", "flyingsaucer")}/bin"
  # Dir.glob("lib/flyingsaucer/jar/*.jar") do |jar|
  #   class_path << ":#{jar}"
  # end
  # sh "/usr/bin/env java -cp #{class_path} Xhtml2Pdf resume.html resume2.pdf"
  
  # wxhtmltopdf
  sh "wxhtmltopdf http://martinisoftware.com/resume.html resume2.pdf"
end
