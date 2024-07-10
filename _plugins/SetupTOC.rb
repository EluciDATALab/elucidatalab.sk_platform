module Jekyll
  module SetupTOC
    def add_class_to_h2(input)
        updated_input = input.gsub(/<h2 id="(.*?)">(.*?)<\/h2>/) do |match|
          id = Regexp.last_match(1)
          text = Regexp.last_match(2)
          updated_tag = "<h2 id='#{id}' class='text-3xl font-bold text-gray-700'>#{text}</h2>"
          updated_tag
        end
        updated_input
      end

    def generate_toc(input)
      toc = []
      input.scan(/<h2 id='(.*?)' class='text-3xl font-bold text-gray-700'>(.*?)<\/h2>/) do |id, text|
        toc << "\n<li><a href=\"##{id}\" class=\"text-blue-500 hover:underline\">#{text}</a></li>"
      end
      "<ul class='list-disc pl-12'>#{toc.join}</ul>"
    end
  end
end

Liquid::Template.register_filter(Jekyll::SetupTOC)
