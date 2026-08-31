Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_generators?download=true
inline.NumInlined: 38
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_compiler_globals = type { %struct._zend_stack, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, %struct._zend_llist, ptr, i8, i8, i8, i8, ptr, i32, i32, %struct._zend_oparray_context, %struct._zend_file_context, ptr, %struct._zend_array, ptr, i64, i8, i8, i8, ptr, ptr, %struct._zend_stack, ptr, i32, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct._zend_stack }
%struct._zend_llist = type { ptr, ptr, i64, i64, ptr, i8, ptr }
%struct._zend_oparray_context = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct._zend_file_context = type { %struct._zend_declarables, ptr, i8, i8, ptr, ptr, ptr, %struct._zend_array }
%struct._zend_declarables = type { i64 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.6, i32, %union.anon.8, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon }
%union.anon = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { ptr }
%struct._zend_stack = type { i32, i32, i32, ptr }
%struct._zend_executor_globals = type { %struct._zval_struct, %struct._zval_struct, [32 x ptr], ptr, ptr, %struct._zend_array, %struct._zend_array, ptr, i32, i8, %struct._zval_struct, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, i8, i8, %struct.zend_atomic_bool_s, %struct.zend_atomic_bool_s, ptr, i64, ptr, ptr, %struct._zend_array, %struct._zend_array, i32, i8, %struct._zval_struct, %struct._zval_struct, %struct._zend_stack, %struct._zend_stack, %struct._zend_stack, ptr, i32, i32, i64, ptr, ptr, ptr, %struct._zend_objects_store, %struct._zend_lazy_objects_store, ptr, ptr, ptr, [3 x %struct._zend_op], ptr, i8, i8, i64, i32, i32, ptr, [16 x %struct._HashTableIterator], ptr, %union._zend_function, %struct._zend_op, %struct._zend_array, i64, %struct.zend_get_gc_buffer, ptr, ptr, ptr, i64, i8, i32, ptr, ptr, i64, %struct._zend_call_stack, i64, i64, %struct._zend_strtod_state, [6 x ptr] }
%struct.zend_atomic_bool_s = type { i8 }
%struct._zval_struct = type { %union._zend_value, %union.anon.0, %union.anon.3 }
%union._zend_value = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.3 = type { i32 }
%struct._zend_objects_store = type { ptr, i32, i32, i32 }
%struct._zend_lazy_objects_store = type { %struct._zend_array }
%struct._HashTableIterator = type { ptr, i32, i32 }
%union._zend_function = type { %struct._zend_op_array }
%struct._zend_op_array = type { i8, [3 x i8], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [6 x ptr] }
%struct._zend_op = type { ptr, %union._znode_op, %union._znode_op, %union._znode_op, i32, i32, i8, i8, i8, i8 }
%union._znode_op = type { i32 }
%struct.zend_get_gc_buffer = type { ptr, ptr, ptr }
%struct._zend_call_stack = type { ptr, i64 }
%struct._zend_strtod_state = type { [8 x ptr], ptr, ptr }
%struct._zend_object_handlers = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._zend_function_entry = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct._zend_object_iterator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._zend_class_entry = type { i8, ptr, %union.anon.10, i32, i32, i32, i32, ptr, ptr, ptr, %struct._zend_array, %struct._zend_array, %struct._zend_array, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.11, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.12, ptr, ptr, ptr, ptr, i32, ptr, ptr, %union.anon.13 }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32 }

