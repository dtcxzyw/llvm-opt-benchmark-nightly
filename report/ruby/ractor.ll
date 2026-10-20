Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ractor?download=true
inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon.13, ptr, ptr, i64 }
%struct.anon.13 = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.rb_ractor_local_storage_type = type { ptr, ptr }
%struct.rb_builtin_function = type { ptr, i32, i32, ptr }
%struct.rb_shape_tree_t = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.ractor_selector_wait_data = type { ptr, ptr, i8, i64, i64 }
%struct.obj_traverse_data = type { ptr, ptr, ptr, i64 }
%struct.rb_obj_traverse_final_data = type { ptr, i32 }
%struct.obj_traverse_replace_data = type { ptr, ptr, ptr, i64, i64, i8 }
%struct.ractor_local_storage_store_data = type { ptr, ptr, i64, i64 }
%struct.ractor_waiter = type { i32, ptr, %struct.ccan_list_node }
%struct.ccan_list_node = type { ptr, ptr }
%struct.ractor_queue = type { %struct.ccan_list_head, i8 }
%struct.ccan_list_head = type { %struct.ccan_list_node }
%struct.obj_traverse_replace_callback_data = type { i8, i64, ptr }
%struct.obj_traverse_callback_data = type { i8, ptr }

@.str = private unnamed_addr constant [12 x i8] c"../ractor.c\00", align 1
@ractor_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.64, %struct.anon.13 { ptr @ractor_mark, ptr @ractor_free, ptr @ractor_memsize, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 1 }, align 8
@rb_cRactor = dso_local local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Selector\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@rb_cRactorSelector = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"empty?\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [51 x i8] c"[FATAL] failed to allocate memory for main ractor\0A\00", align 1
@ractor_last_id = internal global i32 0, align 4
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"Ractor\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@rb_eRactorError = internal unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"IsolationError\00", align 1
@rb_eRactorIsolationError = dso_local local_unnamed_addr global i64 0, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"RemoteError\00", align 1
@rb_eRactorRemoteError = internal unnamed_addr global i64 0, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"MovedError\00", align 1
@rb_eRactorMovedError = internal unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"ClosedError\00", align 1
@rb_eStopIteration = external local_unnamed_addr global i64, align 8
@rb_eRactorClosedError = internal unnamed_addr global i64 0, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"UnsafeError\00", align 1
@rb_eRactorUnsafeError = dso_local local_unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"MovedObject\00", align 1
@rb_cBasicObject = external local_unnamed_addr global i64, align 8
@rb_cRactorMovedObject = internal unnamed_addr global i64 0, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"method_missing\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"__send__\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"__id__\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"equal?\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"instance_eval\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"instance_exec\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"r:%u (%s)\0A\00", align 1
@rb_stdin = external local_unnamed_addr global i64, align 8
@rb_stdout = external local_unnamed_addr global i64, align 8
@rb_stderr = external local_unnamed_addr global i64, align 8
@.str.31 = private unnamed_addr constant [41 x i8] c"cannot assign unshareable object to %li\0B\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rb_ractor_local_storage_type_free = dso_local local_unnamed_addr constant %struct.rb_ractor_local_storage_type { ptr null, ptr @ruby_xfree }, align 8
@ractor_local_storage_type_null = internal constant %struct.rb_ractor_local_storage_type zeroinitializer, align 8
@ractor_local_storage_type_value = internal constant %struct.rb_ractor_local_storage_type { ptr @rb_ractor_local_storage_value_mark, ptr null }, align 8
@freed_ractor_local_keys.0 = internal unnamed_addr global i32 0, align 8
@freed_ractor_local_keys.1 = internal unnamed_addr global i32 0, align 4
@freed_ractor_local_keys.2 = internal unnamed_addr global ptr null, align 8
@cross_ractor_require_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.112, %struct.anon.13 { ptr @cross_ractor_require_refs, ptr inttoptr (i64 -1 to ptr), ptr null, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 16419 }, align 8
@Init_builtin_ractor.ractor_table = internal constant [32 x %struct.rb_builtin_function] [%struct.rb_builtin_function { ptr @builtin_inline_class_232, i32 0, i32 0, ptr @.str.33 }, %struct.rb_builtin_function { ptr @ractor_create, i32 4, i32 1, ptr @.str.34 }, %struct.rb_builtin_function { ptr @builtin_inline_class_245, i32 0, i32 2, ptr @.str.35 }, %struct.rb_builtin_function { ptr @builtin_inline_class_259, i32 0, i32 3, ptr @.str.36 }, %struct.rb_builtin_function { ptr @ractor_select_internal, i32 1, i32 4, ptr @.str.37 }, %struct.rb_builtin_function { ptr @builtin_inline_class_375, i32 0, i32 5, ptr @.str.38 }, %struct.rb_builtin_function { ptr @builtin_inline_class_376, i32 0, i32 6, ptr @.str.39 }, %struct.rb_builtin_function { ptr @builtin_inline_class_377, i32 0, i32 7, ptr @.str.40 }, %struct.rb_builtin_function { ptr @builtin_inline_class_378, i32 0, i32 8, ptr @.str.41 }, %struct.rb_builtin_function { ptr @builtin_inline_class_388, i32 0, i32 9, ptr @.str.42 }, %struct.rb_builtin_function { ptr @builtin_inline_class_419, i32 0, i32 10, ptr @.str.43 }, %struct.rb_builtin_function { ptr @builtin_inline_class_461, i32 0, i32 11, ptr @.str.44 }, %struct.rb_builtin_function { ptr @builtin_inline_class_465, i32 0, i32 12, ptr @.str.45 }, %struct.rb_builtin_function { ptr @ractor_local_value, i32 1, i32 13, ptr @.str.46 }, %struct.rb_builtin_function { ptr @ractor_local_value_set, i32 2, i32 14, ptr @.str.47 }, %struct.rb_builtin_function { ptr @ractor_local_value_store_if_absent, i32 1, i32 15, ptr @.str.48 }, %struct.rb_builtin_function { ptr @builtin_inline_class_520, i32 0, i32 16, ptr @.str.49 }, %struct.rb_builtin_function { ptr @builtin_inline_class_527, i32 0, i32 17, ptr @.str.50 }, %struct.rb_builtin_function { ptr @ractor_require, i32 1, i32 18, ptr @.str.51 }, %struct.rb_builtin_function { ptr @builtin_inline_class_567, i32 0, i32 19, ptr @.str.52 }, %struct.rb_builtin_function { ptr @ractor_value, i32 0, i32 20, ptr @.str.53 }, %struct.rb_builtin_function { ptr @ractor_monitor, i32 1, i32 21, ptr @.str.54 }, %struct.rb_builtin_function { ptr @ractor_unmonitor, i32 1, i32 22, ptr @.str.55 }, %struct.rb_builtin_function { ptr @builtin_inline_class_670, i32 0, i32 23, ptr @.str.56 }, %struct.rb_builtin_function { ptr @builtin_inline_class_684, i32 0, i32 24, ptr @.str.57 }, %struct.rb_builtin_function { ptr @builtin_inline_class_742, i32 0, i32 25, ptr @.str.58 }, %struct.rb_builtin_function { ptr @builtin_inline_class_785, i32 0, i32 26, ptr @.str.59 }, %struct.rb_builtin_function { ptr @builtin_inline_class_807, i32 0, i32 27, ptr @.str.60 }, %struct.rb_builtin_function { ptr @builtin_inline_class_818, i32 0, i32 28, ptr @.str.61 }, %struct.rb_builtin_function { ptr @builtin_inline_class_828, i32 0, i32 29, ptr @.str.62 }, %struct.rb_builtin_function { ptr @builtin_inline_class_830, i32 0, i32 30, ptr @.str.63 }, %struct.rb_builtin_function { ptr null, i32 0, i32 -1, ptr null }], align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"_bi232\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"ractor_create\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"_bi245\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"_bi259\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"ractor_select_internal\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_bi375\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"_bi376\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"_bi377\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_bi378\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"_bi388\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"_bi419\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"_bi461\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"_bi465\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"ractor_local_value\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"ractor_local_value_set\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"ractor_local_value_store_if_absent\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"_bi520\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"_bi527\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"ractor_require\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"_bi567\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"ractor_value\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"ractor_monitor\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"ractor_unmonitor\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"_bi670\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"_bi684\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"_bi742\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"_bi785\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"_bi807\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"_bi818\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"_bi828\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"_bi830\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"ractor\00", align 1
@ractor_selector_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.70, %struct.anon.13 { ptr @ractor_selector_mark, ptr @ractor_selector_free, ptr @ractor_selector_memsize, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@.str.70 = private unnamed_addr constant [16 x i8] c"ractor/selector\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.71 = private unnamed_addr constant [26 x i8] c"Not a Ractor::Port object\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"already added\00", align 1
@ractor_port_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.74, %struct.anon.13 { ptr @ractor_port_mark, ptr @ractor_port_free, ptr @ractor_port_memsize, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 289 }, align 8
@.str.74 = private unnamed_addr constant [12 x i8] c"ractor/port\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"not added yet\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"The port was already closed\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"thrown by remote Ractor.\00", align 1
@ractor_make_remote_exception.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.81 = private unnamed_addr constant [8 x i8] c"@ractor\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"ASCII incompatible encoding (%s)\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"can not move the object\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"can not %s %li\0B object.\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@__func__.obj_traverse_replace_i = private unnamed_addr constant [23 x i8] c"obj_traverse_replace_i\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@rb_shape_tree = external local_unnamed_addr global %struct.rb_shape_tree_t, align 8
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@wb_protected_types = internal unnamed_addr constant <{ [16 x i8], [15 x i8] }> <{ [16 x i8] c"\00\01\00\00\01\01\01\01\01\01\00\00\00\01\01\01", [15 x i8] zeroinitializer }>, align 16
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@cancel_single_ractor_mode.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.97 = private unnamed_addr constant [11 x i8] c"_activated\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@.str.100 = private unnamed_addr constant [43 x i8] c"can not send any methods to a moved object\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@rb_cRactorPort = internal unnamed_addr global i64 0, align 8
@.str.102 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"blocking\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@__func__.obj_traverse_i = private unnamed_addr constant [15 x i8] c"obj_traverse_i\00", align 1
@.str.108 = private unnamed_addr constant [78 x i8] c"can not make shareable object for %+li\0B because it refers unshareable objects\00", align 1
@.str.109 = private unnamed_addr constant [40 x i8] c"can not make shareable object for %+li\0B\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"#freeze does not freeze object correctly\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"can not copy the object\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"ractor/cross_ractor_require\00", align 1
@cross_ractor_require_refs = internal constant [3 x i64] [i64 0, i64 16, i64 -1], align 16
@rb_eException = external local_unnamed_addr global i64, align 8
@require_body.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.113 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.114 = private unnamed_addr constant [50 x i8] c"only allowed from the creator Ractor of this port\00", align 1
@.str.115 = private unnamed_addr constant [45 x i8] c"closing port by other ractors is not allowed\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"Only the successor ractor can take a value\00", align 1
@.str.120 = private unnamed_addr constant [31 x i8] c"self should be shareable: %li\0B\00", align 1
@switch.table.builtin_inline_class_378 = private unnamed_addr constant [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], align 8

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_lock_self(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  tail call void @rb_native_mutex_lock(ptr noundef %i.a) #21
  %i.b = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %ractor_lock_self.exit, label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.d = getelementptr i8, ptr %.val.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr i8, ptr %i.e, i64 448
  store i8 1, ptr %i.f, align 8, !tbaa !61
  br label %ractor_lock_self.exit

ractor_lock_self.exit:                            ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_unlock_self(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %ractor_unlock_self.exit, label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.c = getelementptr i8, ptr %.val.i.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr i8, ptr %i.d, i64 448
  store i8 0, ptr %i.e, align 8, !tbaa !61
  br label %ractor_unlock_self.exit

ractor_unlock_self.exit:                          ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i.i
  %i.f = getelementptr i8, ptr %0, i64 56
  tail call void @rb_native_mutex_unlock(ptr noundef %i.f) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_ractor_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @ractor_data_type) #21
  %.not = icmp ne i32 %i.a, 0
  ret i1 %.not
}

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_init_ractor_selector() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRactor, align 8, !tbaa !62
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !62
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str.1, i64 noundef %i.b) #21 ; 2 uses
  store i64 %i.c, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_undef_alloc_func(i64 noundef %i.c) #21
  %i.d = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_define_singleton_method(i64 noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull @ractor_selector_new, i32 noundef -1) #21
  %i.e = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @ractor_selector_add, i32 noundef 1) #21
  %i.f = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @ractor_selector_remove, i32 noundef 1) #21
  %i.g = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @ractor_selector_clear, i32 noundef 0) #21
  %i.h = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @ractor_selector_empty_p, i32 noundef 0) #21
  %i.i = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !62
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ractor_selector_wait, i32 noundef 0) #21
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_undef_alloc_func(i64 noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_selector_new(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %2, i64 noundef 8, ptr noundef nonnull @ractor_selector_data_type) #21 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %ractor_selector_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  br label %ractor_selector_create.exit

ractor_selector_create.exit:                      ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  %i.i = tail call ptr @rb_st_init_numtable() #21
  store ptr %i.i, ptr %i.h, align 8, !tbaa !68
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %ractor_selector_create.exit
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %ractor_selector_create.exit
  ret i64 %i.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = tail call i64 @ractor_selector_add(i64 noundef %i.a, i64 noundef %i.l) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_selector_add(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %1, ptr noundef nonnull @ractor_port_data_type) #21
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !62
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.71) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = inttoptr i64 %1 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.j = tail call i32 @rb_st_lookup(ptr noundef %i.i, i64 noundef %1, ptr noundef null) #21
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !62
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.72) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = tail call i32 @rb_st_insert(ptr noundef %i.l, i64 noundef %1, i64 noundef %i.m) #21 ; 0 uses
  %i.o = icmp eq i64 %1, 0
  %i.p = and i64 %1, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.e, %bb.f
  ret i64 %0
}

