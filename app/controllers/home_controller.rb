class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  
  def index
    redirect_to dashboard_path if user_signed_in?
  end
  
  def dashboard
    unless params[:initial_date].nil? or params[:final_date].nil?
      @names_count = Ancestor.where(user_id: current_user.id).joins(:ordinances).where("ordinances.performed_in >= :start_date and ordinances.performed_in <= :end_date", { start_date: params[:initial_date], end_date: params[:final_date] }).distinct.count
      @young_count = Sender.joins(ancestors: [{ ordinances: :ordinance_type }]).where("ordinances.performed_in >= :start_date and ordinances.performed_in <= :end_date and ordinance_types.name = :ord", { start_date: "2015-01-01
", end_date: "2015-04-06", ord: 'Bautismo' }).distinct.where(young: true).distinct.count
      @adult_count = Sender.joins(ancestors: [{ ordinances: :ordinance_type }]).where("ordinances.performed_in >= :start_date and ordinances.performed_in <= :end_date and ordinance_types.name = :ord", { start_date: "2015-01-01
", end_date: "2015-04-06", ord: 'Bautismo' }).distinct.where(adult: true).distinct.count
    else
      @names_count =  Ancestor.where(user_id: current_user.id).count
      @young_count = Sender.joins(ancestors: [{ ordinances: :ordinance_type }]).where("ordinance_types.name = :ord", { ord: 'Bautismo' }).distinct.where(young: true).distinct.count
      @adult_count = Sender.joins(ancestors: [{ ordinances: :ordinance_type }]).where("ordinance_types.name = :ord", { ord: 'Bautismo' }).distinct.where(adult: true).distinct.count
    end
  end
end
