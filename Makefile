##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

SRC		=		src/strlen.asm		\
				src/strchr.asm		\
				src/strcmp.asm		\
				src/strncmp.asm		\
				src/strcasecmp.asm	\
				src/strstr.asm		\
				src/strpbrk.asm		\
				src/strcspn.asm		\
				src/memset.asm		\
				src/memcpy.asm		\
				src/memmove.asm		\
				src/rindex.asm		\

RM		=		rm -fr

NAME	=		libasm.so

OBJ		=		$(SRC:.asm=.o)

ASMFLAGS	=	-f elf64

LFLAGS  =		-shared

$(NAME):	$(SRC)
			for i in $(SRC); do \
				nasm -felf64 $(ASMFLAGS) $$i;	\
			done
			ld $(LFLAGS) -o $(NAME) $(OBJ)

all:		$(NAME)

clean:
			@$(RM) src/*~
			@$(RM) src/*.o

fclean:		clean
			@$(RM) $(NAME)

re:			fclean all