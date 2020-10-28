# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


require './hashketball.rb'

def num_points_scored(sel_name) #returns player's points
playPoints = 0
game_hash.each do |location, team_info|
  team_info[:players].each do |attribute|
    if (attribute[:player_name] == sel_name)
    playPoints = attribute[:points]
  end
end
end 
playPoints
end


def shoe_size(name)  #returns player's name and shoe size
shoeSize = 0
playerName = ""
game_hash.each do |location, team_info|
team_info[:players].each do |attribute|
    if (attribute[:player_name] == name)
    shoeSize = attribute[:shoe]
    playerName = attribute[:player_name]
  end
end
end
playerName 
shoeSize 
end 
  
  
def team_colors(teamName) #returns [] of the team's colors
teamColors = []
game_hash.each do |location, team_info|
if (team_info[:team_name] == teamName)
  teamColors = team_info[:colors]
end
end 
teamColors
end 


def team_names #return an array of team names
teamArr = []
game_hash.each do |location, team_info|
teamArr.push(team_info[:team_name])
end
teamArr
end 


def player_numbers(teamName) 
jerseyNums = []
game_hash.each do |location, team_info|
  if (team_info[:team_name] == teamName)
  team_info[:players].each do |attribute|
  jerseyNums.push(attribute[:number])
end 
end
end
jerseyNums
end


def player_stats(name) #returns a hash of that player's player_stats
stats = {}
game_hash.each do |locaiton, team_info|
  team_info[:players].each do |attribute|
    if (attribute[:player_name] == name)
      stats = attribute
end 
end
end
stats
end 

def big_shoe_rebounds
#return the num of rebounds of the player with the largest shoe size:
#find largest shoe size player, return his num of rebounds 

bigFoot = ""
bigShoe = 0
bigRebound = 0
game_hash.each do |location, team_info|
team_info[:players].each do |attribute|
  if (attribute[:shoe] > bigShoe)
    bigFoot = attribute[:player_name]
    bigShoe = attribute[:shoe]
    bigRebound = attribute[:rebounds]
end
end
end
bigRebound
end 
  
