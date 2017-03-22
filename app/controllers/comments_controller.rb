class CommentsController < ApplicationController
    
    def create
        @element = Element.find(params[:element_id])
        @comment = @element.comments.create(comment_params)
        redirect_to element_path(@element)
    end
    
    def destroy
        @element = Element.find(params[:element_id])
        @comment = @element.comments.find(params[:id])
        @comment.destroy
        redirect_to element_path(@element)
    end

    private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end