class CommentsController < ApplicationController
  before_action :set_ticket

  def new
    @comment = @ticket.comments.new
  end

  def create
    @comment = @ticket.comments.create!(params_comment)
    respond_to do |format|
      format.html { redirect_to ticket_path(@ticket) }
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
