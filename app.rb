require 'googler'

google = Google.new("49EB4B94127F7C7836C96DEB3F2CD8A6D12BDB71")

results = google.search(q="MooTools")

File.open('output.txt', 'w') { |file| file.write( results ) }
