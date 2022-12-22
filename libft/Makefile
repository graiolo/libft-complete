NAME = ../archive/libft.a

CC = gcc $(CFLAG) -c

CFLAG = -Wall -Werror -Wextra -I $(IDIR)

RM = rm -f

LIB = ar rc $(NAME)

DIR = src/

ODIR = obj/

IDIR =../include

SRC_MANDATORY_F = ft_isalpha.c\
	ft_isdigit.c\
	ft_isalnum.c\
	ft_isascii.c\
	ft_isprint.c\
	ft_isspace.c\
	ft_strlen.c\
	ft_memset.c\
	ft_bzero.c\
	ft_memcpy.c\
	ft_memmove.c\
	ft_memccpy.c\
	ft_strncpy.c\
	ft_strcpy.c\
	ft_strcat.c\
	ft_strlcpy.c\
	ft_strlcat.c\
	ft_toupper.c\
	ft_tolower.c\
	ft_strchr.c\
	ft_strrchr.c\
	ft_strncmp.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_strnstr.c\
	ft_atoi.c\
	ft_calloc.c\
	ft_strdup.c\
	ft_memcpy_rvs.c\
	ft_substr.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_split.c\
	ft_itoa.c\
	ft_strmapi.c\
	ft_striteri.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_uitoa.c\
	ft_min.c\
	ft_max.c\
	ft_atof.c

SRC_BONUS_F = ft_lstnew.c\
			ft_lstadd_front.c\
			ft_lstsize.c\
			ft_lstlast.c\
			ft_lstadd_back.c\
			ft_lstdelone.c\
			ft_lstclear.c\
			ft_lstiter.c\
			ft_lstmap.c\


$(ODIR)%.o : $(DIR)%.c
	$(CC) $(CFLAG) $< -o $@


OFILE  = $(addprefix $(ODIR), $(OBG))
OFILE_BONUS = $(addprefix $(ODIR), $(OBG_BONUS))

SRC =  $(SRC_MANDATORY_F)
OBG = $(SRC:.c=.o)

SRC_BONUS = $(SRC_BONUS_F)
OBG_BONUS = $(SRC_BONUS:.c=.o)

DEF_COLOR = \033[0;39m
GREEN = \033[0;92m
RED = \033[0;91m
CIANO = \033[0;96m

all: $(NAME)

$(NAME): $(OFILE)
	@$(LIB) $(OFILE)
	@echo "$(GREEN)libft.a compilata con successo!$(DEF_COLOR)"


clean:
	@$(RM) $(OFILE) $(OFILE_BONUS)
	@echo "$(CIANO)file .obj di libft eliminati con successo!$(DEF_COLOR)"

clean2:
	@$(RM) $(OFILE) $(OFILE_BONUS)

fclean: clean2
	@$(RM) $(NAME)
	@echo "$(RED)libft.a rimossa con successo!$(DEF_COLOR)"

re: fclean all 

bonus: $(OFILE) $(OFILE_BONUS)
	@$(LIB) $(OFILE) $(OFILE_BONUS)
	@echo "$(GREEN)bonus libft.a compilata con successo!$(DEF_COLOR)"

.PHONY: all clean fclean bonus


