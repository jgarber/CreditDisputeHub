class DisputesController < ApplicationController
  # GET /disputes
  # GET /disputes.json
  def index
    @disputes = Dispute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disputes }
    end
  end

  # GET /disputes/1
  # GET /disputes/1.json
  def show
    @dispute = Dispute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dispute }
    end
  end

  # GET /disputes/new
  # GET /disputes/new.json
  def new
    @dispute = Dispute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dispute }
    end
  end

  # GET /disputes/1/edit
  def edit
    @dispute = Dispute.find(params[:id])
  end

  # POST /disputes
  # POST /disputes.json
  def create
    @dispute = Dispute.new(params[:dispute])

    respond_to do |format|
      if @dispute.save
        format.html { redirect_to @dispute, notice: 'Dispute was successfully created.' }
        format.json { render json: @dispute, status: :created, location: @dispute }
      else
        format.html { render action: "new" }
        format.json { render json: @dispute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disputes/1
  # PUT /disputes/1.json
  def update
    @dispute = Dispute.find(params[:id])

    respond_to do |format|
      if @dispute.update_attributes(params[:dispute])
        format.html { redirect_to @dispute, notice: 'Dispute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dispute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disputes/1
  # DELETE /disputes/1.json
  def destroy
    @dispute = Dispute.find(params[:id])
    @dispute.destroy

    respond_to do |format|
      format.html { redirect_to disputes_url }
      format.json { head :no_content }
    end
  end
end
