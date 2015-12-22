class Admin::InstrumentsController < AdminController

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
      if @instrument.save
        params[:specs].split.each { |spec| @instrument.specs.create( description: spec ) }
        params[:options].split.each { |option| @instrument.options.create( description: option ) }

        redirect_to @instrument
      else
        flash[:error] = @instrument.errors.full_messages.join(", ")
        render :new
      end
    end

  private

  def instrument_params
    params.require(:instrument).permit(:id, :name)
  end
end