end_hunk_0
begin_hunk_1_@ractor_send0:bb.a
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !111
  %i.bk = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !112 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !112
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !111
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !112
  %i.bn = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i15.i = icmp eq ptr %i.bn, null
  br i1 %.not.i15.i, label %ractor_unlock.exit.i, label %rb_ec_ractor_ptr.exit.i16.i

rb_ec_ractor_ptr.exit.i16.i:                      ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bn, i64 48
  %.val.i17.i = load ptr, ptr %i.bo, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.bp = getelementptr i8, ptr %.val.i17.i, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.br = getelementptr i8, ptr %i.bq, i64 448
  store i8 0, ptr %i.br, align 8, !tbaa !61
  br label %ractor_unlock.exit.i

ractor_unlock.exit.i:                             ; preds = %rb_ec_ractor_ptr.exit.i16.i, %bb.k
  %i.bs = getelementptr i8, ptr %.pre.pre.i, i64 56
  call void @rb_native_mutex_unlock(ptr noundef %i.bs) #21
  %i.bt = load ptr, ptr %0, align 8, !tbaa !181   ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 56     ; 2 uses
  call void @rb_native_mutex_lock(ptr noundef %i.bu) #21
  %i.bv = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i7, label %ractor_lock.exit.i.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %ractor_unlock.exit.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %.val.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.bx = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = getelementptr i8, ptr %i.by, i64 448
  store i8 1, ptr %i.bz, align 8, !tbaa !61
  br label %ractor_lock.exit.i.i

ractor_lock.exit.i.i:                             ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %ractor_unlock.exit.i
  %i.ca = getelementptr i8, ptr %i.bt, i64 104    ; 6 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 5 uses
  %.not.i1221.i.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i1221.i.i, label %ccan_list_pop_.exit.thread.i.i, label %ccan_list_pop_.exit.preheader.i.i

ccan_list_pop_.exit.preheader.i.i:                ; preds = %ractor_lock.exit.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !112 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !111 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !112
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !111
  %i.cg = getelementptr i8, ptr %i.cb, i64 -16    ; 2 uses
  %.not.peel.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.peel.not.i.i, label %ccan_list_pop_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %ccan_list_pop_.exit.preheader.i.i
  store i32 1, ptr %i.cg, align 8, !tbaa !197
  %i.ch = getelementptr i8, ptr %i.cb, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !198
  call void @rb_ractor_sched_wakeup(ptr noundef nonnull %i.bt, ptr noundef %i.ci) #21
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %.not.i12.peel.i.i = icmp eq ptr %i.cj, %i.ca
  br i1 %.not.i12.peel.i.i, label %ccan_list_pop_.exit.thread.i.i, label %ccan_list_pop_.exit.i.i

ccan_list_pop_.exit.i.i:                          ; preds = %bb.l, %bb.m
  %i.ck = phi ptr [ %i.cs, %bb.m ], [ %i.cj, %bb.l ] ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !112 ; 2 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !111 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !111
  %i.cp = getelementptr i8, ptr %i.ck, i64 -16    ; 2 uses
  %.not.i18.i = icmp eq ptr %i.cp, null
  br i1 %.not.i18.i, label %ccan_list_pop_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %ccan_list_pop_.exit.i.i
  store i32 1, ptr %i.cp, align 8, !tbaa !197
  %i.cq = getelementptr i8, ptr %i.ck, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !198
  call void @rb_ractor_sched_wakeup(ptr noundef nonnull %i.bt, ptr noundef %i.cr) #21
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.cs, %i.ca
  br i1 %.not.i12.i.i, label %ccan_list_pop_.exit.thread.i.i, label %ccan_list_pop_.exit.i.i, !llvm.loop !273

ccan_list_pop_.exit.thread.i.i:                   ; preds = %bb.m, %ccan_list_pop_.exit.i.i, %bb.l, %ccan_list_pop_.exit.preheader.i.i, %ractor_lock.exit.i.i
  %i.ct = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i13.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i13.i.i, label %ractor_wakeup_all.exit.i, label %rb_ec_ractor_ptr.exit.i14.i.i

rb_ec_ractor_ptr.exit.i14.i.i:                    ; preds = %ccan_list_pop_.exit.thread.i.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 48
  %.val.i15.i.i = load ptr, ptr %i.cu, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.cv = getelementptr i8, ptr %.val.i15.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !51
  %i.cx = getelementptr i8, ptr %i.cw, i64 448
  store i8 0, ptr %i.cx, align 8, !tbaa !61
  br label %ractor_wakeup_all.exit.i

ractor_wakeup_all.exit.i:                         ; preds = %rb_ec_ractor_ptr.exit.i14.i.i, %ccan_list_pop_.exit.thread.i.i
  call void @rb_native_mutex_unlock(ptr noundef %i.bu) #21
  br label %ractor_send_basket.exit

.critedge.i:                                      ; preds = %ractor_closed_port_p.exit.i, %ractor_closed_port_p.exit.thread.i
  %i.cy = phi ptr [ %.pre.i, %ractor_closed_port_p.exit.thread.i ], [ %.pre.pre.i, %ractor_closed_port_p.exit.i ]
  %i.cz = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i19.i = icmp eq ptr %i.cz, null
  br i1 %.not.i19.i, label %ractor_unlock.exit22.i, label %rb_ec_ractor_ptr.exit.i20.i

rb_ec_ractor_ptr.exit.i20.i:                      ; preds = %.critedge.i
  %i.da = getelementptr i8, ptr %i.cz, i64 48
  %.val.i21.i = load ptr, ptr %i.da, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.db = getelementptr i8, ptr %.val.i21.i, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !51
  %i.dd = getelementptr i8, ptr %i.dc, i64 448
  store i8 0, ptr %i.dd, align 8, !tbaa !61
  br label %ractor_unlock.exit22.i

ractor_unlock.exit22.i:                           ; preds = %rb_ec_ractor_ptr.exit.i20.i, %.critedge.i
  %i.de = getelementptr i8, ptr %i.cy, i64 56
  call void @rb_native_mutex_unlock(ptr noundef %i.de) #21
  br i1 %3, label %bb.n, label %ractor_send_basket.exit

