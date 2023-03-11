function jest
	node node_modules/.bin/jest --jest.config.js --coverage=false --runInBand -u -- $argv 
end
