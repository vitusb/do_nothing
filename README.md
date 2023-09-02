# do_nothing
A tiny quick-hack that simply does nothing and is exiting with exitcode 0

- Update [TinyCC](https://github.com/vitusb/do_nothing/tree/main/source/compiler) to Version 0.9.27 latest commit ff2a372 date: 20230831 2023-08-31_mob@ff2a372a
- This is a [TinyCC](https://github.com/vitusb/do_nothing/tree/main/source/compiler) development environment, based on busybox with dll2def, make.exe, etc. and a patched version of windres to support [TinyCC](https://github.com/vitusb/do_nothing/tree/main/source/compiler)  :-)

  ( Do_Nothing ) by Veit Berwig in 2023

### German (English below)

"Do_Nothing" ist eine einfache EXE-Datei, die sich nach dem Start mit einem "exit(0)" sofort wieder beendet und KEINEN WEITEREN CODE AUSFÜHRT.
  
Sie kann verwendet werden, um den Start von anderen wichtigen Programmen zu verhindern (maskieren), indem Sie im Suchpfad VOR diesen Programmen (umbenannt mit deren EXE-Namen) zur Ausführung gebracht wird. Das Programm liefert immer den Exit-Status "0" zurück.
  
Die GUI-Version kann hier z. B. zum Härten von "Cherrytree" als "cmd.exe" im Programmpfad von "Cherrytree" verwendet werden, da "Cherrytree" ausführbare Code-Blöcke in seinen Dateien über die "cmd.exe" an externe Laufzeitsysteme für entsprechende Code-Fragmente zur Ausführung bring, wenn diese im Suchpfad gefunden werden. Das birgt Risiken und wird hier mit diesem kleinen Programm "abgefangen" bzw. "maskiert". 
  
Das Programm liegt als Windows Gui-Version und als Konsolen-Version in 32-Bit und 64-Bit vor und wurde mit dem TinyCC (tcc) Compiler von "Fabrice Bellard" compiliert (Aktuelles Build '2023):
  
- http://repo.or.cz/w/tinycc.git
- https://github.com/TinyCC/tinycc

Gebunden wurde gegen die MSVC-Runtime (MSVCRT) Bibliothek. Die Resourcen beinhalten Icon, und Versionsinformationen. Die Binaries sind nicht signiert.
  
Die Lizenz ist GPLv3 (Open-Source), der Quellcode ist mit enthalten.

### English

"Do_Nothing" is a simple EXE file that ends immediately after starting with an "exit(0)" and DOES NOT EXECUTE ANY FURTHER CODE.
  
It can be used to prevent other important programs from starting by making them run BEFORE these programs (renamed with their EXE names) in the search path. The program always returns the exit status "0".
  
The GUI version is used here to harden "Cherrytree" as "cmd.exe" in the program path of "Cherrytree", since "Cherrytree" has executable code blocks in its files via the "cmd.exe" to external runtime systems for corresponding code -Execute fragments if found in the search path. This involves risks and is "intercepted" here with this small program.
  
The program is available as a Windows Gui version and as a console version in 32-bit and 64-bit and was compiled with the TinyCC (tcc) compiler from "Fabrice Bellard" (current build '2023):
  
   http://repo.or.cz/w/tinycc.git
   https://github.com/TinyCC/tinycc

It was bound against the MSVC Runtime (MSVCRT) library. The resources include icon and version information. The binaries are not signed.
  
The license is GPLv3 (open source). The source code is included.


--- Veit Berwig / 2023 ---
