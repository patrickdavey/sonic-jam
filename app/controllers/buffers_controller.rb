class BuffersController < ApplicationController
  before_action :set_buffer, only: [:show, :edit, :update, :destroy]

  def index
    @buffers = Buffer.all
  end

  def show
  end

  def new
    @buffer = Buffer.new
  end

  def edit
  end

  def create
    @buffer = Buffer.new(buffer_params)

    respond_to do |format|
      if @buffer.save
        format.html { redirect_to @buffer, notice: 'Buffer was successfully created.' }
        format.json { render :show, status: :created, location: @buffer }
      else
        format.html { render :new }
        format.json { render json: @buffer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @buffer.update(buffer_params)
        format.html { redirect_to @buffer, notice: 'Buffer was successfully updated.' }
        format.json { render :show, status: :ok, location: @buffer }
      else
        format.html { render :edit }
        format.json { render json: @buffer.errors, status: :unprocessable_entity }
      end
    end
  end

  def complete_listing
    @buffers = Buffer.all
    render '/buffers/complete_listing.text.erb', layout: false, content_type: 'text/plain'
  end

  def destroy
    @buffer.destroy
    respond_to do |format|
      format.html { redirect_to buffers_url, notice: 'Buffer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buffer
      @buffer = Buffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buffer_params
      params.require(:buffer).permit(:name, :code, :enabled, :description)
    end
end
