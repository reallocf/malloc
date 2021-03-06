/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_pow.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: csummers <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/03 23:55:28 by csummers          #+#    #+#             */
/*   Updated: 2016/11/03 23:55:29 by csummers         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

uintmax_t	ft_pow(uintmax_t base, uintmax_t exp)
{
	return ((exp == 0) ? 1 : base * ft_pow(base, exp - 1));
}