bb.n:                                             ; preds = %ractor_unlock.exit22.i
  call fastcc void @ractor_basket_free(ptr noundef nonnull %i.an)
  %i.df = load i64, ptr @rb_eRactorClosedError, align 8, !tbaa !62
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.df, ptr noundef nonnull @.str.76) #22
  unreachable

ractor_send_basket.exit:                          ; preds = %ractor_wakeup_all.exit.i, %ractor_unlock.exit22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.b, ptr %i.c, align 8, !tbaa !119
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !276
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.dh = load volatile i64, ptr %i.dg, align 8, !tbaa !62 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @move_enter(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = and i64 %i.g, 256
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.i, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread19

rb_ractor_shareable_p.exit.thread19:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread17, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread17:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !147
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = ptrtoint ptr %3 to i64
  %i.p = call i32 @rb_st_foreach(ptr noundef nonnull %i.l, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.o) #21 ; 0 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.r = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.r, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread19, %rb_ractor_shareable_p.exit
  %i.s = load i64, ptr %i.f, align 8, !tbaa !117
  %i.t = and i64 %i.s, 31                         ; 4 uses
  %i.u = call i64 @rb_gc_obj_slot_size(i64 noundef %0) #21 ; 3 uses
  %i.v = shl nuw nsw i64 1, %i.t
  %i.w = and i64 %i.v, 2147425293
  %.not.not = icmp eq i64 %i.w, 0
  br i1 %.not.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  store volatile ptr %i.y, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef 0, i64 noundef %i.t, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %4 = getelementptr i8, ptr @wb_protected_types, i64 %i.t
  %5 = load i8, ptr %4, align 1, !tbaa !277, !range !77, !noundef !30
  %6 = shl nuw nsw i8 %5, 5
  %7 = zext nneg i8 %6 to i64
  %8 = or disjoint i64 %i.t, %7
  %i.aa = call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef %8, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi i64 [ %i.z, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = add i64 %i.u, -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.ae, i1 noundef false) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread17, %bb.a, %bb.b, %bb.h
  %.sink = phi i64 [ %i.ab, %bb.h ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %rb_ractor_shareable_p.exit.thread17 ], [ %0, %rb_ractor_shareable_p.exit ]
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %rb_ractor_shareable_p.exit.thread17 ], [ 1, %rb_ractor_shareable_p.exit ]
  %i.af = getelementptr i8, ptr %1, i64 32
  store i64 %.sink, ptr %i.af, align 8, !tbaa !163
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @move_leave(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117
  %i.c = and i64 %i.b, -33
  %i.d = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !163
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = and i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %i.f, align 8, !tbaa !117
  %i.j = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.k = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #21
  %i.l = add i64 %i.k, -8                         ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.f, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull readonly align 8 %i.j, i64 noundef range(i64 1, 0) %i.l, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.n = load i64, ptr %i.d, align 8, !tbaa !163
  tail call void @rb_gc_writebarrier_remember(i64 noundef %i.n) #21
  %i.o = icmp eq i64 %0, 0
  %i.p = and i64 %0, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  %.pre = load i64, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  br i1 %i.r, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.s = trunc i64 %.pre to i32
  %i.t = and i32 %i.s, 31
  switch i32 %i.t, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %ruby_nonempty_memcpy.exit, %rb_type.exit.i
  %i.u = and i64 %.pre, 578712547822141440
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.c, !prof !200

bb.c:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !163
  tail call void @rb_replace_generic_ivar(i64 noundef %i.v, i64 noundef %0) #21
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.c, %rb_obj_gen_fields_p.exit
  %i.w = load i64, ptr %i.d, align 8, !tbaa !163
  tail call void @rb_gc_obj_id_moved(i64 noundef %i.w) #21
  %i.x = load i64, ptr %i.a, align 8, !tbaa !117
  %i.y = and i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, 2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #21
  store i64 %i.z, ptr %i.a, align 8, !tbaa !117
  %i.aa = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !62
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !62
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @obj_traverse_replace_i(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %2 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 7 uses
  %3 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 9 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 32
  store i64 %0, ptr %i.h, align 8, !tbaa !163
  br label %.critedge210

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !161
  %i.j = tail call i32 %i.i(i64 noundef %0, ptr noundef nonnull %1) #21
  switch i32 %i.j, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %.critedge210
  ]

bb.d:                                             ; preds = %bb.c
  br label %.critedge210

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 32         ; 13 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163
  store i64 %i.l, ptr %i.b, align 8, !tbaa !62
  %i.m = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !282  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %obj_traverse_replace_rec.exit, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @rb_ident_hash_new() #21   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !283
  %i.q = add i64 %i.o, 24
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !282
  br label %obj_traverse_replace_rec.exit

obj_traverse_replace_rec.exit:                    ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %i.t = call i32 @rb_st_lookup(ptr noundef %i.s, i64 noundef %0, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !201

bb.g:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.u, ptr %i.k, align 8, !tbaa !163
  br label %.critedge210

bb.h:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !282  ; 2 uses
  %.not.i219 = icmp eq ptr %i.v, null
  br i1 %.not.i219, label %bb.i, label %rb_obj_written.exit, !prof !125

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @rb_ident_hash_new() #21        ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !283
  %i.y = add i64 %i.w, 24
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store ptr %i.z, ptr %i.m, align 8, !tbaa !282
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.z, %bb.i ], [ %i.v, %bb.h ]
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !62
  %i.ac = call i32 @rb_st_insert(ptr noundef %i.aa, i64 noundef %0, i64 noundef %i.ab) #21 ; 0 uses
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !283
  call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %0) #21
  %i.af = load i64, ptr %i.b, align 8, !tbaa !62  ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_obj_written.exit221, label %bb.j

bb.j:                                             ; preds = %rb_obj_written.exit
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !283
  call void @rb_gc_writebarrier(i64 noundef %i.ak, i64 noundef %i.af) #21
  br label %rb_obj_written.exit221

rb_obj_written.exit221:                           ; preds = %rb_obj_written.exit, %bb.j
  %i.al = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !199, !range !77, !noundef !30
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit221
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !62
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rb_obj_written.exit221
  %i.ap = phi i64 [ %i.ao, %bb.k ], [ %0, %rb_obj_written.exit221 ] ; 47 uses
  %i.aq = icmp eq i64 %i.ap, 0                    ; 2 uses
  %i.ar = and i64 %i.ap, 7
  %i.as = icmp ne i64 %i.ar, 0                    ; 2 uses
  %i.at = or i1 %i.aq, %i.as                      ; 2 uses
  %.pre.i = inttoptr i64 %i.ap to ptr             ; 14 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !117 ; 2 uses
  br i1 %i.at, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %bb.l
  %i.au = trunc i64 %.pre to i32
  %i.av = and i32 %i.au, 31
  switch i32 %i.av, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %bb.l, %rb_type.exit.i
  %i.aw = and i64 %.pre, 578712547822141440
  %.not249 = icmp eq i64 %i.aw, 0
  br i1 %.not249, label %rb_obj_gen_fields_p.exit.thread, label %bb.m, !prof !200

bb.m:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.ax = call i64 @rb_obj_fields(i64 noundef %i.ap, i64 noundef 0) #21 ; 5 uses
  %.pre284 = load i64, ptr %.pre.i, align 8, !tbaa !117 ; 2 uses
  %i.ay = and i64 %.pre284, 576460752303423488
  %.not250 = icmp eq i64 %i.ay, 0
  %or.cond = select i1 %i.at, i1 true, i1 %.not250, !prof !284
  %.not.i224 = icmp eq i64 %i.ax, 0               ; 2 uses
  br i1 %or.cond, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.n, !prof !284

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !204
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.ba, align 8, !tbaa !205
  br i1 %.not.i224, label %rb_imemo_fields_complex_tbl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = inttoptr i64 %i.ax to ptr
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !135
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.n, %bb.o
  %.0.i223 = phi ptr [ %i.bd, %bb.o ], [ null, %bb.n ]
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = call i32 @rb_st_foreach_with_replace(ptr noundef %.0.i223, ptr noundef nonnull @obj_iv_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_iv_hash_traverse_replace_i, i64 noundef %i.be) #21 ; 0 uses
  %i.bg = load i8, ptr %2, align 8, !tbaa !206, !range !77, !noundef !30
  %i.bh = trunc nuw i8 %i.bg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.bh, label %.critedge210, label %rb_obj_gen_fields_p.exit.thread

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.m
  %i.bi = lshr i64 %.pre284, 32
  %i.bj = and i64 %i.bi, 524287
  %i.bk = load ptr, ptr @rb_shape_tree, align 8, !tbaa !156
  %i.bl = getelementptr [40 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 28
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !159 ; 2 uses
  br i1 %.not.i224, label %rb_imemo_fields_ptr.exit, label %bb.p

bb.p:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.bo = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !117
  %i.bq = and i64 %i.bp, 65536
  %.not5.i = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.q, !prof !201

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !135
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.p, %bb.q
  %.0.i225 = phi ptr [ %i.bs, %bb.q ], [ null, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.br, %bb.p ]
  %.not173260.not = icmp eq i16 %i.bn, 0
  br i1 %.not173260.not, label %rb_obj_gen_fields_p.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit
  %wide.trip.count = zext i16 %i.bn to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_write.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_write.exit ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %.0.i225, i64 %indvars.iv ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.bv = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.bu, ptr noundef nonnull %1)
  %.not171 = icmp eq i32 %i.bv, 0
  br i1 %.not171, label %bb.r, label %.critedge210

