inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_builtin_function = type { ptr, i32, i32, ptr }
%struct.ruby_gc_params_t = type { [5 x i64], i64, double, i64, double, double, double, double, double, i64, i64, double, i64, i64, double }
%struct.sigaction = type { %union.anon.52, %struct.__sigset_t, i32, ptr }
%union.anon.52 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.rb_shape_tree_t = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.rb_gc_object_metadata_entry = type { i64, i64 }
%struct.st_hash_type = type { ptr, ptr }
%struct.rb_data_type_struct = type { ptr, %struct.anon.17, ptr, ptr, i64 }
%struct.anon.17 = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.gc_mark_func_data_struct = type { ptr, ptr }
%struct.check_shareable_data = type { i64, i64 }
%struct.verify_internal_consistency_struct = type { ptr, i32, i64, i64, i64, i64, i64 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.37, %union.anon.38, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.45, %union.anon.46, %union.anon.47, %union.anon.48, %union.anon.49, %union.anon.50 }
%struct.timeval = type { i64, i64 }
%union.anon.37 = type { i64 }
%union.anon.38 = type { i64 }
%union.anon.39 = type { i64 }
%union.anon.40 = type { i64 }
%union.anon.41 = type { i64 }
%union.anon.42 = type { i64 }
%union.anon.43 = type { i64 }
%union.anon.44 = type { i64 }
%union.anon.45 = type { i64 }
%union.anon.46 = type { i64 }
%union.anon.47 = type { i64 }
%union.anon.48 = type { i64 }
%union.anon.49 = type { i64 }
%union.anon.50 = type { i64 }
%struct.timespec = type { i64, i64 }
%struct.rb_trace_arg_struct = type { i32, ptr, ptr, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.each_obj_data = type { ptr, i8, ptr, ptr, ptr, [5 x ptr], [5 x i64] }
%struct.gc_mark_classext_foreach_arg = type { ptr, i64 }
%struct.root_objects_data = type { ptr, ptr, ptr }
%struct.os_each_struct = type { i64, i64 }
%struct.count_objects_data = type { [32 x i64], i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.gc_raise_tag = type { i64, ptr, ptr }
%struct.rb_vm_tag = type { i64, i64, [5 x ptr], ptr, i32, i32 }
%struct.classext_foreach_args = type { i64, ptr }
%struct.global_vm_table_foreach_data = type { ptr, ptr, ptr, i8 }
%struct.gc_sweep_context = type { ptr, i32, i32, i32 }
%struct.objspace_and_reason = type { ptr, i32 }
%struct.desired_compaction_pages_i_data = type { ptr, [5 x i64] }

@ruby_vm_event_flags = external local_unnamed_addr global i32, align 4
@malloc_offset = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"rb_malloc_grow_capa: current_capacity=%zu, new_capacity=%zu, malloc_offset=%zu\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@initial_stress = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"../gc.c\00", align 1
@__func__.rb_data_object_wrap = private unnamed_addr constant [20 x i8] c"rb_data_object_wrap\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"dfree != (RUBY_DATA_FUNC)1\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot wrap an embeddable TypedData\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Embeddable TypedData must be freed immediately\00", align 1
@id2ref_tbl = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"obj_memsize_of(): GC does not handle T_NODE 0x%x(%p) 0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"objspace/memsize_of(): unknown data type 0x%x(%p)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"non-hash or symbol given\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"unknown key: %li\0B\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"rb_objspace_reachable_objects_from() is not supported while during GC\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"rb_gc_impl_objspace_reachable_objects_from_root() is not supported while during GC\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"iseq\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"attrest\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ivar\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"bmethod\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"refined\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"cfunc\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"zsuper\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"optimized\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"notimplemented\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"rb_method_type_name: unreachable (type: %d)\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"out-of-heap:%p\00", align 1
@__func__.rb_memerror = private unnamed_addr constant [12 x i8] c"rb_memerror\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"ruby_thread_has_gvl_p()\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [35 x i8] c"[FATAL] failed to allocate memory\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"malloc: possible integer overflow (%zu*%zu)\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"malloc: possible integer overflow (%zu+%zu)\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"rb_obj_info_dump: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"<OBJ_INFO:%s@%s:%d> %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"rb_gc_verify_shareable\00", align 1
@gc_checking_shareable = internal unnamed_addr global i1 false, align 1
@Init_builtin_gc.gc_table = internal constant [17 x %struct.rb_builtin_function] [%struct.rb_builtin_function { ptr @gc_start_internal, i32 4, i32 0, ptr @.str.33 }, %struct.rb_builtin_function { ptr @gc_enable, i32 0, i32 1, ptr @.str.34 }, %struct.rb_builtin_function { ptr @gc_disable, i32 0, i32 2, ptr @.str.35 }, %struct.rb_builtin_function { ptr @gc_stress_get, i32 0, i32 3, ptr @.str.36 }, %struct.rb_builtin_function { ptr @gc_stress_set_m, i32 1, i32 4, ptr @.str.37 }, %struct.rb_builtin_function { ptr @gc_count, i32 0, i32 5, ptr @.str.38 }, %struct.rb_builtin_function { ptr @gc_stat, i32 1, i32 6, ptr @.str.39 }, %struct.rb_builtin_function { ptr @gc_stat_heap, i32 2, i32 7, ptr @.str.40 }, %struct.rb_builtin_function { ptr @builtin_inline_class_445, i32 0, i32 8, ptr @.str.41 }, %struct.rb_builtin_function { ptr @gc_config_set, i32 1, i32 9, ptr @.str.42 }, %struct.rb_builtin_function { ptr @gc_config_get, i32 0, i32 10, ptr @.str.43 }, %struct.rb_builtin_function { ptr @builtin_inline_class_503, i32 0, i32 11, ptr @.str.44 }, %struct.rb_builtin_function { ptr @builtin_inline_class_507, i32 0, i32 12, ptr @.str.45 }, %struct.rb_builtin_function { ptr @builtin_inline_class_537, i32 0, i32 13, ptr @.str.46 }, %struct.rb_builtin_function { ptr @builtin_inline_class_550, i32 0, i32 14, ptr @.str.47 }, %struct.rb_builtin_function { ptr @builtin_inline_class_586, i32 0, i32 15, ptr @.str.48 }, %struct.rb_builtin_function { ptr null, i32 0, i32 -1, ptr null }], align 16
@.str.33 = private unnamed_addr constant [18 x i8] c"gc_start_internal\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"gc_enable\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"gc_disable\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"gc_stress_get\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"gc_stress_set_m\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"gc_count\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"gc_stat\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"gc_stat_heap\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_bi445\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"gc_config_set\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"gc_config_get\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"_bi503\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"_bi507\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"_bi537\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"_bi550\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"_bi586\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@id2ref_value = internal global i64 0, align 8
@.str.50 = private unnamed_addr constant [3 x i8] c"GC\00", align 1
@rb_mGC = dso_local local_unnamed_addr global i64 0, align 8
@.str.51 = private unnamed_addr constant [12 x i8] c"ObjectSpace\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"each_object\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"define_finalizer\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"undefine_finalizer\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"_id2ref\00", align 1
@rb_eNoMemError = external local_unnamed_addr global i64, align 8
@.str.56 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@rb_cBasicObject = external local_unnamed_addr global i64, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"__id__\00", align 1
@rb_mKernel = external local_unnamed_addr global i64, align 8
@.str.58 = private unnamed_addr constant [10 x i8] c"object_id\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"count_objects\00", align 1
@ruby_rgengc_debug = hidden local_unnamed_addr global i32 0, align 4
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [34 x i8] c"integer overflow: %zu * %zu > %zu\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"[FATAL] \00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"integer overflow: %zu * %zu + %zu > %zu\00", align 1
@.str.65 = private unnamed_addr constant [62 x i8] c"gc_verify_internal_consistency: found internal inconsistency.\00", align 1
@.str.66 = private unnamed_addr constant [55 x i8] c"heap_pages_final_slots: %zd, total_freed_objects: %zd\0A\00", align 1
@.str.67 = private unnamed_addr constant [52 x i8] c"inconsistent live slot number: expect %zu, but %zu.\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"inconsistent old slot number: expect %zu, but %zu.\00", align 1
@.str.69 = private unnamed_addr constant [68 x i8] c"inconsistent number of wb unprotected objects: expect %zu, but %zu.\00", align 1
@.str.70 = private unnamed_addr constant [120 x i8] c"inconsistent finalizing object count:\0A  expect %zu\0A  but    %zu zombies\0A  heap_pages_deferred_final list has %zu items.\00", align 1
@.str.71 = private unnamed_addr constant [65 x i8] c"verify_internal_consistency_i: T_ZOMBIE has extra flags set: %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [74 x i8] c"verify_internal_consistency_i: FL_FINALIZE %s but %s finalizer_table: %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"not set\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"not in\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"check_children_i: %s has error (referenced from %s)\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"check_rvalue_consistency: %p is a special const.\0A\00", align 1
@.str.79 = private unnamed_addr constant [56 x i8] c"check_rvalue_consistency: %p is in an empty page (%p).\0A\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"check_rvalue_consistency: %p is not a Ruby object.\0A\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"check_rvalue_consistency: %s is in tomb page.\0A\00", align 1
@.str.82 = private unnamed_addr constant [41 x i8] c"check_rvalue_consistency: %s is T_NONE.\0A\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"check_rvalue_consistency: %s is T_ZOMBIE.\0A\00", align 1
@.str.84 = private unnamed_addr constant [70 x i8] c"check_rvalue_consistency: %s is not WB protected, but age is %d > 0.\0A\00", align 1
@.str.85 = private unnamed_addr constant [77 x i8] c"check_rvalue_consistency: %s is uncollectible, but is not marked while !gc.\0A\00", align 1
@.str.86 = private unnamed_addr constant [94 x i8] c"check_rvalue_consistency: %s is uncollectible, but not old (age: %d) and not WB unprotected.\0A\00", align 1
@.str.87 = private unnamed_addr constant [68 x i8] c"check_rvalue_consistency: %s is remembered, but not old (age: %d).\0A\00", align 1
@.str.88 = private unnamed_addr constant [58 x i8] c"check_rvalue_consistency: %s is marking, but not marked.\0A\00", align 1
@.str.90 = private unnamed_addr constant [66 x i8] c"verify_internal_consistency_reachable_i: WB miss (O->Y) %s -> %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [68 x i8] c"verify_internal_consistency_reachable_i: WB miss (B->W) - %s -> %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [49 x i8] c"freelist slot expected to be T_NONE but was: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"marking -> %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [96 x i8] c"page %p's has_remembered_objects should be false, but there are remembered old objects (%d). %s\00", align 1
@.str.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.97 = private unnamed_addr constant [91 x i8] c"page %p's has_remembered_shady should be false, but there are remembered shady objects. %s\00", align 1
@.str.98 = private unnamed_addr constant [43 x i8] c"page %p's final_slots should be %d, but %d\00", align 1
@gc_params = internal global %struct.ruby_gc_params_t { [5 x i64] [i64 10000, i64 0, i64 0, i64 0, i64 0], i64 4096, double 1.800000e+00, i64 0, double 2.000000e-01, double 4.000000e-01, double 6.500000e-01, double 1.000000e-02, double 2.000000e+00, i64 16777216, i64 33554432, double 1.400000e+00, i64 16777216, i64 134217728, double 1.200000e+00 }, align 64
@.str.99 = private unnamed_addr constant [43 x i8] c"Could not preregister postponed job for GC\00", align 1
@heap_page_alloc_use_mmap = internal unnamed_addr global i1 false, align 1
@.str.100 = private unnamed_addr constant [54 x i8] c"FL_FINALIZE flag is set, but finalizers are not found\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"Exception in finalizer %+li\0B\00", align 1
@current_process_time.try_clock_gettime = internal unnamed_addr global i1 false, align 4
@.str.103 = private unnamed_addr constant [49 x i8] c"lazy sweeping underway when freeing object space\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"heap_page_body_free: munmap failed\00", align 1
@.str.105 = private unnamed_addr constant [72 x i8] c"heap_idx_for_size: allocation size too large (size=%zuu, heap_idx=%zuu)\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"during_gc != 0\00", align 1
@.str.112 = private unnamed_addr constant [48 x i8] c"try to mark T_NONE object (obj: %s, parent: %s)\00", align 1
@.str.113 = private unnamed_addr constant [43 x i8] c"push_mark_stack() called for broken object\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"push_mark_stack: unexpected T_NODE object\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"rb_gc_mark(): unknown data type 0x%x(%p) %s\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"corrupted object\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"non object\00", align 1
@.str.119 = private unnamed_addr constant [45 x i8] c"rb_darray_realloc_mul_add_without_gc: failed\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@old_sigbus_handler = internal global %struct.sigaction zeroinitializer, align 8
@old_sigsegv_handler = internal global %struct.sigaction zeroinitializer, align 8
@.str.129 = private unnamed_addr constant [47 x i8] c"read_barrier_handler: segmentation fault at %p\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"Couldn't unprotect page %p, errno: %s\00", align 1
@.str.131 = private unnamed_addr constant [37 x i8] c"gc_is_moveable_obj: unreachable (%d)\00", align 1
@.str.133 = private unnamed_addr constant [55 x i8] c"T_MOVED shouldn't be seen until compaction is finished\00", align 1
@.str.134 = private unnamed_addr constant [67 x i8] c"Object ID seen, but not in _id2ref table: object_id=%llu object=%s\00", align 1
@.str.135 = private unnamed_addr constant [36 x i8] c"obj_free() called for broken object\00", align 1
@.str.136 = private unnamed_addr constant [53 x i8] c"obj_free(): GC does not handle T_NODE 0x%x(%p) 0x%lx\00", align 1
@.str.137 = private unnamed_addr constant [45 x i8] c"gc_sweep(): unknown data type 0x%x(%p) 0x%lx\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"Couldn't protect page %p, errno: %s\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@rb_shape_tree = external local_unnamed_addr global %struct.rb_shape_tree_t, align 8
@rb_yjit_enabled_p = external local_unnamed_addr global i8, align 1
@rb_zjit_entry = external local_unnamed_addr global ptr, align 8
@.str.144 = private unnamed_addr constant [64 x i8] c"vm_weak_table_gen_fields_foreach: return value %d not supported\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"same heap page is allocated: %p at %lu\00", align 1
@.str.148 = private unnamed_addr constant [40 x i8] c"Ruby:GC:default:heap_page_body_allocate\00", align 1
@.str.149 = private unnamed_addr constant [49 x i8] c"heap_page_body_allocate: munmap failed for start\00", align 1
@.str.150 = private unnamed_addr constant [47 x i8] c"heap_page_body_allocate: munmap failed for end\00", align 1
@.str.151 = private unnamed_addr constant [34 x i8] c"cannot create a new page after GC\00", align 1
@.str.152 = private unnamed_addr constant [40 x i8] c"cannot create a new page after major GC\00", align 1
@ruby_enable_autocompact = internal unnamed_addr global i8 0, align 1
@.str.153 = private unnamed_addr constant [34 x i8] c"gc_profile malloc or realloc miss\00", align 1
@.str.157 = private unnamed_addr constant [50 x i8] c"object allocation during garbage collection phase\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@.str.158 = private unnamed_addr constant [46 x i8] c"undefining the allocator of T_DATA class %li\0B\00", align 1
@.str.159 = private unnamed_addr constant [62 x i8] c"internal_object_p(): GC does not handle T_NODE 0x%x(%p) 0x%lx\00", align 1
@rb_mRubyVMFrozenCore = external local_unnamed_addr global i64, align 8
@.str.160 = private unnamed_addr constant [75 x i8] c"rb_gc_copy_finalizer: FL_FINALIZE set but not found in finalizer_table: %s\00", align 1
@.str.162 = private unnamed_addr constant [31 x i8] c"cannot define finalizer for %s\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"wrong type argument %li\0B (should be callable)\00", align 1
@object_id_counter = internal global i64 1, align 8
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.165 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@rb_gc_impl_object_metadata.names.0 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.1 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.2 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.3 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.4 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.5 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.6 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.7 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.8 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.names.9 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.166 = private unnamed_addr constant [13 x i8] c"wb_protected\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.167 = internal unnamed_addr global i64 0, align 8
@.str.168 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.169 = internal unnamed_addr global i64 0, align 8
@.str.170 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.171 = internal unnamed_addr global i64 0, align 8
@.str.172 = private unnamed_addr constant [14 x i8] c"uncollectible\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.173 = internal unnamed_addr global i64 0, align 8
@.str.174 = private unnamed_addr constant [8 x i8] c"marking\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.175 = internal unnamed_addr global i64 0, align 8
@.str.176 = private unnamed_addr constant [7 x i8] c"marked\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.177 = internal unnamed_addr global i64 0, align 8
@.str.178 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.179 = internal unnamed_addr global i64 0, align 8
@.str.180 = private unnamed_addr constant [11 x i8] c"remembered\00", align 1
@rb_gc_impl_object_metadata.rbimpl_id.181 = internal unnamed_addr global i64 0, align 8
@rb_gc_impl_object_metadata.rbimpl_id.182 = internal unnamed_addr global i64 0, align 8
@.str.183 = private unnamed_addr constant [10 x i8] c"shareable\00", align 1
@object_metadata_entries = internal global [11 x %struct.rb_gc_object_metadata_entry] zeroinitializer, align 16
@.str.186 = private unnamed_addr constant [31 x i8] c"hash modified during iteration\00", align 1
@gc_info_decode.sym_major_by = internal unnamed_addr global i64 4, align 8
@gc_info_decode.sym_gc_by = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_immediate_sweep = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_have_finalizer = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_state = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_need_major_by = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_nofree = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_oldgen = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_shady = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_force = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_stress = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_oldmalloc = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_newobj = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_malloc = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_method = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_capi = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_none = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_marking = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_sweeping = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_weak_references_count = internal unnamed_addr global i64 0, align 8
@gc_info_decode.sym_retained_weak_references_count = internal unnamed_addr global i64 0, align 8
@.str.187 = private unnamed_addr constant [41 x i8] c"gc_info_decode: non-hash or symbol given\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"major_by\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"gc_by\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"immediate_sweep\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"have_finalizer\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"need_major_by\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"stress\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"nofree\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"oldgen\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"shady\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"oldmalloc\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"newobj\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"capi\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"sweeping\00", align 1
@.str.206 = private unnamed_addr constant [22 x i8] c"weak_references_count\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"retained_weak_references_count\00", align 1
@gc_stat_symbols = internal unnamed_addr global [31 x i64] zeroinitializer, align 16
@.str.208 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"marking_time\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"sweeping_time\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"heap_allocated_pages\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"heap_empty_pages\00", align 1
@.str.214 = private unnamed_addr constant [23 x i8] c"heap_allocatable_slots\00", align 1
@.str.215 = private unnamed_addr constant [21 x i8] c"heap_available_slots\00", align 1
@.str.216 = private unnamed_addr constant [16 x i8] c"heap_live_slots\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"heap_free_slots\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"heap_final_slots\00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c"heap_marked_slots\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"heap_eden_pages\00", align 1
@.str.221 = private unnamed_addr constant [22 x i8] c"total_allocated_pages\00", align 1
@.str.222 = private unnamed_addr constant [18 x i8] c"total_freed_pages\00", align 1
@.str.223 = private unnamed_addr constant [24 x i8] c"total_allocated_objects\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"total_freed_objects\00", align 1
@.str.225 = private unnamed_addr constant [22 x i8] c"malloc_increase_bytes\00", align 1
@.str.226 = private unnamed_addr constant [28 x i8] c"malloc_increase_bytes_limit\00", align 1
@.str.227 = private unnamed_addr constant [15 x i8] c"minor_gc_count\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"major_gc_count\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"compact_count\00", align 1
@.str.230 = private unnamed_addr constant [20 x i8] c"read_barrier_faults\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c"total_moved_objects\00", align 1
@.str.232 = private unnamed_addr constant [34 x i8] c"remembered_wb_unprotected_objects\00", align 1
@.str.233 = private unnamed_addr constant [40 x i8] c"remembered_wb_unprotected_objects_limit\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"old_objects\00", align 1
@.str.235 = private unnamed_addr constant [18 x i8] c"old_objects_limit\00", align 1
@.str.236 = private unnamed_addr constant [25 x i8] c"oldmalloc_increase_bytes\00", align 1
@.str.237 = private unnamed_addr constant [31 x i8] c"oldmalloc_increase_bytes_limit\00", align 1
@malloc_increase_local = internal thread_local unnamed_addr global i32 0, align 4
@heap_sizes = internal global [6 x i64] zeroinitializer, align 16
@.str.238 = private unnamed_addr constant [24 x i8] c"RUBY_GC_HEAP_FREE_SLOTS\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"RUBY_GC_HEAP_%d_INIT_SLOTS\00", align 1
@.str.240 = private unnamed_addr constant [27 x i8] c"RUBY_GC_HEAP_GROWTH_FACTOR\00", align 1
@.str.241 = private unnamed_addr constant [30 x i8] c"RUBY_GC_HEAP_GROWTH_MAX_SLOTS\00", align 1
@.str.242 = private unnamed_addr constant [34 x i8] c"RUBY_GC_HEAP_FREE_SLOTS_MIN_RATIO\00", align 1
@.str.243 = private unnamed_addr constant [34 x i8] c"RUBY_GC_HEAP_FREE_SLOTS_MAX_RATIO\00", align 1
@.str.244 = private unnamed_addr constant [35 x i8] c"RUBY_GC_HEAP_FREE_SLOTS_GOAL_RATIO\00", align 1
@.str.245 = private unnamed_addr constant [36 x i8] c"RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR\00", align 1
@.str.246 = private unnamed_addr constant [59 x i8] c"RUBY_GC_HEAP_REMEMBERED_WB_UNPROTECTED_OBJECTS_LIMIT_RATIO\00", align 1
@.str.247 = private unnamed_addr constant [21 x i8] c"RUBY_GC_MALLOC_LIMIT\00", align 1
@.str.248 = private unnamed_addr constant [25 x i8] c"RUBY_GC_MALLOC_LIMIT_MAX\00", align 1
@.str.249 = private unnamed_addr constant [35 x i8] c"RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"RUBY_GC_OLDMALLOC_LIMIT\00", align 1
@.str.251 = private unnamed_addr constant [28 x i8] c"RUBY_GC_OLDMALLOC_LIMIT_MAX\00", align 1
@.str.252 = private unnamed_addr constant [38 x i8] c"RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR\00", align 1
@.str.253 = private unnamed_addr constant [27 x i8] c"invalid string for %s: %s\0A\00", align 1
@.str.254 = private unnamed_addr constant [39 x i8] c"%s=%s is ignored because it overflows\0A\00", align 1
@.str.255 = private unnamed_addr constant [29 x i8] c"%s=%zd (default value: %zu)\0A\00", align 1
@.str.256 = private unnamed_addr constant [77 x i8] c"%s=%zd (default value: %zu) is ignored because it must be greater than %zu.\0A\00", align 1
@.str.257 = private unnamed_addr constant [74 x i8] c"%s=%f (default value: %f) is ignored because it must be greater than %f.\0A\00", align 1
@.str.258 = private unnamed_addr constant [72 x i8] c"%s=%f (default value: %f) is ignored because it must be lower than %f.\0A\00", align 1
@.str.259 = private unnamed_addr constant [27 x i8] c"%s=%f (default value: %f)\0A\00", align 1
@.str.260 = private unnamed_addr constant [38 x i8] c"rb_gc_mark() called for broken object\00", align 1
@.str.261 = private unnamed_addr constant [55 x i8] c"rb_gc_mark(): GC does not handle T_NODE 0x%x(%p) 0x%lx\00", align 1
@.str.262 = private unnamed_addr constant [28 x i8] c"rb_gc_mark(): %p is T_MOVED\00", align 1
@.str.263 = private unnamed_addr constant [27 x i8] c"rb_gc_mark(): %p is T_NONE\00", align 1
@.str.264 = private unnamed_addr constant [29 x i8] c"rb_gc_mark(): %p is T_ZOMBIE\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"end_proc\00", align 1
@.str.267 = private unnamed_addr constant [11 x i8] c"global_tbl\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"YJIT\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"ZJIT\00", align 1
@.str.270 = private unnamed_addr constant [16 x i8] c"machine_context\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"global_symbols\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.274 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"%p %s/\00", align 1
@.str.276 = private unnamed_addr constant [21 x i8] c"(temporary internal)\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"T_NONE\00", align 1
@.str.279 = private unnamed_addr constant [9 x i8] c"T_OBJECT\00", align 1
end_hunk_0
begin_hunk_1_@gc_marks_finish:bb.a
  %i.bk = getelementptr [8 x i8], ptr %i.ca, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bm = load i64, ptr %i.ca, align 8, !tbaa !59
  %i.bn = getelementptr i8, ptr %i.ca, i64 4000   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !173 ; 2 uses
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !175
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !173
  store ptr %i.ca, ptr %i.q, align 8, !tbaa !175
  %i.bq = load i64, ptr %i.r, align 8, !tbaa !176
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.r, align 8, !tbaa !176
  store ptr %i.bo, ptr %i.o, align 8, !tbaa !183
  %i.bs = load i32, ptr %i.s, align 4, !tbaa !171
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.i.i = phi i32 [ %i.bs, %bb.n ], [ %i.bi, %bb.m ]
  %i.bt = phi ptr [ %i.bo, %bb.n ], [ %i.ca, %bb.m ]
  %.118.ph.us.i.i.i = phi i64 [ %i.bm, %bb.n ], [ %i.bl, %bb.m ] ; 4 uses
  store i32 %.sink.i.i.i, ptr %i.p, align 8, !tbaa !172
  %i.bu = icmp eq i64 %.118.ph.us.i.i.i, 36
  br i1 %i.bu, label %bb.q, label %bb.p, !llvm.loop !508

bb.p:                                             ; preds = %bb.o
  %i.bv = inttoptr i64 %.118.ph.us.i.i.i to ptr
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !109
  %i.bx = trunc i64 %i.bw to i8
  %i.by = lshr i8 %i.bx, 5
  %i.bz = and i8 %i.by, 1
  store i64 %.118.ph.us.i.i.i, ptr %i.f, align 8, !tbaa !290
  store i8 %i.bz, ptr %i.e, align 8, !tbaa !291
  tail call fastcc void @rb_gc_mark_children(ptr noundef nonnull %0, i64 noundef %.118.ph.us.i.i.i)
  br label %.outer.us.i.i.i, !llvm.loop !508

bb.q:                                             ; preds = %bb.o, %.outer.us.i.i.i
  %i.ca = phi ptr [ %.promoted.us.i.i.i, %.outer.us.i.i.i ], [ %i.bt, %bb.o ] ; 6 uses
  %.not.i.us.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.us.i.i.i, label %pop_mark_stack.exit.thread.i.i.i, label %bb.l

pop_mark_stack.exit.thread.i.i.i:                 ; preds = %bb.q
  %i.cb = load i64, ptr %i.t, align 8, !tbaa !177
  %i.cc = load i64, ptr %i.r, align 8, !tbaa !176 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.r, label %gc_marks_wb_unprotected_objects.exit

bb.r:                                             ; preds = %pop_mark_stack.exit.thread.i.i.i
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !175 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4000
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !173
  store ptr %i.ch, ptr %i.q, align 8, !tbaa !175
  %i.ci = add i64 %i.cc, -1
  store i64 %i.ci, ptr %i.r, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.cf) #47
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !176
  br label %gc_marks_wb_unprotected_objects.exit

gc_marks_wb_unprotected_objects.exit:             ; preds = %pop_mark_stack.exit.thread.i.i.i, %bb.r
  %i.cj = phi i64 [ %.pre.i.i.i.i, %bb.r ], [ %i.cc, %pop_mark_stack.exit.thread.i.i.i ]
  store i64 %i.cj, ptr %i.t, align 8, !tbaa !177
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !513

.loopexit:                                        ; preds = %gc_marks_wb_unprotected_objects.exit, %bb.a
  %i.ck = getelementptr i8, ptr %0, i64 2224      ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !188 ; 6 uses
  %.not.i.i79 = icmp eq ptr %i.cl, null           ; 2 uses
  br i1 %.not.i.i79, label %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i, label %rb_darray_size.exit.lr.ph.i

rb_darray_size.exit.lr.ph.i:                      ; preds = %.loopexit
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !96 ; 2 uses
  %.not45.i = icmp eq i64 %i.cn, 0
  br i1 %.not45.i, label %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %rb_darray_size.exit.lr.ph.i, %rb_darray_size.exit.i
  %i.co = phi i64 [ %i.ds, %rb_darray_size.exit.i ], [ %i.cn, %rb_darray_size.exit.lr.ph.i ] ; 3 uses
  %.0162939.i = phi i64 [ %i.dt, %rb_darray_size.exit.i ], [ 0, %rb_darray_size.exit.lr.ph.i ] ; 2 uses
  %.03038.i = phi i64 [ %.3.i, %rb_darray_size.exit.i ], [ 0, %rb_darray_size.exit.lr.ph.i ] ; 5 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %.0162939.i ; 2 uses
  %.not.i81 = icmp eq ptr %i.cp, null
  br i1 %.not.i81, label %rb_darray_clear.exit.i, label %bb.w

rb_darray_clear.exit.i:                           ; preds = %rb_darray_size.exit.i, %.lr.ph.i80
  %.0.lcssa27.i = phi i64 [ %.3.i, %rb_darray_size.exit.i ], [ %.03038.i, %.lr.ph.i80 ] ; 4 uses
  %i.cq = getelementptr i8, ptr %0, i64 1112
  store i64 %.0.lcssa27.i, ptr %i.cq, align 8, !tbaa !514
  store i64 0, ptr %i.cl, align 8, !tbaa !96
  %i.cr = icmp ugt i64 %.0.lcssa27.i, 2305843009213693951
  br i1 %i.cr, label %bb.s, label %rbimpl_size_mul_or_raise.exit.i.i.i, !prof !515

bb.s:                                             ; preds = %rb_darray_clear.exit.i
  tail call void @ruby_malloc_size_overflow(i64 noundef %.0.lcssa27.i, i64 noundef 8) #65
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.sink.split.i:   ; preds = %rb_darray_size.exit.lr.ph.i, %.loopexit
  %i.cs = getelementptr i8, ptr %0, i64 1112
  store i64 0, ptr %i.cs, align 8, !tbaa !514
  br label %rbimpl_size_mul_or_raise.exit.i.i.i

rbimpl_size_mul_or_raise.exit.i.i.i:              ; preds = %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i, %rb_darray_clear.exit.i
  %.02854.i = phi i64 [ %.0.lcssa27.i, %rb_darray_clear.exit.i ], [ 0, %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i ] ; 2 uses
  %i.ct = shl nuw i64 %.02854.i, 3                ; 2 uses
  %i.cu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ct, i64 16) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %bb.t, label %rbimpl_size_add_or_raise.exit.i.i.i, !prof !60

