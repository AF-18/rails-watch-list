class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    # No need for app/views/bookmarks/create.html.erb
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    delete "bookmark/:id", to: "bookmark#destroy"
  end
end


private

def bookmark_params
  params.require(:bookmark).permit(:comment)
end
