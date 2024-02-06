class PlayController < ApplicationController

  def rules 
    render ({ :template => "game_templates/rules"})
  end

  def play_rock
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
      @outcome = "lost"
    elsif @random_move == "scissors"
      @outcome = "win"
    else
      @outcome = "tied"
    end

    render({ :template => "game_templates/play_rock"})
  end 

  def play_paper
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
      @outcome = "tied"
    elsif @random_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "win"
    end

    render({ :template => "game_templates/play_paper"})
  end

  def play_scissors
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
      @outcome = "win"
    elsif @random_move == "scissors"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/play_scissors"})
  end

  

end
