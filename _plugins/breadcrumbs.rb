module Jekyll
  module BreadcrumbsFilter
    def generate_breadcrumbs(page)
      url = page['url']
      title = page['title']
      crumbs = url.split('/').reject(&:empty?)
      breadcrumbs = []

      breadcrumbs << '<a href="/" class="text-black hover:underline">Home</a>'

      if page['collection'] == 'posts'
        breadcrumbs << '/ <a href="/blogs" class="text-red-600 hover:underline">Blogs</a>'
      elsif page['collection'] == 'skits'
        breadcrumbs << '/ <a href="/skits" class="text-blue-600 hover:underline">Starter Kits</a>'
      end

      crumbs.each_with_index do |crumb, index|
        next if crumb == 'blogs' || crumb == 'skits'

        if index == crumbs.size - 1
          breadcrumbs << " / <span>#{title}</span>"
        else
          href = "/" + crumbs[0..index].join('/')
          breadcrumbs << " / <a href=\"#{href}\" class=\"text-black hover:underline\">#{crumb.capitalize}</a>"
        end
      end

      breadcrumbs.join
    end
  end
end

Liquid::Template.register_filter(Jekyll::BreadcrumbsFilter)
