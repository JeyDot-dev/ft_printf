LIBFT		= libft.a
LIBS		= ft
LIBS_TARGET	= libft/${LIBFT}
INCS		= libft/
NAME		= ft_printf.a
SRCS		= ft_printf.c
OBJS		= ${SRCShttps://github.com/clemedon/Makefile_tutor:.c=.o}
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror
CPPFLAGS	= $(addprefix -I,$(INCS))
LDFLAGS		= $(addprefix -L,$(dir $(LIBS_TARGET)))
LDLIBS		= $(addprefix -l,$(LIBS))
RM			= rm -f

${NAME}	:	libbuild ${OBJS}
			ar -rcs ${NAME} ${OBJS}
bonus	:	${OBJS} ${OBJSBONUS}
			ar -rcs ${NAME} ${OBJS} ${OBJSBONUS}

libbuild	:
			${MAKE} -C libft

exe	:		libbuild
			${CC} -o exe ${SRCS} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} ${LDLIBS} 

all		:	${NAME}

clean	:
			${RM} ${OBJS} ${OBJSBONUS}
fclean	:	clean
			${RM} ${NAME}
re		:	fclean all
.PHONY	: libft	exe
