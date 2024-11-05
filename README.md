## PrivateFolder
#### make private folder and remove all file in private folder with Windows+R run mode and type mkfp for make folder and rmpf for remove data in private folder in netwinos
### https://netwinos.com/
<div align="center">
	<img src="https://s8.uupload.ir/files/68747470733a2f2f6769746875622d70726f64756374696f6e2d757365722d61737365742d3632313064662e73332e616d617a6f6e6177732e636f6d2f3134383133323033342f3338303439373734302d63386665386130302d393730342d343133342d396134362d3631303564383531643036302e706e673f_u09.png">
</div>

### mkpf.bat


This batch script is designed to create a folder named "PrivateFolder" on the user's desktop if it does not already exist. Let's break down each part of the script:

```batch
@echo off
```
This command disables the display of each command, which makes the output cleaner when the script runs.

```batch
setlocal
```
This command ensures that any changes made to the environment variables (including any variable changes) are localized to the script. Once the script finishes, the changes will be reverted, which maintains the original environment.

```batch
set "folderPath=%USERPROFILE%\Desktop\PrivateFolder"
```
This line sets a variable called `folderPath`. The value of `folderPath` will be the path to the "PrivateFolder" located on the user's desktop. `%USERPROFILE%` is an environment variable that points to the current user's profile directory (e.g., `C:\Users\Username`).

```batch
if not exist "%folderPath%" (
    mkdir "%folderPath%"
) else (
    echo Folder already exists.
)
```
This block checks if the directory specified by `folderPath` exists:
- If the folder does not exist, it uses `mkdir` to create the folder.
- If the folder already exists, it echoes the message "Folder already exists."

```batch
endlocal
```
This command ends the local environment changes that were made by `setlocal`. Any variables that were set or modified within the local context will be discarded, reverting back to the original context.

### Summary
In summary, the provided script automates the process of creating a specific folder on the desktop and provides feedback if the folder is already present. You can run this script by saving it as a `.bat` file and executing it in a Windows environment.

### rmpf.bat

The code you've provided is a Windows batch script that performs specific actions on a folder located on the user's desktop. Here’s a line-by-line explanation of what it does:

```batch
@echo off
```
- This command turns off command echoing, meaning that the commands themselves will not be displayed in the command prompt during execution.

```batch
set "folderPath=%USERPROFILE%\Desktop\PrivateFolder"
```
- This line sets a variable `folderPath` to the path of the folder named "PrivateFolder" located on the user's desktop. `%USERPROFILE%` refers to the currently logged-in user's profile directory.

```batch
:: حذف محتویات پوشه
```
- This line is a comment (indicated by `::`) and it seems to contain Arabic text that translates to "Delete the contents of the folder."

```batch
if exist "%folderPath%" (
```
- This checks if the specified folder exists.

```batch
    del /f /q "%folderPath%\*"
```
- If the folder exists, this command forcefully (`/f`) and quietly (`/q`, without prompting) deletes all files (`*`) in that folder.

```batch
    rmdir /s /q "%folderPath%"
```
- After deleting the files, this command removes the directory itself along with all its subdirectories and contents. The `/s` flag means to remove all directories and files in the specified directory in addition to the directory itself, and `/q` indicates quiet mode again (no prompts).

```batch
    echo All contents in the folder have been permanently deleted.
```
- This line outputs a message to inform the user that all contents of the folder have been permanently deleted.

```batch
) else (
```
- This begins the "else" block, which executes if the folder does not exist.

```batch
    echo The folder does not exist.
```
- If the folder doesn't exist, it outputs a message saying so.

```batch
)
pause
```
- The script ends with a pause, which waits for the user to press a key before closing the command prompt window, allowing them to see the messages displayed.

### Usage Note:
- **Caution**: This script will permanently delete files and folders without any chance of recovery. Make sure you want to delete all contents of the "PrivateFolder" before running the script.
