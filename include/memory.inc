#if defined _MEMORY_INCLUDED_
	#endinput
#endif
#define _MEMORY_INCLUDED_
#if !defined NULL
	#define NULL				(0)
#endif
#define MEM_STRUCT_ENUM				enum _:
#define MEM_MACR_SIZEOF_CELL		(4)
#define MEM_MACR_get_addr(%0)		MEM_get_addr(%0)
#define MEM_MACR_get_addr_i(%0->%1)	(MEM_get_addr(%0)+Pointer:((%1)*MEM_MACR_SIZEOF_CELL))
#define MEM_MACR_get_val(%0)		MEM_get_val(%0,_)
#define MEM_MACR_get_val_i(%0->%1)	MEM_get_val(%0,%1)
#define MEM_MACR_get_ptr(%0->%1)	(%0+Pointer:((%1)*MEM_MACR_SIZEOF_CELL))
#define MEM_MACR_foreach(%0,%1)		for(new %1=0;(%1)<(%0);%1++)
#define MEM_MACR_foreach_rev(%0,%1)	for(new %1=((%0)-MEM_MACR_SIZEOF_CELL);(%1)>=0;%1--)
#define MEM_MACR_increment_ptr(%0)	(%0+=MEM_MACR_SIZEOF_CELL)
#define MEM_MACR_decrement_ptr(%0)	(%0-=MEM_MACR_SIZEOF_CELL)
enum MEM_ENUM_sort_type
{
	MEM_ENUM_sort_default,
	MEM_ENUM_sort_reverse
}
native Pointer:MEM_malloc(cells = 1);
native Pointer:MEM_calloc(cells = 1);
native Pointer:MEM_realloc(Pointer:pointer, cells = 1);
native bool:MEM_free(Pointer:pointer);
native MEM_get_val(Pointer:pointer, index = 0);
native MEM_get_arr(Pointer:pointer, index = 0, arr[], arr_size = sizeof arr);
native MEM_set_val(Pointer:pointer, index = 0, value);
native MEM_set_arr(Pointer:pointer, index = 0, const data_arr[], arr_size = sizeof data_arr);
native Pointer:MEM_get_addr(&var);
native bool:MEM_sort(Pointer:pointer, index = 0, cells = 2, MEM_ENUM_sort_type:sort = MEM_ENUM_sort_default);
native bool:MEM_mix(Pointer:pointer, index = 0, cells = 2, mix_times = 5);
native Pointer:MEM_amx_ptr();
#define MEM::						MEM_MACR_
#define MEMORY::					MEM_MACR_
#define MEM_FUNC::					MEM_
#define MEMORY_FUNC::				MEM_
#define MEM_ENUM::					MEM_ENUM_
#define MEMORY_ENUM::				MEM_ENUM_
#define MEM_STRUCT::				MEM_STRUCT_
#define MEMORY_STRUCT::				MEM_STRUCT_