class TracksController < ApplicationController

  def create
    track = Track.create(track_params)
    if track.valid?
      render json: track, status: :created
    else
      render json: { errors: track.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def get_by_bpm
    tracks = Track.where(bpm: params[:low]..params[:high])
    if tracks.length > 0
      render json: tracks, status: :ok
    else
      render json: { errors: "no matching tracks" }, status: :no_content
    end
  end

  private

  def track_params
    params.permit(:title, :album, :artist, :length, :bpm)
  end

end
