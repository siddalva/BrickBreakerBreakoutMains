// True/false values for the keys we want to use,
// indicating whether or not they are currently pressed

// You can add new keys to this list as needed.
boolean w_key = false;
boolean s_key = false;
boolean a_key = false;
boolean d_key = false;

boolean i_key = false;
boolean j_key = false;
boolean k_key = false;
boolean l_key = false;

boolean UP_key = false;
boolean DOWN_key = false;
boolean LEFT_key = false;
boolean RIGHT_key = false;

boolean SPACE_key = false;

// Function for setting key states for special keys (arrow keys)
boolean setCodedKey(int key_code, boolean state) {
  switch(key_code) {
    case UP:
      return UP_key = state; 

    case DOWN:
      return DOWN_key = state; 

    case LEFT:
      return LEFT_key = state; 

    case RIGHT:
      return RIGHT_key = state; 

    default:
      return state;
  }
}

// Function for setting key states (for letters, numbers, and the space key)
boolean setKey(char key_code, boolean state) {
  switch(key_code) {
    case 'w':
      return w_key = state;
    case 's':
      return s_key = state;
    case 'a':
      return a_key = state;
    case 'd':
      return d_key = state;
      
  case 'i':
    return i_key = state;
  case 'j':
    return j_key = state;
  case 'k':
    return k_key = state;
  case 'l':
    return l_key = state;

  case ' ':
    return SPACE_key = state;

    default:
      return state;
  }
}