bb.r:                                             ; preds = %.lr.ph
  %i.bw = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not172 = icmp eq i64 %i.bw, %i.bu
  br i1 %.not172, label %rb_obj_write.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !62
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = and i64 %i.bw, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rb_obj_write.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @rb_gc_writebarrier(i64 noundef %i.ax, i64 noundef %i.bw) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.r, %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %rb_obj_gen_fields_p.exit.thread, label %.lr.ph, !llvm.loop !278

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_obj_write.exit, %rb_imemo_fields_ptr.exit, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_imemo_fields_complex_tbl.exit, %rb_obj_gen_fields_p.exit
  %i.cb = load i64, ptr %.pre.i, align 8, !tbaa !117 ; 6 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 31
  switch i32 %i.cd, label %bb.br [
    i32 4, label %.critedge198
    i32 10, label %.critedge198
    i32 6, label %.critedge198
    i32 11, label %.critedge198
    i32 20, label %.critedge198
    i32 5, label %bb.u
    i32 1, label %bb.v
    i32 7, label %bb.ab
    i32 8, label %bb.al
    i32 9, label %bb.aq
    i32 13, label %bb.aw
    i32 15, label %bb.ba
    i32 14, label %bb.bh
    i32 12, label %bb.bo
    i32 26, label %.critedge210
  ]

bb.u:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_str_make_independent(i64 noundef %i.ap) #21
  br label %.critedge198

bb.v:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ce = xor i1 %i.as, %i.aq
  %i.cf = and i64 %i.cb, 576460752303423488
  %i.cg = icmp eq i64 %i.cf, 0
  %or.cond.not = or i1 %i.cg, %i.ce
  br i1 %or.cond.not, label %rb_shape_obj_too_complex_p.exit226.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store i64 %i.ap, ptr %i.ch, align 8, !tbaa !204
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.ci, align 8, !tbaa !205
  %i.cj = getelementptr i8, ptr %.pre.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !135
  %i.cl = ptrtoint ptr %3 to i64
  %i.cm = call i32 @rb_st_foreach_with_replace(ptr noundef %i.ck, ptr noundef nonnull @obj_iv_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_iv_hash_traverse_replace_i, i64 noundef %i.cl) #21 ; 0 uses
  %i.cn = load i8, ptr %3, align 8, !tbaa !206, !range !77, !noundef !30
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.co, label %.critedge210, label %.critedge198

rb_shape_obj_too_complex_p.exit226.thread:        ; preds = %bb.v
  %i.cp = lshr i64 %i.cb, 32
  %i.cq = and i64 %i.cp, 524287
  %i.cr = load ptr, ptr @rb_shape_tree, align 8, !tbaa !156
  %i.cs = getelementptr [40 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = getelementptr i8, ptr %i.cs, i64 28
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !159 ; 2 uses
  %i.cv = and i64 %i.cb, 65536
  %.not.i227 = icmp eq i64 %i.cv, 0
  %i.cw = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  br i1 %.not.i227, label %ROBJECT_FIELDS.exit, label %bb.x, !prof !201

bb.x:                                             ; preds = %rb_shape_obj_too_complex_p.exit226.thread
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !135
  br label %ROBJECT_FIELDS.exit

ROBJECT_FIELDS.exit:                              ; preds = %rb_shape_obj_too_complex_p.exit226.thread, %bb.x
  %.0.i228 = phi ptr [ %i.cx, %bb.x ], [ %i.cw, %rb_shape_obj_too_complex_p.exit226.thread ]
  %.not195265.not = icmp eq i16 %i.cu, 0
  br i1 %.not195265.not, label %.critedge198, label %.lr.ph267.preheader

.lr.ph267.preheader:                              ; preds = %ROBJECT_FIELDS.exit
  %wide.trip.count282 = zext i16 %i.cu to i64
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %rb_obj_write.exit229
  %indvars.iv279 = phi i64 [ 0, %.lr.ph267.preheader ], [ %indvars.iv.next280, %rb_obj_write.exit229 ] ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %.0.i228, i64 %indvars.iv279 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !62 ; 2 uses
  %i.da = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.cz, ptr noundef nonnull %1)
  %.not193 = icmp eq i32 %i.da, 0
  br i1 %.not193, label %bb.y, label %.critedge210

bb.y:                                             ; preds = %.lr.ph267
  %i.db = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not194 = icmp eq i64 %i.db, %i.cz
  br i1 %.not194, label %rb_obj_write.exit229, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !62
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = and i64 %i.db, 7
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = or i1 %i.dc, %i.de
  br i1 %i.df, label %rb_obj_write.exit229, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.db) #21
  br label %rb_obj_write.exit229

rb_obj_write.exit229:                             ; preds = %bb.y, %bb.z, %bb.aa
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %.critedge198, label %.lr.ph267, !llvm.loop !279

bb.ab:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_ary_cancel_sharing(i64 noundef %i.ap) #21
  %i.dg = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ab
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %bb.ak ], [ 0, %bb.ab ] ; 4 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !117 ; 2 uses
  %i.dj = and i64 %i.di, 8192
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = lshr i64 %i.di, 15
  %i.dl = and i64 %i.dk, 127
  br label %rb_array_len.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !135
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i64 [ %i.dl, %bb.ad ], [ %i.dm, %bb.ae ] ; 3 uses
  %i.dn = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.dn, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.af

bb.af:                                            ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #23
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %.not192 = icmp slt i64 %indvars.iv276, %.0.i.i
  br i1 %.not192, label %bb.ag, label %.critedge201

bb.ag:                                            ; preds = %RARRAY_LENINT.exit
  %i.do = call i64 @rb_ary_entry(i64 noundef %i.ap, i64 noundef %indvars.iv276) #25 ; 2 uses
  %i.dp = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.do, ptr noundef nonnull %1)
  %.not190 = icmp eq i32 %i.dp, 0
  br i1 %.not190, label %bb.ah, label %.critedge210

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not191 = icmp eq i64 %i.do, %i.dq
  br i1 %.not191, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = call ptr @rb_ary_ptr_use_start(i64 noundef %i.ap) #21
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %indvars.iv276
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !62
  %i.dt = icmp eq i64 %i.dq, 0
  %i.du = and i64 %i.dq, 7
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = or i1 %i.dt, %i.dv
  br i1 %i.dw, label %RARRAY_ASET.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.dq) #21
  br label %RARRAY_ASET.exit

RARRAY_ASET.exit:                                 ; preds = %bb.ai, %bb.aj
  call void @rb_ary_ptr_use_end(i64 noundef %i.ap) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %RARRAY_ASET.exit
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  br label %bb.ac, !llvm.loop !280

.critedge201:                                     ; preds = %RARRAY_LENINT.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !119
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !285
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.dy = load volatile i64, ptr %i.dx, align 8, !tbaa !62 ; 0 uses
  %.pre288 = load i64, ptr %i.a, align 8, !tbaa !62
  br label %.critedge198

bb.al:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store i64 %i.ap, ptr %i.dz, align 8, !tbaa !204
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.ea, align 8, !tbaa !205
  %i.eb = ptrtoint ptr %4 to i64
  %i.ec = call i32 @rb_hash_stlike_foreach_with_replace(i64 noundef %i.ap, ptr noundef nonnull @obj_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_hash_traverse_replace_i, i64 noundef %i.eb) #21 ; 0 uses
  %i.ed = load i8, ptr %4, align 8, !tbaa !206, !range !77, !noundef !30
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %.critedge203, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = getelementptr i8, ptr %.pre.i, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !208 ; 2 uses
  %i.eh = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.eg, ptr noundef nonnull %1)
  %.not188 = icmp eq i32 %i.eh, 0
  br i1 %.not188, label %bb.an, label %.critedge205

bb.an:                                            ; preds = %bb.am
  %i.ei = load i64, ptr %i.k, align 8, !tbaa !163 ; 2 uses
  %.not189 = icmp eq i64 %i.eg, %i.ei
  br i1 %.not189, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = call i64 @rb_hash_set_ifnone(i64 noundef %i.ap, i64 noundef %i.ei) #21 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge198

bb.aq:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ek = and i64 %i.cb, 1040384
  %.not.i230 = icmp eq i64 %i.ek, 0
  br i1 %.not.i230, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = lshr i64 %i.cb, 13
  %i.em = and i64 %i.el, 127
  %i.en = getelementptr i8, ptr %.pre.i, i64 16
  br label %RSTRUCT_CONST_PTR.exit

bb.as:                                            ; preds = %bb.aq
  %i.eo = getelementptr i8, ptr %.pre.i, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !135
  %i.eq = getelementptr i8, ptr %.pre.i, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !135
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.ar, %bb.as
  %.0.i231245 = phi i64 [ %i.em, %bb.ar ], [ %i.ep, %bb.as ] ; 2 uses
  %.0.i233 = phi ptr [ %i.en, %bb.ar ], [ %i.er, %bb.as ]
  %.not187262 = icmp sgt i64 %.0.i231245, 0
  br i1 %.not187262, label %.lr.ph264, label %.critedge198

.lr.ph264:                                        ; preds = %RSTRUCT_CONST_PTR.exit, %rb_obj_write.exit234
  %.0263 = phi i64 [ %i.fa, %rb_obj_write.exit234 ], [ 0, %RSTRUCT_CONST_PTR.exit ] ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %.0.i233, i64 %.0263 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !62 ; 2 uses
  %i.eu = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.et, ptr noundef nonnull %1)
  %.not185 = icmp eq i32 %i.eu, 0
  br i1 %.not185, label %bb.at, label %.critedge210

bb.at:                                            ; preds = %.lr.ph264
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not186 = icmp eq i64 %i.ev, %i.et
  br i1 %.not186, label %rb_obj_write.exit234, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.ev, ptr %i.es, align 8, !tbaa !62
  %i.ew = icmp eq i64 %i.ev, 0
  %i.ex = and i64 %i.ev, 7
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = or i1 %i.ew, %i.ey
  br i1 %i.ez, label %rb_obj_write.exit234, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.ev) #21
  br label %rb_obj_write.exit234

rb_obj_write.exit234:                             ; preds = %bb.at, %bb.au, %bb.av
  %i.fa = add nuw nsw i64 %.0263, 1               ; 2 uses
  %exitcond275.not = icmp eq i64 %i.fa, %.0.i231245
  br i1 %exitcond275.not, label %.critedge198, label %.lr.ph264, !llvm.loop !281

bb.aw:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fb = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !210 ; 2 uses
  %i.fd = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fc, ptr noundef nonnull %1)
  %.not183 = icmp eq i32 %i.fd, 0
  br i1 %.not183, label %bb.ax, label %.critedge210

