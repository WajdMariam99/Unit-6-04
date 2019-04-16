-----------------------------------------------------------------------------------------
--
-- created by: Wajd Mariam	
-- created on : April 12, 2019
-----------------------------------------------------------------------------------------


local EnterButton = display.newImageRect ("assets/sprites/enterbutton.png" , 125, 50)	
EnterButton.x = 160
EnterButton.y = 450
EnterButton.id = "Enter Button"


local Title1 = display.newText ("Your age:", 160 , 200, native.systemFont, 20)
Title1: setFillColor ( 255,255,255 )


local Title2 = display.newText ("What day is it today:" , 160 , 310, native.systemFont, 20)
Title2: setFillColor ( 255,255,255 )


local AgeTextField = native.newTextField ( display.contentCenterX, display.contentCenterY + 5, 225, 40 )
AgeTextField.id = " Age "


local DayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 115, 225, 40)
DayTextField.id = " Day "

local ResponseText = display.newText ( "Are you eligible for discount? " , 160 , 130, native.systemFont, 20)
ResponseText: setFillColor ( 255,255,255 )

local function EnterButtonTouch( event )
	
	age = tonumber ( AgeTextField.text )
    
    day = ( DayTextField.text )
 
 if ( age >= 8 and age <= 19 ) or ( day == "Monday" or day == "Wedensday" ) then
 	
 	ResponseText.text = "You pay student pricing"

 	elseif age > = 4 then

 	ResponseText.text = "You pay infant pricing"

 	else

 	ResponseText.text = "You pay regular pricing" 


end



end

EnterButton :addEventListener ( "touch" , EnterButtonTouch) 
