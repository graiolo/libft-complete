NAME = new_libft

all: $(NAME)

$(NAME):
	make -C libft bonus
	make -C ft_printf
	make -C get_next_line

clean:
	make -C libft clean
	make -C ft_printf clean
	make -C get_next_line clean

fclean: clean
	make -C libft fclean
	make -C ft_printf fclean
	make -C get_next_line fclean

re : fclean all

.PHONY: all clean fclean
.SILENT:


