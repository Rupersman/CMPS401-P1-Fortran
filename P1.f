      PROGRAM P1
      
C     Define variables
      LOGICAL :: continue_the_loop = .TRUE.
      INTEGER :: selection
      
C     While continue == true, show the menu and take input
      DO WHILE (continue_the_loop .eqv. .TRUE.)
        write (*,*) 'Enter a conversion option (1-6 or 0 to exit):'

C       DELETE ME LATER
        selection = 0

C       Exit condition
        IF (selection == 0) THEN
            continue_the_loop = .FALSE.
        END IF
      END DO
      END