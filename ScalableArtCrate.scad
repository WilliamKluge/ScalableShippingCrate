// !!!!! ALL UNITS ARE IN INCHES !!!!! 
// (sorry, don't have my metric measuring tape at home and Home Depot sells in inches)

// Dimensions of the actual painting
PAINTING_X = 57.75;
PAINTING_Y = 38;
PAINTING_Z = 4.25;

// Dimensions of the foam corners put on the painting
FOAM_CORNER_THICKNESS = 1.25;
FOAM_CORNER_X = 6;
FOAM_CORNER_Y = 6;

// The total thickness of any foam used to insulate around the painting in the crate
// I'm using 2" thick ridgid insulation foam around all walls
// then filling in gaps with 3/32" packing foam
TOTAL_INSULATION_THICKNESS = 2;

// Dimentions of the board being used as the structure of the crate
BOARD_WIDTH = 3.5;
BOARD_THICKNESS = 1.5;

// Thickness of the plywood
PLYWOOD_THICKNESS = .75;

// !! need to raise from the sides to get the foam corners snug !!

/**
 * Creates a board with a specified length.
 *
 * @param length Length of the board to create
 * @param rotate_90 make a board that is rotated 90 degrees
 */
module board (length, rotate_90=false) {
    // TODO add the length to an array that prints at the end to show what to buy
    translate([(rotate_90) ? BOARD_THICKNESS : 0, 0, 0])
        rotate([0, (rotate_90) ? -90 : 0, 0])
            cube([BOARD_WIDTH, length, BOARD_THICKNESS]);
}

module plywood(x, y, rotate_90=false) {
    translate([(rotate_90) ? PLYWOOD_THICKNESS : 0, 0, 0])
        rotate([0, (rotate_90) ? -90 : 0, 0])
            cube([x, y, PLYWOOD_THICKNESS]);
}

//board(50, true);
plywood(PAINTING_X + TOTAL_INSULATION_THICKNESS, 
        PAINTING_Y + TOTAL_INSULATION_THICKNESS);


