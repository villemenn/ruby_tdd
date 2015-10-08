
def echo(word)
	return word
end

def shout(what)
	return what.upcase
end

def repeat(word, number=2)
	word + (' ' + word)*(number-1)
end

def start_of_word(word, times)
	word[0..times-1]
end

def first_word(word)
	word.split(" ").first
end

def titleize(words)
    words = words.split(' ')
    title = words[0].capitalize
    words[1..-1].each do |word|
        if word.downcase == 'and' or word.downcase == 'the' or word.downcase == 'over'
            title += ' ' + word
        else
            title += ' ' + word.capitalize
        end
    end
    title
end