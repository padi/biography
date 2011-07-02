namespace :erb do
  namespace :to do
    desc "Converts all .html.erb files to .html.haml"
    task :haml do
      file = `find . -iname *.html.erb`
      file.each_line do |file|
        file.strip!
        `bundle exec html2haml #{file} | cat > #{file.gsub(/\.erb$/, ".haml")}`
        puts "Removing #{file}\n"
        `rm #{file}`
      end
    end  
  end
end