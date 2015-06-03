module Main
  class RoomController < Volt::ModelController
    model :store

    def index
    end

    private
    def add
      _roomies << { name: page._new_room }
      page._new_room = ''
    end
  end
end
