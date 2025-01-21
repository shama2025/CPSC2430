/***
 * @file Lab02_LastShaffer.c
 * @param argc number of parameters passed through command line
 * @param argv array of parameters in command line
 * @author Marcus Shaffer
 * @date 1/21/2025
 * @brief Takes filename as a parameter in cli and prints all opening and closing paranthesis
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define STR_SIZE 256

int main(int argc, char * argv[]) {
  FILE * fp; // File pointer
  char string[STR_SIZE]; // String

  if (argc != 2) {

    /**
     * Handles the exception if there are not enough files
     */

    exit(1);
  }

  // Opens the file and gives it read access
  fp = fopen(argv[1], "r");

  while (!feof(fp)) { // Iterates until end of filr

    fgets(string, STR_SIZE, fp); // Reads one line of the file

    for (int i = 0; i < strlen(string); i++) { // Iterates through string

      if (string[i] == '{' || string[i] == '}' || string[i] == '(' || string[i] == ')') { // Checks if character meets conditin

        // Prints the character of the string
        printf("%c", string[i]);
      }
    }
  }

  // Closes the file
  fclose(fp);

  // Prints new line for readability
  printf("\n");
  return 0;
}