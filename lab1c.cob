       identification division.
       program-id.         lab1c.
       
      *      Name: Tyler Zysberg. Description: LAB1C. Counts number
      *      of digits entered from the input file.
      
       Environment division.
       Input-output section.
       File-Control.
           Select lab1a
               Assign to "lab1c-in.dat"
               Organization is Line Sequential.
       
       data division.
       File Section.
       fd  lab1a.
       01  record-file.
           05    record-number    PIC 9999.
           
       
       Working-Storage section.
       01  EndOfFile      PIC X Value "N".
       01  Counter        PIC 9999 value 0.
       01  CurrentValue   PIC 9999.
       01  EvenCounter    PIC 9999 value 0.
       01  Tester         Pic 9.
       01  R1             PIC 9999.
       
       procedure division.
       000-main.
       
           Perform 100-Open
           
           Perform Until EndOfFile = "Y"
               Read lab1a
                   At End
                       Move "Y" to EndOfFile
                   Not at End
                       Move record-number to CurrentValue
                       Add 1 to counter
                       Divide 2 into Counter giving Tester Remainder R1
                       if R1 = 0
                           add 1 to EvenCounter
						End-if
            End-Read
        End-Perform
        
        Perform 200-close
        subtract 1 from EvenCounter
        Display "The number of values entered: " counter
        Display "The number of even values: " EvenCounter
          
          Stop run.
           
       100-Open.
           Open Input lab1a.
           
       200-close.
           Close lab1a.
       
        
            