@compiler_globals = external local_unnamed_addr global %struct._zend_compiler_globals, align 8
@zend_ce_generator = dso_local local_unnamed_addr global ptr null, align 8
@executor_globals = external global %struct._zend_executor_globals, align 8
@zend_ce_ClosedGeneratorException = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"Generator yielded from aborted, no return value available\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Cannot resume an already running generator\00", align 1
@zend_observer_fcall_op_array_extension = external local_unnamed_addr global i32, align 4
@zend_execute_ex = external local_unnamed_addr global ptr, align 8
@zend_ce_throwable = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"Cannot get return value of a generator that hasn't returned\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@zend_known_strings = external local_unnamed_addr global ptr, align 8
@zend_ce_iterator = external local_unnamed_addr global ptr, align 8
@zend_generator_handlers = internal global %struct._zend_object_handlers zeroinitializer, align 8
@std_object_handlers = external constant %struct._zend_object_handlers, align 8
@zend_ce_exception = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"Cannot rewind a generator that was already run\00", align 1
@zend_string_init_interned = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"Generator\00", align 1
@class_Generator_methods = internal constant [10 x %struct._zend_function_entry] [%struct._zend_function_entry { ptr @.str.9, ptr @zim_Generator_rewind, ptr @arginfo_class_Generator_rewind, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.10, ptr @zim_Generator_valid, ptr @arginfo_class_Generator_valid, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.11, ptr @zim_Generator_current, ptr @arginfo_class_Generator_current, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.12, ptr @zim_Generator_key, ptr @arginfo_class_Generator_current, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.13, ptr @zim_Generator_next, ptr @arginfo_class_Generator_rewind, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.14, ptr @zim_Generator_send, ptr @arginfo_class_Generator_send, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.15, ptr @zim_Generator_throw, ptr @arginfo_class_Generator_throw, i32 1, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.16, ptr @zim_Generator_getReturn, ptr @arginfo_class_Generator_current, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry { ptr @.str.17, ptr @zim_Generator___debugInfo, ptr @arginfo_class_Generator___debugInfo, i32 0, i32 1, ptr null, ptr null }, %struct._zend_function_entry zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"getReturn\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"__debugInfo\00", align 1
@arginfo_class_Generator_rewind = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 16384, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_Generator_valid = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 12, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_Generator_current = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@arginfo_class_Generator_send = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.21, { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.23 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Throwable\00", align 1
@arginfo_class_Generator_throw = internal constant [2 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr inttoptr (i64 1 to ptr), { ptr, i32, [4 x i8] } { ptr null, i32 1022, [4 x i8] zeroinitializer }, ptr null }, { ptr, { ptr, i32, [4 x i8] }, ptr } { ptr @.str.23, { ptr, i32, [4 x i8] } { ptr @.str.24, i32 8388608, [4 x i8] zeroinitializer }, ptr null }], align 16
@arginfo_class_Generator___debugInfo = internal constant [1 x { ptr, { ptr, i32, [4 x i8] }, ptr }] [{ ptr, { ptr, i32, [4 x i8] }, ptr } { ptr null, { ptr, i32, [4 x i8] } { ptr null, i32 128, [4 x i8] zeroinitializer }, ptr null }], align 16
@.str.27 = private unnamed_addr constant [44 x i8] c"Cannot traverse an already closed generator\00", align 1
@.str.28 = private unnamed_addr constant [89 x i8] c"You can only iterate a generator by-reference if it declared that it yields by-reference\00", align 1
@zend_generator_iterator_functions = internal constant %struct._zend_object_iterator_funcs { ptr @zend_generator_iterator_dtor, ptr @zend_generator_iterator_valid, ptr @zend_generator_iterator_get_data, ptr @zend_generator_iterator_get_key, ptr @zend_generator_iterator_move_forward, ptr @zend_generator_iterator_rewind, ptr null, ptr @zend_generator_iterator_get_gc }, align 8
@.str.29 = private unnamed_addr constant [87 x i8] c"The \22Generator\22 class is reserved for internal use and cannot be manually instantiated\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"ClosedGeneratorException\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @zend_generator_restore_call_stack(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %zend_vm_stack_push_call_frame_ex.exit, %bb.a
  %.019 = phi ptr [ %i.b, %bb.a ], [ %i.aq, %zend_vm_stack_push_call_frame_ex.exit ] ; 7 uses
  %.0 = phi ptr [ null, %bb.a ], [ %.sink31, %zend_vm_stack_push_call_frame_ex.exit ]
  %1 = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = and i32 %i.d, -262145
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %2 = load ptr, ptr %i.f, align 8, !tbaa !31     ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %.019, i64 44 ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !30       ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.h = add i32 %4, 5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = add i32 %i.h, %i.j                       ; 2 uses
  %i.l = load i8, ptr %2, align 8, !tbaa !30
  %.not.i = icmp eq i8 %i.l, 1
  br i1 %.not.i, label %zend_vm_calc_used_stack.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30
  %..i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %4)
  %i.q = add i32 %i.n, %i.k
  %i.r = sub i32 %i.q, %..i
  br label %zend_vm_calc_used_stack.exit

zend_vm_calc_used_stack.exit:                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ]
  %i.s = shl i32 %.0.i, 4
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !33 ; 3 uses
  %i.u = zext i32 %i.s to i64                     ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !59
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, %i.u
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = icmp ne ptr %i.g, null
  br i1 %i.z, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %zend_vm_calc_used_stack.exit
  %i.aa = tail call ptr @zend_vm_stack_extend(i64 noundef %i.u) #10
  %i.ab = or i32 %i.d, 262144
  br label %zend_vm_stack_push_call_frame_ex.exit

bb.e:                                             ; preds = %zend_vm_calc_used_stack.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !33
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %bb.d, %bb.e
  %.sink31 = phi ptr [ %i.aa, %bb.d ], [ %i.t, %bb.e ] ; 9 uses
  %.sink = phi i32 [ %i.ab, %bb.d ], [ %i.e, %bb.e ]
  %7 = load ptr, ptr %5, align 8, !tbaa !30
  %.not.i21 = icmp eq ptr %7, null
  %8 = or i1 %6, %.not.i21
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %.sink31, i64 24
  store ptr %2, ptr %9, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink31, i64 32
  store ptr %i.g, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink31, i64 40
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %.sink31, i64 44
  store i32 %4, ptr %i.af, align 4, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink31, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %.019, i64 80
  %i.ai = load i32, ptr %3, align 4, !tbaa !30
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ah, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %.sink31, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink31, i64 48
  store ptr %.0, ptr %i.ao, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !62

bb.f:                                             ; preds = %zend_vm_stack_push_call_frame_ex.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sink31, ptr %i.at, align 8, !tbaa !65
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !12
  tail call void @_efree(ptr noundef %i.au) #10
  store ptr null, ptr %i.a, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_generator_freeze_call_stack(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.061 = phi ptr [ %i.b, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.061, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = add i32 %i.d, 5
  %i.f = zext i32 %i.e to i64
  %i.g = add i64 %.0, %i.f                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.061, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !66

bb.c:                                             ; preds = %bb.b
  %i.j = shl i64 %i.g, 4
  %i.k = tail call noalias ptr @_emalloc(i64 noundef %i.j) #11
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %zend_vm_stack_free_call_frame_ex.exit, %bb.c
  %.162 = phi ptr [ %i.l, %bb.c ], [ %i.w, %zend_vm_stack_free_call_frame_ex.exit ] ; 6 uses
  %.060 = phi ptr [ null, %bb.c ], [ %i.s, %zend_vm_stack_free_call_frame_ex.exit ]
  %.1 = phi i64 [ %i.g, %bb.c ], [ %i.q, %zend_vm_stack_free_call_frame_ex.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.162, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = add i32 %i.n, 5
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = sub i64 %.1, %i.p                        ; 2 uses
  %i.r = shl i64 %i.q, 4
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.r ; 4 uses
  %i.t = shl nuw nsw i64 %i.p, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %.162, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %.060, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %.162, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.162, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !30
  %i.z = and i32 %i.y, 262144
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !68 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = icmp eq ptr %.162, %i.ad
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !71
  store <2 x ptr> %i.af, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !71
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !68
  tail call void @_efree(ptr noundef %i.aa) #10
  br label %zend_vm_stack_free_call_frame_ex.exit

bb.f:                                             ; preds = %bb.d
  store ptr %.162, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !33
  br label %zend_vm_stack_free_call_frame_ex.exit

zend_vm_stack_free_call_frame_ex.exit:            ; preds = %bb.e, %bb.f
  %.not64 = icmp eq ptr %i.w, null
  br i1 %.not64, label %bb.g, label %bb.d, !llvm.loop !72

bb.g:                                             ; preds = %zend_vm_stack_free_call_frame_ex.exit
  store ptr null, ptr %i.a, align 8, !tbaa !65
  ret ptr %i.s
}

declare noalias ptr @_emalloc_56() local_unnamed_addr #2

declare noalias ptr @_emalloc_96() local_unnamed_addr #2

declare noalias ptr @_emalloc_320() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @zend_generator_close(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.w, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = and i32 %i.e, 1048576
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  tail call void @zend_clean_and_cache_symbol_table(ptr noundef %i.h) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @zend_free_compiled_variables(ptr noundef nonnull %i.b) #10
  %i.i = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.j = and i32 %i.i, 134217728
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  tail call void @zend_free_extra_named_params(ptr noundef %i.l) #10
  %.pre = load i32, ptr %i.d, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre, %bb.e ], [ %i.i, %bb.d ]
  %i.n = and i32 %i.m, 2097152
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %zend_object_release.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30   ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !74
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @zend_objects_store_del(ptr noundef nonnull %i.o) #10
  br label %zend_object_release.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30
  %i.v = and i32 %i.u, -1008
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %zend_object_release.exit, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call void @gc_possible_root(ptr noundef nonnull %i.o) #10
  br label %zend_object_release.exit

zend_object_release.exit:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 83), align 1, !tbaa !75, !range !89, !noundef !90
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %bb.l, !prof !32

bb.k:                                             ; preds = %zend_object_release.exit
  store ptr null, ptr %i.a, align 8, !tbaa !64
  br label %bb.w

end_hunk_0
