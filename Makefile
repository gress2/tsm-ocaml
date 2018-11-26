default: generic_game_mcts.exe

run: generic_game_mcts.exe
	dune exec ./generic_game_mcts.exe

generic_game_mcts.exe: generic_game_mcts.ml
	dune build generic_game_mcts.exe
