/* fileaccess.c
 * January 27, 2022
 * Matthew Preston
 * Purpose: practice working with files in C.
 */
#include <stdio.h>
#define STR_SIZE 256 /* size of a string */
int main(void)
{
    int i = 0;                    // loop counter
    char filename[STR_SIZE] = ""; // filename to open
    FILE *infile = NULL;          // file pointer
    char buffer[STR_SIZE] = "";   // string used to process file
    /* prompt the user for a filename */
    printf("Enter name of file to open: ");
    /* some steps are missing here */
    /* read through file, counting lines */
    while (fgets(buffer, sizeof(buffer), infile))
    { /* count this line */
        i++;
        /* print this line, with line number */
        printf("%d: %s", i, buffer);
    } // loop will exit when we reach end of file
    /* print the number of lines in the file */
    printf("=======\nThis file has %d lines.\n=======\n", i);
    /* close file and exit */
    fclose(infile);
    return 0;
}
