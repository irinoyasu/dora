class DispatchersController < ApplicationController
  before_action :set_dispatcher, only: %i[show edit update destroy]

  # GET /dispatchers or /dispatchers.json
  def index
    @dispatchers = Dispatcher.all
  end

  # GET /dispatchers/1 or /dispatchers/1.json
  def show
  end

  # GET /dispatchers/new
  def new
    @dispatcher = Dispatcher.new
  end

  # GET /dispatchers/1/edit
  def edit
  end

  # POST /dispatchers or /dispatchers.json
  def create
    @dispatcher = Dispatcher.new(dispatcher_params)

    respond_to do |format|
      if @dispatcher.save
        format.html { redirect_to dispatcher_url(@dispatcher), notice: 'Dispatcher was successfully created.' }
        format.json { render :show, status: :created, location: @dispatcher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dispatcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispatchers/1 or /dispatchers/1.json
  def update
    respond_to do |format|
      if @dispatcher.update(dispatcher_params)
        format.html { redirect_to dispatcher_url(@dispatcher), notice: 'Dispatcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispatcher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dispatcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispatchers/1 or /dispatchers/1.json
  def destroy
    @dispatcher.destroy

    respond_to do |format|
      format.html { redirect_to dispatchers_url, notice: 'Dispatcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dispatcher
    @dispatcher = Dispatcher.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dispatcher_params
    params.require(:dispatcher).permit(:dispatcher_id, :name, :contact_info, :assigned_loads, :schedule)
  end
end
