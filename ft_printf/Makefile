# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: graiolo <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/21 16:38:22 by graiolo           #+#    #+#              #
#    Updated: 2022/11/04 15:32:25 by graiolo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= ../archive/libft.a

CC			= gcc $(CFLAGS)

CFLAGS		= -Wall -Werror -Wextra -c -I $(IDIR)

IDIR		= ../include

RM			= rm -f

LIB			= ar rcs $(NAME)

ODIR		= obj/

DIR			= src/

SRC_FILES	=	ft_printf.c ft_printf_utils.c ft_print_ptr.c ft_print_unsigned.c ft_print_hex.c\
				ft_printf_flags.c ft_printf_char.c ft_printf_length_flag.c ft_printf_print_num.c\
				ft_hex_unsigned_support.c ft_num_support.c

OBJ 		= 	$(SRC_FILES:.c=.o)

$(ODIR)%.o : $(DIR)%.c
	$(CC) $(CFLAG) $< -o $@

OFILE 		= $(addprefix $(ODIR), $(OBJ))


DEF_COLOR = \033[0;39m
GREEN = \033[0;92m
RED = \033[0;91m
CIANO = \033[0;96m

$(NAME):	$(OFILE) 
			@$(LIB) $(OFILE)
			@echo "$(GREEN)printf.a compilata con successo!$(DEF_COLOR)"

all:		$(NAME)

clean:
			@$(RM) $(OFILE)
			@echo "$(CIANO)file .obj di printf eliminati con successo!$(DEF_COLOR)"

clean2:
			@$(RM) $(OFILE)

fclean:		clean2
			@$(RM) libft.a
			@echo "$(RED)printf.a rimossa con successo!$(DEF_COLOR)"	

re:			fclean all

bonus:		all

.PHONY:		all clean fclean re