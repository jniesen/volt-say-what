# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store

    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end

    def add_room
      _rooms << { name: page._new_room }
      page._new_room = ''
    end

    def current_room
      _rooms.select { |room| room._name == params._name }.first
    end

    def add_category
      categories = current_room._categories ||= []
      categories << { name: page._new_category }
      page._new_category = ''
    end
  end
end
