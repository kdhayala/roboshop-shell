greeting() {
  echo Hello, Good Morning
  echo Welcome to Devops training
  exit
  echo Good to hear you
}

greeting
echo  Functions EXIt status $?


## you can declare var in main program,you can access thst in funfunction in vice versa.
# Function have it's own special variables

input()
 echo first arguements - $1
 echo second arguements - $2
 echo  third arguements - $*
 echo  fourth arguements - $#
}

input abc 1234