what a decentralised version of a game like a monopoly would be
like?
Anyone can start a new game. Whenever a new game is started a 
unique name is created for that game. Anyone can try to join the game 
using that unique name. But to successfully join the game we need the approval of the majority of the player already present in the game. So Whenever a player request to join a game. Each player can either vote to allow or deny a player(a public address would represent the player at this point). If a player is allowed to join means his public address would be allowed in the game. A unique name for that player would be assigned (eg: player 3). The game needs a minimum of two players to start. At the start of the game, each player would be assigned an equal amount of cash. There would be a random dice roll(an oracle). Based on the number of dice the player will be presented with options to choose from.


How would you solve the problems of 

* ensuring agreement about the state of the system?
Each player would maintain a ledger which contains the details about the list of all the assets(House & cards) a player possesses and the cash each player currently has with them. All these details make up a single block and during each new turn, a new block is created and all the new details are updated. The new block contains the hash of the previous block. The majority of the player need to agree on the details of the new block before the block can be finalized.

* how to allow the correct people to join the game?
Whenever a player does any action they have to encrypt the command using their private key, Before sending the command to other players. So that the other player can verify using the public key that it was the correct player.

* How to decide who should take the next turn?
The turns should be decided at the start of the game. It should be based on the entry in the ledger. whoever's entry is first will get the first turn and the second turn will go to the player whose entry is second in the ledger, it would proceed in this manner until the last player. 

* communication problems (timeouts)?
Each player will get a set amount of time to play the turn. The rolling of the dice will happen automatically. If they don't play their turn by selecting an option then a random option would be chosen from the list of available options. If they don't play for three consecutive turns they will be kicked out of the game.

* Cheating?
Since each block creation needs the majority of the players to finalize the block. No one player can cheat the system, since the other players would reject the block. 