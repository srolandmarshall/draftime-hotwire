# frozen_string_literal: true

class DraftsController < ApplicationController
  before_action :set_draft, only: %i[show edit update destroy]

  # GET /drafts
  # GET /drafts.json
  def index
    @drafts = Draft.all
    @draft = Draft.new
  end

  # GET /drafts/1
  # GET /drafts/1.json
  def show
    @draft = Draft.find(params[:id])
    @picks = @draft.picks.order('created_at DESC')
    @pick = Pick.new(draft_id: params[:id])
  end

  # GET /drafts/new
  def new
    @draft = Draft.new
  end

  # GET /drafts/1/edit
  def edit
    @draft = Draft.find(params[:id])
  end

  # POST /drafts
  # POST /drafts.json
  def create
    @draft = Draft.new(draft_params)

    respond_to do |format|
      if @draft.save
        format.html { redirect_to drafts_path, notice: 'Draft was successfully created.' }
        format.json { render :show, status: :created, location: @draft }
      else
        format.html { render :new }
        format.json { render json: @draft.errors, status: :unprocessable_entity }
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@draft, partial: 'drafts/form', locals: { draft: @draft }) }
      end
    end
  end

  # PATCH/PUT /drafts/1
  # PATCH/PUT /drafts/1.json
  def update
    respond_to do |format|
      if @draft.update(draft_params)
        format.html { redirect_to @draft, notice: 'Draft was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft }
      else
        format.html { render :edit }
        format.json { render json: @draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drafts/1
  # DELETE /drafts/1.json
  def destroy
    @draft.destroy
    respond_to do |format|
      format.html { redirect_to drafts_url, notice: 'Draft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_draft
    @draft = Draft.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def draft_params
    params.require(:draft).permit(:title, :league_id)
  end
end