bb.t:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  tail call void @ruby_malloc_add_size_overflow(i64 noundef %i.ct, i64 noundef 16) #65
  unreachable

rbimpl_size_add_or_raise.exit.i.i.i:              ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  %i.cw = extractvalue { i64, i1 } %i.cu, 0
  %i.cx = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cw) #71 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.u, label %rb_darray_realloc_mul_add_without_gc.exit.i.i

bb.u:                                             ; preds = %rbimpl_size_add_or_raise.exit.i.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.119) #63
  unreachable

rb_darray_realloc_mul_add_without_gc.exit.i.i:    ; preds = %rbimpl_size_add_or_raise.exit.i.i.i
  br i1 %.not.i.i79, label %bb.v, label %gc_update_weak_references.exit

bb.v:                                             ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i
  store i64 0, ptr %i.cx, align 8, !tbaa !96
  br label %gc_update_weak_references.exit

bb.w:                                             ; preds = %.lr.ph.i80
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !216 ; 3 uses
  %.not19.i = icmp eq ptr %i.cz, null
  br i1 %.not19.i, label %rb_darray_size.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59 ; 4 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = and i64 %i.da, 7
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = or i1 %i.db, %i.dd
  br i1 %i.de, label %rb_darray_size.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = and i64 %i.da, -65536
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load ptr, ptr %i.dg, align 65536, !tbaa !113
  %i.di = getelementptr i8, ptr %i.dh, i64 280
  %.lhs.trunc.i.i = trunc i64 %i.da to i16        ; 2 uses
  %i.dj = udiv i16 %.lhs.trunc.i.i, 40
  %i.dk = udiv i16 %.lhs.trunc.i.i, 2560
  %.zext2.i.i = zext nneg i16 %i.dk to i64
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %.zext2.i.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !59
  %i.dn = and i16 %i.dj, 63
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dm, %i.dp
  %.not20.i = icmp eq i64 %i.dq, 0
  br i1 %.not20.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 36, ptr %i.cz, align 8, !tbaa !59
  %.pre.i = load i64, ptr %i.cl, align 8, !tbaa !96
  br label %rb_darray_size.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dr = add i64 %.03038.i, 1
  br label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %i.ds = phi i64 [ %i.co, %bb.w ], [ %i.co, %bb.x ], [ %i.co, %bb.aa ], [ %.pre.i, %bb.z ] ; 2 uses
  %.3.i = phi i64 [ %.03038.i, %bb.w ], [ %.03038.i, %bb.x ], [ %i.dr, %bb.aa ], [ %.03038.i, %bb.z ] ; 2 uses
  %i.dt = add nuw i64 %.0162939.i, 1              ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  br i1 %i.du, label %.lr.ph.i80, label %rb_darray_clear.exit.i