bb.ax:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not184 = icmp eq i64 %i.fe, %i.fc
  br i1 %.not184, label %.critedge198, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !62
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = and i64 %i.fe, 7
  %i.fh = icmp ne i64 %i.fg, 0
  %i.fi = or i1 %i.ff, %i.fh
  br i1 %i.fi, label %.critedge198, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.fe) #21
  br label %.critedge198

bb.ba:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fj = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !212 ; 2 uses
  %i.fl = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fk, ptr noundef nonnull %1)
  %.not179 = icmp eq i32 %i.fl, 0
  br i1 %.not179, label %bb.bb, label %.critedge210

bb.bb:                                            ; preds = %bb.ba
  %i.fm = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not180 = icmp eq i64 %i.fm, %i.fk
  br i1 %.not180, label %rb_obj_write.exit236, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !62
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = and i64 %i.fm, 7
  %i.fp = icmp ne i64 %i.fo, 0
  %i.fq = or i1 %i.fn, %i.fp
  br i1 %i.fq, label %rb_obj_write.exit236, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.fm) #21
  br label %rb_obj_write.exit236

rb_obj_write.exit236:                             ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.fr = getelementptr i8, ptr %.pre.i, i64 24   ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !213 ; 2 uses
  %i.ft = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fs, ptr noundef nonnull %1)
  %.not181 = icmp eq i32 %i.ft, 0
  br i1 %.not181, label %bb.be, label %.critedge210

bb.be:                                            ; preds = %rb_obj_write.exit236
  %i.fu = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not182 = icmp eq i64 %i.fu, %i.fs
  br i1 %.not182, label %.critedge198, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i64 %i.fu, ptr %i.fr, align 8, !tbaa !62
  %i.fv = icmp eq i64 %i.fu, 0
  %i.fw = and i64 %i.fu, 7
  %i.fx = icmp ne i64 %i.fw, 0
  %i.fy = or i1 %i.fv, %i.fx
  br i1 %i.fy, label %.critedge198, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.fu) #21
  br label %.critedge198

bb.bh:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fz = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !215 ; 2 uses
  %i.gb = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.ga, ptr noundef nonnull %1)
  %.not175 = icmp eq i32 %i.gb, 0
  br i1 %.not175, label %bb.bi, label %.critedge210

bb.bi:                                            ; preds = %bb.bh
  %i.gc = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not176 = icmp eq i64 %i.gc, %i.ga
  br i1 %.not176, label %rb_obj_write.exit238, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.gc, ptr %i.fz, align 8, !tbaa !62
  %i.gd = icmp eq i64 %i.gc, 0
  %i.ge = and i64 %i.gc, 7
  %i.gf = icmp ne i64 %i.ge, 0
  %i.gg = or i1 %i.gd, %i.gf
  br i1 %i.gg, label %rb_obj_write.exit238, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.gc) #21
  br label %rb_obj_write.exit238

rb_obj_write.exit238:                             ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.gh = getelementptr i8, ptr %.pre.i, i64 24   ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !216 ; 2 uses
  %i.gj = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.gi, ptr noundef nonnull %1)
  %.not177 = icmp eq i32 %i.gj, 0
  br i1 %.not177, label %bb.bl, label %.critedge210

bb.bl:                                            ; preds = %rb_obj_write.exit238
  %i.gk = load i64, ptr %i.k, align 8, !tbaa !163 ; 5 uses
  %.not178 = icmp eq i64 %i.gk, %i.gi
  br i1 %.not178, label %.critedge198, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.gk, ptr %i.gh, align 8, !tbaa !62
  %i.gl = icmp eq i64 %i.gk, 0
  %i.gm = and i64 %i.gk, 7
  %i.gn = icmp ne i64 %i.gm, 0
  %i.go = or i1 %i.gl, %i.gn
  br i1 %i.go, label %.critedge198, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.gk) #21
  br label %.critedge198

bb.bo:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.gp = load i8, ptr %i.al, align 8, !tbaa !199, !range !77, !noundef !30
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gr = call fastcc i32 @obj_refer_only_shareables_p(i64 noundef %i.ap)
  %.not174 = icmp eq i32 %i.gr, 0
  br i1 %.not174, label %._crit_edge, label %.critedge198

._crit_edge:                                      ; preds = %bb.bp
  %.pre285 = load i8, ptr %i.al, align 8, !tbaa !199, !range !77
  %i.gs = trunc nuw i8 %.pre285 to i1
  %i.gt = select i1 %i.gs, ptr @.str.91, ptr @.str.92
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge, %bb.bo
  %i.gu = phi ptr [ %i.gt, %._crit_edge ], [ @.str.91, %bb.bo ]
  %i.gv = load i64, ptr @rb_eRactorError, align 8, !tbaa !62
  %i.gw = call fastcc i64 @rb_class_of(i64 noundef %i.ap) #25
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gv, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.gu, i64 noundef %i.gw) #22
  unreachable

bb.br:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_obj_info_dump_loc(i64 noundef %i.ap, ptr noundef nonnull @.str, i32 noundef 1952, ptr noundef nonnull @__func__.obj_traverse_replace_i) #21
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

.critedge198:                                     ; preds = %rb_obj_write.exit234, %rb_obj_write.exit229, %RSTRUCT_CONST_PTR.exit, %ROBJECT_FIELDS.exit, %bb.bl, %bb.bm, %bb.bn, %bb.be, %bb.bf, %bb.bg, %bb.ax, %bb.ay, %bb.az, %bb.ap, %bb.bp, %bb.w, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %.critedge201, %bb.u
  %i.gx = phi i64 [ %i.ap, %rb_obj_write.exit229 ], [ %i.ap, %bb.u ], [ %i.ap, %RSTRUCT_CONST_PTR.exit ], [ %i.ap, %ROBJECT_FIELDS.exit ], [ %i.ap, %bb.bl ], [ %i.ap, %bb.bm ], [ %i.ap, %bb.bn ], [ %i.ap, %bb.be ], [ %i.ap, %bb.bf ], [ %i.ap, %bb.bg ], [ %i.ap, %bb.ax ], [ %i.ap, %bb.ay ], [ %i.ap, %bb.az ], [ %i.ap, %bb.ap ], [ %i.ap, %bb.bp ], [ %i.ap, %bb.w ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %.pre288, %.critedge201 ], [ %i.ap, %rb_obj_write.exit234 ]
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.gy, ptr %i.k, align 8, !tbaa !163
  %i.gz = getelementptr i8, ptr %1, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !162
  %i.hb = call i32 %i.ha(i64 noundef %i.gx, ptr noundef nonnull %1) #21
  %i.hc = icmp eq i32 %i.hb, 2
  %. = zext i1 %i.hc to i32
  br label %.critedge210

.critedge203:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge210

.critedge205:                                     ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge210

.critedge210:                                     ; preds = %.lr.ph, %.lr.ph264, %bb.ag, %.lr.ph267, %rb_imemo_fields_complex_tbl.exit, %rb_obj_write.exit238, %bb.bh, %rb_obj_write.exit236, %bb.ba, %bb.aw, %.critedge198, %rb_obj_gen_fields_p.exit.thread, %.critedge205, %.critedge203, %bb.c, %bb.w, %bb.g, %bb.d, %bb.b
  %.24 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ %., %.critedge198 ], [ 1, %rb_obj_gen_fields_p.exit.thread ], [ 1, %bb.w ], [ 1, %rb_obj_write.exit238 ], [ 1, %.lr.ph264 ], [ 1, %.lr.ph267 ], [ 1, %bb.ba ], [ 1, %bb.ag ], [ 1, %rb_obj_write.exit236 ], [ 1, %bb.aw ], [ 1, %.critedge203 ], [ 1, %.critedge205 ], [ 1, %bb.bh ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %rb_imemo_fields_complex_tbl.exit ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.24
}

declare i32 @rb_st_foreach_with_replace(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @obj_iv_hash_traverse_replace_foreach_i(i64 %0, i64 %1, i64 %2, i32 %3) #9 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_iv_hash_traverse_replace_i(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !62
  %i.e = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.d, ptr noundef %i.c)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !206
  br label %rb_obj_written.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !62
  %i.g = getelementptr i8, ptr %i.c, i64 32
end_hunk_1
begin_hunk_2_@rb_ary_ptr_use_end
declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #1

