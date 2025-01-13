/***
 * @file Lab01_LastShaffer.c
 * @author Marcus Shaffer
 * @date 1/13/2025
 * @brief Take string input and prints it backwards
 */

#include <stdio.h>
#include <string.h>
int main()
{

    char str[35]; // Array for string
    int len = 0;  // Lenght of string

    // Get the string input
    printf("Enter a string (Current length of string is %ld): ", sizeof(str));
    fgets(str, sizeof(str), stdin);

    // Sets len to length of string
    len = strlen(str);

    // Iterate in reverse order
    while (len != -1)
    {
        printf("%c", str[len]);
        len--;
    }

    return 0;
}