class Admin::InstrumentsController < AdminController

  def new
    @instrument = Instrument.new
  end

  def edit
    @instrument =  Instrument.find_by(slug: params[:slug])
  end

  def update
    @instrument = Instrument.find_by(slug: params[:slug])

    if @instrument.update_attributes(instrument_params)
      @instrument.specs.destroy_all
      @instrument.options.destroy_all
      @instrument.update_related_models(params)

      redirect_to instrument_path(slug: @instrument.slug)
    else
      render :edit
    end
  end

  def create
    @instrument = Instrument.new(instrument_params)
      if @instrument.save
        @instrument.update_related_models(params)

        redirect_to instrument_path(slug: @instrument.slug)
      else
        flash[:error] = @instrument.errors.full_messages.join(", ")
        render :new
      end
    end

  private

  def instrument_params
    params.require(:instrument).permit(:id, :name, :slug, :custom, :image)
  end
end
