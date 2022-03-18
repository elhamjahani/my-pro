# my-pro
for resolving a problem, always there is a way.

## Task 1

### Solution 1
in this solution I want to write one line of commands (you can find it in Task1/solution1.sh)

I use 2 command:

1- seq  -> which print a sequence of numbers in my range

2- shuf -> generate random permutations

So I create a range of 1 to 10 and print in random order by shuf command.

for running script you can download script and run script:
```
cd PATH_OF_FILE
bash solution1.sh
```
Or copy the content to new file and add excexution permission to file and run it:
```
cd YOUR_PATH
touch solution1.sh
vim solution1.sh #write script in this file
chmod +x solution1.sh
./solution1.sh
```

### Solution 2
in this solution I want to use one of the OS's environment variables called "$RANDOM". (you can find it in Task1/solution2.sh)

RANDOM is a shell variable that is used to generate random integers in Linux. It is an internal bash command that returns a pseudo-random 16-bit integer in the range 0 – 32767. It returns a different integer at each invocation.

So with this feature we can generate 10 random number (by for loop) and print "RANDOMNUMBER" "1_TO_10" like below:
```
10296 1
21222 2
20461 3
22975 4
...
```
after that we sort these lines based on random numbers. so if numbers sort base on random numbers, 1-10 numbers are falling apart and messed up. (by "sort" command)

finally we just print the 1-10 numbers which are second colomn (in above example) by cut command and delimiter of space (by -d" ") and specify the second field by -f2 option.

eventually we have numbers from 1 - 10 in random order.

for running the script we can download file solution2.sh and move it to your server (and path PATH)
```
cd PATH_OF_FILE
bash solution2.sh
```
Or copy the content to new file and add excexution permission to file and run it:
```
cd YOUR_PATH
touch solution2.sh
vim solution2.sh #write script in this file
chmod +x solution2.sh
./solution2.sh
```

## Task 2

