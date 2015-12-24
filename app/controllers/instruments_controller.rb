class InstrumentsController < ApplicationController

  def index
    @signature_models = Instrument.signature
    @custom_models = Instrument.custom
  end

  def show
    @instrument = Instrument.find_by(slug: params[:slug])
  end
end
