class DoctorController < ApplicationController
  def myslot
    @user=User.find(params[:id])
    @slots=Slot.where(doctorId: @user.id)
  end
end
