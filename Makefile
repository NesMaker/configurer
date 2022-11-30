all: configure

configure:
	@echo Getting nes template
	@mkdir src/lib -p
	@mkdir tools
	@wget https://cdn.nesmaker.repl.co/cdn/nes.cfg -q
	@wget https://cdn.nesmaker.repl.co/cdn/nes.lib -q
	@wget https://cdn.nesmaker.repl.co/cdn/src/main.asm -q
	@wget https://cdn.nesmaker.repl.co/cdn/src/lib/apu.inc -q
	@wget https://cdn.nesmaker.repl.co/cdn/src/lib/ppu.inc -q
	@wget https://cdn.nesmaker.repl.co/cdn/src/lib/neschar.asm -q
	@wget https://cdn.nesmaker.repl.co/cdn/src/lib/neshdr.asm -q
	@mv ppu.inc src/lib/ppu.inc
	@mv apu.inc src/lib/apu.inc
	@mv main.asm src/main.asm
	@mv neschar.asm src/lib/neschar.asm
	@mv neshdr.asm src/lib/neshdr.asm
	@echo "Getting cc65(compiler)"
	@wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/cc65?raw=true -q
	@wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/ca65?raw=true -q
	@wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/ld65?raw=true -q
	@wget https://github.com/PokeyManatee4/nes-template/blob/master/tools/cc65/cl65?raw=true -q
	@mv cc65?raw=true tools/cc65
	@mv ca65?raw=true tools/ca65
	@mv ld65?raw=true tools/ld65
	@mv cl65?raw=true tools/cl65
	@chmod 755 tools/cc65
	@chmod 755 tools/ca65
	@chmod 755 tools/ld65
	@chmod 755 tools/cl65
	@rm Makefile
