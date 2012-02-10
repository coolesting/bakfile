require 'rake'
require Dir.pwd + "/bakfile.rb"

bf = Bakfile::Basic.new
bf.get_config('config.bf')

#update the backup file to store repository
task :update do |t|
	Dir.mkdir(bf.configs['repos']) unless File.exist? bf.configs['repos']
	bf.get_files("files.bf").each do | f |
		FileUtils.cp_r f, bf.configs['repos']
		puts "updating file #{f}"
	end
	if ENV['-c']
		`git add -A && git commit -m 'updating files . ' && git push`
	end
end

#recovery the file to the specifying directory
task :install do |t|
	unless File.exist? bf.configs['repos']
		puts "No repository at #{bf.configs['repos']}"
		exit
	end
	bf.get_files("files.bf").each do | f |
		path = bf.get_path(f) 
		if path != nil
			FileUtils.cp_r path, f
			puts "updating file #{f}"
		end
	end
end