gc_update_weak_references.exit:                   ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i, %bb.v
  %i.dv = getelementptr i8, ptr %i.cx, i64 8
  store i64 %.02854.i, ptr %i.dv, align 8, !tbaa !292
  %i.dw = ptrtoint ptr %i.cx to i64
  store i64 %i.dw, ptr %i.ck, align 1
  %i.dx = getelementptr i8, ptr %0, i64 2240
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !314
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 8) ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 184
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !330
  %i.eb = getelementptr i8, ptr %0, i64 336
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !330
  %i.ed = getelementptr i8, ptr %0, i64 488
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !330
  %i.ef = getelementptr i8, ptr %0, i64 640
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !330
  %i.eh = getelementptr i8, ptr %0, i64 792
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !330
  %i.ej = getelementptr i8, ptr %0, i64 864
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !339 ; 2 uses
  %i.el = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  %i.em = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 64), align 64, !tbaa !352
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 40), align 8, !tbaa !516
  %i.eo = load i16, ptr %i.b, align 4
  %2 = load <5 x i64>, ptr @gc_params, align 64, !tbaa !59
  %i.ep = tail call i64 @llvm.vector.reduce.add.v5i64(<5 x i64> %2)
  %i.eq = mul i64 %i.ep, %spec.select
  %i.er = add i64 %i.ec, %i.ea
  %i.es = add i64 %i.er, %i.ee
  %i.et = add i64 %i.es, %i.eg
  %i.eu = add i64 %i.et, %i.ei                    ; 6 uses
  %i.ev = sub i64 %i.eu, %i.ek                    ; 3 uses
  %i.ew = uitofp i64 %i.eu to double              ; 5 uses
  %i.ex = fmul double %i.el, %i.ew
  %i.ey = fptoui double %i.ex to i64
  %i.ez = fmul double %i.em, %i.ew
  %i.fa = fptoui double %i.ez to i64
  %i.fb = mul i64 %i.en, %spec.select
  %.065 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fa)
  %i.fc = and i16 %i.eo, 1024
  %.not92 = icmp eq i16 %i.fc, 0                  ; 2 uses
  %spec.select77 = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.ey) ; 2 uses
  %i.fd = icmp ugt i64 %i.ev, %spec.select77
  br i1 %i.fd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %gc_update_weak_references.exit
  %i.fe = sub nuw i64 %i.ev, %spec.select77
  %i.ff = udiv i64 %i.fe, 1638
  br label %bb.ac

