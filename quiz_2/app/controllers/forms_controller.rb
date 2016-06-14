class FormsController < ApplicationController



  def home
  end

  def new
    @form = Form.new
  end

  def form_params
    params.require(:form).permit(:name, :email, :department, :comment)
  end

  def find_form
    @form = Form.find params[:id]
  end

  def create
    @form = Form.new form_params

    if @form.save
      flash[:notice] = "Form created"
      redirect_to form_path(@form)
    else
      flash[:alert] = "Form not created"
      render :new
    end
  end

  def show
    @form = Form.all
  end

  def index
    @forms = Form.all
  end

  def edit
    @form = Form.find params[:id]
  end

end

## Wrong Controller name
## It should be plural -> FormsController
## Don't forget to change the file name as well