declare void @rb_objspace_reachable_objects_from(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @obj_refer_only_shareables_p_i(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread5

rb_ractor_shareable_p.exit.thread5:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread3, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread3:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.q, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread5, %rb_ractor_shareable_p.exit
  %i.r = load i32, ptr %1, align 4, !tbaa !15
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %1, align 4, !tbaa !15
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %bb.b, %bb.a, %rb_ractor_shareable_p.exit.thread3, %bb.e, %rb_ractor_shareable_p.exit
  ret void
}

declare void @rb_vm_lock_leave_body_nb(ptr noundef) local_unnamed_addr #1

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_unprotected_newobj_of(i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier_remember(i64 noundef) local_unnamed_addr #1

declare void @rb_replace_generic_ivar(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_gc_obj_id_moved(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #1

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

declare ptr @rb_current_ec_noinline() local_unnamed_addr #1

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @rb_native_cond_signal(ptr noundef) local_unnamed_addr #1

declare void @rb_vm_lock_body() local_unnamed_addr #1

declare void @rb_vm_unlock_body() local_unnamed_addr #1

declare void @rb_vm_lock_enter_body_nb(ptr noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_port_alloc(i64 noundef %0) #0 {
RTYPEDDATA_GET_DATA.exit:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 16, ptr noundef nonnull @ractor_port_data_type) #21 ; 2 uses
  %i.b = tail call i64 @rb_obj_freeze(i64 noundef %i.a) #21 ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_port_initialize(i64 noundef returned %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_current_ractor.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  %i.h = tail call fastcc i64 @ractor_port_init(i64 noundef %0, ptr noundef %.0.i.i) ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_port_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181  ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !181
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.h) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.a, %bb.b
  %i.m = getelementptr i8, ptr %i.f, i64 8
  %.val = load i64, ptr %i.m, align 8, !tbaa !128
  %i.n = getelementptr i8, ptr %i.c, i64 8
  store i64 %.val, ptr %i.n, align 8, !tbaa !128
  ret i64 %0
}

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @ractor_port_init(i64 noundef returned %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !181
  %i.d = load i64, ptr %1, align 8, !tbaa !85     ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.d) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !286  ; 3 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !286
  %i.l = getelementptr i8, ptr %i.c, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !128
  %i.m = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !107
  store ptr %i.m, ptr %i.m, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i8 0, ptr %i.o, align 8, !tbaa !121
  %i.p = getelementptr i8, ptr %1, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.p) #21
  %i.q = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %ractor_lock.exit.i, label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %rb_obj_written.exit
  %i.r = getelementptr i8, ptr %i.q, i64 48
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.s = getelementptr i8, ptr %.val.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = getelementptr i8, ptr %i.t, i64 448
  store i8 1, ptr %i.u, align 8, !tbaa !61
  br label %ractor_lock.exit.i

ractor_lock.exit.i:                               ; preds = %rb_ec_ractor_ptr.exit.i.i, %rb_obj_written.exit
  %i.v = getelementptr i8, ptr %1, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = tail call i32 @rb_st_insert(ptr noundef %i.w, i64 noundef %i.j, i64 noundef %i.x) #21 ; 0 uses
  %i.z = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i, label %ractor_add_port.exit, label %rb_ec_ractor_ptr.exit.i6.i

rb_ec_ractor_ptr.exit.i6.i:                       ; preds = %ractor_lock.exit.i
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  %.val.i7.i = load ptr, ptr %i.aa, align 8, !tbaa !29, !nonnull !30, !noundef !30
  %i.ab = getelementptr i8, ptr %.val.i7.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr i8, ptr %i.ac, i64 448
  store i8 0, ptr %i.ad, align 8, !tbaa !61
  br label %ractor_add_port.exit

ractor_add_port.exit:                             ; preds = %ractor_lock.exit.i, %rb_ec_ractor_ptr.exit.i6.i
  tail call void @rb_native_mutex_unlock(ptr noundef %i.p) #21
  %i.ae = tail call i64 @rb_obj_freeze(i64 noundef %0) #21 ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @obj_traverse_i(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_callback_data, align 8 ; 6 uses
  %3 = alloca %struct.obj_traverse_callback_data, align 8 ; 6 uses
  %4 = alloca %struct.obj_traverse_callback_data, align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !143
  %i.g = tail call i32 %i.f(i64 noundef %0) #21
  switch i32 %i.g, label %bb.d [
    i32 2, label %bb.c
    i32 1, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !289  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %obj_traverse_rec.exit, !prof !125

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @rb_ident_hash_new() #21   ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 24
  store i64 %i.j, ptr %i.k, align 8, !tbaa !290
  %i.l = add i64 %i.j, 24
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !289
  br label %obj_traverse_rec.exit

obj_traverse_rec.exit:                            ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  %i.o = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %0, i64 noundef 1) #21
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %rb_obj_written.exit, label %bb.ab, !prof !201

rb_obj_written.exit:                              ; preds = %obj_traverse_rec.exit
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !290
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store ptr %1, ptr %i.r, align 8, !tbaa !219
  %i.s = ptrtoint ptr %2 to i64
  call void @rb_ivar_foreach(i64 noundef %0, ptr noundef nonnull @obj_traverse_ivar_foreach_i, i64 noundef %i.s) #21
  %i.t = load i8, ptr %2, align 8, !tbaa !220, !range !77, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %rb_obj_written.exit
  %i.v = inttoptr i64 %0 to ptr                   ; 12 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !117  ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 31
  switch i32 %i.y, label %bb.aa [
    i32 5, label %.critedge
    i32 4, label %.critedge
    i32 10, label %.critedge
    i32 6, label %.critedge
    i32 11, label %.critedge
    i32 20, label %.critedge
    i32 1, label %.critedge
    i32 7, label %bb.g
    i32 8, label %bb.m
    i32 9, label %bb.o
    i32 13, label %bb.s
    i32 15, label %bb.t
    i32 14, label %bb.v
    i32 12, label %bb.x
    i32 26, label %bb.x
  ]

bb.g:                                             ; preds = %bb.f
  call void @rb_ary_cancel_sharing(i64 noundef %0) #21
  %i.z = getelementptr i8, ptr %i.v, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !117 ; 2 uses
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = lshr i64 %i.aa, 15
  %i.ad = and i64 %i.ac, 127
  br label %rb_array_len.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !135
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.ad, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  %i.af = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.k

bb.k:                                             ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #23
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %.not75 = icmp slt i64 %indvars.iv, %.0.i.i
  br i1 %.not75, label %bb.l, label %.critedge

bb.l:                                             ; preds = %RARRAY_LENINT.exit
  %i.ag = call i64 @rb_ary_entry(i64 noundef %0, i64 noundef %indvars.iv) #25
  %i.ah = call fastcc i32 @obj_traverse_i(i64 noundef %i.ag, ptr noundef nonnull %1)
  %.not74 = icmp eq i32 %i.ah, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not74, label %bb.h, label %.loopexit, !llvm.loop !287

bb.m:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.v, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !208
  %i.ak = call fastcc i32 @obj_traverse_i(i64 noundef %i.aj, ptr noundef nonnull %1)
  %.not73 = icmp eq i32 %i.ak, 0
  br i1 %.not73, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %i.al, align 8, !tbaa !219
  %i.am = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef nonnull @obj_hash_traverse_i, i64 noundef %i.am) #21
  %i.an = load i8, ptr %3, align 8, !tbaa !220, !range !77, !noundef !30
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.ao, label %.loopexit, label %.critedge

bb.o:                                             ; preds = %bb.f
  %i.ap = and i64 %i.w, 1040384
  %.not.i78 = icmp eq i64 %i.ap, 0
  br i1 %.not.i78, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = lshr i64 %i.w, 13
  %i.ar = and i64 %i.aq, 127
  %i.as = getelementptr i8, ptr %i.v, i64 16
  br label %RSTRUCT_CONST_PTR.exit

