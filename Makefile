NAME =			libft_malloc_$HOSTTYPE
CC =			gcc

SRC = 			main.c #testing

SRC_DIR =		./srcs/
BUILD_DIR =		./build/

SRC_FILES =		$(addprefix $(SRC_DIR),$(SRC))
OBJ_FILES =		$(addprefix $(BUILD_DIR),$(SRC:.c=.o))

HDR =			-I./includes
LIB =			-L./libft -lft

CFLAGS =		-Wall -Wextra -Werror

ifeq ($(HOSTTYPE),)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

.PHONY: all obj lib clean fclean re

all: $(NAME)

obj:
	mkdir -p $(BUILD_DIR)

lib:
	make -C libft

$(BUILD_DIR)%.o: $(SRC_DIR)%.c
	$(CC) $(CFLAGS) $(HDR) -c $< -o $@

$(NAME): obj lib $(OBJ_FILES)
	$(CC) $(CFLAGS) $(HDR) $(LIB) $(OBJ_FILES) -o test #$(NAME)

clean:
	rm -f $(OBJ_FILES)
	make clean -C ./libft

fclean: clean
	rm -rf $(BUILD_DIR)
	rm -f $(NAME) *~ */*~
	make fclean -C ./libft

re: fclean all