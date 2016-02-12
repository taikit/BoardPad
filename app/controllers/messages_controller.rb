class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # POST /messages
  # POST /messages.json
  def create
    @board = Board.find(params[:board_id])
    @message = @board.messages.build(message_params)
    @message.user = current_user
    respond_to do |format|
      if @message.save
        format.html { redirect_to board_path(@message.board), notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :'boards/show'}
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
k
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_message
    @message = Message.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def message_params
    params.require(:message).permit(:content)
  end
end
