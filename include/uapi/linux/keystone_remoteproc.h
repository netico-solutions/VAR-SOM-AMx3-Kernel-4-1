/*
 * Copyright (C) 2012-2015 Texas Instruments Incorporated
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation version 2.
 *
 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */
#ifndef _UAPI__LINUX_KEYSTONE_REMOTEPROC_H
#define _UAPI__LINUX_KEYSTONE_REMOTEPROC_H

#include <linux/types.h>

enum keystone_rproc_state {
	KEYSTONE_RPROC_OFFLINE,
	KEYSTONE_RPROC_RUNNING,
};

#define KEYSTONE_RPROC_UIO_MAP_INDEX_MASK 0x7
#define KEYSTONE_RPROC_UIO_MAP_OFFSET_SHIFT 3

#define KEYSTONE_RPROC_IOC_MAGIC	 'I'

#define KEYSTONE_RPROC_IOC_SET_RSC _IOW(KEYSTONE_RPROC_IOC_MAGIC, 0, \
			void *)
#define KEYSTONE_RPROC_IOC_SET_STATE _IOW(KEYSTONE_RPROC_IOC_MAGIC, 1, \
			enum keystone_rproc_state)
#define KEYSTONE_RPROC_IOC_SET_RSC_TABLE_RUNADDR \
			_IOW(KEYSTONE_RPROC_IOC_MAGIC, 2, \
			enum keystone_rproc_state)
#define KEYSTONE_RPROC_IOC_CPU_RESET _IO(KEYSTONE_RPROC_IOC_MAGIC, 3)
#define KEYSTONE_RPROC_IOC_CPU_START _IOW(KEYSTONE_RPROC_IOC_MAGIC, 4, \
			unsigned long)

#endif /* _UAPI__LINUX_KEYSTONE_REMOTEPROC_H */
