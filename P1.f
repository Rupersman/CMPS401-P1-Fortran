      PROGRAM P1
      
C     Define variables
      LOGICAL :: continue_the_loop = .TRUE.
      INTEGER :: selection
      DOUBLE PRECISION :: number_to_convert
      
C     While continue_the_loop == true, show the menu and take input
      DO WHILE (continue_the_loop .eqv. .TRUE.)
        PRINT *, 'Enter a conversion option (1-6 or 0 to exit):'
        PRINT *, '--------------------------'
        PRINT *, '(1) Pounds to Kilograms'
        PRINT *, '(2) Kilograms to Pounds'
        PRINT *, '(3) Feet to meters'
        PRINT *, '(4) Meters to feet'
        PRINT *, '(5) Fahrenheit to Celsius'
        PRINT *, '(6) Celsius to Fahrenheit'
        PRINT *, '(0) Exit this program'
        PRINT *, '--------------------------'

C       Getting input and storing in variable 'selection'        
        READ *, selection

C       Pounds to Kilograms
        IF (selection == 1) THEN
            PRINT *, 'Pounds:'
            READ *, number_to_convert

            number_to_convert = number_to_convert * 0.45359237
            PRINT *, 'Kilograms:'
C           f8.3 means a decimal number with 8 total number spaces, 3 of which on the right side of the decimal
            PRINT '(f8.3)', number_to_convert
        END IF

C       Kilograms to Pounds
        IF (selection == 2) THEN
            PRINT *, 'Kilograms:'
            READ *, number_to_convert

            number_to_convert = number_to_convert / 0.45359237
            PRINT *, 'Pounds:'
            PRINT '(f8.3)', number_to_convert
        END IF

C       Exit condition
        IF (selection == 0) THEN
            continue_the_loop = .FALSE.
        END IF

C       Making things look nice on each run
        PRINT *,''
        PRINT *,''
      END DO
      END