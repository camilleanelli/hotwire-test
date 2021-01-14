class CommentsController < ApplicationController
  before_action :set_ticket

  def new
    @comment = @ticket.comments.new
  end

  def create
    @comment = @ticket.comments.new(params_comment)
    respond_to do |format|
      if @comment.save
        # format.turbo_stream
        # va rechercher un fichier turbo_stream.erb
        format.html { redirect_to ticket_path(@ticket) }
      end
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:ticket_id])
  end

  def params_comment
    params.require(:comment).permit(:content)
  end
end
