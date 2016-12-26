My personal environment

So I can easily port this stuff between rigs.
(You do this too, right?)

*** Babun/Cygwin ***

Something about the git-hook mechanism causes Sublime (when its the editor)
to treat the cygwin home dir as if it's based under c:\ which prevents it
from working. The fix was to give it what it wanted by creating a symlink
in Windows town.

> mklink /j c:\home "C:\Users\USERNAME\.babun\cygwin\home"

Probably could also mess around with setting the GIT_DIR but that can get
dicey, so I went with this.