bb.q:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %i.v, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !135
  %i.av = getelementptr i8, ptr %i.v, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !135
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.p, %bb.q
  %.0.i84 = phi i64 [ %i.ar, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  %.0.i80 = phi ptr [ %i.as, %bb.p ], [ %i.aw, %bb.q ]
  %.not7290 = icmp sgt i64 %.0.i84, 0
  br i1 %.not7290, label %.lr.ph, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  %i.ax = add nuw nsw i64 %.05791, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %.0.i84
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !288

.lr.ph:                                           ; preds = %RSTRUCT_CONST_PTR.exit, %bb.r
  %.05791 = phi i64 [ %i.ax, %bb.r ], [ 0, %RSTRUCT_CONST_PTR.exit ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %.0.i80, i64 %.05791
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !62
  %i.ba = call fastcc i32 @obj_traverse_i(i64 noundef %i.az, ptr noundef nonnull %1)
  %.not71 = icmp eq i32 %i.ba, 0
  br i1 %.not71, label %bb.r, label %.loopexit

bb.s:                                             ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %i.v, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !210
  %i.bd = call fastcc i32 @obj_traverse_i(i64 noundef %i.bc, ptr noundef nonnull %1)
  %.not70 = icmp eq i32 %i.bd, 0
  br i1 %.not70, label %.critedge, label %.loopexit

bb.t:                                             ; preds = %bb.f
  %i.be = getelementptr i8, ptr %i.v, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !212
  %i.bg = call fastcc i32 @obj_traverse_i(i64 noundef %i.bf, ptr noundef nonnull %1)
  %.not68 = icmp eq i32 %i.bg, 0
  br i1 %.not68, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %i.v, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !213
  %i.bj = call fastcc i32 @obj_traverse_i(i64 noundef %i.bi, ptr noundef nonnull %1)
  %.not69 = icmp eq i32 %i.bj, 0
  br i1 %.not69, label %.critedge, label %.loopexit

bb.v:                                             ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %i.v, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !215
  %i.bm = call fastcc i32 @obj_traverse_i(i64 noundef %i.bl, ptr noundef nonnull %1)
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr i8, ptr %i.v, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !216
  %i.bp = call fastcc i32 @obj_traverse_i(i64 noundef %i.bo, ptr noundef nonnull %1)
  %.not67 = icmp eq i32 %i.bp, 0
  br i1 %.not67, label %.critedge, label %.loopexit

bb.x:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.br = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i81 = icmp eq ptr %i.br, null
  br i1 %.not.i.i81, label %bb.y, label %rb_vm_lock_enter_nb.exit

bb.y:                                             ; preds = %bb.x
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter_nb.exit

rb_vm_lock_enter_nb.exit:                         ; preds = %bb.y, %bb.x
  call void @rb_objspace_reachable_objects_from(i64 noundef %0, ptr noundef nonnull @obj_traverse_reachable_i, ptr noundef nonnull %4) #21
  %i.bs = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i82 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i82, label %bb.z, label %rb_vm_lock_leave_nb.exit

bb.z:                                             ; preds = %rb_vm_lock_enter_nb.exit
  call void @rb_vm_lock_leave_body_nb(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave_nb.exit

rb_vm_lock_leave_nb.exit:                         ; preds = %rb_vm_lock_enter_nb.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bt = load i8, ptr %4, align 8, !tbaa !220, !range !77, !noundef !30
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bu, label %.loopexit, label %.critedge

bb.aa:                                            ; preds = %bb.f
  call void @rb_obj_info_dump_loc(i64 noundef %0, ptr noundef nonnull @.str, i32 noundef 1392, ptr noundef nonnull @__func__.obj_traverse_i) #21
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

.critedge:                                        ; preds = %bb.r, %RARRAY_LENINT.exit, %RSTRUCT_CONST_PTR.exit, %rb_vm_lock_leave_nb.exit, %bb.w, %bb.u, %bb.s, %bb.n, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.bv = getelementptr i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !144
  %i.bx = call i32 %i.bw(i64 noundef %0) #21
  %i.by = icmp eq i32 %i.bx, 2
  %. = zext i1 %i.by to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %.critedge, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.m, %rb_obj_written.exit, %bb.n, %rb_vm_lock_leave_nb.exit
  %.6 = phi i32 [ 1, %rb_vm_lock_leave_nb.exit ], [ %., %.critedge ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %rb_obj_written.exit ], [ 1, %bb.n ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ab

bb.ab:                                            ; preds = %obj_traverse_rec.exit, %bb.b, %bb.a, %.loopexit, %bb.c
  %.7 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.6, %.loopexit ], [ 1, %bb.c ], [ 0, %obj_traverse_rec.exit ]
  ret i32 %.7
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_traverse_final_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = tail call i32 %i.b(i64 noundef %0) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @rb_ivar_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_traverse_ivar_foreach_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.d = tail call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_hash_traverse_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.d = tail call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.f = tail call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef %i.e)
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @obj_traverse_reachable_i(i64 noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = tail call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_ractor_make_shareable(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_id(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @copy_enter(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread8

rb_ractor_shareable_p.exit.thread8:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread6, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread6:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.q, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread8, %rb_ractor_shareable_p.exit
  %i.r = call i64 @rb_obj_clone(i64 noundef %0) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread6, %bb.a, %bb.b, %bb.e
  %.sink = phi i64 [ %i.r, %bb.e ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %rb_ractor_shareable_p.exit.thread6 ], [ %0, %rb_ractor_shareable_p.exit ]
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %rb_ractor_shareable_p.exit.thread6 ], [ 1, %rb_ractor_shareable_p.exit ]
  %i.s = getelementptr i8, ptr %1, i64 32
  store i64 %.sink, ptr %i.s, align 8, !tbaa !163
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @copy_leave(i64 %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  ret i32 0
}

declare i64 @rb_obj_clone(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @rb_ractor_local_storage_value_mark(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  tail call void @rb_gc_mark(i64 noundef %i.a) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_require_protect(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !221

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  %i.i = and i64 %i.h, 95
  %or.cond.not.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !222

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @cross_ractor_require_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !201

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.s = getelementptr i8, ptr %.015.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223  ; 2 uses
  %i.u = icmp eq ptr %i.t, @cross_ractor_require_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !4

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @cross_ractor_require_data_type) #21
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.v, %.critedge.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.q, %bb.d ] ; 4 uses
  %i.w = getelementptr i8, ptr %.1.i, i64 32
  %i.x = load i8, ptr %i.w, align 8, !tbaa !179, !range !77, !noundef !30
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = load i64, ptr @rb_eException, align 8, !tbaa !62
  %i.aa = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef %1, i64 noundef %0, ptr noundef nonnull @require_rescue, i64 noundef %0, i64 noundef %i.z, i32 noundef 0) #21
  br label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ab = tail call ptr @rb_ruby_debug_ptr() #21
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  %i.ad = tail call i64 @rb_errinfo() #21
  %i.ae = load i64, ptr @rb_eException, align 8, !tbaa !62
  %i.af = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef %1, i64 noundef %0, ptr noundef nonnull @require_rescue, i64 noundef %0, i64 noundef %i.ae, i32 noundef 0) #21
  %i.ag = tail call ptr @rb_ruby_debug_ptr() #21
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !62
  tail call void @rb_set_errinfo(i64 noundef %i.ad) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ah = phi i64 [ %i.af, %bb.f ], [ %i.aa, %bb.e ]
  %i.ai = load i64, ptr %.1.i, align 8, !tbaa !180
  %i.aj = getelementptr i8, ptr %.1.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !178, !range !77, !noundef !30
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.al, i64 20, i64 0
  %i.an = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ah, i64 noundef %i.am) #21
  %i.ao = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ai, i64 noundef %i.an) #21
  %i.ap = load i64, ptr @rb_eException, align 8, !tbaa !62
  %i.aq = load i64, ptr %.1.i, align 8, !tbaa !180
  %i.ar = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @require_result_send_body, i64 noundef %i.ao, ptr noundef nonnull @require_result_send_resuce, i64 noundef %i.ap, i64 noundef %i.aq) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.a, ptr %i.b, align 8, !tbaa !119
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #21, !srcloc !291
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.at = load volatile i64, ptr %i.as, align 8, !tbaa !62 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @require_body(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !221

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !222

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @cross_ractor_require_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !201

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr i8, ptr %.015.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !223  ; 2 uses
  %i.t = icmp eq ptr %i.s, @cross_ractor_require_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !4

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @cross_ractor_require_data_type) #21
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.v = getelementptr i8, ptr %.1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !135  ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !62
  %.pr.i = load i64, ptr @require_body.rbimpl_id, align 8, !tbaa !62 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rbimpl_check_typeddata.exit, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.113, i64 noundef 7) #21 ; 3 uses
  store i64 %i.x, ptr @require_body.rbimpl_id, align 8, !tbaa !62
  %.not.i4 = icmp eq i64 %i.x, 0
  br i1 %.not.i4, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !1

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rbimpl_check_typeddata.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rbimpl_check_typeddata.exit ], [ %i.x, %.lr.ph.i ]
  %i.y = getelementptr i8, ptr %.1.i, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !179, !range !77, !noundef !30
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_intern_const.exit
  %i.ab = tail call i32 @rb_require_internal_silent(i64 noundef %i.w) #21
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %bb.g

bb.f:                                             ; preds = %rbimpl_intern_const.exit
  %i.af = call i64 @rb_funcallv(i64 noundef 4, i64 noundef %.lcssa.i, i32 noundef 1, ptr noundef nonnull %i.a) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.ae, %bb.e ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.0
}

declare ptr @rb_ruby_debug_ptr() local_unnamed_addr #1

declare i64 @rb_errinfo() local_unnamed_addr #1

declare i64 @rb_rescue2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @require_rescue(i64 noundef %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !221

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !222

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @cross_ractor_require_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !201

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !223  ; 2 uses
  %i.s = icmp eq ptr %i.r, @cross_ractor_require_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !4

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @cross_ractor_require_data_type) #21
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i, i64 8
  store i8 1, ptr %i.u, align 8, !tbaa !178
  ret i64 %1
}

