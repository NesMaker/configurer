all: configure

configure:
  @echo Getting nes template
  @wget wget https://cdn.nesmaker.repl.co/cdn/Makefile
  @wget wget https://cdn.nesmaker.repl.co/cdn/nes.cfg
  @echo Getting cc65 for this project
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/cc65?raw=true
  @mv cc65?raw=true cc65
  @chmod 755 cc65
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/ca65?raw=true
  @mv cc65?raw=true ca65
  @chmod 755 ca65
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/ld65?raw=true
  @mv cc65?raw=true ld65
  @chmod 755 ld65
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/cl65?raw=true
  @mv cc65?raw=true cl65
  @chmod 755 cl65
  @echo Done
