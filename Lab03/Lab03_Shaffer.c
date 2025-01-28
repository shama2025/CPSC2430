/**
 * @brief Read a file and return its following grammer
 * @param argc Number of argumenst passed
 * @param argv Array of arguments passed
 * @return
 */
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <ctype.h>

#define MAX_SIZE 2500

/**
 * @brief Checks if the token is of type seperator
 * @param inputStr
 * @return
 */
bool isSeparator(char inputStr)
{

    if ((inputStr == '(') || (inputStr == ')') ||
        (inputStr == '{') || (inputStr == '}') ||
        (inputStr == ';'))
    {
        return (true);
    }
    else
    {
        return (false);
    }
}

/**
 * @brief Checks if the string word is equal to the following keywords
 * @param token
 * @return
 */
bool isKeyword(char *token)
{
    if ((strcmp(token, "main") == 0) || (strcmp(token, "for") == 0) || (strcmp(token, "while") == 0) || (strcmp(token, "if") == 0) || (strcmp(token, "void") == 0) || (strcmp(token, "return") == 0))
    {
        return true;
    }
    else
    {
        return false;
    }
}

/**
 * @brief Checks if the token matches the current operator
 * @param token
 * @return
 */
bool isOperator(char token)
{
    if (token == '+' || token == '-' || token == '*' || token == '/' || token == '=' || token == '>' || token == '<')
    {
        return true;
    }
    else
    {
        return false;
    }
}

/**
 * @brief Checks if token is Data Type
 * @param token 
 * @return 
 */
bool isData_Type(char *token)
{
    if ((strcmp(token, "int") == 0) || (strcmp(token, "float") == 0) || (strcmp(token, "char") == 0) || (strcmp(token, "double") == 0))
    {
        return true;
    }
    else
    {
        return false;
    }
}

int main(int argc, char *argv[])
{

    // Handles parameter edge case
    if (argc != 2)
    {
        printf("Incorrect number of arguments passed!\n");
        return 0;
    }

    FILE *input;                  // File pointer
    input = fopen(argv[1], "r");  // Reading the file
    char file_contents[MAX_SIZE]; // Content of file
    char delim[] = " ";           // Delimiter used for tokenization
    char *token;                  // Token  for delimitting

    if (input)
    {
        char file_char;     // Onew character in the input
        size_t counter = 0; // Index of array

        // While the file hasn't reached the end make the file one line
        while ((file_char = getc(input)) != EOF)
        {
            if (isSeparator(file_char))
            {
                file_contents[counter++] = ' ';
                file_contents[counter++] = file_char;
                file_contents[counter++] = ' ';
            }
            else if (file_char == '\n')
            { // If there is a new line ignore it
            }
            else
            {
                file_contents[counter++] = file_char;
            }
        }

        // Read the file_contents array
        token = strtok(file_contents, delim) + '\0';

        while (token != NULL)
        {

            // Check if the token is of a certain type
            if (isSeparator(*token))
            {
                printf("%s ----- Seperator\n", token);
            }
            else if (isKeyword(token))
            {
                printf("%s ------ Keyword\n", token);
            }
            else if (isdigit(*token))
            {
                printf("%s ------ Digit\n", token);
            }
            else if (isOperator(*token))
            {
                printf("%s ------ Operator\n", token);
            }
            else if (isData_Type(token))
            {
                printf("%s ------ Date Type\n", token);
            }
            else
            {
                printf("%s ------ Variable\n", token);
            }

            token = strtok(NULL, delim);
        }

        fclose(input);
    }
    else
    {
        printf("Could not open file...\n");
        return 0;
    }

    return 0;
}