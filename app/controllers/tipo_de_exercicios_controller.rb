class TipoDeExerciciosController < ApplicationController
  # GET /tipo_de_exercicios
  # GET /tipo_de_exercicios.xml
  def index
    @tipo_de_exercicios = TipoDeExercicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_de_exercicios }
    end
  end

  # GET /tipo_de_exercicios/1
  # GET /tipo_de_exercicios/1.xml
  def show
    @tipo_de_exercicio = TipoDeExercicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_de_exercicio }
    end
  end

  # GET /tipo_de_exercicios/new
  # GET /tipo_de_exercicios/new.xml
  def new
    @tipo_de_exercicio = TipoDeExercicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_de_exercicio }
    end
  end

  # GET /tipo_de_exercicios/1/edit
  def edit
    @tipo_de_exercicio = TipoDeExercicio.find(params[:id])
  end

  # POST /tipo_de_exercicios
  # POST /tipo_de_exercicios.xml
  def create
    @tipo_de_exercicio = TipoDeExercicio.new(params[:tipo_de_exercicio])

    respond_to do |format|
      if @tipo_de_exercicio.save
        flash[:notice] = 'TipoDeExercicio was successfully created.'
        format.html { redirect_to(@tipo_de_exercicio) }
        format.xml  { render :xml => @tipo_de_exercicio, :status => :created, :location => @tipo_de_exercicio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_de_exercicio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_exercicios/1
  # PUT /tipo_de_exercicios/1.xml
  def update
    @tipo_de_exercicio = TipoDeExercicio.find(params[:id])

    respond_to do |format|
      if @tipo_de_exercicio.update_attributes(params[:tipo_de_exercicio])
        flash[:notice] = 'TipoDeExercicio was successfully updated.'
        format.html { redirect_to(@tipo_de_exercicio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_de_exercicio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_exercicios/1
  # DELETE /tipo_de_exercicios/1.xml
  def destroy
    @tipo_de_exercicio = TipoDeExercicio.find(params[:id])
    @tipo_de_exercicio.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_de_exercicios_url) }
      format.xml  { head :ok }
    end
  end
end
