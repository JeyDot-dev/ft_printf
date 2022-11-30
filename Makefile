SRCS		= ft_printf.c
NAME		= libftprintf.a
LIBFT		= libft.a
LIBS		= ft
LIBS_TARGET	= libft/${LIBFT}
INCS		= libft/
OBJS		= ${SRCS:.c=.o}
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror
#CPPFLAGS	= $(addprefix -I,$(INCS))
#LDFLAGS		= $(addprefix -L,$(dir $(LIBS_TARGET)))
#LDLIBS		= $(addprefix -l,$(LIBS))
RM			= rm -f

${NAME}	:	libbuild ${OBJS}
			mv ./${LIBS_TARGET} ${NAME}
			ar -rcs ${NAME} ${OBJS}
			ranlib ${NAME}

all		:	${NAME}

libbuild	:
			${MAKE} -C libft bonus

exe	:		${NAME}
			${CC} -o exe tst.c ${NAME} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} ${LDLIBS} 


clean	:
			${RM} ${OBJS} ${OBJSBONUS}
fclean	:	clean
			${RM} ${NAME}

ultraclean : fclean
			${RM} exe a.out
re		:	fclean all
.PHONY	: 	exe
