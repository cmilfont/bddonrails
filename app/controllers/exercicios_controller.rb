class ExerciciosController < ApplicationController
  # GET /exercicios
  # GET /exercicios.xml
  def index
    @exercicios = Exercicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exercicios }
    end
  end

  # GET /exercicios/1
  # GET /exercicios/1.xml
  def show
    @exercicio = Exercicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exercicio }
    end
  end

  # GET /exercicios/new
  # GET /exercicios/new.xml
  def new
    @exercicio = Exercicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exercicio }
    end
  end

  # GET /exercicios/1/edit
  def edit
    @exercicio = Exercicio.find(params[:id])
  end

  # POST /exercicios
  # POST /exercicios.xml
  def create
    @exercicio = Exercicio.new(params[:exercicio])

    respond_to do |format|
      if @exercicio.save
        flash[:notice] = 'Exercicio registrado com sucesso.'
        format.html { redirect_to(@exercicio) }
        format.xml  { render :xml => @exercicio, :status => :created, :location => @exercicio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exercicio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exercicios/1
  # PUT /exercicios/1.xml
  def update
    @exercicio = Exercicio.find(params[:id])

    respond_to do |format|
      if @exercicio.update_attributes(params[:exercicio])
        flash[:notice] = 'Exercicio was successfully updated.'
        format.html { redirect_to(@exercicio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exercicio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exercicios/1
  # DELETE /exercicios/1.xml
  def destroy
    @exercicio = Exercicio.find(params[:id])
    @exercicio.destroy

    respond_to do |format|
      format.html { redirect_to(exercicios_url) }
      format.xml  { head :ok }
    end
  end
end

