module Jekyll
  module BreadcrumbsFilter
    def generate_breadcrumbs(page)
      url = page['url']
      title = page['title'] || 'Starter Kits' # Default title for the collection landing page
      crumbs = url.split('/').reject(&:empty?)
      breadcrumbs = []

      # Start with Home link
      breadcrumbs << '<a href="/" class="text-black hover:underline">Home</a>'

      # Check if it's the collection index page for skits
      if url == "/skits/" || url == "/skits"
        breadcrumbs << ' / <span>Starter Kits</span>'
      else
        # Add collection-specific breadcrumb for 'posts' and 'skits'
        if page['collection'] == 'posts'
          breadcrumbs << ' / <a href="/blog" class="text-red-600 hover:underline">Blogs</a>'
        elsif page['collection'] == 'skits'
          breadcrumbs << ' / <a href="/skits" class="text-blue-600 hover:underline">Starter Kits</a>'
        end

        # Process each crumb in the URL
        crumbs.each_with_index do |crumb, index|
          next if crumb == 'blogs' || crumb == 'skits' # Skip if it's 'blogs' or 'skits'

          if index == crumbs.size - 1
            breadcrumbs << " / <span>#{title}</span>" # Last crumb is the current page title
          else
            href = "/" + crumbs[0..index].join('/')
            breadcrumbs << " / <a href=\"#{href}\" class=\"text-black hover:underline\">#{crumb.capitalize}</a>"
          end
        end
      end

      breadcrumbs.join
    end
  end
end

Liquid::Template.register_filter(Jekyll::BreadcrumbsFilter)
