# do_nothing
A tiny quick-hack that simply does nothing and is exiting with exitcode 0

  ( Do_Nothing ) by Veit Berwig in 2023

"Do_Nothing" ist eine einfache EXE-Datei, die sich nach dem Start mit einem "exit(0)" sofort wieder beendet und KEINEN WEITEREN CODE AUSFÜHRT.
  
Sie kann verwendet werden, um den Start von anderen wichtigen Programmen zu verhindern (maskieren), indem Sie im Suchpfad VOR diesen Programmen (umbenannt mit deren EXE-Namen) zur Ausführung gebracht wird. Das Programm liefert immer den Exit-Status "0" zurück.
  
Die GUI-Version kann hier z. B. zum Härten von "Cherrytree" als "cmd.exe" im Programmpfad von "Cherrytree" verwendet werden, da "Cherrytree" ausführbare Code-Blöcke in seinen Dateien über die "cmd.exe" an externe Laufzeitsysteme für entsprechende Code-Fragmente zur Ausführung bring, wenn diese im Suchpfad gefunden werden. Das birgt Risiken und wird hier mit diesem kleinen Programm "abgefangen" bzw. "maskiert". 
  
Das Programm liegt als Windows Gui-Version und als Konsolen-Version in 32-Bit und 64-Bit vor und wurde mit dem TinyCC (tcc) Compiler von "Fabrice Bellard" compiliert (Aktuelles Build '2023):
  
- http://repo.or.cz/w/tinycc.git
- https://github.com/TinyCC/tinycc

Gebunden wurde gegen die MSVC-Runtime (MSVCRT) Bibliothek. Die Resourcen beinhalten Icon, und Versionsinformationen. Die Binaries sind nicht signiert.
  
Die Lizenz ist GPLv3 (Open-Source), der Quellcode ist mit enthalten.
  
--- Veit Berwig / 2023 ---
