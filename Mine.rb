file0 = '/home/ieremius/prd/doc/kanji/dat/wikipedia_yomi.csv'
separator0 = ','
hash0 = Hash.new
File.open(file0) do |file|
	file.each_line do |line|
		array = line.strip.split(separator0)
		hash0[array[0]] = array[1]
	end
end

file1 = '/home/ieremius/prd/doc/kanji/dat/3.tsv'
separator1 = "\t"
hash1 = Hash.new
File.open(file1) do |file|
	file.each_line do |line|
		array = line.strip.split(separator1)
		hash1[array[1]] = array[0]
	end
end

hash0.keys.each do |key|
	puts [hash1[key], key, hash0[key]].join(',')
end
