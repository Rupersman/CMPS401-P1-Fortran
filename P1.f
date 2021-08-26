      PROGRAM P1
      
C     Define variables
      LOGICAL :: continue = .TRUE.
      INTEGER :: selection
      
C     While continue == true, show the menu and take input
      DO WHILE (continue .eqv. .TRUE.)
        write (*,*) 'Enter a conversion option (1-6 or 0 to exit):'

C       DELETE ME LATER
        selection = 0

C       Exit condition
        IF (selection == 0) THEN
            continue = .FALSE.
        END IF
      END DO

      END