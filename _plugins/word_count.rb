module Jekyll
    module WordCount
      def count_words(input)
        input.split.size
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::WordCount)