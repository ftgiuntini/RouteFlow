require 'csv'
class ShowRotesController < ApplicationController
  def index
    csv_file = File.read('/home/gustavo/Dropbox/RouteFlow/RouteFlow/rftest/rftest2config.csv')
    @csv = CSV.parse(csv_file, :headers => true)
    @msg = params[:msg]
  end

  def vrt_start
    @msg = `sudo start libvirt-bin`
    redirect_to action: "index", :msg => @msg
  end
 
  def vrt_stop
    @msg = `sudo stop libvirt-bin`
    redirect_to action: "index", :msg => @msg
  end 
  
  def vrt_status
    @msg = `sudo status libvirt-bin`
    redirect_to action: "index", :msg => @msg
  end 
end