declare void @rb_set_errinfo(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @require_result_send_body(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !117
  %i.d = and i64 %i.c, 8192
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 16
  br label %RARRAY_AREF.exit6

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135
  br label %RARRAY_AREF.exit6

RARRAY_AREF.exit6:                                ; preds = %bb.b, %bb.c
  %.in = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = load i64, ptr %.in, align 8, !tbaa !62
  %i.i = getelementptr i8, ptr %.in, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  tail call fastcc void @ractor_send0(ptr noundef readonly %i.o, i64 noundef %i.j, i64 noundef range(i64 0, 2) 0, i1 noundef zeroext true)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @require_result_send_resuce(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
end_hunk_2
begin_hunk_3_@llvm.umax.i16
!77 = !{i8 0, i8 2}
!78 = !{!73, !18, i64 32}
!79 = !{!73, !18, i64 24}
!80 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!60, !14, i64 8}
!83 = !{!60, !18, i64 344}
!84 = !{!60, !18, i64 336}
!85 = !{!60, !18, i64 0}
!86 = !{!60, !16, i64 456}
!87 = !{!60, !23, i64 376}
!88 = !{!33, !33, i64 0}
!89 = !{!"", !13, i64 0, !33, i64 40, !14, i64 48, !13, i64 56, !40, i64 104}
!90 = !{!"", !13, i64 0, !33, i64 40, !40, i64 48, !13, i64 56, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !46, i64 120, !14, i64 136, !46, i64 144, !46, i64 160, !46, i64 176, !40, i64 192, !13, i64 200, !13, i64 248, !40, i64 296, !14, i64 300, !14, i64 304, !33, i64 312, !14, i64 320}
!91 = !{!"", !46, i64 0, !14, i64 16, !14, i64 20, !33, i64 24, !22, i64 32, !89, i64 40, !90, i64 152}
!92 = !{!"p1 _ZTS18global_object_list", !16, i64 0}
!93 = !{!"p1 _ZTS13rb_box_struct", !16, i64 0}
!94 = !{!"", !13, i64 0}
!95 = !{!"p1 _ZTS22rb_postponed_job_queue", !16, i64 0}
!96 = !{!"p1 _ZTS11rb_objspace", !16, i64 0}
!97 = !{!"p1 _ZTS24gc_mark_func_data_struct", !16, i64 0}
!98 = !{!"", !96, i64 0, !97, i64 8}
!99 = !{!"p1 _ZTS15rb_at_exit_list", !16, i64 0}
!100 = !{!"p1 _ZTS19rb_builtin_function", !16, i64 0}
!101 = !{!"p1 _ZTS9set_table", !16, i64 0}
!102 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!103 = !{!"rb_vm_struct", !18, i64 0, !91, i64 8, !16, i64 488, !23, i64 496, !14, i64 504, !14, i64 508, !14, i64 508, !14, i64 508, !14, i64 508, !18, i64 512, !92, i64 520, !13, i64 528, !93, i64 568, !93, i64 576, !54, i64 584, !94, i64 592, !53, i64 1112, !95, i64 1136, !14, i64 1144, !46, i64 1152, !13, i64 1168, !18, i64 1208, !18, i64 1216, !18, i64 1224, !18, i64 1232, !14, i64 1240, !98, i64 1248, !99, i64 1264, !100, i64 1272, !54, i64 1280, !24, i64 1288, !54, i64 1296, !101, i64 1304, !101, i64 1312, !24, i64 1320, !18, i64 1328, !13, i64 1336, !102, i64 9520}
!104 = !{!103, !14, i64 24}
!105 = !{!103, !14, i64 28}
!106 = !{!60, !14, i64 352}
!107 = !{!46, !31, i64 8}
!108 = !{!46, !31, i64 0}
!109 = !{!60, !14, i64 200}
!110 = !{!60, !14, i64 204}
!111 = !{!32, !31, i64 0}
!112 = !{!32, !31, i64 8}
!113 = !{!50, !34, i64 32}
!114 = !{!60, !54, i64 128}
!115 = !{!60, !56, i64 96}
!116 = !{!60, !18, i64 168}
!117 = !{!63, !18, i64 0}
!118 = !{!60, !22, i64 320}
!119 = !{!17, !17, i64 0}
!120 = !{!"ractor_queue", !46, i64 0, !40, i64 16}
!121 = !{!120, !40, i64 16}
!122 = !{!60, !18, i64 120}
!123 = !{!60, !54, i64 40}
!124 = !{!"p1 omnipotent char", !16, i64 0}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!60, !40, i64 176}
!127 = !{!"ractor_port", !33, i64 0, !18, i64 8}
!128 = !{!127, !18, i64 8}
!129 = !{!56, !56, i64 0}
!130 = !{!"", !18, i64 0, !40, i64 8}
!131 = !{!"ractor_basket", !14, i64 0, !18, i64 8, !18, i64 16, !130, i64 24, !32, i64 40}
!132 = !{!131, !18, i64 24}
!133 = !{!131, !40, i64 32}
!134 = !{!131, !18, i64 8}
!135 = !{!13, !13, i64 0}
!136 = !{!103, !33, i64 32}
!137 = !{!50, !18, i64 16}
!138 = !{!34, !34, i64 0}
!139 = !{!103, !40, i64 152}
!140 = !{!60, !36, i64 312}
!141 = !{!50, !36, i64 48}
!142 = !{!"obj_traverse_data", !16, i64 0, !16, i64 8, !54, i64 16, !18, i64 24}
!143 = !{!142, !16, i64 0}
!144 = !{!142, !16, i64 8}
!145 = !{!"rb_obj_traverse_final_data", !16, i64 0, !14, i64 8}
!146 = !{!145, !16, i64 0}
!147 = !{!145, !14, i64 8}
!148 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !13, i64 32}
!149 = !{!"p1 _ZTS19rb_data_type_struct", !16, i64 0}
!150 = !{!"rb_data_type_struct", !124, i64 0, !148, i64 8, !149, i64 48, !16, i64 56, !18, i64 64}
!151 = !{!150, !18, i64 64}
!152 = !{!"p1 _ZTS8rb_shape", !16, i64 0}
!153 = !{!"p1 short", !16, i64 0}
!154 = !{!"p1 _ZTS13redblack_node", !16, i64 0}
!155 = !{!"", !152, i64 0, !152, i64 8, !153, i64 16, !14, i64 24, !154, i64 32, !14, i64 40}
!156 = !{!155, !152, i64 0}
!157 = !{!"short", !13, i64 0}
!158 = !{!"rb_shape", !18, i64 0, !18, i64 8, !154, i64 16, !14, i64 24, !157, i64 28, !157, i64 30, !13, i64 32}
!159 = !{!158, !157, i64 28}
!160 = !{!"obj_traverse_replace_data", !16, i64 0, !16, i64 8, !54, i64 16, !18, i64 24, !18, i64 32, !40, i64 40}
!161 = !{!160, !16, i64 0}
!162 = !{!160, !16, i64 8}
!163 = !{!160, !18, i64 32}
!164 = !{!"p1 _ZTS28rb_ractor_local_storage_type", !16, i64 0}
!165 = !{!"rb_ractor_local_key_struct", !164, i64 0, !16, i64 8}
!166 = !{!165, !164, i64 0}
!167 = !{!165, !16, i64 8}
!168 = !{!"p2 _ZTS26rb_ractor_local_key_struct", !48, i64 0}
!169 = !{!"freed_ractor_local_keys_struct", !14, i64 0, !14, i64 4, !168, i64 8}
!170 = !{!169, !14, i64 0}
!171 = !{!169, !14, i64 4}
!172 = !{!169, !168, i64 8}
!173 = !{!"p1 _ZTS26rb_ractor_local_key_struct", !16, i64 0}
!174 = !{!173, !173, i64 0}
!175 = !{!60, !54, i64 384}
!176 = !{!16, !16, i64 0}
!177 = !{!"cross_ractor_require", !18, i64 0, !40, i64 8, !13, i64 16, !40, i64 32}
!178 = !{!177, !40, i64 8}
!179 = !{!177, !40, i64 32}
!180 = !{!177, !18, i64 0}
!181 = !{!127, !33, i64 0}
!182 = !{!131, !18, i64 16}
!183 = !{!28, !19, i64 16}
!184 = !{!"p1 _ZTS14rb_iseq_struct", !16, i64 0}
!185 = !{!"rb_control_frame_struct", !17, i64 0, !17, i64 8, !184, i64 16, !18, i64 24, !17, i64 32, !16, i64 40, !16, i64 48}
!186 = !{!185, !17, i64 32}
!187 = !{!60, !24, i64 392}
!188 = !{!"ractor_local_storage_store_data", !36, i64 0, !24, i64 8, !18, i64 16, !18, i64 24}
!189 = !{!188, !36, i64 0}
!190 = !{!188, !24, i64 8}
!191 = !{!188, !18, i64 16}
!192 = !{!188, !18, i64 24}
!193 = !{!60, !18, i64 400}
!194 = !{!"rb_ractor_local_storage_type", !16, i64 0, !16, i64 8}
!195 = !{!194, !16, i64 8}
!196 = !{!"ractor_waiter", !14, i64 0, !22, i64 8, !32, i64 16}
!197 = !{!196, !14, i64 0}
!198 = !{!196, !22, i64 8}
!199 = !{!160, !40, i64 40}
!200 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!201 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!202 = !{!"p1 _ZTS25obj_traverse_replace_data", !16, i64 0}
!203 = !{!"obj_traverse_replace_callback_data", !40, i64 0, !18, i64 8, !202, i64 16}
!204 = !{!203, !18, i64 8}
!205 = !{!203, !202, i64 16}
!206 = !{!203, !40, i64 0}
!207 = !{!"RHash", !63, i64 0, !18, i64 16}
!208 = !{!207, !18, i64 16}
!209 = !{!"RMatch", !63, i64 0, !18, i64 16, !18, i64 24}
!210 = !{!209, !18, i64 16}
!211 = !{!"RRational", !63, i64 0, !18, i64 16, !18, i64 24}
!212 = !{!211, !18, i64 16}
!213 = !{!211, !18, i64 24}
!214 = !{!"RComplex", !63, i64 0, !18, i64 16, !18, i64 24}
!215 = !{!214, !18, i64 16}
!216 = !{!214, !18, i64 24}
!217 = !{!"p1 _ZTS17obj_traverse_data", !16, i64 0}
!218 = !{!"obj_traverse_callback_data", !40, i64 0, !217, i64 8}
!219 = !{!218, !217, i64 8}
!220 = !{!218, !40, i64 0}
!221 = !{!"branch_weights", i32 1073205, i32 2146410443}
!222 = !{!"branch_weights", i32 -100663296, i32 2097152}
!223 = !{!150, !149, i64 48}
!224 = !{!"p1 _ZTS12st_hash_type", !16, i64 0}
!225 = !{!"p1 _ZTS14st_table_entry", !16, i64 0}
!226 = !{!"st_table", !13, i64 0, !13, i64 1, !13, i64 2, !14, i64 4, !224, i64 8, !18, i64 16, !17, i64 24, !18, i64 32, !18, i64 40, !225, i64 48}
!227 = !{!226, !18, i64 16}
!228 = !{i64 2156309483}
!229 = !{!60, !14, i64 32}
!230 = !{!"OnigEncodingTypeST", !16, i64 0, !124, i64 8, !14, i64 16, !14, i64 20, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !14, i64 128, !14, i64 132}
!231 = !{!230, !14, i64 20}
!232 = !{!230, !124, i64 8}
!233 = distinct !{!233, !69}
!234 = !{!28, !18, i64 128}
!235 = distinct !{!235, !69}
!236 = distinct !{!236, !69}
!237 = distinct !{!237, !69}
!238 = distinct !{!238, !69}
!239 = distinct !{!239, !69, !242}
!240 = distinct !{!240, !69}
!241 = !{!103, !40, i64 456}
!242 = !{!"llvm.loop.unswitch.partial.disable"}
!243 = !{!103, !22, i64 40}
!244 = distinct !{!244, !69}
!245 = !{!158, !157, i64 30}
!246 = !{!155, !153, i64 16}
!247 = !{!157, !157, i64 0}
!248 = distinct !{!248, !69}
!249 = !{i64 2156861316}
!250 = !{i64 2156861989}
!251 = distinct !{!251, !69}
!252 = !{i64 2156864256}
!253 = !{i64 2156309669}
!254 = !{i64 2155842498}
!255 = !{i64 2155842667}
!256 = !{!60, !33, i64 160}
!257 = !{i64 0, i64 8, !88, i64 8, i64 8, !62}
!258 = distinct !{!258, !69}
!259 = distinct !{!259, !69}
!260 = distinct !{!260, !69}
!261 = distinct !{null}
!262 = distinct !{!262, !69}
!263 = !{!60, !18, i64 408}
!264 = !{!60, !18, i64 416}
!265 = !{!60, !18, i64 424}
!266 = !{!60, !18, i64 432}
!267 = !{!60, !18, i64 440}
!268 = !{!"ractor_monitor", !127, i64 0, !32, i64 16}
!269 = !{!268, !33, i64 0}
!270 = !{!53, !14, i64 16}
!271 = !{!194, !16, i64 0}
!272 = distinct !{!272, !69}
!273 = distinct !{!273, !275}
!274 = !{!131, !14, i64 0}
!275 = !{!"llvm.loop.peeled.count", i32 1}
!276 = !{i64 2155840508}
!277 = !{!40, !40, i64 0}
!278 = distinct !{!278, !69}
!279 = distinct !{!279, !69}
!280 = distinct !{!280, !69}
!281 = distinct !{!281, !69}
!282 = !{!160, !54, i64 16}
!283 = !{!160, !18, i64 24}
!284 = !{!"branch_weights", i32 -2146410, i32 2146410}
!285 = !{i64 2156849240}
!286 = !{!60, !18, i64 136}
!287 = distinct !{!287, !69}
!288 = distinct !{!288, !69}
!289 = !{!142, !54, i64 16}
!290 = !{!142, !18, i64 24}
!291 = !{i64 2156859591}
end_hunk_3
