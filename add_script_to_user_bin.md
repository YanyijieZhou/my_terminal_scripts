- how to add a script to user bin so that the script can be run from anywhere


```
# make a backup (safe)
cp ~/ongoing/src/scripts/newscript ~/ongoing/src/scripts/newscript.bak

# strip any trailing CR characters at end of lines
perl -i.bak2 -pe 's/^\#\s+\!/\#!/; s/\r$//' ~/ongoing/src/scripts/newscript

# 3) ensure executable
chmod +x ~/ongoing/src/scripts/newscript

# create a simlink so that the script can be run from anywhere

sudo ln -sf ~/ongoing/src/scripts/batch_rename /usr/local/bin/batch_rename 
&& echo 'Symlink created at /usr/local/bin/batch_rename' || echo 'Failed to create symlink'

```