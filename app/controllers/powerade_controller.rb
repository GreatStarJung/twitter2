class PoweradeController < ApplicationController
  def read
    @posting = User.all
  end
  def write
    posting = User.new
    posting.post_username = params[:author_name]
    posting.post_password = params[:author_password]
    posting.post_conetents = params[:contents]
    posting.save
    redirect_to '/'
  end
  def delete
    find_post = User.find(params[:id])
    find_post.destroy
    redirect_to '/'
  end
  def modify
    @find_post = User.find(params[:id])
  end
  def update
    find_post = User.find(params[:id])
    find_post.post_username = params[:newname]
    find_post.post_conetents = params[:newcontents]
    find_post.save
    redirect_to '/'
  end
  def comment
    commenting = Comment.new
    commenting.user_id = params[:user_id]
    commenting.comment_contents = params[:comment]
    commenting.save
    redirect_to '/'
  end
end
