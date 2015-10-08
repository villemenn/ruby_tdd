def translate(phrase)
	vowel = ['a','e','i','o','u']
	words = phrase.split(/\W+/)
	words.map! {|c| 
	
	until vowel.any? {|x| x == c[0]}
		if c[0] == 'q'
			b = c.slice!(0..1)
		else
			b = c.slice!(0)
		end
		c += b
	end
	c += 'ay'
}
	return words.join(" ")
end