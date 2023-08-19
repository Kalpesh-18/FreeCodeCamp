#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    # Check winner id
    WINNER_ID_RESPONSE=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # If not found
    if [[ -z $WINNER_ID_RESPONSE ]]
    then
      # Add winner
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

      if [[ $INSERT_WINNER == 'INSERT 0 1' ]]
      then
        echo Inserted into teams, $WINNER
      fi

      # Get new winner id
      WINNER_ID_RESPONSE=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi

    # Check opponent id
    OPPONENT_ID_RESPONSE=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # If not found
    if [[ -z $OPPONENT_ID_RESPONSE ]]
    then
      # Add winner
      INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

      if [[ $INSERT_OPPONENT == 'INSERT 0 1' ]]
      then
        echo Inserted into teams, $OPPONENT
      fi

      # Get new winner id
      OPPONENT_ID_RESPONSE=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi

    # Add game
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID_RESPONSE, $OPPONENT_ID_RESPONSE, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done
