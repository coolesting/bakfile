require 'rake'
require 'lib.rb'

bf = Bakfile::Basic.new
HOMEPATH = File.expand_path('~/')
BASEPATH = Dir.pwd + '/store'

#update the backup file to store repository
task :update do |t|
	update_file HOMEPATH, BASEPATH
 	`git add -A && git commit -m 'updating file . ' && git push`
end

#install the vim application
task :install do |t|
	update_file BASEPATH, HOMEPATH
end

def update_file(from_path, to_path) 
	files = Dir[from_path + "/.vim*"]
	files << from_path + '/.bashrc'
	files.each do | file |
		FileUtils.cp_r file, to_path 
		puts "updating file " + file
	end
end
