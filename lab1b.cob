       identification division.
       program-id.         lab1b.
       
      *      Name: Tyler Zysberg. Description: LAB1B. Counts number
      *      of digits entered before 0 with multiple sessions.
       
       data division.
       Working-Storage section.
      
      *      Declares three variables to hold values. 
       
       01  Counter        PIC 9999.
       01  EvenCounter    PIC 9999.
       01  Tester         PIC 9.
       01  R1             PIC 9999.
       01  temp           PIC 9999.
       01  inputvalue     PIC X.
       
       procedure division.
       000-main.
           Set inputvalue to "Y"
           display "Another Session (Y/N)? " with no advancing
           accept inputvalue.
           perform 200-loop until inputvalue = "N" or inputvalue = "n"
           stop run.
  
       100-Input.
           Display "Enter a 4-digit unsigned number (0 to stop): "
           with no advancing
           accept counter
           Add 1 to temp
           Divide 2 into Counter giving Tester Remainder R1
           if R1 = 0
               add 1 to EvenCounter
           End-if.               
           
       200-Loop.
           Set temp to 0
		   Set EvenCounter to 0
           Set counter to 1
           perform 100-input until counter = 0000
           subtract 1 from temp
		   subtract 1 from EvenCounter
           Display space
           display "The number of values entered: " temp
           display "The number of even values entered: " EvenCounter
           display space
           display "Another Session (Y/N)? " with no advancing
           accept inputvalue.
           
           
       