bb.ac:                                            ; preds = %gc_update_weak_references.exit, %bb.ab
  %.sink = phi i64 [ %i.ff, %bb.ab ], [ 0, %gc_update_weak_references.exit ]
  %i.fg = getelementptr i8, ptr %0, i64 912
  store i64 %.sink, ptr %i.fg, align 8, !tbaa !334
  %i.fh = getelementptr i8, ptr %0, i64 920       ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !331
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = icmp ult i64 %i.ev, %.065
  %or.cond = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not92, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr i8, ptr %0, i64 1048
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !336
  %i.fn = getelementptr i8, ptr %0, i64 1152
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !517
  %i.fp = sub i64 %i.fm, %i.fo
  %i.fq = icmp ult i64 %i.fp, 3
  br i1 %i.fq, label %bb.af, label %.thread86

.thread86:                                        ; preds = %bb.ae
  %i.fr = getelementptr i8, ptr %0, i64 1144      ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !453
  %i.ft = or i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !453
  br label %bb.am

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fu = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 72), align 8, !tbaa !450 ; 2 uses
  %i.fv = fcmp oeq double %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fw = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 48), align 16, !tbaa !451
  %i.fx = fmul double %i.fw, %i.ew
  %i.fy = fptoui double %i.fx to i64
  br label %.thread89

bb.ah:                                            ; preds = %bb.af
  %i.fz = icmp eq i64 %i.eu, 0
  br i1 %i.fz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ga = getelementptr i8, ptr %0, i64 40
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 0, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 19
  %i.ge = getelementptr i8, ptr @gc_params, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !59
  br label %.thread89

bb.aj:                                            ; preds = %bb.ah
  %i.gg = uitofp i64 %i.ek to double
  %i.gh = fsub double 1.000000e+00, %i.fu
  %i.gi = fmul double %i.gh, %i.ew
  %i.gj = fdiv double %i.gg, %i.gi                ; 2 uses
  %i.gk = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 48), align 16, !tbaa !451 ; 2 uses
  %i.gl = fcmp ogt double %i.gj, %i.gk
  %.021.i = select i1 %i.gl, double %i.gk, double %i.gj ; 2 uses
  %i.gm = fcmp olt double %.021.i, 1.000000e+00
  %.122.i = select i1 %i.gm, double 1.100000e+00, double %.021.i
  %i.gn = fmul double %.122.i, %i.ew
  %i.go = fptoui double %i.gn to i64
  br label %.thread89

.thread89:                                        ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i = phi i64 [ %i.fy, %bb.ag ], [ %i.gf, %bb.ai ], [ %i.go, %bb.aj ] ; 2 uses
  %i.gp = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 56), align 8, !tbaa !452 ; 2 uses
  %.not.i82 = icmp eq i64 %i.gp, 0
  %i.gq = add i64 %i.gp, %i.eu
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.gq)
  %.2.i = select i1 %.not.i82, i64 %.0.i, i64 %spec.select.i ; 2 uses
  %i.gr = sub i64 %.2.i, %i.eu
  %i.gs = icmp eq i64 %.2.i, %i.eu
  %spec.store.select.i = select i1 %i.gs, i64 1, i64 %i.gr
  store i64 %spec.store.select.i, ptr %i.fh, align 8, !tbaa !331
  br label %bb.al

bb.ak:                                            ; preds = %bb.ac
  br i1 %.not92, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread89, %bb.ak
  %i.gt = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 96), align 32, !tbaa !518 ; 2 uses
  %i.gu = getelementptr i8, ptr %0, i64 1160
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !156
  %i.gw = uitofp i64 %i.gv to double
  %i.gx = fmul double %i.gt, %i.gw
  %i.gy = fptoui double %i.gx to i64
  %i.gz = getelementptr i8, ptr %0, i64 1176
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !155
  %i.hb = uitofp i64 %i.ha to double              ; 2 uses
  %i.hc = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 88), align 8, !tbaa !519
  %i.hd = fmul double %i.hc, %i.hb
  %i.he = fptoui double %i.hd to i64
  %. = tail call i64 @llvm.umax.i64(i64 %i.gy, i64 %i.he)
  %i.hf = getelementptr i8, ptr %0, i64 1168
  store i64 %., ptr %i.hf, align 8, !tbaa !348
  %i.hg = fmul double %i.gt, %i.hb
  %i.hh = fptoui double %i.hg to i64
  %i.hi = getelementptr i8, ptr %0, i64 1184
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !349
  br label %bb.am

bb.am:                                            ; preds = %.thread86, %bb.al, %bb.ak
  %i.hj = getelementptr i8, ptr %0, i64 1160
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !156
  %i.hl = getelementptr i8, ptr %0, i64 1168
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !348
  %i.hn = icmp ugt i64 %i.hk, %i.hm
  br i1 %i.hn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ho = getelementptr i8, ptr %0, i64 1144      ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !453
  %i.hq = or i32 %i.hp, 4
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !453
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hr = getelementptr i8, ptr %0, i64 1176
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !155
  %i.ht = getelementptr i8, ptr %0, i64 1184
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !349
  %i.hv = icmp ugt i64 %i.hs, %i.hu
  br i1 %i.hv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hw = getelementptr i8, ptr %0, i64 1144      ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !453
  %i.hy = or i32 %i.hx, 2
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !453
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void @rb_ractor_finish_marking() #47
  %i.hz = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.ia = and i32 %i.hz, 8388608
  %.not12.i = icmp eq i32 %i.ia, 0
  br i1 %.not12.i, label %rb_gc_event_hook.exit, label %bb.ar, !prof !189

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ib = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !14
  store volatile ptr %i.ic, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.id = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !224 ; 3 uses
  %.not.i83 = icmp eq ptr %i.ie, null
  br i1 %.not.i83, label %rb_gc_event_hook.exit, label %rb_ec_hooks.exit.i

rb_ec_hooks.exit.i:                               ; preds = %bb.ar
  %i.if = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.if, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.ig = getelementptr i8, ptr %.val.i, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !225 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 1120
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !226
  %i.ik = and i32 %i.ij, 8388608
  %.not11.i = icmp eq i32 %i.ik, 0
  br i1 %.not11.i, label %rb_gc_event_hook.exit, label %bb.as, !prof !189

bb.as:                                            ; preds = %rb_ec_hooks.exit.i
  %i.il = getelementptr i8, ptr %i.ih, i64 1112
  %i.im = getelementptr i8, ptr %i.ie, i64 24
  %i.in = load i64, ptr %i.im, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store i32 8388608, ptr %1, align 8, !tbaa !230
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.io, align 8, !tbaa !232
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ie, ptr %i.ip, align 8, !tbaa !233
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_1
begin_hunk_2_@gc_sweep_step:bb.a
  %i.ft = getelementptr i8, ptr %0, i64 776
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !466
  store ptr %i.fu, ptr %i.fm, align 8, !tbaa !447
  br label %.split.us.loopexit.i

.split.us.loopexit.i:                             ; preds = %bb.aj, %bb.ai
  %i.fv = getelementptr i8, ptr %0, i64 776
  store ptr null, ptr %i.fv, align 8, !tbaa !466
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %gc_prof_set_heap_info.exit.split.preheader.i
  %i.fw = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.fx = and i32 %i.fw, 16777216
  %.not12.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not12.i.i, label %gc_sweep_finish.exit, label %bb.ak, !prof !189

bb.ak:                                            ; preds = %.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fy = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !14
  store volatile ptr %i.fz, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ga = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !224 ; 3 uses
  %.not.i24.i = icmp eq ptr %i.gb, null
  br i1 %.not.i24.i, label %gc_sweep_finish.exit, label %rb_ec_hooks.exit.i.i

rb_ec_hooks.exit.i.i:                             ; preds = %bb.ak
  %i.gc = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.gc, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.gd = getelementptr i8, ptr %.val.i.i, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !225 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 1120
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !226
  %i.gh = and i32 %i.gg, 16777216
  %.not11.i25.i = icmp eq i32 %i.gh, 0
  br i1 %.not11.i25.i, label %gc_sweep_finish.exit, label %bb.al, !prof !189

bb.al:                                            ; preds = %rb_ec_hooks.exit.i.i
  %i.gi = getelementptr i8, ptr %i.ge, i64 1112
  %i.gj = getelementptr i8, ptr %i.gb, i64 24
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store i32 16777216, ptr %4, align 8, !tbaa !230
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr %i.gl, align 8, !tbaa !232
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gb, ptr %i.gm, align 8, !tbaa !233
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.gk, ptr %i.gn, align 8, !tbaa !234
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i8 0, i64 32, i1 false)
  store i64 36, ptr %i.gp, align 8, !tbaa !235
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.gq, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %4, ptr noundef %i.gi, i32 noundef 0) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %gc_sweep_finish.exit

gc_sweep_finish.exit:                             ; preds = %.split.us.i, %bb.ak, %rb_ec_hooks.exit.i.i, %bb.al
  %i.gr = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 4
  %i.gt = and i16 %i.gs, -4
  store i16 %i.gt, ptr %i.gr, align 4
  br label %has_sweeping_pages.exit.thread

has_sweeping_pages.exit.thread:                   ; preds = %bb.r, %bb.q, %.thread72, %bb.s, %has_sweeping_pages.exit, %gc_sweep_finish.exit, %bb.p
  %i.gu = load i32, ptr %i.e, align 8, !tbaa !471
  %.not.i65 = icmp eq i32 %i.gu, 0
  br i1 %.not.i65, label %gc_prof_sweep_timer_stop.exit, label %bb.am

bb.am:                                            ; preds = %has_sweeping_pages.exit.thread
  %i.gv = getelementptr i8, ptr %0, i64 960
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !472 ; 2 uses
  %.not9.i = icmp eq ptr %i.gw, null
  br i1 %.not9.i, label %gc_prof_sweep_timer_stop.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gx = getelementptr i8, ptr %i.gw, i64 8      ; 3 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !520
  %i.gz = fcmp ogt double %i.gy, 0.000000e+00
  br i1 %i.gz, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ha = getelementptr i8, ptr %0, i64 1024
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !521 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %.b.i.i.i.i = load i1, ptr @current_process_time.try_clock_gettime, align 4
  br i1 %.b.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %3) #47
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.current_process_time.exit.thread_crit_edge.i.i.i, label %bb.aq

.current_process_time.exit.thread_crit_edge.i.i.i: ; preds = %bb.ap
  %.pre.i.i.i = load i64, ptr %3, align 8, !tbaa !178
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !179
  br label %current_process_time.exit.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i1 true, ptr @current_process_time.try_clock_gettime, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.he = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %2) #47
  %.not.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i.i.i, label %current_process_time.exit.thread2.i.i.i, label %current_process_time.exit.i.i.i

current_process_time.exit.thread2.i.i.i:          ; preds = %bb.aq
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !59
  %sext.i.i.i.i = mul i64 %.sroa.4.0.copyload.i.i.i.i, 4294967296000
  %i.hf = ashr exact i64 %sext.i.i.i.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %current_process_time.exit.thread.i.i.i

current_process_time.exit.i.i.i:                  ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %elapsed_time_from.exit.i

