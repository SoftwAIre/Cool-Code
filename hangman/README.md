
hangman board game

def request_saved_game if yes, load previously saved game computer selects word load player_wins, player_losses, incorrect answers, revealed letters from previous word, player previously played word list computer posts covered letters
player guesses letter, word, chooses to save and quit game
if player guesses letter correctly, reveal each instance where letter appears
if player guesses word correctly, player wins player_win += 1 if player guesses word incorrectly, player loses player_loss += 1
