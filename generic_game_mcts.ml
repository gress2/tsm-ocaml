let xd = Lib.Utils.read_toml_file "config.toml" in
  let gg = new Lib.Generic_game.generic_game xd in
    gg#pop;;