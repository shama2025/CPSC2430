/***
 * @file Lab01_LastShaffer.c
 * @author Marcus Shaffer
 * @date 1/13/2025
 * @brief Take string input and prints it backwards
 */

#include <stdio.h>
#include <string.h>
#define STR_LENGTH 40
int main(void)
{

    char str[STR_LENGTH]; // Array for string
    size_t len = 0;  // Lenght of string

    // Get the string input
    printf("Enter a string (Current length of accepted string is %d): ", STR_LENGTH -1 );
    fgets(str, sizeof(str), stdin);

    // Sets len to length of string, C starts arrays at 0
    len = strlen(str) - 1;

    // Replace new line with null
    if(str[len] == '\n'){
        str[len] = '\0';
    }

    printf("Your reversed string is: ");

    // Iterate in reverse order
    while (len != -1)
    {
        printf("%c", str[len]);
        len--;
    }

    // Print new line for readability
    printf("\n");

    return 0;
}