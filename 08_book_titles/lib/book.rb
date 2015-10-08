class Book
	attr_accessor :title

	def title= (new_title)
		little_words = ["a", "an", "the", "at", "by", "for", "in", "of",
  					"on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
  		title = new_title.split.map { |e| little_words.include?(e) ? e: e.capitalize }
  		title[0] = title[0].capitalize
  		@title = title.join(" ")
	end
	
end