current_process_time.exit.thread.i.i.i:           ; preds = %current_process_time.exit.thread2.i.i.i, %.current_process_time.exit.thread_crit_edge.i.i.i
  %i.hg = phi i64 [ %.pre3.i.i.i, %.current_process_time.exit.thread_crit_edge.i.i.i ], [ %i.hf, %current_process_time.exit.thread2.i.i.i ]
  %i.hh = phi i64 [ %.pre.i.i.i, %.current_process_time.exit.thread_crit_edge.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %current_process_time.exit.thread2.i.i.i ]
  %i.hi = sitofp i64 %i.hh to double
  %i.hj = sitofp i64 %i.hg to double
  %i.hk = call double @llvm.fmuladd.f64(double %i.hj, double 1.000000e-09, double %i.hi)
  br label %elapsed_time_from.exit.i

elapsed_time_from.exit.i:                         ; preds = %current_process_time.exit.thread.i.i.i, %current_process_time.exit.i.i.i
  %.0.i.i.i = phi double [ %i.hk, %current_process_time.exit.thread.i.i.i ], [ 0.000000e+00, %current_process_time.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.hl = fcmp ogt double %.0.i.i.i, %i.hb
  %i.hm = fsub double %.0.i.i.i, %i.hb
  %.0.i.i66 = select i1 %i.hl, double %i.hm, double 0.000000e+00
  %i.hn = load double, ptr %i.gx, align 8, !tbaa !520
  %i.ho = fadd double %i.hn, %.0.i.i66
  store double %i.ho, ptr %i.gx, align 8, !tbaa !520
  br label %bb.ar

bb.ar:                                            ; preds = %elapsed_time_from.exit.i, %bb.an
  %i.hp = getelementptr i8, ptr %0, i64 928
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !533
  %.not10.i = icmp eq i64 %i.hq, 0
  br i1 %.not10.i, label %gc_prof_sweep_timer_stop.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hr = getelementptr i8, ptr %0, i64 948       ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !534
  %i.ht = or i32 %i.hs, 16384
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !534
  br label %gc_prof_sweep_timer_stop.exit

gc_prof_sweep_timer_stop.exit:                    ; preds = %has_sweeping_pages.exit.thread, %bb.am, %bb.ar, %bb.as
  %i.hu = load ptr, ptr %i.ab, align 8, !tbaa !447
  %i.hv = icmp ne ptr %i.hu, null
  %i.hw = zext i1 %i.hv to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %gc_prof_sweep_timer_stop.exit
  %.0 = phi i32 [ %i.hw, %gc_prof_sweep_timer_stop.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -65535, 65536) i32 @compare_pinned_slots(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  %i.b = load ptr, ptr %1, align 8, !tbaa !99
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !288
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !288
  %i.h = zext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  ret i32 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gc_sweep_finish_heap(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 144        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !330  ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !448  ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !449  ; 3 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 19
  %i.m = getelementptr i8, ptr @gc_params, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.n)
  %i.p = uitofp i64 %i.o to double
  %i.q = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 64), align 64, !tbaa !352
  %i.r = fmul double %i.q, %i.p
  %i.s = fptoui double %i.r to i64                ; 4 uses
  %i.t = icmp ult i64 %i.g, %i.s
  br i1 %i.t, label %bb.b, label %.critedge45

bb.b:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.f, 0
  %i.v = icmp ne i64 %i.b, 0
  %or.cond = and i1 %i.v, %i.u
  %i.w = icmp ugt i64 %i.d, %i.f
  %or.cond44 = or i1 %i.w, %or.cond
  br i1 %or.cond44, label %.lr.ph, label %.critedge45

.lr.ph:                                           ; preds = %bb.b
  %i.x = getelementptr i8, ptr %0, i64 808        ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 800        ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 88
  %i.ab = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 136       ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %.promoted = load ptr, ptr %i.x, align 8, !tbaa !424
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %heap_add_page.exit
  %i.ae = phi i64 [ %i.b, %.lr.ph ], [ %i.by, %heap_add_page.exit ] ; 8 uses
  %i.af = phi ptr [ %.promoted, %.lr.ph ], [ %i.ak, %heap_add_page.exit ] ; 12 uses
  %.048 = phi i64 [ %i.g, %.lr.ph ], [ %i.ca, %heap_add_page.exit ] ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !333
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !333
  %i.aj = getelementptr i8, ptr %i.af, i64 24     ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !454 ; 2 uses
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !424
  %i.al = getelementptr i8, ptr %i.af, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !185
  %i.an = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %i.ap = urem i64 %i.ao, 40                      ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %._crit_edge2.i, label %bb.e

._crit_edge2.i:                                   ; preds = %bb.d
  %.pre.i = load i16, ptr %1, align 8, !tbaa !163
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = sub i64 %i.an, %i.ap                    ; 2 uses
  %i.ar = add i64 %i.aq, 48                       ; 2 uses
  %i.as = and i64 %i.ar, 65528
  %.off.i = add nsw i64 %i.as, -40
  %i.at = icmp ult i64 %.off.i, 40
  %.pre3.i = load i16, ptr %1, align 8, !tbaa !163 ; 3 uses
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = sext i16 %.pre3.i to i64
  %i.av = add i64 %i.aq, 8
  %i.aw = add i64 %i.av, %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge2.i
  %i.ax = phi i16 [ %.pre.i, %._crit_edge2.i ], [ %.pre3.i, %bb.f ], [ %.pre3.i, %bb.e ] ; 2 uses
  %.1.i = phi i64 [ %i.ao, %._crit_edge2.i ], [ %i.aw, %bb.f ], [ %i.ar, %bb.e ] ; 5 uses
  %.neg.i = add i64 %i.an, 65536
  %i.ay = sub i64 %.neg.i, %.1.i
  %i.az = sext i16 %i.ax to i64                   ; 3 uses
  %i.ba = udiv i64 %i.ay, %i.az                   ; 3 uses
  %i.bb = getelementptr i8, ptr %i.af, i64 40
  store i64 %.1.i, ptr %i.bb, align 8, !tbaa !107
  %i.bc = trunc i64 %i.ba to i16                  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.af, i64 2
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !108
  store i16 %i.ax, ptr %i.af, align 8, !tbaa !100
  %i.be = getelementptr i8, ptr %i.af, i64 16
  store ptr %1, ptr %i.be, align 8, !tbaa !431
  %i.bf = getelementptr i8, ptr %i.af, i64 48     ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !433
  %i.bg = shl nsw i64 %i.az, 32
  %sext.i = mul i64 %i.bg, %i.ba
  %i.bh = ashr exact i64 %sext.i, 32
  %i.bi = add i64 %i.bh, %.1.i                    ; 2 uses
  %i.bj = icmp ult i64 %.1.i, %i.bi
  br i1 %i.bj, label %.lr.ph.i, label %heap_add_page.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !433
  br label %heap_add_page.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.bk = phi ptr [ %i.bl, %.lr.ph.i ], [ null, %bb.g ]
  %.01.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %i.bl = inttoptr i64 %.01.i to ptr              ; 4 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !432
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !196
  %i.bn = add i64 %.01.i, %i.az                   ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bi
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !535

heap_add_page.exit:                               ; preds = %bb.g, %._crit_edge.i
  %i.bp = getelementptr i8, ptr %i.af, i64 4
  store i16 %i.bc, ptr %i.bp, align 4, !tbaa !456
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !536
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.z, align 8, !tbaa !536
  %i.bs = getelementptr i8, ptr %i.af, i64 56     ; 3 uses
  store ptr %i.aa, ptr %i.bs, align 8, !tbaa !141
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !464 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.af, i64 64
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !464
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !141
  store ptr %i.bs, ptr %i.ab, align 8, !tbaa !464
  %i.bv = load i64, ptr %i.ac, align 8, !tbaa !340
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ac, align 8, !tbaa !340
  %i.bx = and i64 %i.ba, 65535                    ; 2 uses
  %i.by = add i64 %i.ae, %i.bx                    ; 2 uses
  store i64 %i.by, ptr %i.a, align 8, !tbaa !330
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !447
  store ptr %i.bz, ptr %i.aj, align 8, !tbaa !454
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !447
  %i.ca = add i64 %i.bx, %.048                    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.s
  br i1 %i.cb, label %bb.c, label %.critedge45, !llvm.loop !537

.critedge:                                        ; preds = %bb.c
  %i.cc = getelementptr i8, ptr %0, i64 28
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = and i16 %i.cd, 1024
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.cg = getelementptr i8, ptr %0, i64 1048
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !336
  %i.ci = getelementptr i8, ptr %0, i64 1152
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !517
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = icmp ult i64 %i.ck, 3
  br i1 %i.cl, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %.critedge
  %i.cm = getelementptr i8, ptr %0, i64 920       ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !331 ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.s
  br i1 %i.co, label %bb.j, label %.critedge45

bb.j:                                             ; preds = %bb.i
  %i.cp = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 72), align 8, !tbaa !450 ; 2 uses
  %i.cq = fcmp oeq double %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = uitofp i64 %i.ae to double
  %i.cs = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 48), align 16, !tbaa !451
  %i.ct = fmul double %i.cs, %i.cr
  %i.cu = fptoui double %i.ct to i64
  br label %heap_allocatable_slots_expand.exit

bb.l:                                             ; preds = %bb.j
  %i.cv = icmp eq i64 %i.ae, 0
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = load i64, ptr %i.m, align 8, !tbaa !59
  br label %heap_allocatable_slots_expand.exit

bb.n:                                             ; preds = %bb.l
  %i.cx = sub i64 %i.ae, %.048
  %i.cy = uitofp i64 %i.cx to double
  %i.cz = fsub double 1.000000e+00, %i.cp
  %i.da = uitofp i64 %i.ae to double              ; 2 uses
  %i.db = fmul double %i.cz, %i.da
  %i.dc = fdiv double %i.cy, %i.db                ; 2 uses
  %i.dd = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 48), align 16, !tbaa !451 ; 2 uses
  %i.de = fcmp ogt double %i.dc, %i.dd
  %.021.i = select i1 %i.de, double %i.dd, double %i.dc ; 2 uses
  %i.df = fcmp olt double %.021.i, 1.000000e+00
  %.122.i = select i1 %i.df, double 1.100000e+00, double %.021.i
  %i.dg = fmul double %.122.i, %i.da
  %i.dh = fptoui double %i.dg to i64
  br label %heap_allocatable_slots_expand.exit

heap_allocatable_slots_expand.exit:               ; preds = %bb.k, %bb.m, %bb.n
  %.0.i = phi i64 [ %i.cu, %bb.k ], [ %i.cw, %bb.m ], [ %i.dh, %bb.n ] ; 2 uses
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 56), align 8, !tbaa !452 ; 2 uses
  %.not.i46 = icmp eq i64 %i.di, 0
  %i.dj = add i64 %i.di, %i.ae
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.dj)
  %.2.i = select i1 %.not.i46, i64 %.0.i, i64 %spec.select.i ; 2 uses
  %i.dk = sub i64 %.2.i, %i.ae
  %i.dl = icmp eq i64 %.2.i, %i.ae
  %spec.store.select.i = select i1 %i.dl, i64 1, i64 %i.dk
  %i.dm = add i64 %spec.store.select.i, %i.cn
  store i64 %i.dm, ptr %i.cm, align 8, !tbaa !331
end_hunk_2
begin_hunk_3_@gc_start:bb.a
  %i.dq = getelementptr i8, ptr %0, i64 948       ; 2 uses
  store i32 %.258, ptr %i.dq, align 4, !tbaa !534
  %i.dr = getelementptr i8, ptr %0, i64 80
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !152
  %i.dt = getelementptr i8, ptr %0, i64 232
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !152
  %i.dv = add i64 %i.du, %i.ds
  %i.dw = getelementptr i8, ptr %0, i64 384
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !152
  %i.dy = add i64 %i.dv, %i.dx
  %i.dz = getelementptr i8, ptr %0, i64 536
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !152
  %i.eb = add i64 %i.dy, %i.ea
  %i.ec = getelementptr i8, ptr %0, i64 688
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !152
  %i.ee = add i64 %i.eb, %i.ed
  %i.ef = getelementptr i8, ptr %0, i64 1032
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !527
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !80  ; 2 uses
  %.not.i82 = icmp eq ptr %i.eg, null
  br i1 %.not.i82, label %rb_darray_size.exit83, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !96
  br label %rb_darray_size.exit83

