namespace :erb do
  namespace :to do
    task :haml do
      file = `find . -iname *.html.erb`
      file.each_line do |file|
        file.strip!
        `bundle exec html2haml #{file} | cat > #{file.gsub(/\.erb$/, ".haml")}`
        `rm #{file}`
      end
    end  
  end
end