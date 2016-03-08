require "laters/version"
require 'JSON'

module Laters
	class Simulators
		def list_devices

			devices = JSON.parse `xcrun simctl list -j devices`

			device_number = 0
			
			devices['devices'].each do |runtime, runtime_devices|
		    	runtime_devices.each do |device|
		      		puts "#{device_number}) (#{device['udid']}) - #{device['name']}"

		      		device_number += 1
		    	end
		  	end
		end
	end
end
