/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pde-masc <pde-masc@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/05 15:27:26 by pde-masc          #+#    #+#             */
/*   Updated: 2023/10/14 13:21:37 by pde-masc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft/libft.h"
# include <stdarg.h>

// conversion print functions
int	printchar(char c);
int	printstr(char *s);
int	printptr(unsigned long long p);
int	printnbr(int n);
int	printud(unsigned int u);
int	printhex(long n, char c);

// printf
int	ft_printf(const char *input, ...);

#endif
