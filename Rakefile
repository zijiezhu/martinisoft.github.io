require 'rake'
require 'htmldoc'

desc "Update Site"
task :update do
  sh "jekyll"
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
