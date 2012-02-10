module Bakfile
	class Basic

		attr_accessor :configs

		def initialize
			@configs = {}
		end

		def get_config file
			File.read(file).split("\n").each do | f |
				key, val = f.split("=")
				@configs[key] = val
			end

			@configs['repos'] = configs.include?('repos') ? File.expand_path(@configs['repos']) : File.expand_path('store')
		end

		def get_files file
			files = []
			File.read(file).split("\n").each do | f |
				files += Dir[File.expand_path(f)]
			end
			files
		end

		def get_path file
			path = @configs['repos'] + '/' + file.split('/').last
			File.exist?(path) ? path : nil
		end

	end
end