rb_darray_size.exit83:                            ; preds = %bb.y, %bb.z
  %i.ei = phi i64 [ %i.eh, %bb.z ], [ 0, %bb.y ]
  %i.ej = getelementptr i8, ptr %0, i64 1040
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !528
  %i.ek = getelementptr i8, ptr %0, i64 1104
  %i.el = getelementptr i8, ptr %0, i64 944       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  %i.em = load i32, ptr %i.el, align 8, !tbaa !471
  %.not.i84 = icmp eq i32 %i.em, 0
  br i1 %.not.i84, label %gc_prof_setup_new_record.exit, label %bb.aa

bb.aa:                                            ; preds = %rb_darray_size.exit83
  %i.en = getelementptr i8, ptr %0, i64 968       ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !584 ; 2 uses
  %i.ep = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !584
  %i.eq = getelementptr i8, ptr %0, i64 952       ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !182 ; 2 uses
  %.not24.i = icmp eq ptr %i.er, null
  %i.es = getelementptr i8, ptr %0, i64 976       ; 3 uses
  br i1 %.not24.i, label %bb.ab, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa
  %.pre.i = load i64, ptr %i.es, align 8, !tbaa !585
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 100, ptr %i.es, align 8, !tbaa !585
  %i.et = call noalias dereferenceable_or_null(5600) ptr @malloc(i64 noundef 5600) #67 ; 2 uses
  store ptr %i.et, ptr %i.eq, align 8, !tbaa !182
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %.pr.i = phi ptr [ %i.er, %._crit_edge.i ], [ %i.et, %bb.ab ] ; 3 uses
  %i.eu = phi i64 [ %.pre.i, %._crit_edge.i ], [ 100, %bb.ab ] ; 2 uses
  %.not25.i = icmp ult i64 %i.eo, %i.eu
  br i1 %.not25.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = add i64 %i.eu, 1000                     ; 3 uses
  store i64 %i.ev, ptr %i.es, align 8, !tbaa !585
  %i.ew = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.ex = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ev, i64 56) ; 2 uses
  %i.ey = extractvalue { i64, i1 } %i.ex, 1
  br i1 %i.ey, label %bb.ae, label %xmalloc2_size.exit.i, !prof !60

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i, label %rb_during_gc.exit.thread.i.i.i.i, label %rb_during_gc.exit.i.i.i.i

rb_during_gc.exit.i.i.i.i:                        ; preds = %bb.ae
  %i.fa = getelementptr i8, ptr %i.ez, i64 1248
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !62
  %i.fc = getelementptr i8, ptr %i.fb, i64 28
  %.val.i.i.i.i.i = load i16, ptr %i.fc, align 4
  %i.fd = and i16 %.val.i.i.i.i.i, 32
  %.not.i.i.i.i85 = icmp eq i16 %i.fd, 0
  br i1 %.not.i.i.i.i85, label %rb_during_gc.exit.thread.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %rb_during_gc.exit.i.i.i.i
  call void @rb_memerror() #64
  unreachable

rb_during_gc.exit.thread.i.i.i.i:                 ; preds = %rb_during_gc.exit.i.i.i.i, %bb.ae
  call void (i64, ptr, ...) @gc_raise(i64 noundef %i.ew, ptr noundef nonnull @.str.60, i64 noundef 56, i64 noundef %i.ev, i64 noundef -1) #65
  unreachable

xmalloc2_size.exit.i:                             ; preds = %bb.ad
  %i.fe = extractvalue { i64, i1 } %i.ex, 0
  %i.ff = call ptr @realloc(ptr noundef %.pr.i, i64 noundef %i.fe) #71 ; 3 uses
  %.not26.i = icmp eq ptr %i.ff, null
  br i1 %.not26.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %xmalloc2_size.exit.i
  call void @rb_memerror() #64
  unreachable

.thread.i:                                        ; preds = %xmalloc2_size.exit.i
  store ptr %i.ff, ptr %i.eq, align 8, !tbaa !182
  %.pre30.i = load i64, ptr %i.en, align 8, !tbaa !584
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ac
  %.not27.i = icmp eq ptr %.pr.i, null
  br i1 %.not27.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.153) #63
  unreachable

bb.aj:                                            ; preds = %bb.ah, %.thread.i
  %i.fg = phi i64 [ %.pre30.i, %.thread.i ], [ %i.ep, %bb.ah ]
  %i.fh = phi ptr [ %i.ff, %.thread.i ], [ %.pr.i, %bb.ah ]
  %i.fi = getelementptr [56 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 -56    ; 3 uses
  %i.fk = getelementptr i8, ptr %0, i64 960
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.fj, i8 noundef 0, i64 noundef 56, i1 noundef false) #47
  %i.fl = load i16, ptr %i.aq, align 4
  %i.fm = shl i16 %i.fl, 4
  %i.fn = and i16 %i.fm, 4096
  %i.fo = zext nneg i16 %i.fn to i32
  %i.fp = or i32 %.258, %i.fo
  store i32 %i.fp, ptr %i.fj, align 8, !tbaa !586
  br label %gc_prof_setup_new_record.exit

gc_prof_setup_new_record.exit:                    ; preds = %rb_darray_size.exit83, %bb.aj
  %i.fq = atomicrmw volatile xchg ptr %0, i64 0 seq_cst, align 8 ; 2 uses
  %i.fr = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !161 ; 2 uses
  %i.ft = icmp ugt i64 %i.fq, %i.fs
  br i1 %i.ft, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %gc_prof_setup_new_record.exit
  %i.fu = uitofp i64 %i.fq to double
  %i.fv = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 120), align 8, !tbaa !587
  %i.fw = fmul double %i.fv, %i.fu
  %i.fx = fptoui double %i.fw to i64
  %i.fy = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 112), align 16, !tbaa !353
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.fx)
  br label %bb.am

bb.al:                                            ; preds = %gc_prof_setup_new_record.exit
  %i.fz = uitofp i64 %i.fs to double
  %i.ga = fmul nnan double %i.fz, f0x3FEF5C28F5C28F5C
  %i.gb = fptoui double %i.ga to i64
  %i.gc = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 104), align 8, !tbaa !159
  %spec.store.select31.i = call i64 @llvm.umax.i64(i64 %i.gc, i64 %i.gb)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %storemerge.i = phi i64 [ %spec.store.select.i, %bb.ak ], [ %spec.store.select31.i, %bb.al ]
  store i64 %storemerge.i, ptr %i.fr, align 8
  %i.gd = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br i1 %i.cq, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !350
  %i.gf = getelementptr i8, ptr %0, i64 1192      ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !170 ; 2 uses
  %i.gh = icmp ugt i64 %i.ge, %i.gg
  br i1 %i.gh, label %bb.ao, label %gc_reset_malloc_info.exit

bb.ao:                                            ; preds = %bb.an
  %i.gi = load i32, ptr %i.ck, align 8, !tbaa !453
  %i.gj = or i32 %i.gi, 32
  store i32 %i.gj, ptr %i.ck, align 8, !tbaa !453
  %i.gk = uitofp i64 %i.gg to double
  %i.gl = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 144), align 16, !tbaa !588
  %i.gm = fmul double %i.gl, %i.gk
  %i.gn = fptoui double %i.gm to i64
  %i.go = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 136), align 8, !tbaa !589
  %spec.store.select32.i = call i64 @llvm.umin.i64(i64 %i.go, i64 %i.gn)
  store i64 %spec.store.select32.i, ptr %i.gf, align 8
  br label %gc_reset_malloc_info.exit

bb.ap:                                            ; preds = %bb.am
  store i64 0, ptr %i.gd, align 8, !tbaa !350
  %i.gp = load i32, ptr %i.dq, align 4, !tbaa !534
  %i.gq = and i32 %i.gp, 32
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.aq, label %gc_reset_malloc_info.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gs = getelementptr i8, ptr %0, i64 1192      ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !170
  %i.gu = uitofp i64 %i.gt to double
  %i.gv = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 144), align 16, !tbaa !588
  %i.gw = fadd double %i.gv, -1.000000e+00
  %i.gx = fdiv double %i.gw, 1.000000e+01
  %i.gy = fadd double %i.gx, 1.000000e+00
  %i.gz = fdiv double %i.gu, %i.gy
  %i.ha = fptoui double %i.gz to i64
  %i.hb = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 128), align 64, !tbaa !169
  %spec.store.select33.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.ha)
  store i64 %spec.store.select33.i, ptr %i.gs, align 8
  br label %gc_reset_malloc_info.exit

gc_reset_malloc_info.exit:                        ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.hc = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.hd = and i32 %i.hc, 4194304
  %.not12.i = icmp eq i32 %i.hd, 0
  br i1 %.not12.i, label %rb_gc_event_hook.exit, label %bb.ar, !prof !189

bb.ar:                                            ; preds = %gc_reset_malloc_info.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.he = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !14
  store volatile ptr %i.hf, ptr %i.d, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hg = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !224 ; 3 uses
  %.not.i86 = icmp eq ptr %i.hh, null
  br i1 %.not.i86, label %rb_gc_event_hook.exit, label %rb_ec_hooks.exit.i

rb_ec_hooks.exit.i:                               ; preds = %bb.ar
  %i.hi = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.hi, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.hj = getelementptr i8, ptr %.val.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !225 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 1120
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !226
  %i.hn = and i32 %i.hm, 4194304
  %.not11.i = icmp eq i32 %i.hn, 0
  br i1 %.not11.i, label %rb_gc_event_hook.exit, label %bb.as, !prof !189

bb.as:                                            ; preds = %rb_ec_hooks.exit.i
  %i.ho = getelementptr i8, ptr %i.hk, i64 1112
  %i.hp = getelementptr i8, ptr %i.hh, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  store i32 4194304, ptr %10, align 8, !tbaa !230
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.hr, align 8, !tbaa !232
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.hh, ptr %i.hs, align 8, !tbaa !233
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.hq, ptr %i.ht, align 8, !tbaa !234
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, i8 0, i64 32, i1 false)
  store i64 36, ptr %i.hv, align 8, !tbaa !235
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %i.hw, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %10, ptr noundef %i.ho, i32 noundef 0) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  br label %rb_gc_event_hook.exit

rb_gc_event_hook.exit:                            ; preds = %gc_reset_malloc_info.exit, %bb.ar, %rb_ec_hooks.exit.i, %bb.as
  %i.hx = load i32, ptr %i.el, align 8, !tbaa !471
  %.not.i87 = icmp eq i32 %i.hx, 0
  br i1 %.not.i87, label %gc_prof_timer_start.exit, label %bb.at

bb.at:                                            ; preds = %rb_gc_event_hook.exit
  %i.hy = getelementptr i8, ptr %0, i64 960
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !472 ; 3 uses
  %.not5.i = icmp eq ptr %i.hz, null
  br i1 %.not5.i, label %gc_prof_timer_start.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  store double 0.000000e+00, ptr %i.ia, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %.b.i.i.i = load i1, ptr @current_process_time.try_clock_gettime, align 4
  br i1 %.b.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ib = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %9) #47
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %.current_process_time.exit.thread_crit_edge.i.i, label %bb.aw

.current_process_time.exit.thread_crit_edge.i.i:  ; preds = %bb.av
  %.pre.i.i88 = load i64, ptr %9, align 8, !tbaa !178
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre3.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !179
  br label %current_process_time.exit.thread.i.i

bb.aw:                                            ; preds = %bb.av, %bb.au
  store i1 true, ptr @current_process_time.try_clock_gettime, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  %i.id = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %8) #47
  %.not.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i.i, label %current_process_time.exit.thread2.i.i, label %current_process_time.exit.i.i

