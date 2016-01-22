/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void work_a_0305664176_3212880686_p_0(char *t0)
{
    char *t1;

LAB0:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_0305664176_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0305664176_3212880686_p_0};
	xsi_register_didat("work_a_0305664176_3212880686", "isim/ADDER_32Bit_Unsigned_isim_beh.exe.sim/work/a_0305664176_3212880686.didat");
	xsi_register_executes(pe);
}
