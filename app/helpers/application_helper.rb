module ApplicationHelper
  # Got this pattern from:
    # http://rvg.me/2013/11/adding-a-bootstrap-3-layout-to-a-rails-4-project/

    def site_name
			# TODO: site/app name
      "Site name"
    end

    def site_url
      if Rails.env.production?
				# TODO: absolute path goes here
        root_path
      else
        root_path
      end
    end

    def meta_author
      "2mi Tecnologia"
    end

    def meta_description
			# TODO
      "Add your website description here"
    end

    def meta_keywords
			# TODO
      "Add your keywords here"
    end

    # Returns the full title on a per-page basis.
    # No need to change any of this we set page_title and site_name elsewhere.
    def full_title(page_title)
      if page_title.empty?
        site_name
      else
        "#{page_title} | #{site_name}"
      end
    end

    # Got this pattern from:
    # https://coderwall.com/p/jzofog
    def flash_class(level)
      case level
        when 'notice' then "alert alert-info"
        when 'success' then "alert alert-success"
        when 'error'  then "alert alert-danger"
        when 'alert' then "alert alert-warning"
      end
    end
  end
