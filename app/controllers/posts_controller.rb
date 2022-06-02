class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        # Post.create(post_params)
        @post = Post.new(post_params)

        if @post.save
            redirect_to post_path(@post), :notice =>  "Post was successfully created"
        else
            render :new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to post_path, notice: "Post has been updated"
        else
            render :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_url, notice: "Post has been deleted!"
    end

    private
        def post_params
            params.require(:post).permit(:topic,:content,:author)
        end
end
