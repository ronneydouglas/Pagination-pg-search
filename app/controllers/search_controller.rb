class SearchController < ApplicationController
   def index
      if params[:search]
         @posts = Post.search_content_for(params[:search]).page params [:page]
      else
         @posts = Post.all.page params[:page]
      end
   end
end
