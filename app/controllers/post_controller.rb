class PostController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def create
        @title = params[:title]
        @content= params[:content]
           
        Post.create(
            title: @title,
            content: @content
            )
    end
    
    def destroy
        @id= params[:id]
        post= Post.find(@id)
        #지우려는 글을 찾는다.
        post.destroy
        #해당 글을 삭제한다.
    end
    
    def show
        id= params[:id]
        @post=Post.find(id)
    end
    
    def modify
        @id= params[:id]
        @post=Post.find(@id)
    end
    
    def updated
        
        @id= params[:id]
        @post= Post.find(@id)
        @post.update(  
            title: params[:title],
            content: params[:content]
            )
            
        redirect_to '/'
    end
end
