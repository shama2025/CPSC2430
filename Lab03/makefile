all: Lab03_Shaffer

Lab03_Shaffer: Lab03_Shaffer.c
	gcc $< -Wall -Wextra -o $@

test_params: Lab03_Shaffer lexar_test.c
	./Lab03_Shaffer lexar_test.c

test_no_param: Lab03_Shaffer
	./Lab03_Shaffer