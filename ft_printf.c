/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jsousa-a <jsousa-a@student.42lausanne.ch>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/24 16:02:06 by jsousa-a          #+#    #+#             */
/*   Updated: 2022/11/27 17:38:38 by jsousa-a         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdarg.h>

size_t	ft_strlen(const char *s);
void	ft_putendl_fd(char *s, int fd);
void	ft_printf(char *strparam, ...)
{
	va_list	args;
//	int		argsct;
	int		i;

	i = 0;
	va_start(args, strparam);
	while (ft_isprint(strparam[i]))
	{
		if (strparam[i] == '%')
		{
		}

		ft_putstr_fd(va_arg(args, char*), 1);
		i++;
	}
	va_end(args);
}

int	main(void)
{
	ft_printf("abc%sabc%sabc%sabc", "Oui", "Lolol", "Kawabunga");
}
