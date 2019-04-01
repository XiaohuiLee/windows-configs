::作用：
::用于为cmd更新alias从而减少input次数

::须知：
::没有办法一次执行多条命令

::步骤：
::1\Create a .bat or .cmd file with your DOSKEY commands.
::2\Run regedit and go to HKEY_CURRENT_USER\Software\Microsoft\Command Processor
::3\Add String Value entry with the name AutoRun and the full path of your .bat/.cmd file.For example, %USERPROFILE%\alias.cmd.
::4\This way, every time cmd is run, the aliases are loaded

::以下是cmd的内容
@echo off
:: Commands

DOSKEY cpe=chcp 437
DOSKEY ls=dir /B
DOSKEY alias=notepad %USERPROFILE%\Dropbox\alias.cmd
DOSKEY j=cd "%USERPROFILE%\Desktop\jupyter"
DOSKEY jj=jupyter notebook
