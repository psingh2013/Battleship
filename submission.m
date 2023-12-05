warning('off','all'); % turns off all warning messages

%Initializaing the Battleship scene
battleship_scene = simpleGameEngine('battleship.png',84, 84);

% Set up variables to name the various sprites
blank_sprite = 1;
water_sprite = 2;
left_ship_sprite = 3;
horiz_ship_sprite = 4;
right_ship_sprite = 5;
top_ship_sprite = 6;
vert_ship_sprite = 7;
bot_ship_sprite = 8;
hit_sprite = 9;
miss_sprite = 10;

% Display empty board   
board_display = water_sprite * ones(10,21);
board_display(:,11) = blank_sprite;
fprintf('test test \n')
fprintf('This is where i initialize the background. This is where i would ask the user to start inputting their locations for the different ships \n')
drawScene(battleship_scene,board_display)

%This is a confirmation thing for me to just make sure everything loads
%okay
checker1 = input('is it blank: ','s');

fprintf('test test \n')
fprintf('This is where i will ask the user to put the coords with the  start of the ship \n');
checkerShipStartx = input('where should the front of the ships x value be: ');
checkerShipStarty = input('where should the front of the ships y value be: ');

fprintf('This is where i will ask the user to put the coords with the  end of the ship \n');
checkerShipEndx = input('where should the back of the ships x value be: ');
checkerShipEndy = input('where should the back of the ships y value be: ');
% Place the left pointing end of the ship at position (checkershipstartx,checkershipstarty)
board_display(checkerShipStarty,checkerShipStartx) = left_ship_sprite;
% Place the middle sections of the ship at positions (2,4-6)
board_display(2,4) = horiz_ship_sprite;
board_display(2,5) = horiz_ship_sprite;
board_display(2,6) = horiz_ship_sprite;
% Place the right pointing end of the ship at position (checkerShipEndx,checkerShipEndy)
board_display(checkerShipEndy,checkerShipEndx) = right_ship_sprite;
fprintf('reminder that i need to do the logic stuff that will make sure that either the ships starts x value or y value is equal to the end of the ships x or y values because otherwise theres gonna be a diagonal ship or smth \n');
fprintf('need to also do the logic that actually calculates where the middles of the ships go or smth that connects the start of the ship to the end or smth \n');
fprintf('also gotta put an else clause to make sure that if they put the wrong number then they can redo just their end value or smth \n');
drawScene(battleship_scene,board_display)


checker2 = input('is there only a ship: ','s');

fprintf('Now there should be the front and back of the ships shown. The middles are still a mystery to me, there needs to be math and logic done before i can actually get them to be correct and before i can scale the number of ships up \n');
fprintf('I also need to make a new logic for making sure the ships faces point in the right directions \n');
checker3 = input('where should the white markers x value be');
checker4 = input('where should the white markers y value be');

fprintf('This is just tester place so i can make sure the system knows how to handle placing white points over the ships \n');
fprintf('Reminder to me that the x and y values are flipped when plotting \n');

checker5 = input('where should the red markers x value be');
checker6 = input('where should the red markers y value be');

fprintf('Same deal here, just for the red dot now \n');
% Set up hits and misses layer
hitmiss_display = blank_sprite * ones(10,21);
 
% Display miss for players shot at (checker3,checker4), note the +11 to shift the
% coordinates onto the right hand board
hitmiss_display(checker4,checker3+11) = miss_sprite;
% Display hit for the comuter's shot at (checker5,checker6)
hitmiss_display(checker6,checker5) = hit_sprite;

 
drawScene(battleship_scene,board_display,hitmiss_display)