current_process_time.exit.thread2.i.i:            ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %8, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !59
  %sext.i.i.i = mul i64 %.sroa.4.0.copyload.i.i.i, 4294967296000
  %i.ie = ashr exact i64 %sext.i.i.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %current_process_time.exit.thread.i.i

current_process_time.exit.i.i:                    ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %getrusage_time.exit.i

current_process_time.exit.thread.i.i:             ; preds = %current_process_time.exit.thread2.i.i, %.current_process_time.exit.thread_crit_edge.i.i
  %i.if = phi i64 [ %.pre3.i.i, %.current_process_time.exit.thread_crit_edge.i.i ], [ %i.ie, %current_process_time.exit.thread2.i.i ]
  %i.ig = phi i64 [ %.pre.i.i88, %.current_process_time.exit.thread_crit_edge.i.i ], [ %.sroa.0.0.copyload.i.i.i, %current_process_time.exit.thread2.i.i ]
  %i.ih = sitofp i64 %i.ig to double
  %i.ii = sitofp i64 %i.if to double
  %i.ij = call double @llvm.fmuladd.f64(double %i.ii, double 1.000000e-09, double %i.ih)
  br label %getrusage_time.exit.i

getrusage_time.exit.i:                            ; preds = %current_process_time.exit.thread.i.i, %current_process_time.exit.i.i
  %.0.i.i = phi double [ %i.ij, %current_process_time.exit.thread.i.i ], [ 0.000000e+00, %current_process_time.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.ik = getelementptr i8, ptr %i.hz, i64 16
  store double %.0.i.i, ptr %i.ik, align 8, !tbaa !590
  br label %gc_prof_timer_start.exit

gc_prof_timer_start.exit:                         ; preds = %rb_gc_event_hook.exit, %bb.at, %getrusage_time.exit.i
  %i.il = load i16, ptr %i.aq, align 4
  %i.im = and i16 %i.il, 4096
  %.not.i.i89 = icmp eq i16 %i.im, 0
  br i1 %.not.i.i89, label %gc_marking_enter.exit.i, label %bb.ax

bb.ax:                                            ; preds = %gc_prof_timer_start.exit
  %i.in = getelementptr i8, ptr %0, i64 1064      ; 3 uses
  %.b.i.i.i.i = load i1, ptr @current_process_time.try_clock_gettime, align 4
  br i1 %.b.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.io = call i32 @clock_gettime(i32 noundef 2, ptr noundef %i.in) #47
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %gc_marking_enter.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store i1 true, ptr @current_process_time.try_clock_gettime, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.iq = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %7) #47
  %.not.i.i.i.i90 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i.i.i90, label %current_process_time.exit.thread4.i.i.i, label %bb.ba

current_process_time.exit.thread4.i.i.i:          ; preds = %bb.az
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %7, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.in, align 8, !tbaa !178
  %sext.i.i.i.i = mul i64 %.sroa.4.0.copyload.i.i.i.i, 4294967296000
  %i.ir = ashr exact i64 %sext.i.i.i.i, 32
  %i.is = getelementptr i8, ptr %0, i64 1072
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br label %gc_marking_enter.exit.i

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false)
  br label %gc_marking_enter.exit.i

gc_marking_enter.exit.i:                          ; preds = %bb.ba, %current_process_time.exit.thread4.i.i.i, %bb.ay, %gc_prof_timer_start.exit
  %i.it = load i16, ptr %i.aq, align 4
  %i.iu = and i16 %i.it, -4                       ; 2 uses
  %i.iv = or disjoint i16 %i.iu, 1                ; 2 uses
  %.not.i8.i = icmp eq i32 %.3, 0
  br i1 %.not.i8.i, label %bb.by, label %bb.bb

bb.bb:                                            ; preds = %gc_marking_enter.exit.i
  %i.iw = getelementptr i8, ptr %0, i64 2208
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !461
  %i.iy = udiv i64 %i.ix, 500
  %i.iz = add nuw nsw i64 %i.iy, 1
  %i.ja = getelementptr i8, ptr %0, i64 864       ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !339
  %i.jc = shl i64 %i.jb, 1
  %i.jd = udiv i64 %i.jc, %i.iz
  %i.je = getelementptr i8, ptr %0, i64 2216
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !457
  %i.jf = and i16 %i.iv, -1027
  store i16 %i.jf, ptr %i.aq, align 4
  %i.jg = load i8, ptr @ruby_enable_autocompact, align 1, !tbaa !397, !range !203, !noundef !29
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ji = and i16 %i.iv, -1091
  %i.jj = or disjoint i16 %i.ji, 64
  store i16 %i.jj, ptr %i.aq, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jk = getelementptr i8, ptr %0, i64 1000      ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !344
  %i.jm = add i64 %i.jl, 1
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !344
  %i.jn = getelementptr i8, ptr %0, i64 1160
  store i64 0, ptr %i.jn, align 8, !tbaa !156
  %i.jo = getelementptr i8, ptr %0, i64 1176
  store i64 0, ptr %i.jo, align 8, !tbaa !155
  %i.jp = load i64, ptr %i.dn, align 8, !tbaa !336
  %i.jq = getelementptr i8, ptr %0, i64 1152
end_hunk_3
begin_hunk_4_@heap_check_moved_i:bb.a
has_sweeping_pages.exit.thread.i.us:              ; preds = %has_sweeping_pages.exit.i.us, %bb.e, %bb.d, %bb.c, %.split.i.us
  %i.af = load ptr, ptr %i.o, align 65536, !tbaa !113 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 12
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 1
  %.not.i.us = icmp eq i8 %i.ai, 0
  br i1 %.not.i.us, label %rb_gc_impl_garbage_object_p.exit.thread.us, label %rb_gc_impl_garbage_object_p.exit.us

rb_gc_impl_garbage_object_p.exit.us:              ; preds = %has_sweeping_pages.exit.thread.i.us
  %i.aj = getelementptr i8, ptr %i.af, i64 280
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.zext2.i.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = and i64 %i.al, %i.t
  %.not12.i.us = icmp eq i64 %i.am, 0
  br i1 %.not12.i.us, label %.loopexit, label %rb_gc_impl_garbage_object_p.exit.thread.us

rb_gc_impl_garbage_object_p.exit.thread.us:       ; preds = %rb_gc_impl_garbage_object_p.exit.us, %has_sweeping_pages.exit.thread.i.us, %has_sweeping_pages.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.an = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.us = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.us, label %bb.f, label %rb_vm_lock_enter.exit.i.us

bb.f:                                             ; preds = %rb_gc_impl_garbage_object_p.exit.thread.us
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #47
  br label %rb_vm_lock_enter.exit.i.us

rb_vm_lock_enter.exit.i.us:                       ; preds = %bb.f, %rb_gc_impl_garbage_object_p.exit.thread.us
  %i.ao = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.ap = getelementptr i8, ptr %i.ao, i64 1248
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr i8, ptr %i.aq, i64 28
  %.val.us.i.us = load i16, ptr %i.ar, align 4
  %i.as = and i16 %.val.us.i.us, 32
  %.not9.us.i.us = icmp eq i16 %i.as, 0
  br i1 %.not9.us.i.us, label %bb.g, label %.split.us.i

bb.g:                                             ; preds = %rb_vm_lock_enter.exit.i.us
  %i.at = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i8.us.i.us = icmp eq ptr %i.at, null
  br i1 %.not.i.i8.us.i.us, label %.loopexit.sink.split.sink.split, label %.loopexit.sink.split

.preheader.split:                                 ; preds = %.preheader
  switch i32 %i.z, label %.split.i [
    i32 0, label %.loopexit
    i32 29, label %.loopexit
    i32 30, label %.loopexit
  ]

.split.i:                                         ; preds = %.preheader.split
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !111
  %.not.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.not.i.i, label %bb.h, label %has_sweeping_pages.exit.thread.i

bb.h:                                             ; preds = %.split.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !111
  %.not.1.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.1.not.i.i, label %bb.i, label %has_sweeping_pages.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !111
  %.not.2.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.2.not.i.i, label %bb.j, label %has_sweeping_pages.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !111
  %.not.3.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.3.not.i.i, label %has_sweeping_pages.exit.i, label %has_sweeping_pages.exit.thread.i

has_sweeping_pages.exit.i:                        ; preds = %bb.j
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !111
  %.not.4.not.i.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.4.not.i.not.i, label %rb_gc_impl_garbage_object_p.exit.thread, label %has_sweeping_pages.exit.thread.i

has_sweeping_pages.exit.thread.i:                 ; preds = %has_sweeping_pages.exit.i, %bb.j, %bb.i, %bb.h, %.split.i
  %i.az = load ptr, ptr %i.o, align 65536, !tbaa !113 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 12
  %i.bb = load i8, ptr %i.ba, align 4
  %i.bc = and i8 %i.bb, 1
  %.not.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i, label %rb_gc_impl_garbage_object_p.exit.thread, label %rb_gc_impl_garbage_object_p.exit

rb_gc_impl_garbage_object_p.exit:                 ; preds = %has_sweeping_pages.exit.thread.i
  %i.bd = getelementptr i8, ptr %i.az, i64 280
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.zext2.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !59
  %i.bg = and i64 %i.bf, %i.t
  %.not12.i = icmp eq i64 %i.bg, 0
  br i1 %.not12.i, label %.loopexit, label %rb_gc_impl_garbage_object_p.exit.thread

rb_gc_impl_garbage_object_p.exit.thread:          ; preds = %has_sweeping_pages.exit.i, %has_sweeping_pages.exit.thread.i, %rb_gc_impl_garbage_object_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.bh = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %bb.k, label %rb_vm_lock_enter.exit.i

bb.k:                                             ; preds = %rb_gc_impl_garbage_object_p.exit.thread
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #47
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.k, %rb_gc_impl_garbage_object_p.exit.thread
  %i.bi = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 1248
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 28
  %.val.us.i = load i16, ptr %i.bl, align 4
  %i.bm = and i16 %.val.us.i, 32
  %.not9.us.i = icmp eq i16 %i.bm, 0
  br i1 %.not9.us.i, label %bb.l, label %.split.us.i

.split.us.i:                                      ; preds = %rb_vm_lock_enter.exit.i, %rb_vm_lock_enter.exit.i.us
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.10) #63
  unreachable

bb.l:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.bn = getelementptr i8, ptr %i.bi, i64 1256   ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr %i.j, ptr %4, align 8, !tbaa !119
  store ptr @reachable_object_check_moved_i, ptr %i.i, align 8, !tbaa !121
  store ptr %4, ptr %i.bn, align 8, !tbaa !118
  call fastcc void @rb_gc_mark_children(ptr noundef nonnull %i.bk, i64 noundef %.01522)
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.bp = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i8.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i8.i, label %.loopexit.sink.split.sink.split, label %.loopexit.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %bb.l, %bb.g
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #47
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.split.us, %.preheader.split.us, %.preheader.split.us, %rb_gc_impl_garbage_object_p.exit.us, %rb_gc_impl_garbage_object_p.exit, %.preheader.split, %.preheader.split, %.preheader.split, %bb.b
  %i.bq = add i64 %.01522, %2                     ; 2 uses
  %.not = icmp eq i64 %i.bq, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !677

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @reachable_object_check_moved_i(i64 noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = and i64 %i.b, 31
  %i.d = icmp eq i64 %i.c, 30
  br i1 %i.d, label %rb_gc_impl_location.exit, label %bb.b

rb_gc_impl_location.exit:                         ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = tail call ptr @rb_obj_info(i64 noundef %i.e)
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !286
  %i.i = tail call ptr @rb_obj_info(i64 noundef %i.h)
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.463, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #63
  unreachable

bb.b:                                             ; preds = %bb.a
  ret void
}

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #38

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #11

