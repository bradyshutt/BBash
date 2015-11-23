# MyBashScripts
Here lie the pile of Bash and ViM scripts, functions, alias's and the like that I use on my daily computer.

WORKING SCRIPTS:

    1. **TMUXs**  -   Easily attach to a *already running* TMUX session, or create a new one. 


This is what tmuxs does: (edit: now also includes a "new session" option)

![What-tmuxs-does](/example.png)

INSTALLATION:

1. In  your home directory, run

        git clone https://github.com/bradyshutt/MyBashScripts.git

2. ADD this line to your .bashrc or .bash_profile file in your home directory:
    
       for f in ~/MyBashScripts/include/*;do source $f;done; 

3. RUN this command from the command line to update your bash source (or just restart your terminal window)
    
        source ~/.bashrc

4. Run the script from anywhere in bash by typing: 

        tmuxs
        --or--
        ts


TMUX:
https://github.com/tmux
