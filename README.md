# Remove All Kali Linux Tools
  The scripts removes all the Unnecessary tools or any tool installed in Kali Linux


# Usage of This Script
1. **Clone/Download the Repository:**
   - Go to the GitHub repository where the script is hosted.
   - Click on the "Code" button and then click on "Download ZIP" to download the repository as a ZIP file.
   - Extract the ZIP file to a directory of your choice.
   - You can also use git to clone the repsository.
      ```bash
      git clone https://github.com/cambridgeitcollege/Linux-Tools-Remover
      ``` 

2. **Navigate to the Script Directory:**
   - Open a terminal on your system.
   - Change your current directory to the location where you extracted the repository. For example:
     ```bash
     cd /path/to/Linux-Tools-Remover
     ```

3. **Make the Script Executable:**
   - Check the permissions of the script file to ensure it is executable. If the script does not have execute permissions, you can grant them using the following command:
     ```bash
     chmod +x script.sh
     ```

4. **Run the Script:**
   - Now, you can execute the script by running the following command in the terminal:
     ```bash
     ./script.sh
     ```

5. **Follow the Script Execution:**
   - The script will start running and will begin removing the specified packages from your system.
   - Depending on the number of packages to be removed, this process may take some time.
   - The script will prompt you for confirmation before removing each package. It will respond with 'y' automatically due to the  `printf 'y'` command used in the script, so make sure you are aware of the packages being removed.

6. **Script Completion:**
   - Once the script finishes executing, it will perform a system update (`sudo apt update`) to ensure everything is up to date.
   - After the script completes successfully, it will display a message like "Script has been Executed Successfully."

7. **Optional: Remove Configurations (if required):**
   - If you uncommented the line responsible for removing configurations of the removed packages, the script would remove configurations as well. Be cautious with this step, as it can permanently delete configurations related to the removed packages.

  Please note that using the script will remove multiple tools from your system. Make sure you fully understand the implications of removing these tools and only proceed if you are confident about the changes being made to your system.

  Before running any script or command from an external source, always review the code to ensure it doesn't contain any malicious content and comes from a trusted source. Additionally, take proper backups of your important data and configurations before proceeding with such operations.

#