declare i64 @rb_str_buf_append(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #11

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_io_write(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v5i64(<5 x i64>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind sspstrong allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind sspstrong allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind sspstrong allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind sspstrong allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { cold nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #41 = { nocallback nofree nosync nounwind willreturn }
attributes #42 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #47 = { nounwind }
attributes #48 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #50 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nofree norecurse nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { nofree norecurse nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { inlinehint nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { noreturn nounwind }
attributes #61 = { cold noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #62 = { mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #63 = { cold noreturn nounwind }
attributes #64 = { cold noreturn }
attributes #65 = { noreturn }
attributes #66 = { nounwind allocsize(0,1) }
attributes #67 = { nounwind allocsize(0) }
attributes #68 = { cold nounwind }
attributes #69 = { allocsize(0,1) }
attributes #70 = { nounwind willreturn memory(read) }
attributes #71 = { nounwind allocsize(1) }
attributes #72 = { nounwind returns_twice }
attributes #73 = { allocsize(1,2) }
attributes #74 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #75 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS16rb_ractor_struct", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS27rb_execution_context_struct", !13, i64 0}
!16 = !{!17, !23, i64 48}
!17 = !{!"rb_execution_context_struct", !18, i64 0, !19, i64 8, !20, i64 16, !21, i64 24, !8, i64 32, !8, i64 36, !22, i64 40, !23, i64 48, !24, i64 56, !24, i64 64, !25, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !18, i64 104, !19, i64 112, !26, i64 120, !19, i64 128, !19, i64 136, !9, i64 144, !8, i64 145, !19, i64 152, !27, i64 160, !28, i64 176}
!18 = !{!"p1 long", !13, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"p1 _ZTS23rb_control_frame_struct", !13, i64 0}
!21 = !{!"p1 _ZTS9rb_vm_tag", !13, i64 0}
!22 = !{!"p1 _ZTS15rb_fiber_struct", !13, i64 0}
!23 = !{!"p1 _ZTS16rb_thread_struct", !13, i64 0}
!24 = !{!"long long", !9, i64 0}
!25 = !{!"p1 _ZTS11rb_id_table", !13, i64 0}
!26 = !{!"p1 _ZTS19rb_trace_arg_struct", !13, i64 0}
!27 = !{!"", !19, i64 0, !19, i64 8}
!28 = !{!"", !18, i64 0, !18, i64 8, !19, i64 16, !9, i64 24}
!29 = !{}
!30 = !{!31, !12, i64 24}
!31 = !{!"rb_thread_struct", !32, i64 0, !19, i64 16, !12, i64 24, !34, i64 32, !35, i64 40, !15, i64 48, !36, i64 56, !40, i64 208, !8, i64 212, !19, i64 216, !42, i64 224, !19, i64 232, !19, i64 240, !8, i64 248, !8, i64 248, !8, i64 248, !8, i64 248, !8, i64 248, !8, i64 248, !9, i64 249, !8, i64 252, !13, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !9, i64 296, !43, i64 336, !19, i64 352, !44, i64 360, !45, i64 368, !46, i64 384, !9, i64 392, !8, i64 416, !22, i64 424, !19, i64 432, !8, i64 440, !19, i64 448, !47, i64 456, !48, i64 464}
!32 = !{!"ccan_list_node", !33, i64 0, !33, i64 8}
!33 = !{!"p1 _ZTS14ccan_list_node", !13, i64 0}
!34 = !{!"p1 _ZTS12rb_vm_struct", !13, i64 0}
!35 = !{!"p1 _ZTS16rb_native_thread", !13, i64 0}
!36 = !{!"rb_thread_sched_item", !37, i64 0, !38, i64 80, !8, i64 128, !40, i64 132, !40, i64 133, !13, i64 136, !41, i64 144}
!37 = !{!"", !32, i64 0, !32, i64 16, !32, i64 32, !32, i64 48, !32, i64 64}
!38 = !{!"rb_thread_sched_waiting", !8, i64 0, !39, i64 8, !32, i64 32}
!39 = !{!"", !19, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!40 = !{!"_Bool", !9, i64 0}
!41 = !{!"p1 _ZTS17coroutine_context", !13, i64 0}
!42 = !{!"p1 _ZTS15rb_calling_info", !13, i64 0}
!43 = !{!"rb_unblock_callback", !13, i64 0, !13, i64 8}
!44 = !{!"p1 _ZTS15rb_mutex_struct", !13, i64 0}
!45 = !{!"ccan_list_head", !32, i64 0}
!46 = !{!"p1 _ZTS15rb_waiting_list", !13, i64 0}
!47 = !{!"any p2 pointer", !13, i64 0}
!48 = !{!"rb_ext_config", !40, i64 0}
!49 = !{!50, !13, i64 456}
!50 = !{!"rb_ractor_struct", !51, i64 0, !55, i64 56, !57, i64 184, !19, i64 328, !19, i64 336, !19, i64 344, !8, i64 352, !32, i64 360, !24, i64 376, !54, i64 384, !25, i64 392, !19, i64 400, !19, i64 408, !19, i64 416, !19, i64 424, !19, i64 432, !19, i64 440, !40, i64 448, !13, i64 456}
!51 = !{!"rb_ractor_pub", !19, i64 0, !8, i64 8, !52, i64 16, !54, i64 40, !8, i64 48}
!52 = !{!"rb_hook_list_struct", !53, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !40, i64 20}
!53 = !{!"p1 _ZTS20rb_event_hook_struct", !13, i64 0}
!54 = !{!"p1 _ZTS8st_table", !13, i64 0}
!55 = !{!"rb_ractor_sync", !9, i64 0, !56, i64 40, !45, i64 48, !19, i64 64, !54, i64 72, !19, i64 80, !45, i64 88, !12, i64 104, !19, i64 112, !40, i64 120}
!56 = !{!"p1 _ZTS12ractor_queue", !13, i64 0}
!57 = !{!"", !45, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !58, i64 32, !15, i64 128, !23, i64 136}
!58 = !{!"rb_thread_sched", !9, i64 0, !23, i64 40, !40, i64 48, !40, i64 49, !40, i64 50, !45, i64 56, !8, i64 72, !32, i64 80}
!59 = !{!19, !19, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!34, !34, i64 0}
!62 = !{!63, !72, i64 1248}
!63 = !{!"rb_vm_struct", !19, i64 0, !64, i64 8, !13, i64 488, !24, i64 496, !8, i64 504, !8, i64 508, !8, i64 508, !8, i64 508, !8, i64 508, !19, i64 512, !67, i64 520, !9, i64 528, !68, i64 568, !68, i64 576, !54, i64 584, !69, i64 592, !52, i64 1112, !70, i64 1136, !8, i64 1144, !45, i64 1152, !9, i64 1168, !19, i64 1208, !19, i64 1216, !19, i64 1224, !19, i64 1232, !8, i64 1240, !71, i64 1248, !74, i64 1264, !75, i64 1272, !54, i64 1280, !25, i64 1288, !54, i64 1296, !76, i64 1304, !76, i64 1312, !25, i64 1320, !19, i64 1328, !9, i64 1336, !77, i64 9520}
!64 = !{!"", !45, i64 0, !8, i64 16, !8, i64 20, !12, i64 24, !23, i64 32, !65, i64 40, !66, i64 152}
!65 = !{!"", !9, i64 0, !12, i64 40, !8, i64 48, !9, i64 56, !40, i64 104}
!66 = !{!"", !9, i64 0, !12, i64 40, !40, i64 48, !9, i64 56, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !45, i64 120, !8, i64 136, !45, i64 144, !45, i64 160, !45, i64 176, !40, i64 192, !9, i64 200, !9, i64 248, !40, i64 296, !8, i64 300, !8, i64 304, !12, i64 312, !8, i64 320}
!67 = !{!"p1 _ZTS18global_object_list", !13, i64 0}
!68 = !{!"p1 _ZTS13rb_box_struct", !13, i64 0}
!69 = !{!"", !9, i64 0}
!70 = !{!"p1 _ZTS22rb_postponed_job_queue", !13, i64 0}
!71 = !{!"", !72, i64 0, !73, i64 8}
!72 = !{!"p1 _ZTS11rb_objspace", !13, i64 0}
!73 = !{!"p1 _ZTS24gc_mark_func_data_struct", !13, i64 0}
!74 = !{!"p1 _ZTS15rb_at_exit_list", !13, i64 0}
!75 = !{!"p1 _ZTS19rb_builtin_function", !13, i64 0}
!76 = !{!"p1 _ZTS9set_table", !13, i64 0}
!77 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!78 = !{!79, !72, i64 0}
!79 = !{!"verify_internal_consistency_struct", !72, i64 0, !8, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48}
!80 = !{!81, !13, i64 872}
!81 = !{!"rb_objspace", !27, i64 0, !82, i64 16, !83, i64 24, !84, i64 28, !8, i64 32, !9, i64 40, !19, i64 800, !85, i64 808, !86, i64 816, !87, i64 824, !19, i64 864, !89, i64 872, !54, i64 936, !90, i64 944, !19, i64 1120, !94, i64 1128, !95, i64 1200, !27, i64 2208, !13, i64 2224, !8, i64 2232, !19, i64 2240, !8, i64 2248}
!82 = !{!"", !19, i64 0}
!83 = !{!"rb_gc_config", !40, i64 0}
!84 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1}
!85 = !{!"p1 _ZTS9heap_page", !13, i64 0}
!86 = !{!"", !8, i64 0}
!87 = !{!"mark_stack", !88, i64 0, !88, i64 8, !8, i64 16, !8, i64 20, !19, i64 24, !19, i64 32}
!88 = !{!"p1 _ZTS11stack_chunk", !13, i64 0}
!89 = !{!"", !13, i64 0, !19, i64 8, !19, i64 16, !9, i64 24, !19, i64 40, !19, i64 48, !19, i64 56}
!90 = !{!"", !8, i64 0, !8, i64 4, !91, i64 8, !91, i64 16, !19, i64 24, !19, i64 32, !92, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !92, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !24, i64 112, !93, i64 120, !24, i64 136, !93, i64 144, !19, i64 160, !19, i64 168}
!91 = !{!"p1 _ZTS17gc_profile_record", !13, i64 0}
!92 = !{!"double", !9, i64 0}
!93 = !{!"timespec", !19, i64 0, !19, i64 8}
!94 = !{!"", !40, i64 0, !19, i64 8, !8, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64}
!95 = !{!"", !9, i64 0, !9, i64 248, !9, i64 496, !9, i64 744, !19, i64 992, !13, i64 1000}
!96 = !{!97, !19, i64 0}
!97 = !{!"rb_darray_meta", !19, i64 0, !19, i64 8}
!98 = !{!79, !8, i64 8}
!99 = !{!85, !85, i64 0}
!100 = !{!101, !102, i64 0}
!101 = !{!"heap_page", !102, i64 0, !102, i64 2, !102, i64 4, !102, i64 6, !102, i64 8, !103, i64 12, !104, i64 16, !85, i64 24, !105, i64 32, !19, i64 40, !106, i64 48, !32, i64 56, !9, i64 72, !9, i64 280, !9, i64 488, !9, i64 696, !9, i64 904, !9, i64 1112, !9, i64 1320}
!102 = !{!"short", !9, i64 0}
!103 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0}
!104 = !{!"p1 _ZTS14rb_heap_struct", !13, i64 0}
!105 = !{!"p1 _ZTS14heap_page_body", !13, i64 0}
!106 = !{!"p1 _ZTS9free_slot", !13, i64 0}
!107 = !{!101, !19, i64 40}
!108 = !{!101, !102, i64 2}
!109 = !{!110, !19, i64 0}
!110 = !{!"RBasic", !19, i64 0, !19, i64 8}
!111 = !{!112, !85, i64 104}
!112 = !{!"rb_heap_struct", !102, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !85, i64 80, !45, i64 88, !85, i64 104, !85, i64 112, !19, i64 120, !85, i64 128, !19, i64 136, !19, i64 144}
!113 = !{!114, !85, i64 0}
!114 = !{!"heap_page_body", !115, i64 0}
end_hunk_4
