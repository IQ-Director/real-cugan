@echo please enter the file's inpath:
set /p file_input=
@echo file's input path:%file_input%

for /f  %%t in ('chdir') do set file_output=%%t

@echo please enter the file's scale(1/2/3/4):
set /p scale=
@echo file's sacle:%scale%

@echo please enter the file's noiselevel(-1/0/1/2/3):
set /p noiselevel=
@echo file's noiselevel :%noiselevel%

@echo please enter the file's format(jpg/png/webp):
set /p format=
@echo file's output format:%format%

realcugan-ncnn-vulkan.exe -i %file_input% -o %file_output%\cugan_%scale%x_%noiselevel%n.%format% -n %noiselevel% -s %scale%