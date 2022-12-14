echo please enter the files's inpath:
set /p files_input=
echo files's input path:%files_input%

echo please enter the files's scale(1/2/3/4):
set /p scale=
echo files's sacle:%scale%

echo please enter the files's noiselevel(-1/0/1/2/3):
set /p noiselevel=
echo files's noiselevel :%noiselevel%

echo please enter the files's format(jpg/png/webp):
set /p format=
echo files's output format:%format%

cd %files_input%
mkdir cugan_%scale%x_%noiselevel%n
realcugan-ncnn-vulkan.exe -i %files_input% -o cugan_%scale%x_%noiselevel%n -n %noiselevel% -s %scale% -f %format%