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

int main(int argc, char *argv[])
{
  FILE *fp;              // File pointer
  char line[STR_SIZE]; // Line read from file

  if (argc != 2)
  { // Checks if there are enough parameters passed through cli
    printf("Not enough parameters!\n");
    exit(1);
  }

  if ((fp = fopen(argv[1], "r")) == NULL)
  { // Checks if the file can be opened
    printf("Error opening file!\n");
    exit(-1);
  }

  // Opens the file and gives it read access

  while (!feof(fp))
  { // Iterates until end of filr

    fgets(line, STR_SIZE, fp); // Reads one line of the file

    for (int i = 0; i < strlen(line); i++)
    { // Iterates through line

      if (line[i] == '{' || line[i] == '}' || line[i] == '(' || line[i] == ')')
      { // Checks if character meets conditin

        // Prints the character of the line
        printf("%c", line[i]);
      }
    }
  }

  // Closes the file
  fclose(fp);

  // Prints new line for readability
  printf("\n");
  return 0;
}