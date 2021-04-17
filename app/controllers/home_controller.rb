class HomeController < ApplicationController
  # X17126991 - Craig Smith
  before_action :load_posts, only: :index

  def index
    
  end

  private

  def load_posts
    @posts = Post.order("created_at desc").limit(6)
  end
end
