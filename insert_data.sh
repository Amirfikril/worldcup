#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != "year" ]]
  then
  
  # Get team id for winner
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  # If not found
  if [[ -z $WINNER_ID ]]
  then
  # Insert winner into table teams
    INSERT_WIN_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  # Show mesej when done
    if [[ $INSERT_WIN_RESULT == "INSERT 0 1" ]]
	then
	  echo Insert winner into teams table, $WINNER
    fi 
  # Get NEW team id for winner
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  fi  
  
  # Get team id for opponent
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
  # If not found
  if [[ -z $OPPONENT_ID ]]
  then
  # Insert winner into table team
    INSERT_OPP_RESULT=$($PSQL "INSERT INTO  teams(name) VALUES('$OPPONENT')")
  # show mesej when daone 
    if [[ $INSERT_OPP_RESULT == "INSERT 0 1" ]]
	then
	  echo Insert opponent into team table, $OPPONENT
	fi  
  # Get NEW team id for opponent
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'") 
  fi
  
  #WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  #OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'") 
  
  # Insert game table
  INSERT_GAME_TABLE=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
	if [[ INSERT_GAME_TABLE == "INSERT 0 1" ]]
	then
	  echo Insert into games, $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS
	fi
  

fi  	
done