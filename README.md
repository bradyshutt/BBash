# MyBashScripts
Here lie the pile of Bash and ViM scripts, functions, alias's and the like that I use on my daily computer.

WORKING SCRIPTS:
        1. **TMUXs**  -   Easily attach to a *already running* TMUX session, or create a new one. 

NOTE: (true fact) If you flip a coin *three* times, and roll a dice *twice*, the probability that the first two flips of the coin land on heads, and the third lands on tails, and then you roll a 5, then a 3 for the dice rolls, is exactly equal the the probabilty of any of these scripts working for you. Then, if you divide that probability by the number of *grams* of caffiene I've consumed in my life, you final anwer will be equal to the probability that any of these scripts are in any way useful to you.

This is what tmuxs does:

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
