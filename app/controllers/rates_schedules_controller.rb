class RatesSchedulesController < ApplicationController
  before_action :set_rates_schedule, only: [:show, :edit, :update, :destroy]

  # GET /rates_schedules
  # GET /rates_schedules.json
  def index
    @rates_schedules = RatesSchedule.all
  end

  # GET /rates_schedules/1
  # GET /rates_schedules/1.json
  def show
  end

  # GET /rates_schedules/new
  def new
    @rates_schedule = RatesSchedule.new
  end

  # GET /rates_schedules/1/edit
  def edit
  end

  # POST /rates_schedules
  # POST /rates_schedules.json
  def create
    @rates_schedule = RatesSchedule.new(rates_schedule_params)

    respond_to do |format|
      if @rates_schedule.save
        format.html { redirect_to @rates_schedule, notice: 'Rates schedule was successfully created.' }
        format.json { render :show, status: :created, location: @rates_schedule }
      else
        format.html { render :new }
        format.json { render json: @rates_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rates_schedules/1
  # PATCH/PUT /rates_schedules/1.json
  def update
    respond_to do |format|
      if @rates_schedule.update(rates_schedule_params)
        format.html { redirect_to @rates_schedule, notice: 'Rates schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @rates_schedule }
      else
        format.html { render :edit }
        format.json { render json: @rates_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rates_schedules/1
  # DELETE /rates_schedules/1.json
  def destroy
    @rates_schedule.destroy
    respond_to do |format|
      format.html { redirect_to rates_schedules_url, notice: 'Rates schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rates_schedule
      @rates_schedule = RatesSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rates_schedule_params
      params.require(:rates_schedule).permit(:from, :to, :rate_id)
    end
end
