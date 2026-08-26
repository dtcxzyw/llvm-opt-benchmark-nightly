Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/spl_observer?download=true
inline.NumInlined: 65
inline.NumDeleted: 9
begin_hunk_0
%struct._zval_struct = type { %union._zend_value, %union.anon, %union.anon.2 }
%union._zend_value = type { i64 }
%union.anon = type { i32 }
%union.anon.2 = type { i32 }
%struct._zend_stack = type { i32, i32, i32, ptr }
%struct._zend_objects_store = type { ptr, i32, i32, i32 }
%struct._zend_lazy_objects_store = type { %struct._zend_array }
%struct._HashTableIterator = type { ptr, i32, i32 }
%union._zend_function = type { %struct._zend_op_array }
%struct._zend_op_array = type { i8, [3 x i8], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [6 x ptr] }
%struct._zend_op = type { ptr, %union._znode_op, %union._znode_op, %union._znode_op, i32, i32, i8, i8, i8, i8 }
%union._znode_op = type { i32 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.4, i32, %union.anon.6, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.6 = type { ptr }
%struct.zend_get_gc_buffer = type { ptr, ptr, ptr }
%struct._zend_call_stack = type { ptr, i64 }
%struct._zend_strtod_state = type { [8 x ptr], ptr, ptr }
%struct._zend_object_handlers = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._zend_function_entry = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct._zend_hash_key = type { i64, ptr }
%struct.smart_str = type { ptr, i64 }
%struct._zend_class_entry = type { i8, ptr, %union.anon.8, i32, i32, i32, i32, ptr, ptr, ptr, %struct._zend_array, %struct._zend_array, %struct._zend_array, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.9, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.10, ptr, ptr, ptr, ptr, i32, ptr, ptr, %union.anon.11 }
%union.anon.8 = type { ptr }
%union.anon.9 = type { ptr }
%union.anon.10 = type { ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32 }
%struct.zend_type = type { ptr, i32 }

@spl_ce_UnexpectedValueException = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"Object not found\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@spl_ce_SplObjectStorage = dso_local local_unnamed_addr global ptr null, align 8
@executor_globals = external global %struct._zend_executor_globals, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"|l\00", align 1
@spl_ce_RuntimeException = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Called current() on invalid iterator\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@spl_ce_OutOfBoundsException = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"Seek position %ld is out of range\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Error at offset %zd of %zd bytes\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Incomplete or ill-typed serialization data\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Odd number of elements\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Non-object key\00", align 1
@zend_ce_iterator = external local_unnamed_addr global ptr, align 8
@spl_ce_InvalidArgumentException = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"Key duplication error\00", align 1
@spl_ce_SplObserver = dso_local local_unnamed_addr global ptr null, align 8
@spl_ce_SplSubject = dso_local local_unnamed_addr global ptr null, align 8
@zend_ce_countable = external local_unnamed_addr global ptr, align 8
@spl_ce_SeekableIterator = external local_unnamed_addr global ptr, align 8
@zend_ce_serializable = external local_unnamed_addr global ptr, align 8
@zend_ce_arrayaccess = external local_unnamed_addr global ptr, align 8
@spl_handler_SplObjectStorage = internal global %struct._zend_object_handlers zeroinitializer, align 8
@std_object_handlers = external constant %struct._zend_object_handlers, align 8
@spl_handler_MultipleIterator = internal global %struct._zend_object_handlers zeroinitializer, align 8
@spl_ce_MultipleIterator = dso_local local_unnamed_addr global ptr null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"getHash\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"%s::getHash(): Return value must be of type string, %s returned\00", align 1
@zend_empty_string = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Called %s() on an invalid iterator\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Failed to call sub iterator method\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Called current() with non valid sub iterator\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Called key() with non valid sub iterator\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Sub-Iterator is associated with NULL\00", align 1
@zend_string_init_interned = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"SplObserver\00", align 1
@class_SplObserver_methods = internal constant [2 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.29, ptr null, ptr @arginfo_class_SplObserver_update, i32 1, i32 65, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"SplSubject\00", align 1
@arginfo_class_SplObserver_update = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.30, { ptr, i32, [4 x i8] } { ptr @.str.31, i32 8388608, [4 x i8] zeroinitializer }, ptr null }], align 16
@class_SplSubject_methods = internal constant [4 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.33, ptr null, ptr @arginfo_class_SplSubject_attach, i32 1, i32 65, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.34, ptr null, ptr @arginfo_class_SplSubject_attach, i32 1, i32 65, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.35, ptr null, ptr @arginfo_class_SplSubject_notify, i32 0, i32 65, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"observer\00", align 1
@arginfo_class_SplSubject_attach = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.36, { ptr, i32, [4 x i8] } { ptr @.str.28, i32 8388608, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplSubject_notify = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.39 = private unnamed_addr constant [17 x i8] c"SplObjectStorage\00", align 1
@class_SplObjectStorage_methods = internal constant [26 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.33, ptr @zim_SplObjectStorage_attach, ptr @arginfo_class_SplObjectStorage_attach, i32 2, i32 2049, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.34, ptr @zim_SplObjectStorage_detach, ptr @arginfo_class_SplObjectStorage_detach, i32 1, i32 2049, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.42, ptr @zim_SplObjectStorage_contains, ptr @arginfo_class_SplObjectStorage_contains, i32 1, i32 2049, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.44, ptr @zim_SplObjectStorage_addAll, ptr @arginfo_class_SplObjectStorage_addAll, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.45, ptr @zim_SplObjectStorage_removeAll, ptr @arginfo_class_SplObjectStorage_addAll, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.46, ptr @zim_SplObjectStorage_removeAllExcept, ptr @arginfo_class_SplObjectStorage_addAll, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.47, ptr @zim_SplObjectStorage_getInfo, ptr @arginfo_class_SplObjectStorage_getInfo, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.48, ptr @zim_SplObjectStorage_setInfo, ptr @arginfo_class_SplObjectStorage_setInfo, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.49, ptr @zim_SplObjectStorage_count, ptr @arginfo_class_SplObjectStorage_count, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.50, ptr @zim_SplObjectStorage_rewind, ptr @arginfo_class_SplSubject_notify, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.51, ptr @zim_SplObjectStorage_valid, ptr @arginfo_class_SplObjectStorage_valid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.23, ptr @zim_SplObjectStorage_key, ptr @arginfo_class_SplObjectStorage_key, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.22, ptr @zim_SplObjectStorage_current, ptr @arginfo_class_SplObjectStorage_current, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.52, ptr @zim_SplObjectStorage_next, ptr @arginfo_class_SplSubject_notify, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.53, ptr @zim_SplObjectStorage_seek, ptr @arginfo_class_SplObjectStorage_seek, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.54, ptr @zim_SplObjectStorage_unserialize, ptr @arginfo_class_SplObjectStorage_unserialize, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.55, ptr @zim_SplObjectStorage_serialize, ptr @arginfo_class_SplObjectStorage_serialize, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.56, ptr @zim_SplObjectStorage_contains, ptr @arginfo_class_SplObjectStorage_offsetExists, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.57, ptr @zim_SplObjectStorage_offsetGet, ptr @arginfo_class_SplObjectStorage_offsetGet, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.58, ptr @zim_SplObjectStorage_attach, ptr @arginfo_class_SplObjectStorage_offsetSet, i32 2, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.59, ptr @zim_SplObjectStorage_detach, ptr @arginfo_class_SplObjectStorage_offsetUnset, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.16, ptr @zim_SplObjectStorage_getHash, ptr @arginfo_class_SplObjectStorage_getHash, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.60, ptr @zim_SplObjectStorage___serialize, ptr @arginfo_class_SplObjectStorage___serialize, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.61, ptr @zim_SplObjectStorage___unserialize, ptr @arginfo_class_SplObjectStorage___unserialize, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.62, ptr @zim_SplObjectStorage___debugInfo, ptr @arginfo_class_SplObjectStorage___serialize, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@zend_known_strings = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [49 x i8] c"use method SplObjectStorage::offsetSet() instead\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"use method SplObjectStorage::offsetUnset() instead\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"use method SplObjectStorage::offsetExists() instead\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"addAll\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"removeAll\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"removeAllExcept\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"getInfo\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"setInfo\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"unserialize\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"offsetExists\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"offsetGet\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"offsetSet\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"offsetUnset\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"__serialize\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"__unserialize\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"__debugInfo\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@arginfo_class_SplObjectStorage_attach = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } { ptr null, i32 256, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.64, { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr @.str.65 }], align 16
@arginfo_class_SplObjectStorage_detach = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } { ptr null, i32 256, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_contains = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } { ptr null, i32 256, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_addAll = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870928, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.20, { ptr, i32, [4 x i8] } { ptr @.str.39, i32 8388608, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_getInfo = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536871934, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_setInfo = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.64, { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.72 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"COUNT_NORMAL\00", align 1
@arginfo_class_SplObjectStorage_count = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870928, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.72, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.73 }], align 16
@arginfo_class_SplObjectStorage_valid = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_key = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870928, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_current = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536871168, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.78 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@arginfo_class_SplObjectStorage_seek = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 16384, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.78, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.80 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@arginfo_class_SplObjectStorage_unserialize = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.80, { ptr, i32, [4 x i8] } { ptr null, i32 64, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_serialize = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536870976, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage_offsetExists = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } zeroinitializer, ptr null }], align 16
@arginfo_class_SplObjectStorage_offsetGet = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536871934, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } zeroinitializer, ptr null }], align 16
@arginfo_class_SplObjectStorage_offsetSet = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } zeroinitializer, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.64, { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr @.str.65 }], align 16
@arginfo_class_SplObjectStorage_offsetUnset = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } zeroinitializer, ptr null }], align 16
@arginfo_class_SplObjectStorage_getHash = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870976, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.63, { ptr, i32, [4 x i8] } { ptr null, i32 256, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage___serialize = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 536871040, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_SplObjectStorage___unserialize = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.80, { ptr, i32, [4 x i8] } { ptr null, i32 128, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.90 = private unnamed_addr constant [8 x i8] c"gethash\00", align 1
@.str.91 = private unnamed_addr constant [62 x i8] c"Can only attach objects that implement the Iterator interface\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"MultipleIterator\00", align 1
@class_MultipleIterator_methods = internal constant [14 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.97, ptr @zim_MultipleIterator___construct, ptr @arginfo_class_MultipleIterator___construct, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.98, ptr @zim_MultipleIterator_getFlags, ptr @arginfo_class_SplObjectStorage_key, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.99, ptr @zim_MultipleIterator_setFlags, ptr @arginfo_class_MultipleIterator_setFlags, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.100, ptr @zim_MultipleIterator_attachIterator, ptr @arginfo_class_MultipleIterator_attachIterator, i32 2, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.101, ptr @zim_MultipleIterator_detachIterator, ptr @arginfo_class_MultipleIterator_detachIterator, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.102, ptr @zim_MultipleIterator_containsIterator, ptr @arginfo_class_MultipleIterator_containsIterator, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.103, ptr @zim_MultipleIterator_countIterators, ptr @arginfo_class_SplObjectStorage_key, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.50, ptr @zim_MultipleIterator_rewind, ptr @arginfo_class_SplSubject_notify, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.51, ptr @zim_MultipleIterator_valid, ptr @arginfo_class_SplObjectStorage_valid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.23, ptr @zim_MultipleIterator_key, ptr @arginfo_class_SplObjectStorage___serialize, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.22, ptr @zim_MultipleIterator_current, ptr @arginfo_class_SplObjectStorage___serialize, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.52, ptr @zim_MultipleIterator_next, ptr @arginfo_class_SplSubject_notify, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.62, ptr @zim_SplObjectStorage___debugInfo, ptr @arginfo_class_SplObjectStorage___serialize, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@.str.93 = private unnamed_addr constant [13 x i8] c"MIT_NEED_ANY\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"MIT_NEED_ALL\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"MIT_KEYS_NUMERIC\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"MIT_KEYS_ASSOC\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"__construct\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"getFlags\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"setFlags\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"attachIterator\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"detachIterator\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"containsIterator\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"countIterators\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.105 = private unnamed_addr constant [68 x i8] c"MultipleIterator::MIT_NEED_ALL | MultipleIterator::MIT_KEYS_NUMERIC\00", align 1
@arginfo_class_MultipleIterator___construct = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } zeroinitializer, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.104, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr @.str.105 }], align 16
@arginfo_class_MultipleIterator_setFlags = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.104, { ptr, i32, [4 x i8] } { ptr null, i32 16, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.108 = private unnamed_addr constant [9 x i8] c"iterator\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Iterator\00", align 1
@arginfo_class_MultipleIterator_attachIterator = internal constant [3 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.108, { ptr, i32, [4 x i8] } { ptr @.str.109, i32 8388608, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.64, { ptr, i32, [4 x i8] } { ptr null, i32 82, [4 x i8] zeroinitializer }, ptr @.str.65 }], align 16
@arginfo_class_MultipleIterator_detachIterator = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536887296, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.108, { ptr, i32, [4 x i8] } { ptr @.str.109, i32 8388608, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_MultipleIterator_containsIterator = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 536870924, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.108, { ptr, i32, [4 x i8] } { ptr @.str.109, i32 8388608, [4 x i8] zeroinitializer }, ptr null }], align 16

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_attach(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 2 uses
  %i.f = add i32 %i.e, -3
  %or.cond = icmp ult i32 %i.f, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #9
  br label %zend_parse_arg_obj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !12
  %i.j = icmp eq i8 %i.i, 8
  br i1 %i.j, label %.critedge, label %zend_parse_arg_obj.exit, !prof !14

.critedge:                                        ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.l = icmp eq i32 %i.e, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %spec.select = select i1 %i.l, ptr null, ptr %i.m, !prof !15
  %i.n = tail call fastcc ptr @spl_object_storage_attach(ptr noundef nonnull %i.c, ptr noundef %i.k, ptr noundef %spec.select) ; 0 uses
  br label %bb.d

zend_parse_arg_obj.exit:                          ; preds = %bb.c, %bb.b
  %.048 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %.047.a = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.046.a = phi i32 [ 0, %bb.b ], [ 18, %bb.c ]
  %.045 = phi i32 [ 1, %bb.b ], [ 9, %bb.c ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.045, i32 noundef %.048, ptr noundef null, i32 noundef %.046.a, ptr noundef %.047.a) #9
  br label %bb.d

bb.d:                                             ; preds = %zend_parse_arg_obj.exit, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @spl_object_storage_attach(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zend_hash_key, align 8     ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @spl_object_storage_attach_handle(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.e = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %5, ptr noundef nonnull %0, ptr noundef %1)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i64, ptr %5, align 8               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val57 = load ptr, ptr %i.g, align 8, !tbaa !27 ; 5 uses
  %i.h = tail call fastcc ptr @spl_object_storage_get(ptr noundef nonnull %0, i64 %.val, ptr %.val57) ; 4 uses
  %.not50 = icmp eq ptr %i.h, null
  br i1 %.not50, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !12
  store ptr %i.j, ptr %6, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !12
  %.not54 = icmp eq ptr %2, null
  br i1 %.not54, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !12
  store i32 %i.p, ptr %i.k, align 8, !tbaa !12
  %i.q = and i32 %i.p, 65280
  %.not55 = icmp eq i32 %i.q, 0
  br i1 %.not55, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.n, align 4, !tbaa !30
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.n, align 4, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i32 1, ptr %i.k, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  tail call fastcc void @spl_object_storage_free_hash(ptr %.val57)
  call void @zval_ptr_dtor(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.u

bb.j:                                             ; preds = %bb.d
  %i.t = load i32, ptr %1, align 4, !tbaa !30
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %1, align 4, !tbaa !30
  %.not51 = icmp eq ptr %2, null
  br i1 %.not51, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %2, align 8, !tbaa !12     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !12   ; 3 uses
  %i.y = and i32 %i.x, 65280
  %.not52 = icmp eq i32 %i.y, 0
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr %i.v, align 4, !tbaa !30
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.6.0 = phi i32 [ %i.x, %bb.l ], [ %i.x, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %.sroa.5.0 = phi ptr [ %i.v, %bb.l ], [ %i.v, %bb.k ], [ undef, %bb.j ] ; 2 uses
  %.not53 = icmp eq ptr %.val57, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = and i32 %i.ac, 128
  %.not.i56 = icmp eq i32 %i.ad, 0                ; 2 uses
  br i1 %.not53, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call noalias dereferenceable_or_null(24) ptr @__zend_malloc(i64 noundef 24) #10
  br label %zend_hash_update_mem.exit

bb.p:                                             ; preds = %bb.n
  %i.af = tail call noalias ptr @_emalloc_24() #9
  br label %zend_hash_update_mem.exit

zend_hash_update_mem.exit:                        ; preds = %bb.o, %bb.p
  %i.ag = phi ptr [ %i.ae, %bb.o ], [ %i.af, %bb.p ] ; 4 uses
  store ptr %1, ptr %i.ag, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.ag, ptr %4, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 13, ptr %i.ah, align 8, !tbaa !12
  %i.ai = call ptr @zend_hash_update(ptr noundef nonnull %0, ptr noundef nonnull %.val57, ptr noundef nonnull %4) #9
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12, !nonnull !31, !noundef !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  br i1 %.not.i56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call noalias dereferenceable_or_null(24) ptr @__zend_malloc(i64 noundef 24) #10
  br label %zend_hash_index_update_mem.exit

bb.s:                                             ; preds = %bb.q
  %i.al = tail call noalias ptr @_emalloc_24() #9
  br label %zend_hash_index_update_mem.exit

zend_hash_index_update_mem.exit:                  ; preds = %bb.r, %bb.s
  %i.am = phi ptr [ %i.ak, %bb.r ], [ %i.al, %bb.s ] ; 4 uses
  store ptr %1, ptr %i.am, align 1
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx61, align 1
  %.sroa.6.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx63, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.am, ptr %3, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 13, ptr %i.an, align 8, !tbaa !12
  %i.ao = call ptr @zend_hash_index_update(ptr noundef nonnull %0, i64 noundef %.val, ptr noundef nonnull %3) #9
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12, !nonnull !31, !noundef !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.t

bb.t:                                             ; preds = %zend_hash_index_update_mem.exit, %zend_hash_update_mem.exit
  %.045 = phi ptr [ %i.aj, %zend_hash_update_mem.exit ], [ %i.ap, %zend_hash_index_update_mem.exit ]
  call fastcc void @spl_object_storage_free_hash(ptr %.val57)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.t, %bb.i
  %.0 = phi ptr [ %.045, %bb.t ], [ %i.h, %bb.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %.0, %bb.u ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_detach(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_hash_key, align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %.critedge, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.b, %bb.c
  %.038.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.037.ph = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %.036.ph = phi i32 [ 18, %bb.c ], [ 0, %bb.b ]
  %.035.ph = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.035.ph, i32 noundef %.038.ph, ptr noundef null, i32 noundef %.036.ph, ptr noundef %.037.ph) #9
  br label %bb.l

.critedge:                                        ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = and i64 %i.l, 4
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  %i.p = zext i32 %i.o to i64
  %i.q = tail call i32 @zend_hash_index_del(ptr noundef nonnull %i.c, i64 noundef %i.p) #9 ; 0 uses
  br label %spl_object_storage_detach.exit

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.r = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %i.j)
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %.not12.i = icmp eq ptr %i.u, null
  br i1 %.not12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @zend_hash_del(ptr noundef nonnull %i.c, ptr noundef nonnull %i.u) #9 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr %2, align 8, !tbaa !34
  %i.x = tail call i32 @zend_hash_index_del(ptr noundef nonnull %i.c, i64 noundef %i.w) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call fastcc void @spl_object_storage_free_hash(ptr %i.u)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %spl_object_storage_detach.exit

spl_object_storage_detach.exit:                   ; preds = %bb.e, %bb.k
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -24
  tail call void @zend_hash_internal_pointer_reset_ex(ptr noundef nonnull %i.c, ptr noundef nonnull %i.y) #9
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 -32
  store i64 0, ptr %i.z, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %spl_object_storage_detach.exit
  ret void
}

declare void @zend_hash_internal_pointer_reset_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_getHash(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !tbaa !12
  %i.f = icmp eq i8 %i.e, 8
  br i1 %i.f, label %.critedge, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.b, %bb.c
  %.037.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.036.ph = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ]
  %.035.ph = phi i32 [ 18, %bb.c ], [ 0, %bb.b ]
  %.034.ph = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.034.ph, i32 noundef %.037.ph, ptr noundef null, i32 noundef %.035.ph, ptr noundef %.036.ph) #9
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.h = tail call ptr @php_spl_object_hash(ptr noundef %i.g) #9
  store ptr %i.h, ptr %1, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  ret void
}

declare ptr @php_spl_object_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_offsetGet(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 6 uses
  %3 = alloca %struct._zval_struct, align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %.critedge, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.b, %bb.c
  %.055.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.054.ph = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %.053.ph = phi i32 [ 18, %bb.c ], [ 0, %bb.b ]
  %.052.ph.a = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.052.ph.a, i32 noundef %.055.ph, ptr noundef null, i32 noundef %.053.ph, ptr noundef %.054.ph) #9
  br label %bb.o

.critedge:                                        ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.thread, label %bb.e, !prof !14

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.j, ptr %2, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 776, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = call ptr @zend_call_method(ptr noundef nonnull %i.b, ptr noundef %i.o, ptr noundef nonnull %i.k, ptr noundef nonnull @.str.16, i64 noundef 7, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #9 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !12
  switch i8 %i.r, label %bb.f [
    i8 0, label %bb.g
    i8 6, label %bb.h
  ], !prof !38

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = call ptr @zend_zval_value_name(ptr noundef nonnull %3) #9
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.v, ptr noundef %i.w) #9
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #9
  br label %bb.g

.thread:                                          ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !33
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @zend_hash_index_find(ptr noundef nonnull %i.c, i64 noundef %i.z) #9 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i, label %spl_object_storage_free_hash.exit.thread, label %spl_object_storage_free_hash.exit.thread130

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.ab, align 8, !tbaa !12
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !12, !nonnull !31, !noundef !31 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.ad = call ptr @zend_hash_find(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ac) #9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %spl_object_storage_get.exit.thread118, label %spl_object_storage_get.exit

spl_object_storage_free_hash.exit.thread130:      ; preds = %.thread
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !12, !nonnull !31, !noundef !31
  br label %bb.k

spl_object_storage_get.exit:                      ; preds = %bb.h
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !12, !nonnull !31, !noundef !31
  br label %spl_object_storage_get.exit.thread118

spl_object_storage_get.exit.thread118:            ; preds = %bb.h, %spl_object_storage_get.exit
  %.0.i68123 = phi ptr [ %i.af, %spl_object_storage_get.exit ], [ null, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = and i32 %i.ah, 64
  %.not.i.i70 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i70, label %bb.i, label %spl_object_storage_free_hash.exit

bb.i:                                             ; preds = %spl_object_storage_get.exit.thread118
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !30 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.al, ptr %i.ac, align 4, !tbaa !30
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %spl_object_storage_free_hash.exit

bb.j:                                             ; preds = %bb.i
  call void @_efree(ptr noundef nonnull %i.ac) #9
  br label %spl_object_storage_free_hash.exit

spl_object_storage_free_hash.exit:                ; preds = %spl_object_storage_get.exit.thread118, %bb.i, %bb.j
  %.not59 = icmp eq ptr %.0.i68123, null
  br i1 %.not59, label %spl_object_storage_free_hash.exit.thread, label %bb.k

spl_object_storage_free_hash.exit.thread:         ; preds = %.thread, %spl_object_storage_free_hash.exit
  %i.an = load ptr, ptr @spl_ce_UnexpectedValueException, align 8, !tbaa !51
  %i.ao = call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.an, i64 noundef 0, ptr noundef nonnull @.str) #9 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %spl_object_storage_free_hash.exit.thread130, %spl_object_storage_free_hash.exit
  %.0.i68117133 = phi ptr [ %i.ae, %spl_object_storage_free_hash.exit.thread130 ], [ %.0.i68123, %spl_object_storage_free_hash.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i68117133, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i68117133, i64 16
  %i.ar = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.as = and i32 %i.ar, 65280
  %.not60 = icmp eq i32 %i.as, 0
  br i1 %.not60, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = and i32 %i.ar, 255
  %i.au = icmp eq i32 %i.at, 10
  br i1 %i.au, label %bb.m, label %.sink.split, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = and i32 %i.ay, 65280
  %.not61 = icmp eq i32 %i.az, 0
  br i1 %.not61, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink140 = phi i32 [ %i.ay, %bb.m ], [ %i.ar, %bb.l ]
  %.sink.in = phi ptr [ %i.aw, %bb.m ], [ %i.ap, %bb.l ] ; 2 uses
  %i.ba = and i32 %.sink140, 65280
  %i.bb = icmp ne i32 %i.ba, 0
  call void @llvm.assume(i1 %i.bb)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !12 ; 2 uses
  %i.bc = load i32, ptr %.sink, align 4, !tbaa !30
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %.sink, align 4, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k, %bb.m
  %.0 = phi ptr [ %i.ap, %bb.k ], [ %i.aw, %bb.m ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.be = load ptr, ptr %.0, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !12
  store ptr %i.be, ptr %1, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %spl_object_storage_free_hash.exit.thread, %bb.n, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @spl_object_storage_get_hash(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %2, ptr %3, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 776, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = call ptr @zend_call_method(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16, i64 noundef 7, ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %3, ptr noundef null) #9 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !12
  switch i8 %i.i, label %bb.c [
    i8 0, label %bb.e
    i8 6, label %bb.d
  ], !prof !38

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = call ptr @zend_zval_value_name(ptr noundef nonnull %4) #9
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.m, ptr noundef %i.n) #9
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = zext i32 %i.s to i64
end_hunk_0
begin_hunk_1_@zim_SplObjectStorage_removeAllExcept:bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -80
  br label %bb.c

._crit_edge:                                      ; preds = %zend_object_release.exit, %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.c, i64 -24
  call void @zend_hash_internal_pointer_reset_ex(ptr noundef nonnull %i.d, ptr noundef nonnull %i.v) #9
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -32
  store i64 0, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 -60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53
  %i.z = zext i32 %i.y to i64
  store i64 %i.z, ptr %1, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.aa, align 8, !tbaa !12
  br label %bb.s

bb.c:                                             ; preds = %.lr.ph, %zend_object_release.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %zend_object_release.exit ]
  %.02532 = phi ptr [ %i.p, %.lr.ph ], [ %i.by, %zend_object_release.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02532, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !12
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %zend_object_release.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %.02532, align 8, !tbaa !12
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 11 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !30
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %.split, label %bb.e, !prof !14

.split:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  %i.al = zext i32 %i.ak to i64
  %i.am = call ptr @zend_hash_index_find(ptr noundef nonnull %i.l, i64 noundef %i.al) #9
  %.not31 = icmp eq ptr %i.am, null
  br i1 %.not31, label %bb.h, label %spl_object_storage_detach.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.an = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %3, ptr noundef nonnull %i.l, ptr noundef nonnull %i.af)
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %spl_object_storage_contains.exit.thread, label %bb.f

spl_object_storage_contains.exit.thread:          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %spl_object_storage_detach.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !27, !nonnull !31, !noundef !31 ; 5 uses
  %i.aq = call ptr @zend_hash_find(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ap) #9
  %.not = icmp eq ptr %i.aq, null                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = and i32 %i.as, 64
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.g, label %spl_object_storage_contains.exit

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !30 ; 2 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !30
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.split30, label %spl_object_storage_contains.exit

.split30:                                         ; preds = %bb.g
  call void @_efree(ptr noundef nonnull %i.ap) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.not, label %bb.h, label %spl_object_storage_detach.exit

spl_object_storage_contains.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.not, label %bb.h, label %spl_object_storage_detach.exit

bb.h:                                             ; preds = %.split30, %.split, %spl_object_storage_contains.exit
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !16
  %i.az = and i64 %i.ay, 4
  %.not.i26 = icmp eq i64 %i.az, 0
  br i1 %.not.i26, label %bb.i, label %bb.j, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !33
  %i.bc = zext i32 %i.bb to i64
  %i.bd = call i32 @zend_hash_index_del(ptr noundef nonnull %i.d, i64 noundef %i.bc) #9 ; 0 uses
  br label %spl_object_storage_detach.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.be = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.af)
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !27  ; 3 uses
  %.not12.i = icmp eq ptr %i.bg, null
  br i1 %.not12.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = call i32 @zend_hash_del(ptr noundef nonnull %i.d, ptr noundef nonnull %i.bg) #9 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = load i64, ptr %2, align 8, !tbaa !34
  %i.bj = call i32 @zend_hash_index_del(ptr noundef nonnull %i.d, i64 noundef %i.bi) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call fastcc void @spl_object_storage_free_hash(ptr %i.bg)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %spl_object_storage_detach.exit

spl_object_storage_detach.exit:                   ; preds = %bb.o, %bb.i, %.split30, %spl_object_storage_contains.exit.thread, %.split, %spl_object_storage_contains.exit
  %i.bk = load i32, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 0
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.af, align 4, !tbaa !30
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %spl_object_storage_detach.exit
  call void @zend_objects_store_del(ptr noundef nonnull %i.af) #9
  br label %zend_object_release.exit

bb.q:                                             ; preds = %spl_object_storage_detach.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.bq = and i32 %i.bp, -1008
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.r, label %zend_object_release.exit, !prof !15

bb.r:                                             ; preds = %bb.q
  call void @gc_possible_root(ptr noundef nonnull %i.af) #9
  br label %zend_object_release.exit

zend_object_release.exit:                         ; preds = %bb.r, %bb.q, %bb.p, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.bt = load i32, ptr %i.u, align 8, !tbaa !12
  %i.bu = shl i32 %i.bt, 2
  %i.bv = and i32 %i.bu, 16
  %narrow = sub nuw nsw i32 32, %i.bv
  %i.bw = zext nneg i32 %narrow to i64
  %i.bx = mul nuw nsw i64 %indvars.iv.next, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  %i.bz = load i32, ptr %i.n, align 8, !tbaa !54
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %bb.c, label %._crit_edge, !llvm.loop !62

bb.s:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_contains(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_hash_key, align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %.critedge, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.b, %bb.c
  %.036.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.035.ph = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %.034.ph = phi i32 [ 18, %bb.c ], [ 0, %bb.b ]
  %.033.ph = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.033.ph, i32 noundef %.036.ph, ptr noundef null, i32 noundef %.034.ph, ptr noundef %.035.ph) #9
  br label %bb.j

.critedge:                                        ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %i.o = zext i32 %i.n to i64
  %i.p = tail call ptr @zend_hash_index_find(ptr noundef nonnull %i.c, i64 noundef %i.o) #9
  %i.q = icmp ne ptr %i.p, null
  br label %spl_object_storage_contains.exit

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.r = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %i.j)
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %zend_string_release_ex.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27, !nonnull !31, !noundef !31 ; 5 uses
  %i.v = tail call ptr @zend_hash_find(ptr noundef nonnull %i.c, ptr noundef nonnull %i.u) #9
  %i.w = icmp ne ptr %i.v, null                   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = and i32 %i.y, 64
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.h, label %zend_string_release_ex.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !30  ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.u, align 4, !tbaa !30
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %zend_string_release_ex.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_efree(ptr noundef nonnull %i.u) #9
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i41 = phi i1 [ true, %bb.f ], [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %spl_object_storage_contains.exit

spl_object_storage_contains.exit:                 ; preds = %bb.e, %zend_string_release_ex.exit.i
  %.1.i = phi i1 [ %i.q, %bb.e ], [ %.0.i41, %zend_string_release_ex.exit.i ]
  %i.ae = select i1 %.1.i, i32 3, i32 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %spl_object_storage_contains.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #9
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !63
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call i64 @php_count_recursive(ptr noundef nonnull %i.d) #9
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  %i.n = zext i32 %i.m to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.n, %bb.d ], [ %i.k, %bb.c ]
  store i64 %.sink, ptr %1, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.o, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i64 @php_count_recursive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_rewind(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -88
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -24
  tail call void @zend_hash_internal_pointer_reset_ex(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -32
  store i64 0, ptr %i.g, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

declare void @zend_wrong_parameters_none_error() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_valid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -88
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.g = tail call i32 @zend_hash_get_current_key_type_ex(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9
  %.not5 = icmp eq i32 %i.g, 3
  %i.h = select i1 %.not5, i32 2, i32 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  store i64 %i.f, ptr %1, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.g, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_current(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.e
end_hunk_1
begin_hunk_2_@zim_SplObjectStorage_serialize:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg
  store i8 0, ptr %i.ch, align 1, !tbaa !12
  %i.ci = load ptr, ptr %4, align 8, !tbaa !69    ; 9 uses
  %.not.i52 = icmp eq ptr %i.ci, null
  br i1 %.not.i52, label %smart_str_trim_to_size_ex.exit, label %bb.r

bb.r:                                             ; preds = %smart_str_0.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !71 ; 7 uses
  %i.cn = icmp ugt i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.s, label %smart_str_trim_to_size_ex.exit

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %i.cq = and i32 %i.cp, 64
  %.not.i53 = icmp eq i32 %i.cq, 0
  br i1 %.not.i53, label %bb.t, label %zend_string_alloc.exit

bb.t:                                             ; preds = %bb.s
  %i.cr = load i32, ptr %i.ci, align 8, !tbaa !30
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.u, label %zend_string_alloc.exit, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.ct = and i64 %i.cm, -8
  %i.cu = add i64 %i.ct, 32
  %i.cv = call ptr @_erealloc(ptr noundef nonnull %i.ci, i64 noundef %i.cu) #11 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.cm, ptr %i.cw, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12
  %i.da = and i32 %i.cz, -513
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !12
  br label %zend_string_realloc.exit

zend_string_alloc.exit:                           ; preds = %bb.s, %bb.t
  %i.db = and i64 %i.cm, -8
  %i.dc = add i64 %i.db, 32
  %i.dd = call noalias ptr @_emalloc(i64 noundef %i.dc) #10 ; 7 uses
  store i32 1, ptr %i.dd, align 4, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 22, ptr %i.de, align 4, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 0, ptr %i.df, align 8, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.cm, ptr %i.dg, align 8, !tbaa !71
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !71
  %..i = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.dj)
  %i.dk = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dk, i1 false)
  %i.dl = load i32, ptr %i.co, align 4, !tbaa !12
  %i.dm = and i32 %i.dl, 64
  %.not24.i = icmp eq i32 %i.dm, 0
  br i1 %.not24.i, label %bb.v, label %zend_string_realloc.exit

bb.v:                                             ; preds = %zend_string_alloc.exit
  %i.dn = load i32, ptr %i.ci, align 8, !tbaa !30 ; 2 uses
  %i.do = icmp ne i32 %i.dn, 0
  call void @llvm.assume(i1 %i.do)
  %i.dp = add i32 %i.dn, -1
  store i32 %i.dp, ptr %i.ci, align 8, !tbaa !30
  br label %zend_string_realloc.exit

zend_string_realloc.exit:                         ; preds = %bb.u, %zend_string_alloc.exit, %bb.v
  %.0.i54 = phi ptr [ %i.cv, %bb.u ], [ %i.dd, %bb.v ], [ %i.dd, %zend_string_alloc.exit ]
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !73
  br label %smart_str_trim_to_size_ex.exit

smart_str_trim_to_size_ex.exit:                   ; preds = %smart_str_0.exit, %bb.r, %zend_string_realloc.exit
  %i.dq = phi ptr [ null, %smart_str_0.exit ], [ %i.ci, %bb.r ], [ %.0.i54, %zend_string_realloc.exit ]
  store ptr null, ptr %4, align 8, !tbaa !69
  br label %smart_str_extract_ex.exit

bb.w:                                             ; preds = %smart_str_alloc.exit
  %i.dr = load ptr, ptr @zend_empty_string, align 8, !tbaa !76
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %smart_str_trim_to_size_ex.exit, %bb.w
  %.0.i50 = phi ptr [ %i.dq, %smart_str_trim_to_size_ex.exit ], [ %i.dr, %bb.w ] ; 2 uses
  store ptr %.0.i50, ptr %1, align 8, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i50, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !12
  %i.du = and i32 %i.dt, 64
  %.not32 = icmp eq i32 %i.du, 0
  %i.dv = select i1 %.not32, i32 262, i32 6
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.b, %smart_str_extract_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @php_var_serialize_init() local_unnamed_addr #2

declare void @php_var_serialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @php_var_serialize_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #2

declare ptr @zend_std_get_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage_unserialize(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 6 uses
  %3 = alloca %struct._zval_struct, align 8       ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 21 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  %4 = alloca %struct._zval_struct, align 8       ; 9 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12
  %i.j = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.k = icmp eq i32 %i.j, -1
  %i.l = load i64, ptr %i.b, align 8
  %i.m = icmp eq i64 %i.l, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !77
  %i.o = call ptr @php_var_unserialize_init() #9
  store ptr %i.o, ptr %i.d, align 8, !tbaa !79
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %.not = icmp eq i8 %i.q, 120
  br i1 %.not, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !77
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %.not34 = icmp eq i8 %i.s, 58
  br i1 %.not34, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.t, ptr %i.c, align 8, !tbaa !77
  %i.u = call ptr @var_tmp_var(ptr noundef nonnull %i.d) #9 ; 3 uses
  %i.v = load i64, ptr %i.b, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = call i32 @php_var_unserialize(ptr noundef %i.u, ptr noundef nonnull %i.c, ptr noundef %i.w, ptr noundef nonnull %i.d) #9
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !12
  %.not36 = icmp eq i8 %i.z, 4
  br i1 %.not36, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !77
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !12  ; 3 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not98 = icmp eq i64 %i.ac, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %spl_object_storage_free_hash.exit.thread
  %.in.a = phi i64 [ %i.ac, %.lr.ph ], [ %i.ak, %spl_object_storage_free_hash.exit.thread ] ; 2 uses
  %i.ak = add nsw i64 %.in.a, -1
  %i.al = call ptr @var_tmp_var(ptr noundef nonnull %i.d) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i32 0, ptr %i.ae, align 8, !tbaa !12
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %.not42 = icmp eq i8 %i.an, 59
  br i1 %.not42, label %bb.h, label %.thread95

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !77
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  switch i8 %i.ap, label %.thread95 [
    i8 79, label %bb.i
    i8 67, label %bb.i
    i8 114, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aq
  %i.as = call i32 @php_var_unserialize(ptr noundef %i.al, ptr noundef nonnull %i.c, ptr noundef %i.ar, ptr noundef nonnull %i.d) #9
  %.not46 = icmp eq i32 %i.as, 0
  br i1 %.not46, label %.thread95, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  %i.av = icmp eq i8 %i.au, 44
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !77
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  %i.az = call i32 @php_var_unserialize(ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef %i.ay, ptr noundef nonnull %i.d) #9
  %.not47 = icmp eq i32 %i.az, 0
  br i1 %.not47, label %.thread95.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !12
  %.not48 = icmp eq i8 %i.bb, 8
  br i1 %.not48, label %bb.m, label %.thread95.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !12 ; 2 uses
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %.thread, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.bc, ptr %2, align 8, !tbaa !12
  store i32 776, ptr %i.ag, align 8, !tbaa !12
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.bf = call ptr @zend_call_method(ptr noundef nonnull %i.f, ptr noundef %i.be, ptr noundef nonnull %i.af, ptr noundef nonnull @.str.16, i64 noundef 7, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #9 ; 0 uses
  %i.bg = load i8, ptr %i.ai, align 8, !tbaa !12
  switch i8 %i.bg, label %bb.o [
    i8 0, label %.loopexit
    i8 6, label %bb.p
  ], !prof !38

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = call ptr @zend_zval_value_name(ptr noundef nonnull %3) #9
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.bk, ptr noundef %i.bl) #9
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #9
  br label %.loopexit

.thread:                                          ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !33
  %i.bo = zext i32 %i.bn to i64
  %6 = call ptr @zend_hash_index_find(ptr noundef nonnull %i.g, i64 noundef %i.bo) #9 ; 2 uses
  %.not.i7.i = icmp eq ptr %6, null
  br i1 %.not.i7.i, label %spl_object_storage_free_hash.exit.thread, label %spl_object_storage_free_hash.exit.thread91

.loopexit:                                        ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.thread95.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %3, align 8, !tbaa !12, !nonnull !31, !noundef !31 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %7 = call ptr @zend_hash_find(ptr noundef nonnull %i.g, ptr noundef nonnull %i.bp) #9 ; 2 uses
  %.not.i.i.a = icmp eq ptr %7, null
  br i1 %.not.i.i.a, label %spl_object_storage_get.exit.thread79, label %spl_object_storage_get.exit

spl_object_storage_free_hash.exit.thread91:       ; preds = %.thread
  %i.bq = load ptr, ptr %6, align 8, !tbaa !12, !nonnull !31, !noundef !31
  br label %bb.s

spl_object_storage_get.exit:                      ; preds = %bb.p
  %i.br = load ptr, ptr %7, align 8, !tbaa !12, !nonnull !31, !noundef !31
  br label %spl_object_storage_get.exit.thread79

spl_object_storage_get.exit.thread79:             ; preds = %bb.p, %spl_object_storage_get.exit
  %.0.i5484 = phi ptr [ %i.br, %spl_object_storage_get.exit ], [ null, %bb.p ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12
  %i.bu = and i32 %i.bt, 64
  %.not.i.i56 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i56, label %bb.q, label %spl_object_storage_free_hash.exit

bb.q:                                             ; preds = %spl_object_storage_get.exit.thread79
  %i.bv = load i32, ptr %i.bp, align 4, !tbaa !30 ; 2 uses
  %i.bw = icmp ne i32 %i.bv, 0
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bp, align 4, !tbaa !30
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.r, label %spl_object_storage_free_hash.exit

bb.r:                                             ; preds = %bb.q
  call void @_efree(ptr noundef nonnull %i.bp) #9
  br label %spl_object_storage_free_hash.exit

spl_object_storage_free_hash.exit:                ; preds = %spl_object_storage_get.exit.thread79, %bb.q, %bb.r
  %.not49 = icmp eq ptr %.0.i5484, null
  br i1 %.not49, label %spl_object_storage_free_hash.exit.thread, label %bb.s

bb.s:                                             ; preds = %spl_object_storage_free_hash.exit.thread91, %spl_object_storage_free_hash.exit
  %.0.i547894 = phi ptr [ %i.bq, %spl_object_storage_free_hash.exit.thread91 ], [ %.0.i5484, %spl_object_storage_free_hash.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i547894, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !12
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i547894, i64 8
  call void @var_push_dtor(ptr noundef nonnull %i.d, ptr noundef nonnull %i.cc) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cd = load ptr, ptr %.0.i547894, align 8, !tbaa !55
  store ptr %i.cd, ptr %5, align 8, !tbaa !12
  store i32 776, ptr %i.aj, align 8, !tbaa !12
  call void @var_push_dtor(ptr noundef nonnull %i.d, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %spl_object_storage_free_hash.exit.thread

.thread95.sink.split:                             ; preds = %bb.l, %bb.k, %.loopexit
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #9
  br label %.thread95

.thread95:                                        ; preds = %bb.h, %bb.g, %bb.i, %.thread95.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.aa

spl_object_storage_free_hash.exit.thread:         ; preds = %.thread, %spl_object_storage_free_hash.exit, %bb.u
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.cf = load i8, ptr %i.ae, align 8, !tbaa !12
  %i.cg = icmp eq i8 %i.cf, 0
  %. = select i1 %i.cg, ptr null, ptr %4
  %i.ch = call fastcc ptr @spl_object_storage_attach(ptr noundef nonnull %i.g, ptr noundef %i.ce, ptr noundef %.)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @var_replace(ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef nonnull %i.ci) #9
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.cj = icmp samesign ugt i64 %.in.a, 1
  br i1 %i.cj, label %bb.g, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %spl_object_storage_free_hash.exit.thread
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ck = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.preheader ] ; 4 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !12
  %.not37 = icmp eq i8 %i.cl, 59
  br i1 %.not37, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 2 uses
  store ptr %i.cm, ptr %i.c, align 8, !tbaa !77
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %.not38 = icmp eq i8 %i.cn, 109
  br i1 %.not38, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 2 ; 2 uses
  store ptr %i.co, ptr %i.c, align 8, !tbaa !77
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !12
  %.not39 = icmp eq i8 %i.cp, 58
  br i1 %.not39, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !77
  %i.cr = call ptr @var_tmp_var(ptr noundef nonnull %i.d) #9 ; 3 uses
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !63
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cs
  %i.cu = call i32 @php_var_unserialize(ptr noundef %i.cr, ptr noundef nonnull %i.c, ptr noundef %i.ct, ptr noundef nonnull %i.d) #9
  %.not40 = icmp eq i32 %i.cu, 0
  br i1 %.not40, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !12
  %.not41 = icmp eq i8 %i.cw, 7
  br i1 %.not41, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !12
  call void @object_properties_load(ptr noundef nonnull %i.f, ptr noundef %i.cx) #9
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !79
  call void @php_var_unserialize_destroy(ptr noundef %i.cy) #9
  br label %bb.ab

bb.aa:                                            ; preds = %.thread95, %bb.x, %bb.y, %bb.v, %bb.w, %._crit_edge, %bb.f, %bb.d, %bb.e, %bb.b, %bb.c
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !79
  call void @php_var_unserialize_destroy(ptr noundef %i.cz) #9
  %i.da = load ptr, ptr @spl_ce_UnexpectedValueException, align 8, !tbaa !51
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !63
  %i.dh = call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.da, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef %i.df, i64 noundef %i.dg) #9 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare ptr @php_var_unserialize_init() local_unnamed_addr #2

declare ptr @var_tmp_var(ptr noundef) local_unnamed_addr #2

declare i32 @php_var_unserialize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @var_push_dtor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @var_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @object_properties_load(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @php_var_unserialize_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage___serialize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 8 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.e = tail call ptr @_zend_new_array_0() #9
  store ptr %i.e, ptr %1, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %i.i = shl i32 %i.h, 1
  %i.j = tail call ptr @_zend_new_array(i32 noundef %i.i) #9 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 775, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !12
  %i.p = shl i32 %i.o, 2
  %i.q = and i32 %i.p, 16
  %narrow = sub nuw nsw i32 32, %i.q
  %i.r = zext nneg i32 %narrow to i64
  %.not3537 = icmp eq i32 %i.m, 0
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.v = phi ptr [ %i.j, %.lr.ph ], [ %i.am, %bb.g ] ; 2 uses
  %.039 = phi ptr [ %i.t, %.lr.ph ], [ %i.an, %bb.g ] ; 3 uses
  %.03438 = phi i32 [ %i.m, %.lr.ph ], [ %i.ao, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %.039, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !12
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %.039, align 8, !tbaa !12  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55  ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !30
  store ptr %i.aa, ptr %3, align 8, !tbaa !12
  store i32 776, ptr %i.u, align 8, !tbaa !12
  %i.ad = call ptr @zend_hash_next_index_insert(ptr noundef %i.v, ptr noundef nonnull %3) #9 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %.not36 = icmp eq i8 %i.ag, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.al = call ptr @zend_hash_next_index_insert(ptr noundef %i.ak, ptr noundef nonnull %i.ae) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.am = phi ptr [ %i.v, %bb.c ], [ %i.ak, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %.039, i64 %i.r
  %i.ao = add i32 %.03438, -1                     ; 2 uses
  %.not35 = icmp eq i32 %i.ao, 0
  br i1 %.not35, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.g, %.critedge
  %i.ap = load ptr, ptr %1, align 8, !tbaa !12
  %i.aq = call ptr @zend_hash_next_index_insert(ptr noundef %i.ap, ptr noundef nonnull %2) #9 ; 0 uses
  %i.ar = call ptr @zend_std_get_properties(ptr noundef nonnull %i.b) #9
  %i.as = call ptr @zend_proptable_to_symtable(ptr noundef %i.ar, i1 noundef zeroext true) #9
  store ptr %i.as, ptr %2, align 8, !tbaa !12
  store i32 775, ptr %i.k, align 8, !tbaa !12
  %i.at = load ptr, ptr %1, align 8, !tbaa !12
  %i.au = call ptr @zend_hash_next_index_insert(ptr noundef %i.at, ptr noundef nonnull %2) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

declare ptr @_zend_new_array_0() local_unnamed_addr #2

declare ptr @_zend_new_array(i32 noundef) local_unnamed_addr #2

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_proptable_to_symtable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage___unserialize(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.f, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a) #9
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.j = call ptr @zend_hash_index_find(ptr noundef %i.i, i64 noundef 0) #9 ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.l = call ptr @zend_hash_index_find(ptr noundef %i.k, i64 noundef 1) #9 ; 3 uses
  %i.m = icmp ne ptr %i.j, null
  %i.n = icmp ne ptr %i.l, null
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !12
  %.not = icmp eq i8 %i.p, 7
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !12
  %.not34 = icmp eq i8 %i.r, 7
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = load ptr, ptr @spl_ce_UnexpectedValueException, align 8, !tbaa !51
  %i.t = call ptr @zend_throw_exception(ptr noundef %i.s, ptr noundef nonnull @.str.12, i64 noundef 0) #9 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = and i32 %i.w, 1
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @spl_ce_UnexpectedValueException, align 8, !tbaa !51
  %i.z = call ptr @zend_throw_exception(ptr noundef %i.y, ptr noundef nonnull @.str.13, i64 noundef 0) #9 ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !12
  %i.ae = shl i32 %i.ad, 2
  %i.af = and i32 %i.ae, 16
  %narrow = sub nuw nsw i32 32, %i.af
  %i.ag = zext nneg i32 %narrow to i64
  %.not3639 = icmp eq i32 %i.ab, 0
  br i1 %.not3639, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.042 = phi ptr [ %i.av, %bb.o ], [ %i.ai, %.lr.ph.preheader ] ; 5 uses
  %.02841 = phi i32 [ %i.aw, %bb.o ], [ %i.ab, %.lr.ph.preheader ]
  %.03140 = phi ptr [ %.1, %bb.o ], [ null, %.lr.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !12  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.i, !prof !15

bb.i:                                             ; preds = %.lr.ph
  %.not37 = icmp eq ptr %.03140, null
  br i1 %.not37, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.03140, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !12
  %.not38 = icmp eq i8 %i.an, 8
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr @spl_ce_UnexpectedValueException, align 8, !tbaa !51
  %i.ap = call ptr @zend_throw_exception(ptr noundef %i.ao, ptr noundef nonnull @.str.14, i64 noundef 0) #9 ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp eq i8 %i.ak, 10
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %.042, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.030 = phi ptr [ %i.as, %bb.m ], [ %.042, %bb.l ]
  %i.at = load ptr, ptr %.03140, align 8, !tbaa !12
  %i.au = call fastcc ptr @spl_object_storage_attach(ptr noundef nonnull %i.d, ptr noundef %i.at, ptr noundef nonnull %.030) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %.lr.ph
  %.1 = phi ptr [ %.03140, %.lr.ph ], [ null, %bb.n ], [ %.042, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.042, i64 %i.ag
  %i.aw = add i32 %.02841, -1                     ; 2 uses
  %.not36 = icmp eq i32 %i.aw, 0
  br i1 %.not36, label %.critedge, label %.lr.ph, !llvm.loop !83

.critedge:                                        ; preds = %bb.o, %bb.h
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !12
  call void @object_properties_load(ptr noundef nonnull %i.c, ptr noundef %i.ax) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.a, %.critedge, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare ptr @zend_hash_index_find(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplObjectStorage___debugInfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 7 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = tail call ptr %i.h(ptr noundef %i.d) #9, !inline_history !87 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53
  %i.l = add i32 %i.k, 1
  %i.m = tail call ptr @_zend_new_array(i32 noundef %i.l) #9 ; 3 uses
  tail call void @zend_hash_copy(ptr noundef %i.m, ptr noundef %i.i, ptr noundef nonnull @zval_add_ref) #9
  %i.n = tail call ptr @_zend_new_array_0() #9    ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 775, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !12
  %i.t = shl i32 %i.s, 2
  %i.u = and i32 %i.t, 16
  %narrow.i = sub nuw nsw i32 32, %i.u
  %i.v = zext nneg i32 %narrow.i to i64
  %.not34.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i, label %spl_object_storage_debug_info.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.036.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.ap, %bb.g ] ; 3 uses
  %.03235.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.aq, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !12
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %.036.i, align 8, !tbaa !12 ; 3 uses
  %i.ae = call ptr @_zend_new_array_0() #9
  store ptr %i.ae, ptr %2, align 8, !tbaa !12
  store i32 775, ptr %i.y, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !30
  store ptr %i.af, ptr %4, align 8, !tbaa !12
  store i32 776, ptr %i.z, align 8, !tbaa !12
  call void @add_assoc_zval_ex(ptr noundef nonnull %2, ptr noundef nonnull @.str.18, i64 noundef 3, ptr noundef nonnull %4) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 17
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %.not33.i = icmp eq i8 %i.ak, 0
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @add_assoc_zval_ex(ptr noundef nonnull %2, ptr noundef nonnull @.str.19, i64 noundef 3, ptr noundef nonnull %i.ai) #9
  %i.ao = call ptr @zend_hash_next_index_insert(ptr noundef %i.n, ptr noundef nonnull %2) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.v
  %i.aq = add i32 %.03235.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %spl_object_storage_debug_info.exit, label %bb.c, !llvm.loop !88

spl_object_storage_debug_info.exit:               ; preds = %bb.g, %.critedge
  %i.ar = load ptr, ptr @spl_ce_SplObjectStorage, align 8, !tbaa !51
  call void @spl_set_private_debug_info_property(ptr noundef %i.ar, ptr noundef nonnull @.str.20, i64 noundef 7, ptr noundef %i.m, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  store ptr %i.m, ptr %1, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.as, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %spl_object_storage_debug_info.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_MultipleIterator___construct(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 1, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #9
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = load i64, ptr %i.a, align 8, !tbaa !63
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -16
  store i64 %i.h, ptr %i.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_MultipleIterator_getFlags(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.f, ptr %1, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.g, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_MultipleIterator_setFlags(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.f = tail call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.d, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.e) #9 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_MultipleIterator_attachIterator(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 7 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 2 uses
  %i.f = add i32 %i.e, -3
  %or.cond = icmp ult i32 %i.f, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #9
  br label %.thread106

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = load ptr, ptr @zend_ce_iterator, align 8, !tbaa !51 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !12
  %i.k = icmp eq i8 %i.j, 8
  br i1 %i.k, label %bb.d, label %bb.f, !prof !14

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.h, null
  %.pre143 = load ptr, ptr %i.g, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i, label %instanceof_function.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.pre143, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %instanceof_function.exit.thread, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.e
  %i.o = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.m, ptr noundef nonnull %i.h) #9
  br i1 %i.o, label %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, label %thread-pre-split, !prof !90

instanceof_function.exit.instanceof_function.exit.thread_crit_edge: ; preds = %instanceof_function.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !12
  br label %instanceof_function.exit.thread

thread-pre-split:                                 ; preds = %instanceof_function.exit
  %.pr = load ptr, ptr @zend_ce_iterator, align 8, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.c
  %i.p = phi ptr [ %.pr, %thread-pre-split ], [ %i.h, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread106, label %bb.g, !prof !91

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %.thread106

instanceof_function.exit.thread:                  ; preds = %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, %bb.e, %bb.d
  %i.t = phi ptr [ %.pre, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge ], [ %.pre143, %bb.e ], [ %.pre143, %bb.d ] ; 2 uses
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %.critedge.thread, label %bb.h, !prof !15

bb.h:                                             ; preds = %instanceof_function.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i8, ptr %i.w, align 8, !tbaa !12
  switch i8 %i.x, label %zend_parse_arg_str_or_long.exit [
    i8 6, label %bb.i
    i8 4, label %.critedge.thread135.thread
    i8 1, label %.critedge.thread
  ], !prof !92

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !76
  br label %.critedge.thread135

.critedge.thread135.thread:                       ; preds = %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !76
  %i.z = load i64, ptr %i.v, align 8, !tbaa !12
  store i64 %i.z, ptr %i.b, align 8, !tbaa !63
  %.pn151 = load ptr, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.pn151, i64 -88
  br label %bb.k

zend_parse_arg_str_or_long.exit:                  ; preds = %bb.h
  %i.ab = call zeroext i1 @zend_parse_arg_str_or_long_slow(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 2) #9
  %cond.fr = freeze i1 %i.ab
  br i1 %cond.fr, label %.critedge, label %.thread106, !prof !93

.thread106:                                       ; preds = %zend_parse_arg_str_or_long.exit, %bb.g, %bb.f, %bb.b
  %.062119.a = phi i32 [ 1, %bb.b ], [ 9, %bb.f ], [ 3, %bb.g ], [ 9, %zend_parse_arg_str_or_long.exit ]
  %.063118.a = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ %i.s, %bb.g ], [ null, %zend_parse_arg_str_or_long.exit ]
  %.064117 = phi i32 [ 0, %bb.b ], [ 18, %bb.f ], [ 0, %bb.g ], [ 29, %zend_parse_arg_str_or_long.exit ]
  %.065116 = phi ptr [ null, %bb.b ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.v, %zend_parse_arg_str_or_long.exit ]
  %.066115 = phi i32 [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 2, %zend_parse_arg_str_or_long.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.062119.a, i32 noundef %.066115, ptr noundef %.063118.a, i32 noundef %.064117, ptr noundef %.065116) #9
  br label %bb.n

.critedge:                                        ; preds = %zend_parse_arg_str_or_long.exit
  %.pre144 = load ptr, ptr %i.a, align 8, !tbaa !76
  br label %.critedge.thread135

.critedge.thread135:                              ; preds = %bb.i, %.critedge
  %i.ac = phi ptr [ %.pre144, %.critedge ], [ %i.y, %bb.i ] ; 3 uses
  %.pn = load ptr, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.pn, i64 -88 ; 2 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.thread135
  store ptr %i.ac, ptr %2, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = and i32 %i.af, 64
  %.not73 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not73, i32 262, i32 6
  br label %bb.l

bb.k:                                             ; preds = %.critedge.thread135.thread, %.critedge.thread135
  %i.ai = phi ptr [ %i.aa, %.critedge.thread135.thread ], [ %i.ad, %.critedge.thread135 ]
  %.pn154.a = phi ptr [ %.pn151, %.critedge.thread135.thread ], [ %.pn, %.critedge.thread135 ]
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !63
  store i64 %i.aj, ptr %2, align 8, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = phi ptr [ %i.ai, %bb.k ], [ %i.ad, %bb.j ] ; 5 uses
  %.pn153 = phi ptr [ %.pn154.a, %bb.k ], [ %.pn, %bb.j ]
  %.sink = phi i32 [ 4, %bb.k ], [ %i.ah, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %.sink, ptr %i.al, align 8, !tbaa !12
  %i.am = getelementptr inbounds i8, ptr %.pn153, i64 -24 ; 4 uses
  call void @zend_hash_internal_pointer_reset_ex(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am) #9
  %i.an = call ptr @zend_hash_get_current_data_ex(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am) #9 ; 2 uses
  %.not.i78141 = icmp eq ptr %i.an, null
  br i1 %.not.i78141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %fast_is_identical_function.exit.thread131
  %i.ao = phi ptr [ %i.az, %fast_is_identical_function.exit.thread131 ], [ %i.an, %bb.l ]
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12, !nonnull !31, !noundef !31 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.al, align 8, !tbaa !12  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i8, ptr %i.as, align 8, !tbaa !12
  %.not.i81 = icmp eq i8 %i.ar, %i.at
  br i1 %.not.i81, label %bb.m, label %fast_is_identical_function.exit.thread131

bb.m:                                             ; preds = %.lr.ph
  %i.au = icmp ult i8 %i.ar, 4
  br i1 %i.au, label %fast_is_identical_function.exit.thread, label %fast_is_identical_function.exit

fast_is_identical_function.exit:                  ; preds = %bb.m
  %i.av = call zeroext i1 @zend_is_identical(ptr noundef nonnull %2, ptr noundef nonnull %i.aq) #9
  br i1 %i.av, label %fast_is_identical_function.exit.thread, label %fast_is_identical_function.exit.thread131

fast_is_identical_function.exit.thread:           ; preds = %bb.m, %fast_is_identical_function.exit
  %i.aw = load ptr, ptr @spl_ce_InvalidArgumentException, align 8, !tbaa !51
  %i.ax = call ptr @zend_throw_exception(ptr noundef %i.aw, ptr noundef nonnull @.str.15, i64 noundef 0) #9 ; 0 uses
  br label %bb.n

fast_is_identical_function.exit.thread131:        ; preds = %.lr.ph, %fast_is_identical_function.exit
  %i.ay = call i32 @zend_hash_move_forward_ex(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am) #9 ; 0 uses
  %i.az = call ptr @zend_hash_get_current_data_ex(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am) #9 ; 2 uses
  %.not.i78 = icmp eq ptr %i.az, null
  br i1 %.not.i78, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %fast_is_identical_function.exit.thread131, %bb.l
  %i.ba = call fastcc ptr @spl_object_storage_attach(ptr noundef nonnull %i.ak, ptr noundef %i.t, ptr noundef nonnull %2) ; 0 uses
  br label %bb.n

.critedge.thread:                                 ; preds = %bb.h, %instanceof_function.exit.thread
  %.pn142 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.bb = getelementptr inbounds i8, ptr %.pn142, i64 -88
  %i.bc = tail call fastcc ptr @spl_object_storage_attach(ptr noundef nonnull %i.bb, ptr noundef %i.t, ptr noundef null) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %fast_is_identical_function.exit.thread, %._crit_edge, %.thread106, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_MultipleIterator_detachIterator(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_hash_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -88 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = load ptr, ptr @zend_ce_iterator, align 8, !tbaa !51
  %i.h = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.f, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef %i.g) #9
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16
  %i.n = and i64 %i.m, 4
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = zext i32 %i.p to i64
  %i.r = call i32 @zend_hash_index_del(ptr noundef nonnull %i.d, i64 noundef %i.q) #9 ; 0 uses
  br label %spl_object_storage_detach.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.s = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %i.k)
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %.not12.i = icmp eq ptr %i.v, null
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @zend_hash_del(ptr noundef nonnull %i.d, ptr noundef nonnull %i.v) #9 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %2, align 8, !tbaa !34
  %i.y = call i32 @zend_hash_index_del(ptr noundef nonnull %i.d, i64 noundef %i.x) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call fastcc void @spl_object_storage_free_hash(ptr %i.v)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %spl_object_storage_detach.exit

spl_object_storage_detach.exit:                   ; preds = %bb.c, %bb.i
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 -24
  call void @zend_hash_internal_pointer_reset_ex(ptr noundef nonnull %i.d, ptr noundef nonnull %i.z) #9
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 -32
  store i64 0, ptr %i.aa, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %spl_object_storage_detach.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_MultipleIterator_containsIterator(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_hash_key, align 8     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -88 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = load ptr, ptr @zend_ce_iterator, align 8, !tbaa !51
  %i.h = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.f, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef %i.g) #9
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  %i.p = zext i32 %i.o to i64
  %i.q = call ptr @zend_hash_index_find(ptr noundef nonnull %i.d, i64 noundef %i.p) #9
  %i.r = icmp ne ptr %i.q, null
  br label %spl_object_storage_contains.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.s = call fastcc i32 @spl_object_storage_get_hash(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %i.k)
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %zend_string_release_ex.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_2
