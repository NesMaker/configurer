all: configure

configure:
  @echo Getting nes template
  @mkdir src/lib -p
  @mkdir tools
  @wget https://cdn.nesmaker.repl.co/cdn/Makefile
  @wget https://cdn.nesmaker.repl.co/cdn/nes.cfg
  @wget https://cdn.nesmaker.repl.co/cdn/nes.lib
  @wget https://cdn.nesmaker.repl.co/cdn/src/main.asm
  @mv main.asm src/main.asm
  @wget https://cdn.nesmaker.repl.co/cdn/src/lib/apu.inc
  @mv apu.inc src/lib/apu.inc
  @wget https://cdn.nesmaker.repl.co/cdn/src/lib/ppu.inc
  @mv apu.inc src/lib/ppu.inc
  @wget https://cdn.nesmaker.repl.co/cdn/src/lib/neschar.asm
  @mv neschar.asm src/lib/neschar.asm
  @wget https://cdn.nesmaker.repl.co/cdn/src/lib/neshdr.asm
  @mv neschar.asm src/lib/neshdr.asm
  @echo Getting cc65 for this project
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/cc65?raw=true
  @mv cc65?raw=true tools/cc65
  @chmod 755 tools/cc65
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/ca65?raw=true
  @mv cc65?raw=true tools/ca65
  @chmod 755 tools/ca65
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/ld65?raw=true
  @mv cc65?raw=true tools/ld65
  @chmod 755 tools/ld65
  @wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/cl65?raw=true
  @mv cc65?raw=true tools/cl65
  @chmod 755 tools/cl65
  @echo Done
