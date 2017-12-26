       identification division.
       program-id.         lab1a.
       
      *      Name: Tyler Zysberg. Description: LAB1A. Counts number
      *      of digits entered before 0.
       
       data division.
       Working-Storage section.
      
      *      Declares two variables to hold values. 
       
       01  Counter        PIC 9999 Value 1.
       01  temp           PIC 9999 Value 0.
       01  EvenCounter    Pic 9999 Value 0.
       01  Tester         Pic 9.
       01  R1             Pic 9999.
       
       procedure division.
       000-main.
       
      *    If current value is 0, stop and display number of digits.
            
            Perform Until Counter = 0
                Perform 200-input
                Perform 300-process
            End-Perform
            
            subtract 1 from temp
			subtract 1 from EvenCounter
            display space
            display "The number of values entered: " temp
            display "The number of Even values are: " EvenCounter
            stop run.
            
           
           
       200-input.
           display "Enter a 4-digit unsigned number (0 to stop): "
           with no advancing  
           accept Counter
           Divide 2 into Counter giving Tester Remainder R1
           if R1 = 0
               add 1 to EvenCounter
            End-if.
           
           
           
       300-process.
           Add 1 to temp.
            
            
            