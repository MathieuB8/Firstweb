for n in (1..8)
	nomfichier = "public/articles/#{n}.txt"
	#nomfichier = "public/articles/5.txt"
	titre = File.open(nomfichier,"r").first
	print "Le titre est : " + titre
	corps = File.open(nomfichier,"r")

	corps= File.readlines(nomfichier)
	#corps = corps.join
	corps = corps[1..-1]
	corps = corps.join
	print "taille est "
	corps_size =  corps.size
	puts corps_size
	corps = corps[0..100]
	print "Le corps est : "
	puts corps
	if n < 8
		puts "\n"
	end

end


