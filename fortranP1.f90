      program P1
      implicit none
      double precision :: pounds, kilograms, conversion
      double precision :: lbsConvert = 2.2046226218, kgConvert = 0.45359237
      real ::feet, meters, fahrenheit, celsius
      real :: ftConvert = 3.28, mConvert = 0.3048
      integer :: userInput
      logical :: choice = .true. 
	
	
	
      do while (choice)
          print *, "Enter a number to make a conversion. "
		
          print *, "1 for pounds to kilograms "
          print *, "2 for kilograms to pounds "
          print *, "3 for feet to meters "
          print *, "4 for meters to feet " 
          print *, "5 for fahrenheit to celsius "
          print *, "6 for celsius to farenheit "
          print *, "0 to exit "
		
      read *, userInput
      select case(userInput) 
          case (1)
             print *, "Enter the number of pounds " 
             read *, pounds
             conversion = pounds * kgConvert
             print *, conversion
          case (2)
             print *, "Enter the number of kilograms " 
             read *, kilograms
             conversion = kilograms * lbsConvert
             print *, conversion
          case (3)
             print *, "Enter the number of feet " 
             read *, feet
             conversion = feet * mConvert
             print *, conversion
          case (4)
             print *, "Enter the number of meters " 
             read *, meters
             conversion = meters * ftConvert
             print *, conversion
          case (5)
             print *, "Enter the degrees of fahrenheit " 
             read *, fahrenheit
             conversion = (fahrenheit - 32) * (0.5556)
             print *, conversion
          case (6)
             print *, "Enter the degrees of celsius " 
             read *, celsius
             conversion = (celsius * 1.8) + 32
             print *, conversion
          case (0)
             print *, "Exiting program "
             choice = .false.
          case default 
             print *, "Invalid input "
      end select
      end do
	
	
	
	

end program P1
