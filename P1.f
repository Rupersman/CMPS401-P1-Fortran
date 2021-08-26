      PROGRAM P1
      
C     Define variables
      LOGICAL :: continue_the_loop = .TRUE.
      INTEGER :: selection
      
C     While continue == true, show the menu and take input
      DO WHILE (continue_the_loop .eqv. .TRUE.)
        write (*,*) 'Enter a conversion option (1-6 or 0 to exit):'
        write (*,*) '--------------------------'
        write (*,*) '(1) Pounds to Kilograms'
        write (*,*) '(2) Kilograms to Pounds'
        write (*,*) '(3) Feet to meters'
        write (*,*) '(4) Meters to feet'
        write (*,*) '(5) Fahrenheit to Celsius'
        write (*,*) '(6) Celsius to Fahrenheit'
        write (*,*) '(0) Exit this program'
        write (*,*) '--------------------------'

C       Getting input and storing in variable 'selection'        
        read (*,*) selection

C       For now just printing out selection
        write (*,*) selection

C       DELETE ME LATER
        selection = 0

C       Exit condition
        IF (selection == 0) THEN
            continue_the_loop = .FALSE.
        END IF
      END DO
      END