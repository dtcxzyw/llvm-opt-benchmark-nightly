inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0
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
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.d = getelementptr i8, ptr %.val.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr i8, ptr %i.e, i64 448
  store i8 1, ptr %i.f, align 8, !tbaa !47
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
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.c = getelementptr i8, ptr %.val.i.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr i8, ptr %i.d, i64 448
  store i8 0, ptr %i.e, align 8, !tbaa !47
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
  %i.a = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !57
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str.1, i64 noundef %i.b) #21 ; 2 uses
  store i64 %i.c, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_undef_alloc_func(i64 noundef %i.c) #21
  %i.d = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_define_singleton_method(i64 noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull @ractor_selector_new, i32 noundef -1) #21
  %i.e = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @ractor_selector_add, i32 noundef 1) #21
  %i.f = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @ractor_selector_remove, i32 noundef 1) #21
  %i.g = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @ractor_selector_clear, i32 noundef 0) #21
  %i.h = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @ractor_selector_empty_p, i32 noundef 0) #21
  %i.i = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ractor_selector_wait, i32 noundef 0) #21
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_undef_alloc_func(i64 noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_selector_new(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %2, i64 noundef 8, ptr noundef nonnull @ractor_selector_data_type) #21 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %ractor_selector_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  br label %ractor_selector_create.exit

ractor_selector_create.exit:                      ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  %i.i = tail call ptr @rb_st_init_numtable() #21
  store ptr %i.i, ptr %i.h, align 8, !tbaa !62
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call i64 @ractor_selector_add(i64 noundef %i.a, i64 noundef %i.l) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_selector_add(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %1, ptr noundef nonnull @ractor_port_data_type) #21
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.71) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.f = inttoptr i64 %1 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.j = tail call i32 @rb_st_lookup(ptr noundef %i.i, i64 noundef %1, ptr noundef null) #21
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.72) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !62
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

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_selector_remove(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !57
  %i.b = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %1, ptr noundef nonnull @ractor_port_data_type) #21
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.71) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = tail call i32 @rb_st_lookup(ptr noundef %i.g, i64 noundef %1, ptr noundef null) #21
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @rb_eArgError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.75) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.k = call i32 @rb_st_delete(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef null) #21 ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_selector_clear(i64 noundef returned %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  tail call void @rb_st_clear(ptr noundef %i.d) #21
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @ractor_selector_empty_p(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 20, i64 0
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_selector_wait(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ractor_selector_wait_data, align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = inttoptr i64 %0 to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %.0.i.i, ptr %1, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0..0..0..0..0..0..i, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.n = call i32 @rb_st_foreach(ptr noundef %i.m, ptr noundef nonnull @ractor_selector_wait_i, i64 noundef %i.l) #21 ; 0 uses
  %i.o = load i8, ptr %i.k, align 8, !tbaa !76, !range !77, !noundef !25
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %ractor_selector__wait.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_ec_ractor_ptr.exit.i, %.lr.ph.i
  call fastcc void @ractor_wait_receive(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %.0.i.i)
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.r = call i32 @rb_st_foreach(ptr noundef %i.q, ptr noundef nonnull @ractor_selector_wait_i, i64 noundef %i.l) #21 ; 0 uses
  %i.s = load i8, ptr %i.k, align 8, !tbaa !76, !range !77, !noundef !25
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %ractor_selector__wait.exit, label %.lr.ph.i

ractor_selector__wait.exit:                       ; preds = %.lr.ph.i, %rb_ec_ractor_ptr.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.u, align 8, !tbaa !78
  %i.x = load i64, ptr %i.v, align 8, !tbaa !79
  %i.y = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.w, i64 noundef %i.x) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @rb_ractor_main_alloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @ruby_mimcalloc(i64 noundef 1, i64 noundef 464) #21 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.8) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @ractor_last_id, align 4, !tbaa !7
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr @ractor_last_id, align 4, !tbaa !7
  %i.g = getelementptr i8, ptr %i.a, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !82
  %i.h = getelementptr i8, ptr %i.a, i64 344
  store i64 4, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr i8, ptr %i.a, i64 336
  store i64 4, ptr %i.i, align 8, !tbaa !84
  store i64 4, ptr %i.a, align 8, !tbaa !85
  %i.j = tail call ptr @rb_gc_ractor_cache_alloc(ptr noundef nonnull %i.a) #21
  %i.k = getelementptr i8, ptr %i.a, i64 456
  store ptr %i.j, ptr %i.k, align 8, !tbaa !86
  %i.l = getelementptr i8, ptr %i.a, i64 376
  store i64 1, ptr %i.l, align 8, !tbaa !87
  store ptr %i.a, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noalias ptr @ruby_mimcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare ptr @rb_gc_ractor_cache_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_atfork(ptr noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 7 uses
  store ptr %i.d, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %i.e = getelementptr i8, ptr %i.d, i64 352
  store i32 0, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr i8, ptr %i.d, i64 184      ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 192
  store ptr %i.f, ptr %i.g, align 8, !tbaa !107
  store ptr %i.f, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr i8, ptr %i.d, i64 200
  store i32 0, ptr %i.h, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %i.d, i64 204
  store i32 0, ptr %i.i, align 4, !tbaa !110
  tail call void @rb_ractor_living_threads_insert(ptr noundef %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @rb_ractor_living_threads_init(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.b, align 8, !tbaa !107
  store ptr %i.a, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr i8, ptr %0, i64 200
  store i32 0, ptr %i.c, align 8, !tbaa !109
  %i.d = getelementptr i8, ptr %0, i64 204
  store i32 0, ptr %i.d, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_living_threads_insert(ptr noundef %0, ptr noundef initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.a) #21
  %i.b = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.d = getelementptr i8, ptr %.val.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr i8, ptr %i.e, i64 448
  store i8 1, ptr %i.f, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.g = getelementptr i8, ptr %0, i64 184
  store ptr %i.g, ptr %1, align 8, !tbaa !111
  %i.h = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !112
  store ptr %1, ptr %i.i, align 8, !tbaa !111
  store ptr %1, ptr %i.h, align 8, !tbaa !112
  %i.k = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !109
  %i.n = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i9

rb_ec_ractor_ptr.exit.i9:                         ; preds = %ractor_lock.exit
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %.val.i10 = load ptr, ptr %i.o, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.p = getelementptr i8, ptr %.val.i10, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr i8, ptr %i.q, i64 448
  store i8 0, ptr %i.r, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %ractor_lock.exit, %rb_ec_ractor_ptr.exit.i9
  tail call void @rb_native_mutex_unlock(ptr noundef %i.a) #21
  %i.s = load i32, ptr %i.k, align 8, !tbaa !109
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.b, label %vm_insert_ractor.exit

bb.b:                                             ; preds = %ractor_unlock.exit
  %i.u = getelementptr i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 10 uses
  %i.w = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %rb_vm_lock.exit.i, label %bb.f

rb_vm_lock.exit.i:                                ; preds = %bb.b
  tail call void @rb_vm_lock_body() #21
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %i.y = getelementptr i8, ptr %0, i64 360        ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !111
  %i.z = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 368
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !112
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !111
  store ptr %i.y, ptr %i.z, align 8, !tbaa !112
  %i.ac = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !89
  %i.af = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86
  %.not.i13.i = icmp eq ptr %i.ag, null
  br i1 %.not.i13.i, label %bb.c, label %vm_insert_ractor0.exit.i

bb.c:                                             ; preds = %rb_vm_lock.exit.i
  %i.ah = tail call ptr @rb_gc_ractor_cache_alloc(ptr noundef nonnull %0) #21
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !86
  br label %vm_insert_ractor0.exit.i

vm_insert_ractor0.exit.i:                         ; preds = %bb.c, %rb_vm_lock.exit.i
  %i.ai = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106
  %cond.i.i.i = icmp eq i32 %i.aj, 3
  br i1 %cond.i.i.i, label %bb.d, label %vm_ractor_blocking_cnt_inc.exit.i

bb.d:                                             ; preds = %vm_insert_ractor0.exit.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

vm_ractor_blocking_cnt_inc.exit.i:                ; preds = %vm_insert_ractor0.exit.i
  store i32 2, ptr %i.ai, align 8, !tbaa !106
  %i.ak = getelementptr i8, ptr %i.v, i64 28      ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !105
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !105
  %i.an = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i14.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i14.i, label %bb.e, label %vm_insert_ractor.exit

bb.e:                                             ; preds = %vm_ractor_blocking_cnt_inc.exit.i
  tail call void @rb_vm_unlock_body() #21
  br label %vm_insert_ractor.exit

bb.f:                                             ; preds = %bb.b
  %i.ao = getelementptr i8, ptr %i.v, i64 24      ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !89
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %i.v, i64 8
  %i.as = getelementptr i8, ptr %0, i64 360       ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !111
  %i.at = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !112 ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 368
  store ptr %i.au, ptr %i.av, align 8, !tbaa !112
  store ptr %i.as, ptr %i.au, align 8, !tbaa !111
  store ptr %i.as, ptr %i.at, align 8, !tbaa !112
  store i32 1, ptr %i.ao, align 8, !tbaa !89
  %i.aw = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86
  %.not.i15.i = icmp eq ptr %i.ax, null
  br i1 %.not.i15.i, label %bb.h, label %vm_insert_ractor0.exit16.i

bb.h:                                             ; preds = %bb.g
  %i.ay = tail call ptr @rb_gc_ractor_cache_alloc(ptr noundef nonnull %0) #21
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !86
  br label %vm_insert_ractor0.exit16.i

vm_insert_ractor0.exit16.i:                       ; preds = %bb.h, %bb.g
  %i.az = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.ba, 3
  br i1 %cond.i.i, label %bb.i, label %ractor_status_set.exit18.i

bb.i:                                             ; preds = %vm_insert_ractor0.exit16.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

ractor_status_set.exit18.i:                       ; preds = %vm_insert_ractor0.exit16.i
  store i32 1, ptr %i.az, align 8, !tbaa !106
  br label %vm_insert_ractor.exit

bb.j:                                             ; preds = %bb.f
  store ptr null, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %i.bb = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %.pr.i.i.i = load i64, ptr @cancel_single_ractor_mode.rbimpl_id, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %cancel_single_ractor_mode.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.97, i64 noundef 10) #21 ; 3 uses
  store i64 %i.bc, ptr @cancel_single_ractor_mode.rbimpl_id, align 8, !tbaa !57
  %.not.i.i19.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i19.i, label %.lr.ph.i.i.i, label %cancel_single_ractor_mode.exit.i, !llvm.loop !114

cancel_single_ractor_mode.exit.i:                 ; preds = %.lr.ph.i.i.i, %bb.j
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %bb.j ], [ %i.bc, %.lr.ph.i.i.i ]
  %i.bd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bb, i64 noundef %.lcssa.i.i.i, i32 noundef 0) #21 ; 0 uses
  %i.be = getelementptr i8, ptr %i.v, i64 8
  %i.bf = getelementptr i8, ptr %0, i64 360       ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !111
  %i.bg = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 368
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !112
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !111
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !112
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !89
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !89
  %i.bl = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !86
  %.not.i20.i = icmp eq ptr %i.bm, null
  br i1 %.not.i20.i, label %bb.k, label %vm_insert_ractor0.exit21.i

bb.k:                                             ; preds = %cancel_single_ractor_mode.exit.i
  %i.bn = tail call ptr @rb_gc_ractor_cache_alloc(ptr noundef nonnull %0) #21
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !86
  br label %vm_insert_ractor0.exit21.i

vm_insert_ractor0.exit21.i:                       ; preds = %bb.k, %cancel_single_ractor_mode.exit.i
  %i.bo = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !106
  %cond.i.i22.i = icmp eq i32 %i.bp, 3
  br i1 %cond.i.i22.i, label %bb.l, label %vm_ractor_blocking_cnt_inc.exit23.i

bb.l:                                             ; preds = %vm_insert_ractor0.exit21.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

vm_ractor_blocking_cnt_inc.exit23.i:              ; preds = %vm_insert_ractor0.exit21.i
  store i32 2, ptr %i.bo, align 8, !tbaa !106
  %i.bq = getelementptr i8, ptr %i.v, i64 28      ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !105
  br label %vm_insert_ractor.exit

vm_insert_ractor.exit:                            ; preds = %vm_ractor_blocking_cnt_inc.exit23.i, %ractor_status_set.exit18.i, %bb.e, %vm_ractor_blocking_cnt_inc.exit.i, %ractor_unlock.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_atfork(ptr noundef readnone captures(none) %0, ptr noundef initializes((352, 356)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 456        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call void @rb_gc_ractor_cache_free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr i8, ptr %1, i64 352
  store i32 3, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr i8, ptr %1, i64 128        ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.e, ptr noundef nonnull @ractor_free_all_ports_i, i64 noundef %i.f) #21 ; 0 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !115
  tail call void @rb_st_free_table(ptr noundef %i.h) #21
  store ptr null, ptr %i.d, align 8, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 96         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 5 uses
  %.not9.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i, label %ractor_sync_terminate_atfork.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not12.i.i.i, label %ractor_queue_free.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.pn.in13.i.i.i = phi ptr [ %.pn.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 6 uses
  %.09.i.i.i = getelementptr i8, ptr %.pn.in13.i.i.i, i64 -40
  %.pn.i.i.i = load ptr, ptr %.pn.in13.i.i.i, align 8, !tbaa !111 ; 4 uses
  %i.l = getelementptr i8, ptr %.pn.in13.i.i.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 2 uses
  %i.n = getelementptr i8, ptr %.pn.i.i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !112
  store ptr %.pn.i.i.i, ptr %i.m, align 8, !tbaa !111
  store ptr %.pn.in13.i.i.i, ptr %i.l, align 8, !tbaa !112
  store ptr %.pn.in13.i.i.i, ptr %.pn.in13.i.i.i, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.09.i.i.i) #21
  %.not.i.i.i = icmp eq ptr %.pn.i.i.i, %i.j
  br i1 %.not.i.i.i, label %ractor_queue_free.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !117

ractor_queue_free.exit.i.i:                       ; preds = %.lr.ph.i.i.i, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #21
  store ptr null, ptr %i.i, align 8, !tbaa !116
  br label %ractor_sync_terminate_atfork.exit

ractor_sync_terminate_atfork.exit:                ; preds = %bb.c, %ractor_queue_free.exit.i.i
  %i.o = getelementptr i8, ptr %1, i64 168
  store i64 4, ptr %i.o, align 8, !tbaa !118
  ret void
}

declare void @rb_gc_ractor_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_main_setup(ptr noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.d = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.c, ptr noundef %1, ptr noundef nonnull @ractor_data_type) #21 ; 3 uses
  store i64 %i.d, ptr %1, align 8, !tbaa !85
  store i64 %i.d, ptr %i.a, align 8, !tbaa !57
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = or i64 %i.f, 256
  store i64 %i.g, ptr %i.e, align 8, !tbaa !119
  tail call fastcc void @ractor_init(ptr noundef nonnull %1, i64 noundef 4, i64 noundef 4)
  %i.h = getelementptr i8, ptr %1, i64 320
  store ptr %2, ptr %i.h, align 8, !tbaa !120
  tail call void @rb_ractor_living_threads_insert(ptr noundef nonnull %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.a, ptr %i.b, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #21, !srcloc !122
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.j = load volatile i64, ptr %i.i, align 8, !tbaa !57 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_init(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr i8, ptr %0, i64 56
  tail call void @rb_native_mutex_initialize(ptr noundef %i.b) #21
  %i.c = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  store ptr %i.c, ptr %i.d, align 8, !tbaa !107
  store ptr %i.c, ptr %i.c, align 8, !tbaa !108
  %i.e = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 112
  store ptr %i.e, ptr %i.f, align 8, !tbaa !107
  store ptr %i.e, ptr %i.e, align 8, !tbaa !108
  %i.g = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !107
  store ptr %i.g, ptr %i.g, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !123
  %i.j = getelementptr i8, ptr %0, i64 96
  store ptr %i.g, ptr %i.j, align 8, !tbaa !116
  %i.k = tail call ptr @rb_st_init_numtable() #21
  %i.l = getelementptr i8, ptr %0, i64 128
  store ptr %i.k, ptr %i.l, align 8, !tbaa !115
  %i.m = load i64, ptr @rb_cRactorPort, align 8, !tbaa !57
  %i.n = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.m, i64 noundef 16, ptr noundef nonnull @ractor_port_data_type) #21 ; 4 uses
  %i.o = tail call i64 @rb_obj_freeze(i64 noundef %i.n) #21 ; 0 uses
  %i.p = tail call fastcc i64 @ractor_port_init(i64 noundef %i.n, ptr noundef %0) ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 120
  store i64 %i.n, ptr %i.q, align 8, !tbaa !125
  %i.r = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !119
  %i.t = or i64 %i.s, 256
  store i64 %i.t, ptr %i.r, align 8, !tbaa !119
  %i.u = getelementptr i8, ptr %0, i64 168
  store i64 36, ptr %i.u, align 8, !tbaa !118
  %i.v = tail call ptr @rb_st_init_numtable() #21
  %i.w = getelementptr i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !126
  %i.x = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.x, align 8, !tbaa !127
  %i.y = getelementptr i8, ptr %0, i64 216
  tail call void @rb_thread_sched_init(ptr noundef %i.y, i1 noundef zeroext false) #21
  %i.z = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 192
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !107
  store ptr %i.z, ptr %i.z, align 8, !tbaa !108
  %i.ab = getelementptr i8, ptr %0, i64 200
  store i32 0, ptr %i.ab, align 8, !tbaa !109
  %i.ac = getelementptr i8, ptr %0, i64 204
  store i32 0, ptr %i.ac, align 4, !tbaa !110
  %i.ad = icmp eq i64 %1, 4
  br i1 %i.ad, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !57
  %i.ag = call ptr @rb_enc_get(i64 noundef %i.af) #21 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 20
  %.val.i = load i32, ptr %i.ah, align 4, !tbaa !128
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.b
  %i.ai = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ag) #25
  %.not3.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i, label %bb.c, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.b, %rb_enc_asciicompat.exit
  %i.aj = load i64, ptr @rb_eArgError, align 8, !tbaa !57
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !131
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.86, ptr noundef %.val) #22
  unreachable

bb.c:                                             ; preds = %rb_enc_asciicompat.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !57
  %i.am = call i64 @rb_str_new_frozen(i64 noundef %i.al) #21 ; 5 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !119 ; 3 uses
  %i.ap = or i64 %i.ao, 256
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !119
  %i.aq = icmp eq i64 %i.am, 0
  %i.ar = and i64 %i.am, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %rb_obj_gen_fields_p.exit.i.i, label %rb_type.exit.i.i.i

rb_type.exit.i.i.i:                               ; preds = %bb.c
  %i.au = trunc i64 %i.ao to i32
  %i.av = and i32 %i.au, 31
  switch i32 %i.av, label %rb_obj_gen_fields_p.exit.i.i [
    i32 0, label %rb_obj_set_shareable.exit
    i32 1, label %rb_obj_set_shareable.exit
    i32 2, label %rb_obj_set_shareable.exit
    i32 3, label %rb_obj_set_shareable.exit
    i32 26, label %rb_obj_set_shareable.exit
  ]

rb_obj_gen_fields_p.exit.i.i:                     ; preds = %rb_type.exit.i.i.i, %bb.c
  %i.aw = and i64 %i.ao, 578712547822141440
  %.not9.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not9.i.i, label %rb_obj_set_shareable.exit, label %bb.d

bb.d:                                             ; preds = %rb_obj_gen_fields_p.exit.i.i
  %i.ax = call i64 @rb_obj_fields(i64 noundef %i.am, i64 noundef 0) #21 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %rb_obj_set_shareable.exit, label %imemo_type_p.exit.i.i, !prof !132

imemo_type_p.exit.i.i:                            ; preds = %bb.d
  %i.bc = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !119 ; 2 uses
  %i.be = and i64 %i.bd, 61471
  %.not.i.i = icmp eq i64 %i.be, 53274
  br i1 %.not.i.i, label %bb.e, label %rb_obj_set_shareable.exit

bb.e:                                             ; preds = %imemo_type_p.exit.i.i
  %i.bf = or i64 %i.bd, 256
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !119
  br label %rb_obj_set_shareable.exit

rb_obj_set_shareable.exit:                        ; preds = %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_obj_gen_fields_p.exit.i.i, %bb.d, %imemo_type_p.exit.i.i, %bb.e
  store i64 %i.am, ptr %i.a, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %rb_obj_set_shareable.exit, %bb.a
  %i.bg = icmp eq i64 %2, 0
  %i.bh = and i64 %2, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rb_obj_set_shareable.exit16, label %rb_type.exit.i.i.i11

rb_type.exit.i.i.i11:                             ; preds = %bb.f
  %i.bk = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !119 ; 3 uses
  %i.bm = or i64 %i.bl, 256
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !119
  %i.bn = trunc i64 %i.bl to i32
  %i.bo = and i32 %i.bn, 31
  switch i32 %i.bo, label %rb_obj_gen_fields_p.exit.i.i12 [
    i32 0, label %rb_obj_set_shareable.exit16
    i32 1, label %rb_obj_set_shareable.exit16
    i32 2, label %rb_obj_set_shareable.exit16
    i32 3, label %rb_obj_set_shareable.exit16
    i32 26, label %rb_obj_set_shareable.exit16
  ]

rb_obj_gen_fields_p.exit.i.i12:                   ; preds = %rb_type.exit.i.i.i11
  %i.bp = and i64 %i.bl, 578712547822141440
  %.not9.i.i13 = icmp eq i64 %i.bp, 0
  br i1 %.not9.i.i13, label %rb_obj_set_shareable.exit16, label %bb.g

bb.g:                                             ; preds = %rb_obj_gen_fields_p.exit.i.i12
  %i.bq = call i64 @rb_obj_fields(i64 noundef %2, i64 noundef 0) #21 ; 3 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i64 %i.bq, 7
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = or i1 %i.br, %i.bt
  br i1 %i.bu, label %rb_obj_set_shareable.exit16, label %imemo_type_p.exit.i.i14, !prof !132

imemo_type_p.exit.i.i14:                          ; preds = %bb.g
  %i.bv = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !119 ; 2 uses
  %i.bx = and i64 %i.bw, 61471
  %.not.i.i15 = icmp eq i64 %i.bx, 53274
  br i1 %.not.i.i15, label %bb.h, label %rb_obj_set_shareable.exit16

bb.h:                                             ; preds = %imemo_type_p.exit.i.i14
  %i.by = or i64 %i.bw, 256
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !119
  br label %rb_obj_set_shareable.exit16

rb_obj_set_shareable.exit16:                      ; preds = %bb.h, %imemo_type_p.exit.i.i14, %bb.g, %rb_obj_gen_fields_p.exit.i.i12, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %rb_type.exit.i.i.i11, %bb.f
  %i.bz = getelementptr i8, ptr %0, i64 344
  store i64 %2, ptr %i.bz, align 8, !tbaa !83
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !57
  %i.cb = getelementptr i8, ptr %0, i64 336
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_atexit(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call fastcc void @ractor_atexit(ptr noundef %.0.i, i64 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_atexit(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.b) #21
  %i.c = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %ractor_lock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.e = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr i8, ptr %i.f, i64 448
  store i8 1, ptr %i.g, align 8, !tbaa !47
  br label %ractor_lock_self.exit.i

ractor_lock_self.exit.i:                          ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ractor_lock_self.exit.i
  %i.j = ptrtoint ptr %0 to i64
  %i.k = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.i, ptr noundef nonnull @ractor_free_all_ports_i, i64 noundef %i.j) #21 ; 0 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !115
  tail call void @rb_st_free_table(ptr noundef %i.l) #21
  store ptr null, ptr %i.h, align 8, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ractor_lock_self.exit.i
  %i.m = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116  ; 5 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %ractor_free_all_ports.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not12.i.i.i, label %ractor_queue_free.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.pn.in13.i.i.i = phi ptr [ %.pn.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.d ] ; 6 uses
  %.09.i.i.i = getelementptr i8, ptr %.pn.in13.i.i.i, i64 -40
  %.pn.i.i.i = load ptr, ptr %.pn.in13.i.i.i, align 8, !tbaa !111 ; 4 uses
  %i.p = getelementptr i8, ptr %.pn.in13.i.i.i, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = getelementptr i8, ptr %.pn.i.i.i, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !112
  store ptr %.pn.i.i.i, ptr %i.q, align 8, !tbaa !111
  store ptr %.pn.in13.i.i.i, ptr %i.p, align 8, !tbaa !112
  store ptr %.pn.in13.i.i.i, ptr %.pn.in13.i.i.i, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.09.i.i.i) #21
  %.not.i.i19.i = icmp eq ptr %.pn.i.i.i, %i.n
  br i1 %.not.i.i19.i, label %ractor_queue_free.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !117

ractor_queue_free.exit.i.i:                       ; preds = %.lr.ph.i.i.i, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #21
  store ptr null, ptr %i.m, align 8, !tbaa !116
  br label %ractor_free_all_ports.exit.i

ractor_free_all_ports.exit.i:                     ; preds = %ractor_queue_free.exit.i.i, %bb.c
  %i.s = getelementptr i8, ptr %0, i64 168
  store i64 %1, ptr %i.s, align 8, !tbaa !118
  %i.t = getelementptr i8, ptr %0, i64 176
  store i8 %i.a, ptr %i.t, align 8, !tbaa !133
  %i.u = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i20.i, label %ractor_unlock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i21.i

rb_ec_ractor_ptr.exit.i.i21.i:                    ; preds = %ractor_free_all_ports.exit.i
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %.val.i.i22.i = load ptr, ptr %i.v, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.w = getelementptr i8, ptr %.val.i.i22.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr i8, ptr %i.x, i64 448
  store i8 0, ptr %i.y, align 8, !tbaa !47
  br label %ractor_unlock_self.exit.i

ractor_unlock_self.exit.i:                        ; preds = %rb_ec_ractor_ptr.exit.i.i21.i, %ractor_free_all_ports.exit.i
  tail call void @rb_native_mutex_unlock(ptr noundef %i.b) #21
  %..i.i = select i1 %2, i64 3729, i64 3745
  %i.z = tail call i64 @rb_id2sym(i64 noundef %..i.i) #21
  %i.aa = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %.not2.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not2.i, label %ractor_notify_exit.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ractor_unlock_self.exit.i, %.lr.ph.i
  %.pn.in3.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %i.ab, %ractor_unlock_self.exit.i ] ; 4 uses
  %.018.i = getelementptr i8, ptr %.pn.in3.i, i64 -16 ; 2 uses
  %.pn.i = load ptr, ptr %.pn.in3.i, align 8, !tbaa !111 ; 2 uses
  tail call fastcc void @ractor_send0(ptr noundef readonly %.018.i, i64 noundef %i.z, i64 noundef 0, i1 noundef zeroext false)
  %i.ac = getelementptr i8, ptr %.pn.in3.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 2 uses
  %i.ae = load ptr, ptr %.pn.in3.i, align 8, !tbaa !111 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !112
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.018.i) #21
  %.not.i = icmp eq ptr %.pn.i, %i.aa
  br i1 %.not.i, label %ractor_notify_exit.exit, label %.lr.ph.i, !llvm.loop !134

ractor_notify_exit.exit:                          ; preds = %.lr.ph.i, %ractor_unlock_self.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_atexit_exception(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  tail call fastcc void @ractor_atexit(ptr noundef %.0.i, i64 noundef %i.e, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_teardown(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %rb_vm_lock_enter.exit, label %rb_vm_lock_enter.exit.thread

rb_vm_lock_enter.exit.thread:                     ; preds = %rb_ec_ractor_ptr.exit
  %i.f = getelementptr i8, ptr %.0.i, i64 320
  br label %rb_vm_lock_enter.exit.split.us

rb_vm_lock_enter.exit:                            ; preds = %rb_ec_ractor_ptr.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %i.g = icmp eq ptr %.pre, null
  %i.h = getelementptr i8, ptr %.0.i, i64 320     ; 2 uses
  br i1 %i.g, label %bb.c, label %rb_vm_lock_enter.exit.split.us

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit.thread, %rb_vm_lock_enter.exit
  %i.i = phi ptr [ %i.f, %rb_vm_lock_enter.exit.thread ], [ %i.h, %rb_vm_lock_enter.exit ]
  store ptr null, ptr %i.i, align 8, !tbaa !120
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.c, %rb_vm_lock_enter.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  store ptr null, ptr %i.h, align 8, !tbaa !120
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_receive_parameters(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 120
  %i.f = getelementptr i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %ractor_receive.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %ractor_receive.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %ractor_receive.exit ] ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = inttoptr i64 %.val to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ] ; 5 uses
  %i.l = call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i, ptr noundef readonly %i.i) ; 2 uses
  %.not13.i = icmp eq i64 %i.l, 36
  br i1 %.not13.i, label %.lr.ph.i.preheader, label %ractor_receive.exit

.lr.ph.i.preheader:                               ; preds = %rb_ec_ractor_ptr.exit.i
  %i.m = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.n = getelementptr i8, ptr %.0.i.i, i64 128   ; 2 uses
  %i.o = getelementptr i8, ptr %.0.i.i, i64 56    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %ractor_try_receive.exit
  call fastcc void @ractor_wait_receive(ptr noundef nonnull %0, ptr noundef %.0.i.i)
  %.val14.i = load i64, ptr %i.m, align 8, !tbaa !136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !115  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i.i6, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %.val14.i, ptr noundef nonnull %i.c) #21
  %.not8.i.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !138  ; 7 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !123, !range !77, !noundef !25
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @ractor_delete_port(ptr noundef nonnull %.0.i.i, i64 noundef %.val14.i, i1 noundef zeroext false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.x = load i64, ptr @rb_eRactorClosedError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.76) #22
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !108  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i, label %ractor_queue_deq.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !111 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !112
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !111
  %i.ad = getelementptr i8, ptr %i.y, i64 -40
  br label %ractor_queue_deq.exit.i

ractor_queue_deq.exit.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.ad, %bb.i ], [ null, %bb.h ] ; 6 uses
  %i.ae = load i8, ptr %i.s, align 8, !tbaa !123, !range !77, !noundef !25
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %ractor_queue_deq.exit.i
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.val.i8 = load i64, ptr %i.m, align 8, !tbaa !136
  call void @rb_native_mutex_lock(ptr noundef %i.o) #21
  %i.ai = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i7.i, label %ractor_lock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.ak = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.am = getelementptr i8, ptr %i.al, i64 448
  store i8 1, ptr %i.am, align 8, !tbaa !47
  br label %ractor_lock_self.exit.i

ractor_lock_self.exit.i:                          ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %bb.k
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.val.i8, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.an = call i32 @rb_st_delete(ptr noundef %.val.i9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %.not.i8.i = icmp eq i32 %i.an, 0
  br i1 %.not.i8.i, label %ractor_delete_port_locked.exit16.i, label %bb.l

bb.l:                                             ; preds = %ractor_lock_self.exit.i
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !138 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108 ; 2 uses
  %.not12.i.i9.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not12.i.i9.i, label %ractor_queue_free.exit.i15.i, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.l, %.lr.ph.i.i10.i
  %.pn.in13.i.i11.i = phi ptr [ %.pn.i.i13.i, %.lr.ph.i.i10.i ], [ %i.ap, %bb.l ] ; 6 uses
  %.09.i.i12.i = getelementptr i8, ptr %.pn.in13.i.i11.i, i64 -40
  %.pn.i.i13.i = load ptr, ptr %.pn.in13.i.i11.i, align 8, !tbaa !111 ; 4 uses
  %i.aq = getelementptr i8, ptr %.pn.in13.i.i11.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.as = getelementptr i8, ptr %.pn.i.i13.i, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !112
  store ptr %.pn.i.i13.i, ptr %i.ar, align 8, !tbaa !111
  store ptr %.pn.in13.i.i11.i, ptr %i.aq, align 8, !tbaa !112
  store ptr %.pn.in13.i.i11.i, ptr %.pn.in13.i.i11.i, align 8, !tbaa !111
  call void @ruby_xfree(ptr noundef %.09.i.i12.i) #21
  %.not.i.i14.i = icmp eq ptr %.pn.i.i13.i, %i.ao
  br i1 %.not.i.i14.i, label %ractor_queue_free.exit.i15.i, label %.lr.ph.i.i10.i, !llvm.loop !117

ractor_queue_free.exit.i15.i:                     ; preds = %.lr.ph.i.i10.i, %bb.l
  call void @ruby_xfree(ptr noundef nonnull %i.ao) #21
  br label %ractor_delete_port_locked.exit16.i

ractor_delete_port_locked.exit16.i:               ; preds = %ractor_queue_free.exit.i15.i, %ractor_lock_self.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i17.i, label %ractor_delete_port.exit, label %rb_ec_ractor_ptr.exit.i.i18.i

rb_ec_ractor_ptr.exit.i.i18.i:                    ; preds = %ractor_delete_port_locked.exit16.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %.val.i.i19.i = load ptr, ptr %i.au, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.av = getelementptr i8, ptr %.val.i.i19.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ax = getelementptr i8, ptr %i.aw, i64 448
  store i8 0, ptr %i.ax, align 8, !tbaa !47
  br label %ractor_delete_port.exit

ractor_delete_port.exit:                          ; preds = %ractor_delete_port_locked.exit16.i, %rb_ec_ractor_ptr.exit.i.i18.i
  call void @rb_native_mutex_unlock(ptr noundef %i.o) #21
  br label %bb.m

bb.m:                                             ; preds = %ractor_delete_port.exit, %bb.j, %ractor_queue_deq.exit.i
  %.not.i7 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i7, label %ractor_try_receive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %.0.i.i.i, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !139 ; 2 uses
  %i.ba = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !142, !range !77, !noundef !25
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %ractor_basket_accept.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !143
  %i.bf = call fastcc i64 @ractor_make_remote_exception(i64 noundef %i.az, i64 noundef %i.be)
  call fastcc void @ractor_basket_free(ptr noundef nonnull %.0.i.i.i)
  call void @rb_exc_raise(i64 noundef %i.bf) #22
  unreachable

ractor_basket_accept.exit.i:                      ; preds = %bb.n
  call void @ruby_xfree(ptr noundef nonnull %.0.i.i.i) #21
  br label %ractor_try_receive.exit

ractor_try_receive.exit:                          ; preds = %bb.m, %ractor_basket_accept.exit.i
  %.0.i = phi i64 [ %i.az, %ractor_basket_accept.exit.i ], [ 36, %bb.m ] ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 36
  br i1 %.not.i, label %.lr.ph.i, label %ractor_receive.exit

ractor_receive.exit:                              ; preds = %ractor_try_receive.exit, %rb_ec_ractor_ptr.exit.i
  %.lcssa.i = phi i64 [ %i.l, %rb_ec_ractor_ptr.exit.i ], [ %.0.i, %ractor_try_receive.exit ]
  %i.bg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %.lcssa.i, ptr %i.bg, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !144
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_send_parameters(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !145
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.h, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #23
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.i = icmp sgt i64 %.0.i.i, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %RARRAY_LENINT.exit
  %i.j = getelementptr i8, ptr %1, i64 120
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = getelementptr i8, ptr %i.a, i64 32
  %wide.trip.count = and i64 %.0.i.i, 4294967295
  br label %bb.e

._crit_edge:                                      ; preds = %RARRAY_AREF.exit, %RARRAY_LENINT.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %RARRAY_AREF.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %RARRAY_AREF.exit ] ; 2 uses
  %.val = load i64, ptr %i.j, align 8, !tbaa !125
  %i.m = inttoptr i64 %.val to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = load i64, ptr %i.a, align 8, !tbaa !119
  %i.q = and i64 %i.p, 8192
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %bb.f, label %RARRAY_AREF.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !145
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i.i8 = phi ptr [ %i.r, %bb.f ], [ %i.k, %bb.e ]
  %i.s = getelementptr [8 x i8], ptr %.0.i.i8, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !57
  tail call fastcc void @ractor_send0(ptr noundef readonly %i.o, i64 noundef %i.t, i64 noundef 0, i1 noundef zeroext true)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !146
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #6 {
rb_ec_vm_ptr.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr i8, ptr %.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = icmp eq ptr %i.f, %i.j
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @rb_ractor_living_thread_num(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ractor_thread_list() local_unnamed_addr #0 {
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
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  %i.h = tail call i64 @rb_ary_new() #21          ; 2 uses
  %i.i = getelementptr i8, ptr %.0.i.i, i64 184   ; 3 uses
  %.07 = load ptr, ptr %i.i, align 8, !tbaa !111  ; 2 uses
  %.not8 = icmp eq ptr %.07, %i.i
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rb_current_ractor.exit, %bb.e
  %.09 = phi ptr [ %.0, %bb.e ], [ %.07, %rb_current_ractor.exit ] ; 3 uses
  %i.j = getelementptr i8, ptr %.09, i64 248
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 3
  %i.m = icmp eq i8 %i.l, 3
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %.09, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !148
  %i.p = tail call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.o) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0 = load ptr, ptr %.09, align 8, !tbaa !111   ; 2 uses
  %.not = icmp eq ptr %.0, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.e, %rb_current_ractor.exit
  ret i64 %i.h
}

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_ractor_blocking_cnt_inc(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 352        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.b, 3
  br i1 %cond.i.i, label %bb.b, label %vm_ractor_blocking_cnt_inc.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

vm_ractor_blocking_cnt_inc.exit:                  ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !105
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_ractor_blocking_cnt_dec(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !105
  %i.d = getelementptr i8, ptr %1, i64 352        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106
  %cond.i = icmp eq i32 %i.e, 3
  br i1 %cond.i, label %bb.b, label %ractor_status_set.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

ractor_status_set.exit:                           ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !106
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_living_threads_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 1
  br i1 %.not.i, label %ractor_check_blocking.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = add i32 %i.e, 1
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %ractor_check_blocking.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_vm_lock_enter.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  %cond.i.i.i.i = icmp eq i32 %i.k, 3
  br i1 %cond.i.i.i.i, label %bb.e, label %rb_vm_ractor_blocking_cnt_inc.exit.i

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_inc.exit.i:             ; preds = %rb_vm_lock_enter.exit.i
  %i.l = getelementptr i8, ptr %i.h, i64 28       ; 2 uses
  store i32 2, ptr %i.j, align 8, !tbaa !106
  %i.m = load i32, ptr %i.l, align 4, !tbaa !105
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !105
  %i.o = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i8.i, label %bb.f, label %rb_vm_lock_leave.exit.i

bb.f:                                             ; preds = %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.f, %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %ractor_check_blocking.exit

ractor_check_blocking.exit:                       ; preds = %bb.a, %bb.b, %rb_vm_lock_leave.exit.i
  call void @rb_threadptr_remove(ptr noundef %1) #21
  %i.p = load i32, ptr %i.b, align 8, !tbaa !109
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.n

bb.g:                                             ; preds = %ractor_check_blocking.exit
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 3 uses
  %i.t = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i10, label %bb.h, label %rb_vm_lock.exit.i

bb.h:                                             ; preds = %bb.g
  call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit.i

rb_vm_lock.exit.i:                                ; preds = %bb.h, %bb.g
  %i.u = getelementptr i8, ptr %0, i64 360
  %i.v = getelementptr i8, ptr %0, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !112
  store ptr %i.x, ptr %i.w, align 8, !tbaa !111
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !89  ; 3 uses
  %i.ab = icmp ult i32 %i.aa, 3
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %rb_vm_lock.exit.i
  %i.ac = getelementptr i8, ptr %i.s, i64 152
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !151, !range !77, !noundef !25
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.s, i64 104
  call void @rb_native_cond_signal(ptr noundef %i.af) #21
  %.pre.i = load i32, ptr %i.z, align 8, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %rb_vm_lock.exit.i
  %i.ag = phi i32 [ %.pre.i, %bb.j ], [ %i.aa, %bb.i ], [ %i.aa, %rb_vm_lock.exit.i ]
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !89
  %i.ai = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  call void @rb_gc_ractor_cache_free(ptr noundef %i.aj) #21
  store ptr null, ptr %i.ai, align 8, !tbaa !86
  %i.ak = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.al, 3
  br i1 %cond.i.i, label %bb.l, label %ractor_status_set.exit.i

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

ractor_status_set.exit.i:                         ; preds = %bb.k
  store i32 3, ptr %i.ak, align 8, !tbaa !106
  %i.am = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i8.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i.i8.i11, label %bb.m, label %vm_remove_ractor.exit

bb.m:                                             ; preds = %ractor_status_set.exit.i
  call void @rb_vm_unlock_body() #21
  br label %vm_remove_ractor.exit

bb.n:                                             ; preds = %ractor_check_blocking.exit
  %i.an = getelementptr i8, ptr %0, i64 56        ; 2 uses
  call void @rb_native_mutex_lock(ptr noundef %i.an) #21
  %i.ao = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i12 = icmp eq ptr %i.ao, null
  br i1 %.not.i12, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.aq = getelementptr i8, ptr %.val.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.as = getelementptr i8, ptr %i.ar, i64 448
  store i8 1, ptr %i.as, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.n, %rb_ec_ractor_ptr.exit.i
  %i.at = getelementptr i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !112 ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !112
  store ptr %i.av, ptr %i.au, align 8, !tbaa !111
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !109
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.b, align 8, !tbaa !109
  %i.az = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i13, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i14

rb_ec_ractor_ptr.exit.i14:                        ; preds = %ractor_lock.exit
  %i.ba = getelementptr i8, ptr %i.az, i64 48
  %.val.i15 = load ptr, ptr %i.ba, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.bb = getelementptr i8, ptr %.val.i15, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr i8, ptr %i.bc, i64 448
  store i8 0, ptr %i.bd, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %ractor_lock.exit, %rb_ec_ractor_ptr.exit.i14
  call void @rb_native_mutex_unlock(ptr noundef %i.an) #21
  br label %vm_remove_ractor.exit

vm_remove_ractor.exit:                            ; preds = %bb.m, %ractor_status_set.exit.i, %ractor_unlock.exit
  ret void
}

declare void @rb_threadptr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_blocking_threads_inc(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ractor_check_blocking.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = add i32 %i.e, 1
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %ractor_check_blocking.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_vm_lock_enter.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  %cond.i.i.i.i = icmp eq i32 %i.k, 3
  br i1 %cond.i.i.i.i, label %bb.e, label %rb_vm_ractor_blocking_cnt_inc.exit.i

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_inc.exit.i:             ; preds = %rb_vm_lock_enter.exit.i
  %i.l = getelementptr i8, ptr %i.h, i64 28       ; 2 uses
  store i32 2, ptr %i.j, align 8, !tbaa !106
  %i.m = load i32, ptr %i.l, align 4, !tbaa !105
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !105
  %i.o = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i8.i, label %bb.f, label %rb_vm_lock_leave.exit.i

bb.f:                                             ; preds = %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.f, %rb_vm_ractor_blocking_cnt_inc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %ractor_check_blocking.exit

ractor_check_blocking.exit:                       ; preds = %bb.a, %bb.b, %rb_vm_lock_leave.exit.i
  %i.p = getelementptr i8, ptr %0, i64 204        ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_blocking_threads_dec(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr i8, ptr %0, i64 204        ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110  ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %rb_vm_lock_enter.exit

bb.c:                                             ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 28       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !105
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !105
  %i.m = load i32, ptr %i.j, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.m, 3
  br i1 %cond.i.i, label %bb.d, label %rb_vm_ractor_blocking_cnt_dec.exit

bb.d:                                             ; preds = %rb_vm_lock_enter.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_dec.exit:               ; preds = %rb_vm_lock_enter.exit
  store i32 1, ptr %i.j, align 8, !tbaa !106
  %i.n = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i5, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %rb_vm_ractor_blocking_cnt_dec.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_ractor_blocking_cnt_dec.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre = load i32, ptr %i.d, align 4, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %rb_vm_lock_leave.exit, %bb.a
  %i.o = phi i32 [ %.pre, %rb_vm_lock_leave.exit ], [ %i.e, %bb.a ]
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.d, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_vm_barrier_interrupt_running_thread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.a) #21
  %i.b = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.d = getelementptr i8, ptr %.val.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr i8, ptr %i.e, i64 448
  store i8 1, ptr %i.f, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.g = getelementptr i8, ptr %0, i64 352
  %.val = load i32, ptr %i.g, align 8, !tbaa !106
  %i.h = icmp eq i32 %.val, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %ractor_lock.exit
  %i.i = getelementptr i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = atomicrmw volatile or ptr %i.k, i32 32 seq_cst, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %ractor_lock.exit
  %i.m = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i7, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i8

rb_ec_ractor_ptr.exit.i8:                         ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.o = getelementptr i8, ptr %.val.i9, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr i8, ptr %i.p, i64 448
  store i8 0, ptr %i.q, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %bb.d, %rb_ec_ractor_ptr.exit.i8
  tail call void @rb_native_mutex_unlock(ptr noundef %i.a) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_interrupt_main_thread(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 248
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 3
  %.not6 = icmp eq i8 %i.e, 3
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = atomicrmw volatile or ptr %i.h, i32 16 seq_cst, align 4 ; 0 uses
  tail call void @rb_threadptr_interrupt(ptr noundef nonnull %i.b) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @rb_threadptr_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_terminate_all() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150 ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit

rb_vm_lock.exit:                                  ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8        ; 6 uses
  %i.h = getelementptr i8, ptr %i.c, i64 24       ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !89
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.preheader.i, label %ractor_terminal_interrupt_all.exit

.preheader.i:                                     ; preds = %rb_vm_lock.exit
  %.pn10.i = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.not11.i = icmp eq ptr %.pn10.i, %i.g
  br i1 %.not11.i, label %ractor_terminal_interrupt_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %rb_ractor_terminate_interrupt_main_thread.exit.i
  %.pn12.i = phi ptr [ %.pn.i, %rb_ractor_terminate_interrupt_main_thread.exit.i ], [ %.pn10.i, %.preheader.i ] ; 3 uses
  %.0.i = getelementptr i8, ptr %.pn12.i, i64 -360
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !147
  %.not9.i = icmp eq ptr %.0.i, %i.k
  br i1 %.not9.i, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.pn12.i, i64 -40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120  ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.m, null
  br i1 %.not.i.i15, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 248
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 3
  %.not6.i.i = icmp eq i8 %i.p, 3
  br i1 %.not6.i.i, label %rb_ractor_terminate_interrupt_main_thread.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = atomicrmw volatile or ptr %i.s, i32 16 seq_cst, align 4 ; 0 uses
  tail call void @rb_threadptr_interrupt(ptr noundef nonnull %i.m) #21
  br label %rb_ractor_terminate_interrupt_main_thread.exit.i

rb_ractor_terminate_interrupt_main_thread.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %.pn.i = load ptr, ptr %.pn12.i, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.g
  br i1 %.not.i, label %ractor_terminal_interrupt_all.exit, label %.lr.ph.i, !llvm.loop !154

ractor_terminal_interrupt_all.exit:               ; preds = %rb_ractor_terminate_interrupt_main_thread.exit.i, %rb_vm_lock.exit, %.preheader.i
  %i.u = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i16, label %bb.f, label %rb_vm_unlock.exit

bb.f:                                             ; preds = %ractor_terminal_interrupt_all.exit
  tail call void @rb_vm_unlock_body() #21
  br label %rb_vm_unlock.exit

rb_vm_unlock.exit:                                ; preds = %ractor_terminal_interrupt_all.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !11
  tail call void @rb_thread_terminate_all(ptr noundef %.val.i) #21
  %i.y = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i17 = icmp eq ptr %i.y, null
  br i1 %.not.i.i17, label %bb.g, label %rb_vm_lock.exit18

bb.g:                                             ; preds = %rb_vm_unlock.exit
  tail call void @rb_vm_lock_body() #21
  br label %rb_vm_lock.exit18

rb_vm_lock.exit18:                                ; preds = %rb_vm_unlock.exit, %bb.g
  %i.z = load i32, ptr %i.h, align 8, !tbaa !89
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %rb_vm_lock.exit18
  %i.ab = getelementptr i8, ptr %i.c, i64 152     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.e, i64 352     ; 5 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 28      ; 4 uses
  %i.ae = getelementptr i8, ptr %i.e, i64 312     ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 104
  %i.ag = getelementptr i8, ptr %i.c, i64 456     ; 2 uses
  store i8 1, ptr %i.ab, align 8, !tbaa !151
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !106
  %cond.i.i.i49 = icmp eq i32 %i.ah, 3
  br i1 %cond.i.i.i49, label %._crit_edge50, label %rb_vm_ractor_blocking_cnt_inc.exit

._crit_edge50:                                    ; preds = %.backedge, %.lr.ph38
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_inc.exit:               ; preds = %.lr.ph38, %.backedge
  store i32 2, ptr %i.ac, align 8, !tbaa !106
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !105
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !105
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !152
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %.val14 = load ptr, ptr %i.al, align 8, !tbaa !11
  call void @rb_del_running_thread(ptr noundef %.val14) #21
  call void @rb_vm_cond_timedwait(ptr noundef nonnull %i.c, ptr noundef %i.af, i64 noundef 1000) #21
  %i.am = load i8, ptr %i.ag, align 8, !tbaa !155, !range !77, !noundef !25
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = load ptr, ptr @ruby_single_main_ractor, align 8
  %i.ap = icmp eq ptr %i.ao, null
  %or.cond = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %rb_vm_ractor_blocking_cnt_inc.exit, %rb_vm_lock_enter_nb.exit
  %i.aq = phi ptr [ %i.ar, %rb_vm_lock_enter_nb.exit ], [ null, %rb_vm_ractor_blocking_cnt_inc.exit ] ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i19, label %rb_vm_unlock.exit20, label %rb_vm_unlock.exit20.thread

rb_vm_unlock.exit20.thread:                       ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %rb_vm_lock_enter_nb.exit

rb_vm_unlock.exit20:                              ; preds = %.lr.ph.split
  call void @rb_vm_unlock_body() #21
  %.pr = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %.not.i.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i.i21, label %bb.h, label %rb_vm_lock_enter_nb.exit

bb.h:                                             ; preds = %rb_vm_unlock.exit20
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.b) #21
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  br label %rb_vm_lock_enter_nb.exit

rb_vm_lock_enter_nb.exit:                         ; preds = %rb_vm_unlock.exit20.thread, %rb_vm_unlock.exit20, %bb.h
  %i.ar = phi ptr [ %i.aq, %rb_vm_unlock.exit20.thread ], [ %.pr, %rb_vm_unlock.exit20 ], [ %.pre, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.as = load i8, ptr %i.ag, align 8, !tbaa !155, !range !77, !noundef !25
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.lr.ph.split, label %._crit_edge, !llvm.loop !156

._crit_edge:                                      ; preds = %rb_vm_lock_enter_nb.exit, %rb_vm_ractor_blocking_cnt_inc.exit
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !152
  %i.av = getelementptr i8, ptr %i.au, i64 48
  %.val = load ptr, ptr %i.av, align 8, !tbaa !11
  call void @rb_add_running_thread(ptr noundef %.val) #21
  %i.aw = load i32, ptr %i.ad, align 4, !tbaa !105
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.ad, align 4, !tbaa !105
  %i.ay = load i32, ptr %i.ac, align 8, !tbaa !106
  %cond.i.i = icmp eq i32 %i.ay, 3
  br i1 %cond.i.i, label %bb.i, label %rb_vm_ractor_blocking_cnt_dec.exit

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

rb_vm_ractor_blocking_cnt_dec.exit:               ; preds = %._crit_edge
  store i32 1, ptr %i.ac, align 8, !tbaa !106
  %i.az = load i32, ptr %i.h, align 8, !tbaa !89
  %i.ba = icmp ugt i32 %i.az, 1
  br i1 %i.ba, label %.preheader.i22, label %._crit_edge39

.preheader.i22:                                   ; preds = %rb_vm_ractor_blocking_cnt_dec.exit
  %.pn10.i23 = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.not11.i24 = icmp eq ptr %.pn10.i23, %i.g
  br i1 %.not11.i24, label %.backedge, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22, %rb_ractor_terminate_interrupt_main_thread.exit.i31
  %.pn12.i26 = phi ptr [ %.pn.i32, %rb_ractor_terminate_interrupt_main_thread.exit.i31 ], [ %.pn10.i23, %.preheader.i22 ] ; 3 uses
  %.0.i27 = getelementptr i8, ptr %.pn12.i26, i64 -360
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !147
  %.not9.i28 = icmp eq ptr %.0.i27, %i.bb
  br i1 %.not9.i28, label %rb_ractor_terminate_interrupt_main_thread.exit.i31, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i25
  %i.bc = getelementptr i8, ptr %.pn12.i26, i64 -40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i29, label %rb_ractor_terminate_interrupt_main_thread.exit.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %i.bd, i64 248
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = and i8 %i.bf, 3
  %.not6.i.i30 = icmp eq i8 %i.bg, 3
  br i1 %.not6.i.i30, label %rb_ractor_terminate_interrupt_main_thread.exit.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %i.bd, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !153
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = atomicrmw volatile or ptr %i.bj, i32 16 seq_cst, align 4 ; 0 uses
  call void @rb_threadptr_interrupt(ptr noundef nonnull %i.bd) #21
  br label %rb_ractor_terminate_interrupt_main_thread.exit.i31

rb_ractor_terminate_interrupt_main_thread.exit.i31: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i25
  %.pn.i32 = load ptr, ptr %.pn12.i26, align 8, !tbaa !111 ; 2 uses
  %.not.i33 = icmp eq ptr %.pn.i32, %i.g
  br i1 %.not.i33, label %ractor_terminal_interrupt_all.exit34.loopexit, label %.lr.ph.i25, !llvm.loop !154

ractor_terminal_interrupt_all.exit34.loopexit:    ; preds = %rb_ractor_terminate_interrupt_main_thread.exit.i31
  %.pre42 = load i32, ptr %i.h, align 8, !tbaa !89
  %i.bl = icmp ugt i32 %.pre42, 1
  br i1 %i.bl, label %.backedge, label %._crit_edge39

.backedge:                                        ; preds = %.preheader.i22, %ractor_terminal_interrupt_all.exit34.loopexit
  store i8 1, ptr %i.ab, align 8, !tbaa !151
  %i.bm = load i32, ptr %i.ac, align 8, !tbaa !106
  %cond.i.i.i = icmp eq i32 %i.bm, 3
  br i1 %cond.i.i.i, label %._crit_edge50, label %rb_vm_ractor_blocking_cnt_inc.exit, !llvm.loop !158

._crit_edge39:                                    ; preds = %rb_vm_ractor_blocking_cnt_dec.exit, %ractor_terminal_interrupt_all.exit34.loopexit, %rb_vm_lock.exit18
  %i.bn = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i35 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i35, label %bb.m, label %rb_vm_unlock.exit36

bb.m:                                             ; preds = %._crit_edge39
  call void @rb_vm_unlock_body() #21
  br label %rb_vm_unlock.exit36

rb_vm_unlock.exit36:                              ; preds = %._crit_edge39, %bb.m
  ret void
}

declare void @rb_thread_terminate_all(ptr noundef) local_unnamed_addr #1

declare void @rb_del_running_thread(ptr noundef) local_unnamed_addr #1

declare void @rb_vm_cond_timedwait(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_add_running_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_main_ractor_ec(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Ractor() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !57
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.12, i64 noundef %i.a) #21 ; 2 uses
  store i64 %i.b, ptr @rb_cRactor, align 8, !tbaa !57
  tail call void @rb_undef_alloc_func(i64 noundef %i.b) #21
  %i.c = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !57
  %i.e = tail call i64 @rb_define_class_under(i64 noundef %i.c, ptr noundef nonnull @.str.13, i64 noundef %i.d) #21 ; 2 uses
  store i64 %i.e, ptr @rb_eRactorError, align 8, !tbaa !57
  %i.f = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.g = tail call i64 @rb_define_class_under(i64 noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef %i.e) #21
  store i64 %i.g, ptr @rb_eRactorIsolationError, align 8, !tbaa !57
  %i.h = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.i = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  %i.j = tail call i64 @rb_define_class_under(i64 noundef %i.h, ptr noundef nonnull @.str.15, i64 noundef %i.i) #21
  store i64 %i.j, ptr @rb_eRactorRemoteError, align 8, !tbaa !57
  %i.k = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.l = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  %i.m = tail call i64 @rb_define_class_under(i64 noundef %i.k, ptr noundef nonnull @.str.16, i64 noundef %i.l) #21
  store i64 %i.m, ptr @rb_eRactorMovedError, align 8, !tbaa !57
  %i.n = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.o = load i64, ptr @rb_eStopIteration, align 8, !tbaa !57
  %i.p = tail call i64 @rb_define_class_under(i64 noundef %i.n, ptr noundef nonnull @.str.17, i64 noundef %i.o) #21
  store i64 %i.p, ptr @rb_eRactorClosedError, align 8, !tbaa !57
  %i.q = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.r = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  %i.s = tail call i64 @rb_define_class_under(i64 noundef %i.q, ptr noundef nonnull @.str.18, i64 noundef %i.r) #21
  store i64 %i.s, ptr @rb_eRactorUnsafeError, align 8, !tbaa !57
  %i.t = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.u = load i64, ptr @rb_cBasicObject, align 8, !tbaa !57
  %i.v = tail call i64 @rb_define_class_under(i64 noundef %i.t, ptr noundef nonnull @.str.19, i64 noundef %i.u) #21 ; 2 uses
  store i64 %i.v, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_undef_alloc_func(i64 noundef %i.v) #21
  %i.w = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.20, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.x = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.21, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.y = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.y, ptr noundef nonnull @.str.22, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.z = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.z, ptr noundef nonnull @.str.23, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.aa = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.24, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ab = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.25, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ac = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.26, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ad = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.27, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.ae = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.28, ptr noundef nonnull @ractor_moved_missing, i32 noundef -1) #21
  %i.af = load i64, ptr @rb_cRactor, align 8, !tbaa !57
  %i.ag = load i64, ptr @rb_cObject, align 8, !tbaa !57
  %i.ah = tail call i64 @rb_define_class_under(i64 noundef %i.af, ptr noundef nonnull @.str.101, i64 noundef %i.ag) #21 ; 2 uses
  store i64 %i.ah, ptr @rb_cRactorPort, align 8, !tbaa !57
  tail call void @rb_define_alloc_func(i64 noundef %i.ah, ptr noundef nonnull @ractor_port_alloc) #21
  %i.ai = load i64, ptr @rb_cRactorPort, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.102, ptr noundef nonnull @ractor_port_initialize, i32 noundef 0) #21
  %i.aj = load i64, ptr @rb_cRactorPort, align 8, !tbaa !57
  tail call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.103, ptr noundef nonnull @ractor_port_initialize_copy, i32 noundef 1) #21
  ret void
}

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @ractor_moved_missing(i32 %0, ptr readnone captures(none) %1, i64 %2) #8 {
bb.a:
  %i.a = load i64, ptr @rb_eRactorMovedError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.100) #22
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_dump() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  %.pn10 = load ptr, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %.not11 = icmp eq ptr %.pn10, %i.b
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.pn12 = phi ptr [ %.pn10, %.lr.ph ], [ %.pn, %bb.e ] ; 4 uses
  %.0 = getelementptr i8, ptr %.pn12, i64 -360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %.not9 = icmp eq ptr %.0, %i.d
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.pn12, i64 -8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.pn12, i64 -352
  %i.i = load i32, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.k = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.builtin_inline_class_378, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %i.i, ptr noundef nonnull %switch.load) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %switch.lookup
  %.pn = load ptr, ptr %.pn12, align 8, !tbaa !111 ; 2 uses
  %.not = icmp eq ptr %.pn, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !160

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_ractor_stdin() local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i1 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i1, i64 48
  %.val.i.i2 = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i2, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.val.i.i2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.p, %bb.c ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 408
  br label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit, %rb_current_ractor.exit
  %.0.in = phi ptr [ %i.q, %rb_current_ractor.exit ], [ @rb_stdin, %rb_ractor_main_p.exit ], [ @rb_stdin, %bb.a ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !57
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_ractor_stdout() local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i1 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i1, i64 48
  %.val.i.i2 = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i2, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.val.i.i2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.p, %bb.c ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 416
  br label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit, %rb_current_ractor.exit
  %.0.in = phi ptr [ %i.q, %rb_current_ractor.exit ], [ @rb_stdout, %rb_ractor_main_p.exit ], [ @rb_stdout, %bb.a ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !57
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_ractor_stderr() local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i1 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i1, i64 48
  %.val.i.i2 = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i2, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.val.i.i2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.p, %bb.c ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 424
  br label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit, %rb_current_ractor.exit
  %.0.in = phi ptr [ %i.q, %rb_current_ractor.exit ], [ @rb_stderr, %rb_ractor_main_p.exit ], [ @rb_stderr, %bb.a ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !57
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ractor_stdin_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %rb_current_ractor.exit

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  store i64 %0, ptr @rb_stdin, align 8, !tbaa !57
  br label %rb_obj_write.exit

rb_current_ractor.exit:                           ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i3, i64 48
  %.val.i.i4 = load ptr, ptr %i.n, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.o = getelementptr i8, ptr %.val.i.i4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr i8, ptr %i.p, i64 408
  store i64 %0, ptr %i.r, align 8, !tbaa !57
  %i.s = icmp eq i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %rb_current_ractor.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %0) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %rb_current_ractor.exit, %rb_ractor_main_p.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ractor_stdout_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %rb_current_ractor.exit

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  store i64 %0, ptr @rb_stdout, align 8, !tbaa !57
  br label %rb_obj_write.exit

rb_current_ractor.exit:                           ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i3, i64 48
  %.val.i.i4 = load ptr, ptr %i.n, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.o = getelementptr i8, ptr %.val.i.i4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr i8, ptr %i.p, i64 416
  store i64 %0, ptr %i.r, align 8, !tbaa !57
  %i.s = icmp eq i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %rb_current_ractor.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %0) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %rb_current_ractor.exit, %rb_ractor_main_p.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ractor_stderr_set(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %rb_current_ractor.exit

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  store i64 %0, ptr @rb_stderr, align 8, !tbaa !57
  br label %rb_obj_write.exit

rb_current_ractor.exit:                           ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i3, i64 48
  %.val.i.i4 = load ptr, ptr %i.n, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.o = getelementptr i8, ptr %.val.i.i4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr i8, ptr %i.p, i64 424
  store i64 %0, ptr %i.r, align 8, !tbaa !57
  %i.s = icmp eq i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %rb_current_ractor.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %0) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %rb_current_ractor.exit, %rb_ractor_main_p.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef ptr @rb_ractor_hooks(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_ractor_targeted_hooks(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @rb_ractor_verify_shareable(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_obj_set_shareable(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = or i64 %i.b, 256
  store i64 %i.c, ptr %i.a, align 8, !tbaa !119
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_obj_gen_fields_p.exit.i, label %rb_type.exit.i.i

rb_type.exit.i.i:                                 ; preds = %bb.a
  %i.h = trunc i64 %i.b to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %rb_obj_gen_fields_p.exit.i [
    i32 0, label %rb_obj_set_shareable_no_assert.exit
    i32 1, label %rb_obj_set_shareable_no_assert.exit
    i32 2, label %rb_obj_set_shareable_no_assert.exit
    i32 3, label %rb_obj_set_shareable_no_assert.exit
    i32 26, label %rb_obj_set_shareable_no_assert.exit
  ]

rb_obj_gen_fields_p.exit.i:                       ; preds = %rb_type.exit.i.i, %bb.a
  %i.j = and i64 %i.b, 578712547822141440
  %.not9.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i, label %rb_obj_set_shareable_no_assert.exit, label %bb.b

bb.b:                                             ; preds = %rb_obj_gen_fields_p.exit.i
  %i.k = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %rb_obj_set_shareable_no_assert.exit, label %imemo_type_p.exit.i, !prof !132

imemo_type_p.exit.i:                              ; preds = %bb.b
  %i.p = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !119  ; 2 uses
  %i.r = and i64 %i.q, 61471
  %.not.i = icmp eq i64 %i.r, 53274
  br i1 %.not.i, label %bb.c, label %rb_obj_set_shareable_no_assert.exit

bb.c:                                             ; preds = %imemo_type_p.exit.i
  %i.s = or i64 %i.q, 256
  store i64 %i.s, ptr %i.p, align 8, !tbaa !119
  br label %rb_obj_set_shareable_no_assert.exit

rb_obj_set_shareable_no_assert.exit:              ; preds = %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_obj_gen_fields_p.exit.i, %bb.b, %imemo_type_p.exit.i, %bb.c
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_ractor_make_shareable(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @make_shareable_check_shareable, ptr %1, align 8, !tbaa !161
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @null_leave, ptr %i.a, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %1)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %rb_obj_traverse.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %rb_obj_traverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @mark_shareable, ptr %2, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = ptrtoint ptr %2 to i64
  %i.h = call i32 @rb_st_foreach(ptr noundef nonnull %i.d, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.g) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_obj_traverse.exit

rb_obj_traverse.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @make_shareable_check_shareable(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_set_shareable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !119
  %i.i = and i64 %i.h, 256
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %rb_obj_set_shareable.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @shareable_p_enter, ptr %1, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @null_leave, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %1)
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread47

rb_ractor_shareable_p.exit.thread47:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread45, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread45:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %rb_obj_set_shareable.exit

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @mark_shareable, ptr %2, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !166
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = ptrtoint ptr %2 to i64
  %i.q = call i32 @rb_st_foreach(ptr noundef nonnull %i.m, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.p) #21 ; 0 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.s = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.s, label %rb_obj_set_shareable.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread47
  %i.t = load i64, ptr %i.g, align 8, !tbaa !119  ; 9 uses
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 12
  br i1 %i.v, label %bb.e, label %rb_type.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.w = and i64 %i.t, 64
  %.not7.i = icmp eq i64 %i.w, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.g, i64 24
  %.pre51 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  %.pre52 = and i64 %.pre51, -2
  %.pre53 = inttoptr i64 %.pre52 to ptr           ; 2 uses
  br i1 %.not7.i, label %allow_frozen_shareable_p.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.pre53, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !167
  %i.z = and i64 %i.y, 256
  %.not.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.not.i, label %allow_frozen_shareable_p.exit, label %rb_type.exit

allow_frozen_shareable_p.exit:                    ; preds = %bb.e, %bb.f
  %i.aa = getelementptr i8, ptr %.pre53, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !167
  %i.ac = and i64 %i.ab, 128
  %.not26 = icmp eq i64 %i.ac, 0
  br i1 %.not26, label %bb.p, label %bb.g

bb.g:                                             ; preds = %allow_frozen_shareable_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ad = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i31 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i31, label %bb.h, label %rb_vm_lock_enter_nb.exit.i

bb.h:                                             ; preds = %bb.g
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.b) #21
end_hunk_0
begin_hunk_1_@rb_ractor_require:bb.a
  br i1 %i.ac, label %rb_obj_set_shareable.exit, label %imemo_type_p.exit.i.i, !prof !132

imemo_type_p.exit.i.i:                            ; preds = %bb.c
  %i.ad = inttoptr i64 %i.y to ptr                ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119 ; 2 uses
  %i.af = and i64 %i.ae, 61471
  %.not.i.i = icmp eq i64 %i.af, 53274
  br i1 %.not.i.i, label %bb.d, label %rb_obj_set_shareable.exit

bb.d:                                             ; preds = %imemo_type_p.exit.i.i
  %i.ag = or i64 %i.ae, 256
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !119
  br label %rb_obj_set_shareable.exit

rb_obj_set_shareable.exit:                        ; preds = %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_obj_gen_fields_p.exit.i.i, %bb.c, %imemo_type_p.exit.i.i, %bb.d
  %i.ah = getelementptr i8, ptr %i.o, i64 16
  %i.ai = tail call i64 @rb_get_path(i64 noundef %0) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr %i.c, ptr %i.e, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #21, !srcloc !200
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  store volatile i64 %i.ai, ptr %i.aj, align 8, !tbaa !57
  %i.ak = call i64 @rb_fstring(i64 noundef %i.ai) #21 ; 4 uses
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !57
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = and i64 %i.ak, 7
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = or i1 %i.al, %i.an
  br i1 %i.ao, label %rb_obj_write.exit, label %bb.e

bb.e:                                             ; preds = %rb_obj_set_shareable.exit
  call void @rb_gc_writebarrier(i64 noundef %i.h, i64 noundef %i.ak) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_obj_set_shareable.exit, %bb.e
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.aq = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i19, label %bb.f, label %rb_current_ractor.exit

bb.f:                                             ; preds = %rb_obj_write.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  store volatile ptr %i.as, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %.val.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %rb_obj_write.exit, %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.aq, %rb_obj_write.exit ], [ %i.av, %bb.g ], [ null, %bb.f ]
  %i.aw = load i64, ptr @rb_cRactorPort, align 8, !tbaa !57
  %i.ax = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.aw, i64 noundef 16, ptr noundef nonnull @ractor_port_data_type) #21 ; 7 uses
  %i.ay = call i64 @rb_obj_freeze(i64 noundef %i.ax) #21 ; 0 uses
  %i.az = call fastcc i64 @ractor_port_init(i64 noundef %i.ax, ptr noundef %.0.i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @make_shareable_check_shareable, ptr %2, align 8, !tbaa !161
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.ba, align 8, !tbaa !163
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = call fastcc i32 @obj_traverse_i(i64 noundef %i.ax, ptr noundef nonnull %2)
  %.not.i.i20 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i20, label %bb.h, label %rb_ractor_make_shareable.exit

bb.h:                                             ; preds = %rb_current_ractor.exit
  %i.bd = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bd, null
  br i1 %.not8.i.i, label %rb_ractor_make_shareable.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !166
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bf, align 4
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = call i32 @rb_st_foreach(ptr noundef nonnull %i.bd, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.bg) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %rb_ractor_make_shareable.exit

rb_ractor_make_shareable.exit:                    ; preds = %rb_current_ractor.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store i64 %i.ax, ptr %i.o, align 8, !tbaa !57
  %i.bi = icmp eq i64 %i.ax, 0
  %i.bj = and i64 %i.ax, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rb_obj_write.exit21, label %bb.j

bb.j:                                             ; preds = %rb_ractor_make_shareable.exit
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.ax) #21
  br label %rb_obj_write.exit21

rb_obj_write.exit21:                              ; preds = %rb_ractor_make_shareable.exit, %bb.j
  %i.bm = getelementptr i8, ptr %i.o, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !201
  %i.bn = getelementptr i8, ptr %i.o, i64 32
  store i8 %i.g, ptr %i.bn, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !72
  store volatile ptr %i.bp, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !147
  %i.bt = inttoptr i64 %i.ap to ptr
  call void @rb_ractor_interrupt_exec(ptr noundef %i.bs, ptr noundef nonnull @ractor_require_func, ptr noundef %i.bt, i32 noundef 1) #21
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !204
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !66 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !205 ; 2 uses
  %i.bz = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val.i = load ptr, ptr %i.bz, align 8, !tbaa !11 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i22, label %rb_ec_ractor_ptr.exit.i, label %rb_ec_ractor_ptr.exit.thread.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %rb_obj_write.exit21
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.k

rb_ec_ractor_ptr.exit.thread.i:                   ; preds = %rb_obj_write.exit21
  %i.ca = getelementptr i8, ptr %.val.i, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %.not6.i = icmp eq ptr %i.by, %i.cb
  br i1 %.not6.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.k

bb.k:                                             ; preds = %rb_ec_ractor_ptr.exit.thread.i, %rb_ec_ractor_ptr.exit.i
  %i.cc = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cc, ptr noundef nonnull @.str.114) #22
  unreachable

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %rb_ec_ractor_ptr.exit.thread.i, %rb_ec_ractor_ptr.exit.i
  %.0.i.i.i = phi ptr [ null, %rb_ec_ractor_ptr.exit.i ], [ %i.cb, %rb_ec_ractor_ptr.exit.thread.i ] ; 3 uses
  %i.cd = call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i.i, ptr noundef nonnull readonly %i.bx) ; 2 uses
  %.not13.i.i = icmp eq i64 %i.cd, 36
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %ractor_port_receive.exit

.lr.ph.i.i:                                       ; preds = %rb_ec_ractor_ptr.exit.i.i, %.lr.ph.i.i
  call fastcc void @ractor_wait_receive(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %.0.i.i.i)
  %i.ce = call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i.i, ptr noundef nonnull readonly %i.bx) ; 2 uses
  %.not.i4.i = icmp eq i64 %i.ce, 36
  br i1 %.not.i4.i, label %.lr.ph.i.i, label %ractor_port_receive.exit

ractor_port_receive.exit:                         ; preds = %.lr.ph.i.i, %rb_ec_ractor_ptr.exit.i.i
  %.lcssa.i.i = phi i64 [ %i.cd, %rb_ec_ractor_ptr.exit.i.i ], [ %i.ce, %.lr.ph.i.i ] ; 2 uses
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !204
  %.val = load ptr, ptr %i.bz, align 8, !tbaa !11
  %i.cg = call fastcc i64 @ractor_port_close(ptr %.val, i64 noundef %i.cf) ; 0 uses
  %i.ch = call i64 @rb_ary_pop(i64 noundef %.lcssa.i.i) #21
  %i.ci = call i64 @rb_ary_pop(i64 noundef %.lcssa.i.i) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr %i.d, ptr %i.f, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #21, !srcloc !206
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.ck = load volatile i64, ptr %i.cj, align 8, !tbaa !57 ; 0 uses
  %i.cl = and i64 %i.ch, -5
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %ractor_port_receive.exit
  call void @rb_exc_raise(i64 noundef %i.ci) #22
  unreachable

bb.m:                                             ; preds = %ractor_port_receive.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  ret i64 %i.ci
}

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #1

declare void @rb_ractor_interrupt_exec(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_require_func(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  tail call fastcc void @ractor_require_protect(i64 noundef %i.a, ptr noundef nonnull @require_body)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @ractor_port_close(ptr readonly captures(address_is_null) %.48.val, i64 noundef returned %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = inttoptr i64 %0 to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 3 uses
  %.not.i = icmp eq ptr %.48.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.48.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !205
  %.not = icmp eq ptr %.0.i, %i.l
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.m = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.115) #22
  unreachable

bb.d:                                             ; preds = %rb_ec_ractor_ptr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr null, ptr %i.f, align 8, !tbaa !138
  %i.n = getelementptr i8, ptr %.0.i, i64 56      ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.n) #21
  %i.o = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %ractor_lock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 48
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.q = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr i8, ptr %i.r, i64 448
  store i8 1, ptr %i.s, align 8, !tbaa !47
  br label %ractor_lock_self.exit.i

ractor_lock_self.exit.i:                          ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %bb.d
  %i.t = getelementptr i8, ptr %.0.i, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108  ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i4.i.i, label %ractor_deliver_incoming_messages.exit.i, label %ractor_queue_deq.exit.lr.ph.i.i

ractor_queue_deq.exit.lr.ph.i.i:                  ; preds = %ractor_lock_self.exit.i
  %i.w = getelementptr i8, ptr %.0.i, i64 128     ; 2 uses
  br label %ractor_queue_deq.exit.i.i

ractor_queue_deq.exit.i.i:                        ; preds = %ractor_get_queue.exit.i.i, %ractor_queue_deq.exit.lr.ph.i.i
  %i.x = phi ptr [ %i.v, %ractor_queue_deq.exit.lr.ph.i.i ], [ %i.av, %ractor_get_queue.exit.i.i ] ; 7 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !112  ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !111 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !112
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !111
  %i.ac = getelementptr i8, ptr %i.x, i64 -40
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %ractor_deliver_incoming_messages.exit.i, label %bb.e

bb.e:                                             ; preds = %ractor_queue_deq.exit.i.i
  %i.ad = getelementptr i8, ptr %i.x, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !115, !nonnull !25, !noundef !25
  %i.ag = call i32 @rb_st_lookup(ptr noundef nonnull %i.af, i64 noundef %i.ae, ptr noundef nonnull %i.e) #21 ; 0 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !138 ; 5 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !123, !range !77, !noundef !25
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %ractor_get_queue.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !108
  %i.am = icmp eq ptr %i.al, %i.ah
  br i1 %i.am, label %bb.g, label %ractor_get_queue.exit.i.i

bb.g:                                             ; preds = %bb.f
  %.val6.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.an = call i32 @rb_st_delete(ptr noundef %.val6.i.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21 ; 0 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !138 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not12.i.i.i.i.i, label %ractor_queue_free.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.pn.in13.i.i.i.i.i = phi ptr [ %.pn.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 6 uses
  %.09.i.i.i.i.i = getelementptr i8, ptr %.pn.in13.i.i.i.i.i, i64 -40
  %.pn.i.i.i.i.i = load ptr, ptr %.pn.in13.i.i.i.i.i, align 8, !tbaa !111 ; 4 uses
  %i.aq = getelementptr i8, ptr %.pn.in13.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.as = getelementptr i8, ptr %.pn.i.i.i.i.i, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !112
  store ptr %.pn.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !111
  store ptr %.pn.in13.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !112
  store ptr %.pn.in13.i.i.i.i.i, ptr %.pn.in13.i.i.i.i.i, align 8, !tbaa !111
  call void @ruby_xfree(ptr noundef %.09.i.i.i.i.i) #21
  %.not.i.i.i.i.i = icmp eq ptr %.pn.i.i.i.i.i, %i.ao
  br i1 %.not.i.i.i.i.i, label %ractor_queue_free.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !117

ractor_queue_free.exit.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  call void @ruby_xfree(ptr noundef nonnull %i.ao) #21
  unreachable

ractor_get_queue.exit.i.i:                        ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !111
  %i.at = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !112 ; 2 uses
  store ptr %i.au, ptr %i.y, align 8, !tbaa !112
  store ptr %i.x, ptr %i.au, align 8, !tbaa !111
  store ptr %i.x, ptr %i.at, align 8, !tbaa !112
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.u
  br i1 %.not.i.i.i.i, label %ractor_deliver_incoming_messages.exit.i, label %ractor_queue_deq.exit.i.i, !llvm.loop !208

ractor_deliver_incoming_messages.exit.i:          ; preds = %ractor_get_queue.exit.i.i, %ractor_queue_deq.exit.i.i, %ractor_lock_self.exit.i
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !205
  %i.ax = getelementptr i8, ptr %i.aw, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !115
  %i.az = getelementptr i8, ptr %i.i, i64 8       ; 2 uses
  %.val9.i = load i64, ptr %i.az, align 8, !tbaa !136
  %i.ba = call i32 @rb_st_lookup(ptr noundef %i.ay, i64 noundef %.val9.i, ptr noundef nonnull %i.f) #21
  %.not.i7 = icmp eq i32 %i.ba, 0
  br i1 %.not.i7, label %bb.k, label %bb.h

bb.h:                                             ; preds = %ractor_deliver_incoming_messages.exit.i
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !138 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 1, ptr %i.bc, align 8, !tbaa !123
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !108
  %i.be = icmp eq ptr %i.bd, %i.bb
  br i1 %i.be, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %i.az, align 8, !tbaa !136
  %i.bf = getelementptr i8, ptr %.0.i, i64 128
  %.val6.i.i = load ptr, ptr %i.bf, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.val.i, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bg = call i32 @rb_st_delete(ptr noundef %.val6.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %.not.i.i10.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i10.i, label %ractor_delete_port.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !138 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not12.i.i.i.i, label %ractor_queue_free.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.pn.in13.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.j ] ; 6 uses
  %.09.i.i.i.i = getelementptr i8, ptr %.pn.in13.i.i.i.i, i64 -40
  %.pn.i.i.i.i = load ptr, ptr %.pn.in13.i.i.i.i, align 8, !tbaa !111 ; 4 uses
  %i.bj = getelementptr i8, ptr %.pn.in13.i.i.i.i, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !112 ; 2 uses
  %i.bl = getelementptr i8, ptr %.pn.i.i.i.i, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !112
  store ptr %.pn.i.i.i.i, ptr %i.bk, align 8, !tbaa !111
  store ptr %.pn.in13.i.i.i.i, ptr %i.bj, align 8, !tbaa !112
  store ptr %.pn.in13.i.i.i.i, ptr %.pn.in13.i.i.i.i, align 8, !tbaa !111
  call void @ruby_xfree(ptr noundef %.09.i.i.i.i) #21
  %.not.i.i.i11.i = icmp eq ptr %.pn.i.i.i.i, %i.bh
  br i1 %.not.i.i.i11.i, label %ractor_queue_free.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !117

ractor_queue_free.exit.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %bb.j
  call void @ruby_xfree(ptr noundef nonnull %i.bh) #21
  br label %ractor_delete_port.exit.i

ractor_delete_port.exit.i:                        ; preds = %ractor_queue_free.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %ractor_delete_port.exit.i, %bb.h, %ractor_deliver_incoming_messages.exit.i
  %i.bm = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i12.i, label %ractor_close_port.exit, label %rb_ec_ractor_ptr.exit.i.i13.i

rb_ec_ractor_ptr.exit.i.i13.i:                    ; preds = %bb.k
  %i.bn = getelementptr i8, ptr %i.bm, i64 48
  %.val.i.i14.i = load ptr, ptr %i.bn, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.bo = getelementptr i8, ptr %.val.i.i14.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bq = getelementptr i8, ptr %i.bp, i64 448
  store i8 0, ptr %i.bq, align 8, !tbaa !47
end_hunk_1
begin_hunk_2_@rb_ractor_autoload_load:bb.a
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rb_obj_set_shareable.exit, label %imemo_type_p.exit.i.i, !prof !132

imemo_type_p.exit.i.i:                            ; preds = %bb.c
  %i.aa = inttoptr i64 %i.v to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !119 ; 2 uses
  %i.ac = and i64 %i.ab, 61471
  %.not.i.i = icmp eq i64 %i.ac, 53274
  br i1 %.not.i.i, label %bb.d, label %rb_obj_set_shareable.exit

bb.d:                                             ; preds = %imemo_type_p.exit.i.i
  %i.ad = or i64 %i.ab, 256
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !119
  br label %rb_obj_set_shareable.exit

rb_obj_set_shareable.exit:                        ; preds = %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_obj_gen_fields_p.exit.i.i, %bb.c, %imemo_type_p.exit.i.i, %bb.d
  %i.ae = getelementptr i8, ptr %i.l, i64 16
  store i64 %0, ptr %i.ae, align 8, !tbaa !57
  %i.af = icmp eq i64 %0, 0
  %i.ag = and i64 %0, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rb_obj_write.exit, label %bb.e

bb.e:                                             ; preds = %rb_obj_set_shareable.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.e, i64 noundef %0) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_obj_set_shareable.exit, %bb.e
  %i.aj = getelementptr i8, ptr %i.l, i64 24
  store i64 %1, ptr %i.aj, align 8, !tbaa !57
  %i.ak = icmp eq i64 %1, 0
  %i.al = and i64 %1, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %rb_obj_write.exit18, label %bb.f

bb.f:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.e, i64 noundef %1) #21
  br label %rb_obj_write.exit18

rb_obj_write.exit18:                              ; preds = %rb_obj_write.exit, %bb.f
  %i.ao = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i19, label %bb.g, label %rb_current_ractor.exit

bb.g:                                             ; preds = %rb_obj_write.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72
  store volatile ptr %i.aq, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %.val.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %rb_obj_write.exit18, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ao, %rb_obj_write.exit18 ], [ %i.at, %bb.h ], [ null, %bb.g ]
  %i.au = load i64, ptr @rb_cRactorPort, align 8, !tbaa !57
  %i.av = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.au, i64 noundef 16, ptr noundef nonnull @ractor_port_data_type) #21 ; 7 uses
  %i.aw = tail call i64 @rb_obj_freeze(i64 noundef %i.av) #21 ; 0 uses
  %i.ax = tail call fastcc i64 @ractor_port_init(i64 noundef %i.av, ptr noundef %.0.i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @make_shareable_check_shareable, ptr %2, align 8, !tbaa !161
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.ay, align 8, !tbaa !163
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = call fastcc i32 @obj_traverse_i(i64 noundef %i.av, ptr noundef nonnull %2)
  %.not.i.i20 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i20, label %bb.i, label %rb_ractor_make_shareable.exit

bb.i:                                             ; preds = %rb_current_ractor.exit
  %i.bb = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bb, null
  br i1 %.not8.i.i, label %rb_ractor_make_shareable.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.bc, align 8, !tbaa !166
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bd, align 4
  %i.be = ptrtoint ptr %3 to i64
  %i.bf = call i32 @rb_st_foreach(ptr noundef nonnull %i.bb, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.be) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %rb_ractor_make_shareable.exit

rb_ractor_make_shareable.exit:                    ; preds = %rb_current_ractor.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store i64 %i.av, ptr %i.l, align 8, !tbaa !57
  %i.bg = icmp eq i64 %i.av, 0
  %i.bh = and i64 %i.av, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rb_obj_write.exit21, label %bb.k

bb.k:                                             ; preds = %rb_ractor_make_shareable.exit
  call void @rb_gc_writebarrier(i64 noundef %i.e, i64 noundef %i.av) #21
  br label %rb_obj_write.exit21

rb_obj_write.exit21:                              ; preds = %rb_ractor_make_shareable.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72
  store volatile ptr %i.bl, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !147
  call void @rb_ractor_interrupt_exec(ptr noundef %i.bo, ptr noundef nonnull @ractor_autoload_load_func, ptr noundef nonnull %i.f, i32 noundef 1) #21
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !204
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !205 ; 2 uses
  %i.bu = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val.i = load ptr, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i22, label %rb_ec_ractor_ptr.exit.i, label %rb_ec_ractor_ptr.exit.thread.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %rb_obj_write.exit21
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.l

rb_ec_ractor_ptr.exit.thread.i:                   ; preds = %rb_obj_write.exit21
  %i.bv = getelementptr i8, ptr %.val.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26 ; 2 uses
  %.not6.i = icmp eq ptr %i.bt, %i.bw
  br i1 %.not6.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.l

bb.l:                                             ; preds = %rb_ec_ractor_ptr.exit.thread.i, %rb_ec_ractor_ptr.exit.i
  %i.bx = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bx, ptr noundef nonnull @.str.114) #22
  unreachable

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %rb_ec_ractor_ptr.exit.thread.i, %rb_ec_ractor_ptr.exit.i
  %.0.i.i.i = phi ptr [ null, %rb_ec_ractor_ptr.exit.i ], [ %i.bw, %rb_ec_ractor_ptr.exit.thread.i ] ; 3 uses
  %i.by = call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i.i, ptr noundef nonnull readonly %i.bs) ; 2 uses
  %.not13.i.i = icmp eq i64 %i.by, 36
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %ractor_port_receive.exit

.lr.ph.i.i:                                       ; preds = %rb_ec_ractor_ptr.exit.i.i, %.lr.ph.i.i
  call fastcc void @ractor_wait_receive(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %.0.i.i.i)
  %i.bz = call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i.i, ptr noundef nonnull readonly %i.bs) ; 2 uses
  %.not.i4.i = icmp eq i64 %i.bz, 36
  br i1 %.not.i4.i, label %.lr.ph.i.i, label %ractor_port_receive.exit

ractor_port_receive.exit:                         ; preds = %.lr.ph.i.i, %rb_ec_ractor_ptr.exit.i.i
  %.lcssa.i.i = phi i64 [ %i.by, %rb_ec_ractor_ptr.exit.i.i ], [ %i.bz, %.lr.ph.i.i ] ; 2 uses
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !204
  %.val = load ptr, ptr %i.bu, align 8, !tbaa !11
  %i.cb = call fastcc i64 @ractor_port_close(ptr %.val, i64 noundef %i.ca) ; 0 uses
  %i.cc = call i64 @rb_ary_pop(i64 noundef %.lcssa.i.i) #21
  %i.cd = call i64 @rb_ary_pop(i64 noundef %.lcssa.i.i) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.c, ptr %i.d, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #21, !srcloc !209
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.cf = load volatile i64, ptr %i.ce, align 8, !tbaa !57 ; 0 uses
  %i.cg = and i64 %i.cc, -5
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ractor_port_receive.exit
  call void @rb_exc_raise(i64 noundef %i.cd) #22
  unreachable

bb.n:                                             ; preds = %ractor_port_receive.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret i64 %i.cd
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_autoload_load_func(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  tail call fastcc void @ractor_require_protect(i64 noundef %i.a, ptr noundef nonnull @autoload_load_body)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_builtin_ractor() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_load_with_builtin_functions(ptr noundef nonnull @.str.64, ptr noundef nonnull @Init_builtin_ractor.ractor_table) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_232(ptr readnone captures(none) %0, i64 %1) #13 {
bb.a:
  %i.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, i64 0, i64 20
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_create(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
ractor_alloc.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %1, i64 noundef 464, ptr noundef nonnull @ractor_data_type) #21 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  %i.h = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !198 ; 5 uses
  %spec.select = select i1 %i.g, ptr %i.h, ptr %.pre ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !119
  %i.j = or i64 %i.i, 256
  store i64 %i.j, ptr %i.d, align 8, !tbaa !119
  store i64 %i.c, ptr %spec.select, align 8, !tbaa !85
  %i.k = getelementptr i8, ptr %spec.select, i64 376
  store i64 1, ptr %i.k, align 8, !tbaa !87
  store i64 %i.c, ptr %i.a, align 8, !tbaa !57
  tail call fastcc void @ractor_init(ptr noundef %.pre, i64 noundef %3, i64 noundef %2)
  %i.l = atomicrmw volatile add ptr @ractor_last_id, i32 1 seq_cst, align 4
  %i.m = add i32 %i.l, 1
  %i.n = getelementptr i8, ptr %.pre, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !82
  %i.o = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.o, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.p = getelementptr i8, ptr %.val, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr i8, ptr %i.q, i64 432
  %i.s = getelementptr i8, ptr %.pre, i64 432
  %i.t = load <2 x i64>, ptr %i.r, align 8, !tbaa !57
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !57
  tail call void @rb_yjit_before_ractor_spawn() #21
  tail call void @rb_zjit_before_ractor_spawn() #21
  %i.u = tail call i64 @rb_thread_create_ractor(ptr noundef nonnull %.pre, i64 noundef %4, i64 noundef %5) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.a, ptr %i.b, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #21, !srcloc !210
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.w = load volatile i64, ptr %i.v, align 8, !tbaa !57 ; 0 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_245(ptr noundef readonly captures(none) %0, i64 %1) #2 {
rb_ec_ractor_ptr.exit:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %.val1 = load i64, ptr %i.c, align 8, !tbaa !85
  ret i64 %.val1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 1, 8589934592) i64 @builtin_inline_class_259(ptr readnone captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_select_internal(ptr noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.ractor_selector_wait_data, align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.e = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.g = and i64 %i.f, 8192
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.i.thread

rb_array_len.exit.i:                              ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !145  ; 3 uses
  %i.j = add i64 %i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.j, 4294967296
  br i1 %.not.i1.i, label %bb.c, label %bb.b

rb_array_len.exit.i.thread:                       ; preds = %bb.a
  %i.k = trunc i64 %i.f to i32
  %i.l = lshr i32 %i.k, 15
  %i.m = and i32 %i.l, 127
  %i.n = getelementptr i8, ptr %i.e, i64 16
  br label %rb_array_const_ptr.exit

bb.b:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %i.i) #23
  unreachable

bb.c:                                             ; preds = %rb_array_len.exit.i
  %i.o = trunc nsw i64 %i.i to i32
  %i.p = getelementptr i8, ptr %i.e, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %rb_array_len.exit.i.thread, %bb.c
  %i.r = phi i32 [ %i.m, %rb_array_len.exit.i.thread ], [ %i.o, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %rb_array_len.exit.i.thread ], [ %i.q, %bb.c ]
  %i.s = load i64, ptr @rb_cRactorSelector, align 8, !tbaa !57
  %i.t = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.s, i64 noundef 8, ptr noundef nonnull @ractor_selector_data_type) #21 ; 3 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = trunc i64 %i.w to i1
  %i.y = getelementptr i8, ptr %i.u, i64 32       ; 3 uses
  br i1 %i.x, label %ractor_selector_create.exit.i, label %bb.d

bb.d:                                             ; preds = %rb_array_const_ptr.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  br label %ractor_selector_create.exit.i

ractor_selector_create.exit.i:                    ; preds = %bb.d, %rb_array_const_ptr.exit
  %i.aa = phi ptr [ %i.z, %bb.d ], [ %i.y, %rb_array_const_ptr.exit ]
  %i.ab = tail call ptr @rb_st_init_numtable() #21
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp sgt i32 %i.r, 0
  br i1 %i.ac, label %.lr.ph.preheader.i, label %ractor_selector_new.exit

.lr.ph.preheader.i:                               ; preds = %ractor_selector_create.exit.i
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !57
  %i.af = tail call i64 @ractor_selector_add(i64 noundef %i.t, i64 noundef %i.ae) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ractor_selector_new.exit, label %.lr.ph.i, !llvm.loop !64

ractor_selector_new.exit:                         ; preds = %.lr.ph.i, %ractor_selector_create.exit.i
  store i64 %i.t, ptr %i.b, align 8, !tbaa !57
  %i.ag = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %.not.i.i3 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i3, label %rb_ec_ractor_ptr.exit.i, label %bb.e

bb.e:                                             ; preds = %ractor_selector_new.exit
  %i.ah = getelementptr i8, ptr %.val.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.e, %ractor_selector_new.exit
  %.0.i.i4 = phi ptr [ %i.ai, %bb.e ], [ null, %ractor_selector_new.exit ] ; 2 uses
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !66  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %.0.i.i4, ptr %3, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.ak, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.am = ptrtoint ptr %3 to i64                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.ao = call i32 @rb_st_foreach(ptr noundef %i.an, ptr noundef nonnull @ractor_selector_wait_i, i64 noundef %i.am) #21 ; 0 uses
  %i.ap = load i8, ptr %i.al, align 8, !tbaa !76, !range !77, !noundef !25
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %ractor_selector__wait.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %rb_ec_ractor_ptr.exit.i, %.lr.ph.i5
  call fastcc void @ractor_wait_receive(ptr noundef nonnull %0, ptr noundef %.0.i.i4)
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.as = call i32 @rb_st_foreach(ptr noundef %i.ar, ptr noundef nonnull @ractor_selector_wait_i, i64 noundef %i.am) #21 ; 0 uses
  %i.at = load i8, ptr %i.al, align 8, !tbaa !76, !range !77, !noundef !25
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %ractor_selector__wait.exit, label %.lr.ph.i5

ractor_selector__wait.exit:                       ; preds = %.lr.ph.i5, %rb_ec_ractor_ptr.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !78
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.az = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ax, i64 noundef %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.b, ptr %i.c, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !211
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.bb = load volatile i64, ptr %i.ba, align 8, !tbaa !57 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.a, ptr %i.d, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #21, !srcloc !212
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.bd = load volatile i64, ptr %i.bc, align 8, !tbaa !57 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i64 %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_375(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 344
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_376(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 336
  %i.e = load i64, ptr %i.d, align 8, !tbaa !84
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 1, 8589934592) i64 @builtin_inline_class_377(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load i32, ptr %i.d, align 8, !tbaa !82
  %i.e = zext i32 %.val to i64
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_378(ptr readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = icmp ult i32 %i.e, 4
  br i1 %i.f, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.builtin_inline_class_378, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %switch.load) #21
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_388(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 336
  %i.e = load i64, ptr %i.d, align 8, !tbaa !84
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_419(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !119
  %i.m = and i64 %i.l, 256
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.n, align 8, !tbaa !163
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = call fastcc i32 @obj_traverse_i(i64 noundef %i.f, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread7

rb_ractor_shareable_p.exit.thread7:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread4, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread4:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !166
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = ptrtoint ptr %3 to i64
  %i.u = call i32 @rb_st_foreach(ptr noundef nonnull %i.q, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.t) #21 ; 0 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.fr = freeze i32 %i.v
  %i.w = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.w, label %rb_ractor_shareable_p.exit.thread, label %bb.e

rb_ractor_shareable_p.exit.thread:                ; preds = %bb.b, %bb.a, %rb_ractor_shareable_p.exit.thread4, %rb_ractor_shareable_p.exit
  br label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread7, %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread
  %i.x = phi i64 [ 20, %rb_ractor_shareable_p.exit.thread ], [ 0, %rb_ractor_shareable_p.exit ], [ 0, %rb_ractor_shareable_p.exit.thread7 ]
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @builtin_inline_class_461(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call i64 @rb_ractor_make_shareable_copy(i64 noundef %i.f)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @builtin_inline_class_465(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @make_shareable_check_shareable, ptr %2, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.g, align 8, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = call fastcc i32 @obj_traverse_i(i64 noundef %i.f, ptr noundef nonnull %2)
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %rb_ractor_make_shareable.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %rb_ractor_make_shareable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.l, align 4
  %i.m = ptrtoint ptr %3 to i64
  %i.n = call i32 @rb_st_foreach(ptr noundef nonnull %i.j, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.m) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %rb_ractor_make_shareable.exit

rb_ractor_make_shareable.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_local_value(ptr noundef readonly captures(none) %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = call i64 @rb_check_id(ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.g = getelementptr i8, ptr %.0.i, i64 392
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !217  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.i = icmp ne i64 %i.f, 0
  %i.j = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.k = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.h, i64 noundef %i.f, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.k, 0
  %i.l = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not, i64 4, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_ec_ractor_ptr.exit
  %.0 = phi i64 [ 4, %rb_ec_ractor_ptr.exit ], [ %spec.select, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_local_value_set(ptr noundef readonly captures(none) %0, i64 %1, i64 noundef %2, i64 noundef returned %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = tail call i64 @rb_to_symbol(i64 noundef %2) #21
  %i.e = tail call i64 @rb_sym2id(i64 noundef %i.d) #21
  %i.f = getelementptr i8, ptr %.0.i, i64 392     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.i = tail call ptr @rb_id_table_create(i64 noundef 2) #21 ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !217
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_ec_ractor_ptr.exit
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.g, %rb_ec_ractor_ptr.exit ]
  %i.j = tail call i32 @rb_id_table_insert(ptr noundef %.0, i64 noundef %i.e, i64 noundef %3) #21 ; 0 uses
  ret i64 %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_local_value_store_if_absent(ptr noundef %0, i64 %1, i64 noundef %2) #0 {
  %4 = alloca %struct.ractor_local_storage_store_data, align 8 ; 7 uses
  %5 = alloca i64, align 8                        ; 4 uses
  %6 = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %.val, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %3, %7
  %.0.i = phi ptr [ %9, %7 ], [ null, %3 ]        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %0, ptr %4, align 8, !tbaa !218
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = getelementptr i8, ptr %.0.i, i64 392     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = tail call i64 @rb_to_symbol(i64 noundef %2) #21
  %i.f = tail call i64 @rb_sym2id(i64 noundef %i.e) #21 ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %2, ptr %i.g, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.h = icmp eq ptr %i.c, null
  br i1 %i.h, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.i = tail call ptr @rb_id_table_create(i64 noundef 2) #21 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !217
  store ptr %i.i, ptr %i.a, align 8, !tbaa !220
  br label %bb.d

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.j = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.c, i64 noundef %i.f, ptr noundef nonnull %5) #21
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %5, align 8, !tbaa !57
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %.0.i, i64 400     ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !223  ; 2 uses
  %.not10 = icmp eq i64 %i.m, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i64 @rb_mutex_new() #21             ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  %i.p = ptrtoint ptr %4 to i64
  %i.q = call i64 @rb_mutex_synchronize(i64 noundef %i.o, ptr noundef nonnull @ractor_local_value_store_i, i64 noundef %i.p) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i64 [ %i.q, %bb.f ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_520(ptr readnone captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  %.val = load i64, ptr %i.c, align 8, !tbaa !85
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_527(ptr noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = icmp eq ptr %i.c, %.0.i
  %i.h = select i1 %i.g, i64 20, i64 0
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_require(ptr readnone captures(none) %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_require(i64 noundef %2, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_567(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 120
  %.val = load i64, ptr %i.d, align 8, !tbaa !125
  ret i64 %.val
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_value(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 160      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %ractor_set_successor_once.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.j = ptrtoint ptr %.0.i to i64
  %i.k = cmpxchg volatile ptr %i.g, i64 0, i64 %i.j seq_cst seq_cst, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = extractvalue { i64, i1 } %i.k, 1
  %i.o = select i1 %i.n, ptr %.0.i, ptr %i.m
  br label %ractor_set_successor_once.exit

ractor_set_successor_once.exit:                   ; preds = %rb_ec_ractor_ptr.exit, %bb.c
  %.0.i10 = phi ptr [ %i.o, %bb.c ], [ %i.h, %rb_ec_ractor_ptr.exit ]
  %i.p = icmp eq ptr %.0.i10, %.0.i
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %ractor_set_successor_once.exit
  %i.q = getelementptr i8, ptr %i.f, i64 168
  %i.r = getelementptr i8, ptr %i.f, i64 176
  %i.s = load i8, ptr %i.r, align 8, !tbaa !133, !range !77, !noundef !25
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i64, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call fastcc i64 @ractor_make_remote_exception(i64 noundef %i.u, i64 noundef %1)
  tail call void @rb_exc_raise(i64 noundef %i.v) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  ret i64 %i.u

bb.g:                                             ; preds = %ractor_set_successor_once.exit
  %i.w = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.116) #22
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @ractor_monitor(ptr readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 5 uses
  %i.d = inttoptr i64 %2 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc(i64 noundef 32) #24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !225
  %i.h = getelementptr i8, ptr %i.c, i64 56       ; 3 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.h) #21
  %i.i = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.k = getelementptr i8, ptr %.val.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr i8, ptr %i.l, i64 448
  store i8 1, ptr %i.m, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.n = getelementptr i8, ptr %i.c, i64 168
  %i.o = load i64, ptr %i.n, align 8, !tbaa !118
  %i.p = icmp eq i64 %i.o, 36
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %ractor_lock.exit
  %i.q = getelementptr i8, ptr %i.c, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr i8, ptr %i.c, i64 152      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !112
  store ptr %i.r, ptr %i.t, align 8, !tbaa !111
  store ptr %i.r, ptr %i.s, align 8, !tbaa !112
  %i.v = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i15 = icmp eq ptr %i.v, null
  br i1 %.not.i15, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i16

rb_ec_ractor_ptr.exit.i16:                        ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %.val.i17 = load ptr, ptr %i.w, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.x = getelementptr i8, ptr %.val.i17, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr i8, ptr %i.y, i64 448
  store i8 0, ptr %i.z, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %bb.b, %rb_ec_ractor_ptr.exit.i16
  tail call void @rb_native_mutex_unlock(ptr noundef %i.h) #21
  br label %bb.c

.critedge:                                        ; preds = %ractor_lock.exit
  %i.aa = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i18, label %ractor_unlock.exit21, label %rb_ec_ractor_ptr.exit.i19

rb_ec_ractor_ptr.exit.i19:                        ; preds = %.critedge
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %.val.i20 = load ptr, ptr %i.ab, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.ac = getelementptr i8, ptr %.val.i20, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = getelementptr i8, ptr %i.ad, i64 448
  store i8 0, ptr %i.ae, align 8, !tbaa !47
  br label %ractor_unlock.exit21

ractor_unlock.exit21:                             ; preds = %.critedge, %rb_ec_ractor_ptr.exit.i19
  tail call void @rb_native_mutex_unlock(ptr noundef %i.h) #21
  tail call void @ruby_xfree(ptr noundef nonnull %i.g) #21
  %i.af = getelementptr i8, ptr %i.c, i64 176
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !133, !range !77, !noundef !25
  %i.ah = trunc nuw i8 %i.ag to i1
  %..i = select i1 %i.ah, i64 3729, i64 3745
  %i.ai = tail call i64 @rb_id2sym(i64 noundef %..i) #21
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !66
  tail call fastcc void @ractor_send0(ptr noundef readonly %i.aj, i64 noundef %i.ai, i64 noundef range(i64 0, 2) 0, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %ractor_unlock.exit, %ractor_unlock.exit21
  %.0 = phi i64 [ 0, %ractor_unlock.exit21 ], [ 20, %ractor_unlock.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_unmonitor(ptr readnone captures(none) %0, i64 noundef returned %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.d = inttoptr i64 %2 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = getelementptr i8, ptr %i.c, i64 56       ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.g) #21
  %i.h = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr i8, ptr %i.k, i64 448
  store i8 1, ptr %i.l, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.m = getelementptr i8, ptr %i.c, i64 168
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  %i.o = icmp eq i64 %i.n, 36
  br i1 %i.o, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %ractor_lock.exit
  %i.p = getelementptr i8, ptr %i.c, i64 144      ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %.not22 = icmp eq ptr %i.q, %i.p
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.f, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.pn.in23 = phi ptr [ %i.q, %.lr.ph ], [ %.pn25, %bb.e ] ; 4 uses
  %.pn25 = load ptr, ptr %.pn.in23, align 8, !tbaa !111 ; 4 uses
  %i.s = getelementptr i8, ptr %.pn.in23, i64 -8
  %.015.val = load i64, ptr %i.s, align 8, !tbaa !136
  %.val = load i64, ptr %i.r, align 8, !tbaa !136
  %i.t = icmp eq i64 %.015.val, %.val
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.01524 = getelementptr i8, ptr %.pn.in23, i64 -16
  %i.u = getelementptr i8, ptr %.pn.in23, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112  ; 2 uses
  %i.w = getelementptr i8, ptr %.pn25, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !112
  store ptr %.pn25, ptr %i.v, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef nonnull %.01524) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %.pn25, %i.p
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !226

.loopexit:                                        ; preds = %bb.e, %bb.b, %ractor_lock.exit
  %i.x = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i16, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i17

rb_ec_ractor_ptr.exit.i17:                        ; preds = %.loopexit
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %.val.i18 = load ptr, ptr %i.y, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.z = getelementptr i8, ptr %.val.i18, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr i8, ptr %i.aa, i64 448
  store i8 0, ptr %i.ab, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %.loopexit, %rb_ec_ractor_ptr.exit.i17
  tail call void @rb_native_mutex_unlock(ptr noundef %i.g) #21
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_670(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call fastcc i64 @ractor_shareable_proc(i64 noundef %i.f, i1 noundef zeroext false)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_684(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call fastcc i64 @ractor_shareable_proc(i64 noundef %i.f, i1 noundef zeroext true)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @builtin_inline_class_742(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %rb_ec_ractor_ptr.exit.thread.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

rb_ec_ractor_ptr.exit.thread.i:                   ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, %i.g
  br i1 %.not6.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.thread.i, %rb_ec_ractor_ptr.exit.i
  %i.h = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.114) #22
  unreachable

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %rb_ec_ractor_ptr.exit.thread.i, %rb_ec_ractor_ptr.exit.i
  %.0.i.i.i = phi ptr [ null, %rb_ec_ractor_ptr.exit.i ], [ %i.g, %rb_ec_ractor_ptr.exit.thread.i ] ; 3 uses
  %i.i = tail call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i.i, ptr noundef nonnull readonly %i.c) ; 2 uses
  %.not13.i.i = icmp eq i64 %i.i, 36
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %ractor_port_receive.exit

.lr.ph.i.i:                                       ; preds = %rb_ec_ractor_ptr.exit.i.i, %.lr.ph.i.i
  tail call fastcc void @ractor_wait_receive(ptr noundef nonnull %0, ptr noundef %.0.i.i.i)
  %i.j = tail call fastcc i64 @ractor_try_receive(ptr noundef %.0.i.i.i, ptr noundef nonnull readonly %i.c) ; 2 uses
  %.not.i4.i = icmp eq i64 %i.j, 36
  br i1 %.not.i4.i, label %.lr.ph.i.i, label %ractor_port_receive.exit

ractor_port_receive.exit:                         ; preds = %.lr.ph.i.i, %rb_ec_ractor_ptr.exit.i.i
  %.lcssa.i.i = phi i64 [ %i.i, %rb_ec_ractor_ptr.exit.i.i ], [ %i.j, %.lr.ph.i.i ]
  ret i64 %.lcssa.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @builtin_inline_class_785(ptr noundef readonly captures(none) %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.d, i64 -40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  %i.i = inttoptr i64 %1 to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = and i64 %i.f, -5
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i64
  tail call fastcc void @ractor_send0(ptr noundef readonly %i.k, i64 noundef %i.h, i64 noundef range(i64 0, 2) %i.n, i1 noundef zeroext true)
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @builtin_inline_class_807(ptr noundef readonly captures(none) %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = tail call fastcc i64 @ractor_port_close(ptr %.val, i64 noundef %1) ; 0 uses
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_818(ptr readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = inttoptr i64 %1 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.f = getelementptr i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %ractor_closed_port_p.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !136
  %i.i = call i32 @rb_st_lookup(ptr noundef nonnull %i.g, i64 noundef %.val.i.i, ptr noundef nonnull %i.a) #21
  %.not5.i.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i.i, label %ractor_closed_port_p.exit.thread.i, label %ractor_closed_port_p.exit.i

ractor_closed_port_p.exit.thread.i:               ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.c

ractor_closed_port_p.exit.i:                      ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !123, !range !77, !noundef !25
  %i.m = trunc nuw i8 %i.l to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %i.m, label %bb.c, label %ractor_port_closed_p.exit

bb.c:                                             ; preds = %ractor_closed_port_p.exit.i, %ractor_closed_port_p.exit.thread.i
  br label %ractor_port_closed_p.exit

ractor_port_closed_p.exit:                        ; preds = %ractor_closed_port_p.exit.i, %bb.c
  %i.n = phi i64 [ 20, %bb.c ], [ 0, %ractor_closed_port_p.exit.i ]
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 1, 8589934592) i64 @builtin_inline_class_828(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load i32, ptr %i.e, align 8, !tbaa !82
  %i.f = zext i32 %.val to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_830(ptr readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load i64, ptr %i.d, align 8, !tbaa !136 ; 3 uses
  %i.e = icmp ult i64 %.val, 4611686018427387904
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %.val, 1
  %i.g = or disjoint i64 %i.f, 1
  br label %rb_ull2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_ull2inum(i64 noundef %.val) #21
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i64 %.0.i
}

declare void @rb_load_with_builtin_functions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ractor_mark(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call zeroext i1 @rb_gc_checking_shareable() #21
  %i.d = getelementptr i8, ptr %0, i64 344
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  tail call void @rb_gc_mark(i64 noundef %i.e) #21
  %i.f = getelementptr i8, ptr %0, i64 336
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  tail call void @rb_gc_mark(i64 noundef %i.g) #21
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 408
  %i.i = load i64, ptr %i.h, align 8, !tbaa !227
  tail call void @rb_gc_mark(i64 noundef %i.i) #21
  %i.j = getelementptr i8, ptr %0, i64 416
  %i.k = load i64, ptr %i.j, align 8, !tbaa !228
  tail call void @rb_gc_mark(i64 noundef %i.k) #21
  %i.l = getelementptr i8, ptr %0, i64 424
  %i.m = load i64, ptr %i.l, align 8, !tbaa !229
  tail call void @rb_gc_mark(i64 noundef %i.m) #21
  %i.n = getelementptr i8, ptr %0, i64 432
  %i.o = load i64, ptr %i.n, align 8, !tbaa !230
  tail call void @rb_gc_mark(i64 noundef %i.o) #21
  %i.p = getelementptr i8, ptr %0, i64 440
  %i.q = load i64, ptr %i.p, align 8, !tbaa !231
  tail call void @rb_gc_mark(i64 noundef %i.q) #21
  %i.r = getelementptr i8, ptr %0, i64 120
  %i.s = load i64, ptr %i.r, align 8, !tbaa !125
  tail call void @rb_gc_mark(i64 noundef %i.s) #21
  %i.t = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !116  ; 3 uses
  %.pn5.i.i = load ptr, ptr %i.w, align 8, !tbaa !111 ; 2 uses
  %.not6.i.i = icmp eq ptr %.pn5.i.i, %i.w
  br i1 %.not6.i.i, label %ractor_queue_mark.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.pn7.i.i = phi ptr [ %.pn.i.i, %.lr.ph.i.i ], [ %.pn5.i.i, %bb.c ] ; 2 uses
  %i.x = getelementptr i8, ptr %.pn7.i.i, i64 -16
  %.0.val.i.i = load i64, ptr %i.x, align 8, !tbaa !139
  tail call void @rb_gc_mark(i64 noundef %.0.val.i.i) #21
  %.pn.i.i = load ptr, ptr %.pn7.i.i, align 8, !tbaa !111 ; 2 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.w
  br i1 %.not.i.i, label %ractor_queue_mark.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !232

ractor_queue_mark.exit.loopexit.i:                ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !115
  br label %ractor_queue_mark.exit.i

ractor_queue_mark.exit.i:                         ; preds = %ractor_queue_mark.exit.loopexit.i, %bb.c
  %i.y = phi ptr [ %.pre.i, %ractor_queue_mark.exit.loopexit.i ], [ %i.u, %bb.c ]
  %i.z = tail call i32 @rb_st_foreach(ptr noundef %i.y, ptr noundef nonnull @ractor_mark_ports_i, i64 noundef 0) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %ractor_queue_mark.exit.i, %bb.b
  %i.aa = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %.pn5.i5.i = load ptr, ptr %i.aa, align 8, !tbaa !111 ; 2 uses
  %.not6.i6.i = icmp eq ptr %.pn5.i5.i, %i.aa
  br i1 %.not6.i6.i, label %ractor_sync_mark.exit, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %bb.d, %.lr.ph.i7.i
  %.pn7.i8.i = phi ptr [ %.pn.i9.i, %.lr.ph.i7.i ], [ %.pn5.i5.i, %bb.d ] ; 2 uses
  %.0.i.i = getelementptr i8, ptr %.pn7.i8.i, i64 -16
  %i.ab = load ptr, ptr %.0.i.i, align 8, !tbaa !233
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !85
  tail call void @rb_gc_mark(i64 noundef %i.ac) #21
  %.pn.i9.i = load ptr, ptr %.pn7.i8.i, align 8, !tbaa !111 ; 2 uses
  %.not.i10.i = icmp eq ptr %.pn.i9.i, %i.aa
  br i1 %.not.i10.i, label %ractor_sync_mark.exit, label %.lr.ph.i7.i, !llvm.loop !235

ractor_sync_mark.exit:                            ; preds = %.lr.ph.i7.i, %bb.d
  %i.ad = getelementptr i8, ptr %0, i64 16
  tail call void @rb_hook_list_mark(ptr noundef %i.ad) #21
  %i.ae = getelementptr i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ractor_sync_mark.exit
  %i.ag = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.af, ptr noundef nonnull @mark_targeted_hook_list, i64 noundef 0) #21 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ractor_sync_mark.exit
  %i.ah = getelementptr i8, ptr %0, i64 184       ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 200
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !109
  %.not20 = icmp eq i32 %i.aj, 0
  br i1 %.not20, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.023 = load ptr, ptr %i.ah, align 8, !tbaa !111 ; 2 uses
  %.not2124 = icmp eq ptr %.023, %i.ah
  br i1 %.not2124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.025 = phi ptr [ %.0, %.lr.ph ], [ %.023, %.preheader ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.025, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !148
  tail call void @rb_gc_mark(i64 noundef %i.al) #21
  %.0 = load ptr, ptr %.025, align 8, !tbaa !111  ; 2 uses
  %.not21 = icmp eq ptr %.0, %i.ah
  br i1 %.not21, label %.loopexit, label %.lr.ph, !llvm.loop !236

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  %i.am = getelementptr i8, ptr %0, i64 384       ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !197 ; 2 uses
  %.not.i22 = icmp eq ptr %i.an, null
  br i1 %.not.i22, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ao = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.an, ptr noundef nonnull @ractor_local_storage_mark_i, i64 noundef 0) #21 ; 0 uses
  %i.ap = load i32, ptr @freed_ractor_local_keys.0, align 8, !tbaa !190
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %i.ar = load ptr, ptr @freed_ractor_local_keys.2, align 8, !tbaa !194
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.au = ptrtoint ptr %i.at to i64
  store i64 %i.au, ptr %i.b, align 8, !tbaa !57
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !197
  %i.aw = call i32 @rb_st_delete(ptr noundef %i.av, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %.not14.i = icmp eq i32 %i.aw, 0
  br i1 %.not14.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !57
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !186
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !237 ; 2 uses
  %.not15.i = icmp eq ptr %i.bb, null
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !57
  %i.bd = inttoptr i64 %i.bc to ptr
  call void %i.bb(ptr noundef %i.bd) #21, !inline_history !239
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = load i32, ptr @freed_ractor_local_keys.0, align 8, !tbaa !190
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !240

.loopexit.i:                                      ; preds = %bb.j, %bb.g, %.loopexit
  %i.bh = getelementptr i8, ptr %0, i64 392
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !217 ; 2 uses
  %.not13.i = icmp eq ptr %i.bi, null
  br i1 %.not13.i, label %ractor_local_storage_mark.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  call void @rb_id_table_foreach_values(ptr noundef nonnull %i.bi, ptr noundef nonnull @idkey_local_storage_mark_i, ptr noundef null) #21
  br label %ractor_local_storage_mark.exit

ractor_local_storage_mark.exit:                   ; preds = %.loopexit.i, %bb.k
  %i.bj = getelementptr i8, ptr %0, i64 400
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !223
  call void @rb_gc_mark(i64 noundef %i.bk) #21
  br label %bb.l

bb.l:                                             ; preds = %ractor_local_storage_mark.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ractor_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.c = tail call i32 @rb_st_foreach(ptr noundef %i.b, ptr noundef nonnull @free_targeted_hook_lists, i64 noundef 0) #21 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 56
  tail call void @rb_native_mutex_destroy(ptr noundef %i.d) #21
  %i.e = getelementptr i8, ptr %0, i64 384        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.f, ptr noundef nonnull @ractor_local_storage_free_i, i64 noundef 0) #21 ; 0 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !197
  tail call void @rb_st_free_table(ptr noundef %i.h) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 392
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !217  ; 2 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %ractor_local_storage_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_id_table_free(ptr noundef nonnull %i.j) #21
  br label %ractor_local_storage_free.exit

ractor_local_storage_free.exit:                   ; preds = %bb.c, %bb.d
  %i.k = getelementptr i8, ptr %0, i64 16
  tail call void @rb_hook_list_free(ptr noundef %i.k) #21
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !126
  tail call void @rb_st_free_table(ptr noundef %i.l) #21
  %i.m = getelementptr i8, ptr %0, i64 456        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ractor_local_storage_free.exit
  tail call void @rb_gc_ractor_cache_free(ptr noundef nonnull %i.n) #21
  store ptr null, ptr %i.m, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ractor_local_storage_free.exit
  %i.o = getelementptr i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 5 uses
  %.not.i11 = icmp eq ptr %i.p, null
  br i1 %.not.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not12.i.i, label %ractor_queue_free.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.pn.in13.i.i = phi ptr [ %.pn.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 6 uses
  %.09.i.i = getelementptr i8, ptr %.pn.in13.i.i, i64 -40
  %.pn.i.i = load ptr, ptr %.pn.in13.i.i, align 8, !tbaa !111 ; 4 uses
  %i.r = getelementptr i8, ptr %.pn.in13.i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.t = getelementptr i8, ptr %.pn.i.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !112
  store ptr %.pn.i.i, ptr %i.s, align 8, !tbaa !111
  store ptr %.pn.in13.i.i, ptr %i.r, align 8, !tbaa !112
  store ptr %.pn.in13.i.i, ptr %.pn.in13.i.i, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.09.i.i) #21
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.p
  br i1 %.not.i.i, label %ractor_queue_free.exit.i, label %.lr.ph.i.i, !llvm.loop !117

ractor_queue_free.exit.i:                         ; preds = %.lr.ph.i.i, %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.p) #21
  br label %bb.h

bb.h:                                             ; preds = %ractor_queue_free.exit.i, %bb.f
  %i.u = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !115  ; 2 uses
  %.not7.i = icmp eq ptr %i.v, null
  br i1 %.not7.i, label %ractor_sync_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.v, ptr noundef nonnull @ractor_sync_free_ports_i, i64 noundef 0) #21 ; 0 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !115
  tail call void @rb_st_free_table(ptr noundef %i.x) #21
  store ptr null, ptr %i.u, align 8, !tbaa !115
  br label %ractor_sync_free.exit

ractor_sync_free.exit:                            ; preds = %bb.h, %bb.i
  tail call void @ruby_xfree(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_memsize(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %ractor_sync_memsize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_st_table_size(ptr noundef nonnull %.val) #21
  %i.c = add i64 %i.b, 464
  br label %ractor_sync_memsize.exit

ractor_sync_memsize.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.c, %bb.b ], [ 464, %bb.a ]
  ret i64 %.0.i
}

declare zeroext i1 @rb_gc_checking_shareable() local_unnamed_addr #1

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #1

declare void @rb_hook_list_mark(ptr noundef) local_unnamed_addr #1

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @mark_targeted_hook_list(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !241
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.g, %bb.b ], [ %0, %bb.a ]
  tail call void @rb_gc_mark(i64 noundef %.sink) #21
  tail call void @rb_hook_list_mark(ptr noundef nonnull %i.a) #21
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ractor_mark_ports_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %.pn5.i = load ptr, ptr %i.a, align 8, !tbaa !111 ; 2 uses
  %.not6.i = icmp eq ptr %.pn5.i, %i.a
  br i1 %.not6.i, label %ractor_queue_mark.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.pn7.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %.pn5.i, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.pn7.i, i64 -16
  %.0.val.i = load i64, ptr %i.b, align 8, !tbaa !139
  tail call void @rb_gc_mark(i64 noundef %.0.val.i) #21
  %.pn.i = load ptr, ptr %.pn7.i, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.a
  br i1 %.not.i, label %ractor_queue_mark.exit, label %.lr.ph.i, !llvm.loop !232

ractor_queue_mark.exit:                           ; preds = %.lr.ph.i, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ractor_local_storage_mark_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr
  tail call void %i.c(ptr noundef %i.d) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_id_table_foreach_values(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @idkey_local_storage_mark_i(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  tail call void @rb_gc_mark(i64 noundef %0) #21
  ret i32 0
}

declare void @rb_native_mutex_destroy(ptr noundef) local_unnamed_addr #1

declare void @rb_hook_list_free(ptr noundef) local_unnamed_addr #1

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_targeted_hook_lists(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void @rb_hook_list_free(ptr noundef %i.a) #21
  ret i32 2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ractor_local_storage_free_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  tail call void %i.d(ptr noundef %i.e) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ractor_sync_free_ports_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not12.i = icmp eq ptr %i.b, %i.a
  br i1 %.not12.i, label %ractor_queue_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.pn.in13.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 6 uses
  %.09.i = getelementptr i8, ptr %.pn.in13.i, i64 -40
  %.pn.i = load ptr, ptr %.pn.in13.i, align 8, !tbaa !111 ; 4 uses
  %i.c = getelementptr i8, ptr %.pn.in13.i, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = getelementptr i8, ptr %.pn.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !112
  store ptr %.pn.i, ptr %i.d, align 8, !tbaa !111
  store ptr %.pn.in13.i, ptr %i.c, align 8, !tbaa !112
  store ptr %.pn.in13.i, ptr %.pn.in13.i, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.09.i) #21
  %.not.i = icmp eq ptr %.pn.i, %i.a
  br i1 %.not.i, label %ractor_queue_free.exit, label %.lr.ph.i, !llvm.loop !117

ractor_queue_free.exit:                           ; preds = %.lr.ph.i, %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #21
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_basket_free(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @ruby_xfree(ptr noundef %0) #21
  ret void
}

declare i64 @rb_st_table_size(ptr noundef) local_unnamed_addr #1

declare ptr @rb_st_init_numtable() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ractor_selector_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.a, ptr noundef nonnull @ractor_selector_mark_i, i64 noundef 0) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ractor_selector_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @rb_st_free_table(ptr noundef %i.a) #21
  tail call void @ruby_xfree(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define internal i64 @ractor_selector_memsize(ptr noundef readonly captures(none) %0) #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_st_memsize(ptr noundef nonnull %i.a) #25
  %i.c = add i64 %i.b, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ 8, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ractor_selector_mark_i(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  tail call void @rb_gc_mark(i64 noundef %0) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #15

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ractor_port_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85
  tail call void @rb_gc_mark(i64 noundef %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ractor_port_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ruby_xfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @ractor_port_memsize(ptr readnone captures(none) %0) #9 {
bb.a:
  ret i64 16
}

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_st_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @ractor_selector_wait_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.b = inttoptr i64 %1 to ptr
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.d = tail call fastcc i64 @ractor_try_receive(ptr noundef %i.c, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq i64 %i.d, 36
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !76
  %i.f = getelementptr i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr i8, ptr %i.a, i64 32
  store i64 %0, ptr %i.g, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_wait_receive(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ractor_waiter, align 8      ; 9 uses
  %3 = alloca %struct.ractor_queue, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr i8, ptr %1, i64 56         ; 5 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.b) #21
  %i.c = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %ractor_lock_self.exit, label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.e = getelementptr i8, ptr %.val.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr i8, ptr %i.f, i64 448
  store i8 1, ptr %i.g, align 8, !tbaa !47
  br label %ractor_lock_self.exit

ractor_lock_self.exit:                            ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i.i
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val = load ptr, ptr %i.h, align 8, !tbaa !116 ; 6 uses
  %i.i = load ptr, ptr %.val, align 8, !tbaa !108 ; 3 uses
  %.not21 = icmp eq ptr %i.i, %.val
  br i1 %.not21, label %ractor_check_received.exit, label %.critedge

ractor_check_received.exit:                       ; preds = %ractor_lock_self.exit
  %i.j = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 8, !tbaa !243
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val.i, ptr %i.l, align 8, !tbaa !245
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 104
  store ptr %i.n, ptr %i.m, align 8, !tbaa !111
  %i.o = getelementptr i8, ptr %1, i64 112        ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !112
  store ptr %i.m, ptr %i.p, align 8, !tbaa !111
  store ptr %i.m, ptr %i.o, align 8, !tbaa !112
  call void @rb_ractor_sched_wait(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ubf_ractor_wait, ptr noundef nonnull %2) #21
  %i.r = load i32, ptr %2, align 8, !tbaa !243
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ractor_check_received.exit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !112
  store ptr %i.u, ptr %i.t, align 8, !tbaa !111
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ractor_check_received.exit
  %i.w = call ptr @rb_current_ec_noinline() #21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %ractor_unlock_self.exit.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.y = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr i8, ptr %i.z, i64 448
  store i8 0, ptr %i.aa, align 8, !tbaa !47
  br label %ractor_unlock_self.exit.i

ractor_unlock_self.exit.i:                        ; preds = %rb_ec_ractor_ptr.exit.i.i.i, %bb.c
  call void @rb_native_mutex_unlock(ptr noundef %i.b) #21
  call void @rb_ec_check_ints(ptr noundef nonnull %0) #21
  call void @rb_native_mutex_lock(ptr noundef %i.b) #21
  %i.ab = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i9.i, label %ractor_wait.exit, label %rb_ec_ractor_ptr.exit.i.i10.i

rb_ec_ractor_ptr.exit.i.i10.i:                    ; preds = %ractor_unlock_self.exit.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 48
  %.val.i.i11.i = load ptr, ptr %i.ac, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.ad = getelementptr i8, ptr %.val.i.i11.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr i8, ptr %i.ae, i64 448
  store i8 1, ptr %i.af, align 8, !tbaa !47
  br label %ractor_wait.exit

ractor_wait.exit:                                 ; preds = %ractor_unlock_self.exit.i, %rb_ec_ractor_ptr.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ag = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i11, label %ractor_unlock_self.exit, label %rb_ec_ractor_ptr.exit.i.i12

rb_ec_ractor_ptr.exit.i.i12:                      ; preds = %ractor_wait.exit
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %.val.i.i13 = load ptr, ptr %i.ah, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.ai = getelementptr i8, ptr %.val.i.i13, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr i8, ptr %i.aj, i64 448
  store i8 0, ptr %i.ak, align 8, !tbaa !47
  br label %ractor_unlock_self.exit

ractor_unlock_self.exit:                          ; preds = %ractor_wait.exit, %rb_ec_ractor_ptr.exit.i.i12
  call void @rb_native_mutex_unlock(ptr noundef %i.b) #21
  br label %ractor_queue_deq.exit.thread

.critedge:                                        ; preds = %ractor_lock_self.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.am, align 8, !tbaa !123
  store ptr %i.i, ptr %3, align 8, !tbaa !108
  %i.an = getelementptr i8, ptr %.val, i64 8      ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !107
  %i.ap = getelementptr i8, ptr %i.i, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !112
  store ptr %3, ptr %i.ao, align 8, !tbaa !111
  store ptr %.val, ptr %i.an, align 8, !tbaa !107
  store ptr %.val, ptr %.val, align 8, !tbaa !108
  %i.aq = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i14, label %ractor_unlock_self.exit17, label %rb_ec_ractor_ptr.exit.i.i15

rb_ec_ractor_ptr.exit.i.i15:                      ; preds = %.critedge
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %.val.i.i16 = load ptr, ptr %i.ar, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.as = getelementptr i8, ptr %.val.i.i16, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26
  %i.au = getelementptr i8, ptr %i.at, i64 448
  store i8 0, ptr %i.au, align 8, !tbaa !47
  br label %ractor_unlock_self.exit17

ractor_unlock_self.exit17:                        ; preds = %.critedge, %rb_ec_ractor_ptr.exit.i.i15
  call void @rb_native_mutex_unlock(ptr noundef %i.b) #21
  %i.av = load ptr, ptr %3, align 8, !tbaa !108   ; 2 uses
  %.not.i.i1822 = icmp eq ptr %i.av, %3
  br i1 %.not.i.i1822, label %ractor_queue_deq.exit.thread, label %ractor_queue_deq.exit.lr.ph

ractor_queue_deq.exit.lr.ph:                      ; preds = %ractor_unlock_self.exit17
  %i.aw = getelementptr i8, ptr %1, i64 128
  br label %ractor_queue_deq.exit

ractor_queue_deq.exit:                            ; preds = %ractor_queue_deq.exit.lr.ph, %ractor_get_queue.exit
  %i.ax = phi ptr [ %i.av, %ractor_queue_deq.exit.lr.ph ], [ %i.bp, %ractor_get_queue.exit ] ; 7 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8      ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !112 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !111 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !112
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !111
  %i.bc = getelementptr i8, ptr %i.ax, i64 -40
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %ractor_queue_deq.exit.thread, label %bb.d

bb.d:                                             ; preds = %ractor_queue_deq.exit
  %i.bd = getelementptr i8, ptr %i.ax, i64 -24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !115, !nonnull !25, !noundef !25
  %i.bg = call i32 @rb_st_lookup(ptr noundef nonnull %i.bf, i64 noundef %i.be, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !138 ; 5 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !123, !range !77, !noundef !25
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.e, label %ractor_get_queue.exit

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.bm = icmp eq ptr %i.bl, %i.bh
  br i1 %i.bm, label %bb.f, label %ractor_get_queue.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @ractor_delete_port(ptr noundef nonnull %1, i64 noundef %i.be, i1 noundef zeroext false)
  unreachable

ractor_get_queue.exit:                            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !111
  %i.bn = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !112 ; 2 uses
  store ptr %i.bo, ptr %i.ay, align 8, !tbaa !112
  store ptr %i.ax, ptr %i.bo, align 8, !tbaa !111
  store ptr %i.ax, ptr %i.bn, align 8, !tbaa !112
  %i.bp = load ptr, ptr %3, align 8, !tbaa !108   ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bp, %3
  br i1 %.not.i.i18, label %ractor_queue_deq.exit.thread, label %ractor_queue_deq.exit, !llvm.loop !246

ractor_queue_deq.exit.thread:                     ; preds = %ractor_queue_deq.exit, %ractor_get_queue.exit, %ractor_unlock_self.exit17, %ractor_unlock_self.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @ractor_try_receive(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @rb_st_lookup(ptr noundef nonnull %i.d, i64 noundef %.val14, ptr noundef nonnull %i.a) #21
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !138  ; 7 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !123, !range !77, !noundef !25
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call fastcc void @ractor_delete_port(ptr noundef nonnull %0, i64 noundef %.val14, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.l = load i64, ptr @rb_eRactorClosedError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.76) #22
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !108  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i, label %ractor_queue_deq.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !112
  store ptr %i.p, ptr %i.o, align 8, !tbaa !111
  %i.r = getelementptr i8, ptr %i.m, i64 -40
  br label %ractor_queue_deq.exit

ractor_queue_deq.exit:                            ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.r, %bb.h ], [ null, %bb.g ] ; 6 uses
  %i.s = load i8, ptr %i.g, align 8, !tbaa !123, !range !77, !noundef !25
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ractor_queue_deq.exit
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val = load i64, ptr %i.b, align 8, !tbaa !136
  call fastcc void @ractor_delete_port(ptr noundef nonnull %0, i64 noundef %.val, i1 noundef zeroext false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %ractor_queue_deq.exit
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %.0.i.i, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139  ; 2 uses
  %i.y = getelementptr i8, ptr %.0.i.i, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !142, !range !77, !noundef !25
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.m, label %ractor_basket_accept.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !143
  %i.ad = call fastcc i64 @ractor_make_remote_exception(i64 noundef %i.x, i64 noundef %i.ac)
  call fastcc void @ractor_basket_free(ptr noundef nonnull %.0.i.i)
  call void @rb_exc_raise(i64 noundef %i.ad) #22
  unreachable

ractor_basket_accept.exit:                        ; preds = %bb.l
  call void @ruby_xfree(ptr noundef nonnull %.0.i.i) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %ractor_basket_accept.exit
  %.0 = phi i64 [ %i.x, %ractor_basket_accept.exit ], [ 36, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_delete_port(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 128
  %.val6 = load ptr, ptr %i.e, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.f = call i32 @rb_st_delete(ptr noundef %.val6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %ractor_delete_port_locked.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !138  ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not12.i.i, label %ractor_queue_free.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.pn.in13.i.i = phi ptr [ %.pn.i.i, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 6 uses
  %.09.i.i = getelementptr i8, ptr %.pn.in13.i.i, i64 -40
  %.pn.i.i = load ptr, ptr %.pn.in13.i.i, align 8, !tbaa !111 ; 4 uses
  %i.i = getelementptr i8, ptr %.pn.in13.i.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %i.k = getelementptr i8, ptr %.pn.i.i, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !112
  store ptr %.pn.i.i, ptr %i.j, align 8, !tbaa !111
  store ptr %.pn.in13.i.i, ptr %i.i, align 8, !tbaa !112
  store ptr %.pn.in13.i.i, ptr %.pn.in13.i.i, align 8, !tbaa !111
  call void @ruby_xfree(ptr noundef %.09.i.i) #21
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.g
  br i1 %.not.i.i, label %ractor_queue_free.exit.i, label %.lr.ph.i.i, !llvm.loop !117

ractor_queue_free.exit.i:                         ; preds = %.lr.ph.i.i, %bb.c
  call void @ruby_xfree(ptr noundef nonnull %i.g) #21
  br label %ractor_delete_port_locked.exit

ractor_delete_port_locked.exit:                   ; preds = %bb.b, %ractor_queue_free.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.l) #21
  %i.m = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i7, label %ractor_lock_self.exit, label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %.val.i.i = load ptr, ptr %i.n, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.o = getelementptr i8, ptr %.val.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr i8, ptr %i.p, i64 448
  store i8 1, ptr %i.q, align 8, !tbaa !47
  br label %ractor_lock_self.exit

ractor_lock_self.exit:                            ; preds = %bb.d, %rb_ec_ractor_ptr.exit.i.i
  %i.r = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.r, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = call i32 @rb_st_delete(ptr noundef %.val, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %.not.i8 = icmp eq i32 %i.s, 0
  br i1 %.not.i8, label %ractor_delete_port_locked.exit16, label %bb.e

bb.e:                                             ; preds = %ractor_lock_self.exit
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !138  ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %.not12.i.i9 = icmp eq ptr %i.u, %i.t
  br i1 %.not12.i.i9, label %ractor_queue_free.exit.i15, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %bb.e, %.lr.ph.i.i10
  %.pn.in13.i.i11 = phi ptr [ %.pn.i.i13, %.lr.ph.i.i10 ], [ %i.u, %bb.e ] ; 6 uses
  %.09.i.i12 = getelementptr i8, ptr %.pn.in13.i.i11, i64 -40
  %.pn.i.i13 = load ptr, ptr %.pn.in13.i.i11, align 8, !tbaa !111 ; 4 uses
  %i.v = getelementptr i8, ptr %.pn.in13.i.i11, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = getelementptr i8, ptr %.pn.i.i13, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !112
  store ptr %.pn.i.i13, ptr %i.w, align 8, !tbaa !111
  store ptr %.pn.in13.i.i11, ptr %i.v, align 8, !tbaa !112
  store ptr %.pn.in13.i.i11, ptr %.pn.in13.i.i11, align 8, !tbaa !111
  call void @ruby_xfree(ptr noundef %.09.i.i12) #21
  %.not.i.i14 = icmp eq ptr %.pn.i.i13, %i.t
  br i1 %.not.i.i14, label %ractor_queue_free.exit.i15, label %.lr.ph.i.i10, !llvm.loop !117

ractor_queue_free.exit.i15:                       ; preds = %.lr.ph.i.i10, %bb.e
  call void @ruby_xfree(ptr noundef nonnull %i.t) #21
  br label %ractor_delete_port_locked.exit16

ractor_delete_port_locked.exit16:                 ; preds = %ractor_lock_self.exit, %ractor_queue_free.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = call ptr @rb_current_ec_noinline() #21   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.y, null
  br i1 %.not.i.i17, label %ractor_unlock_self.exit, label %rb_ec_ractor_ptr.exit.i.i18

rb_ec_ractor_ptr.exit.i.i18:                      ; preds = %ractor_delete_port_locked.exit16
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %.val.i.i19 = load ptr, ptr %i.z, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.aa = getelementptr i8, ptr %.val.i.i19, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr i8, ptr %i.ab, i64 448
  store i8 0, ptr %i.ac, align 8, !tbaa !47
  br label %ractor_unlock_self.exit

ractor_unlock_self.exit:                          ; preds = %ractor_delete_port_locked.exit16, %rb_ec_ractor_ptr.exit.i.i18
  call void @rb_native_mutex_unlock(ptr noundef %i.l) #21
  br label %bb.f

bb.f:                                             ; preds = %ractor_unlock_self.exit, %ractor_delete_port_locked.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @ractor_make_remote_exception(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_eRactorRemoteError, align 8, !tbaa !57
  %i.b = tail call i64 @rb_exc_new(i64 noundef %i.a, ptr noundef nonnull @.str.80, i64 noundef 24) #21 ; 3 uses
  %.pr.i = load i64, ptr @ractor_make_remote_exception.rbimpl_id, align 8, !tbaa !57 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.81, i64 noundef 7) #21 ; 3 uses
  store i64 %i.c, ptr @ractor_make_remote_exception.rbimpl_id, align 8, !tbaa !57
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !114

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ]
  %i.d = tail call i64 @rb_ivar_set(i64 noundef %i.b, i64 noundef %.lcssa.i, i64 noundef %1) #21 ; 0 uses
  tail call void @rb_ec_setup_exception(ptr noundef null, i64 noundef %i.b, i64 noundef %0) #21
  ret i64 %i.b
}

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_ec_setup_exception(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_exc_new(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_ractor_sched_wait(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ubf_ractor_wait(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 336
  %i.f = getelementptr i8, ptr %i.b, i64 296      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @rb_native_mutex_unlock(ptr noundef %i.f) #21
  %i.g = getelementptr i8, ptr %i.d, i64 56       ; 2 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.g) #21
  %i.h = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr i8, ptr %i.k, i64 448
  store i8 1, ptr %i.l, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.m = load i32, ptr %0, align 8, !tbaa !243
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ractor_lock.exit
  store i32 2, ptr %0, align 8, !tbaa !243
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !111  ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8, !tbaa !112
  store ptr %i.r, ptr %i.q, align 8, !tbaa !111
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !245
  tail call void @rb_ractor_sched_wakeup(ptr noundef %i.d, ptr noundef %i.t) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ractor_lock.exit
  %i.u = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i14, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i15

rb_ec_ractor_ptr.exit.i15:                        ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %.val.i16 = load ptr, ptr %i.v, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.w = getelementptr i8, ptr %.val.i16, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr i8, ptr %i.x, i64 448
  store i8 0, ptr %i.y, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i15
  tail call void @rb_native_mutex_unlock(ptr noundef %i.g) #21
  tail call void @rb_native_mutex_lock(ptr noundef %i.f) #21
  ret void
}

declare void @rb_ec_check_ints(ptr noundef) local_unnamed_addr #1

declare void @rb_native_mutex_unlock(ptr noundef) local_unnamed_addr #1

declare void @rb_ractor_sched_wakeup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_native_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ractor_free_all_ports_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not12.i = icmp eq ptr %i.b, %i.a
  br i1 %.not12.i, label %ractor_queue_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.pn.in13.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 6 uses
  %.09.i = getelementptr i8, ptr %.pn.in13.i, i64 -40
  %.pn.i = load ptr, ptr %.pn.in13.i, align 8, !tbaa !111 ; 4 uses
  %i.c = getelementptr i8, ptr %.pn.in13.i, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = getelementptr i8, ptr %.pn.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !112
  store ptr %.pn.i, ptr %i.d, align 8, !tbaa !111
  store ptr %.pn.in13.i, ptr %i.c, align 8, !tbaa !112
  store ptr %.pn.in13.i, ptr %.pn.in13.i, align 8, !tbaa !111
  tail call void @ruby_xfree(ptr noundef %.09.i) #21
  %.not.i = icmp eq ptr %.pn.i, %i.a
  br i1 %.not.i, label %ractor_queue_free.exit, label %.lr.ph.i, !llvm.loop !117

ractor_queue_free.exit:                           ; preds = %.lr.ph.i, %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #21
  ret i32 0
}

declare void @rb_thread_sched_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #1

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

declare void @rb_native_mutex_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #15

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ractor_send0(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 2) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.obj_traverse_replace_data, align 8 ; 8 uses
  %5 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %6 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %7 = alloca %struct.obj_traverse_replace_data, align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !57
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @move_enter, ptr %7, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @move_leave, ptr %i.d, align 8, !tbaa !184
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 36, ptr %i.f, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 1, ptr %i.g, align 8, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.h, i8 0, i64 7, i1 false)
  %i.i = call fastcc i32 @obj_traverse_replace_i(i64 noundef %1, ptr noundef nonnull %7)
  %.not.i.i.i.i = icmp ne i32 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.k = icmp eq i64 %i.j, 36
  %i.l = select i1 %.not.i.i.i.i, i1 true, i1 %i.k
  br i1 %i.l, label %bb.c, label %ractor_basket_new.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.89) #22
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.n = icmp eq i64 %1, 0
  %i.o = and i64 %1, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %ractor_basket_new.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = inttoptr i64 %1 to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !119
  %i.t = and i64 %i.s, 256
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %ractor_basket_new.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @shareable_p_enter, ptr %5, align 8, !tbaa !161
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @null_leave, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef nonnull %5)
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %rb_ractor_shareable_p.exit.thread4.i.i

rb_ractor_shareable_p.exit.thread4.i.i:           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not8.i.i.i.i.i, label %rb_ractor_shareable_p.exit.thread2.i.i, label %rb_ractor_shareable_p.exit.i.i

rb_ractor_shareable_p.exit.thread2.i.i:           ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %ractor_basket_new.exit

rb_ractor_shareable_p.exit.i.i:                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr @mark_shareable, ptr %6, align 8, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !166
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.z, align 4
  %i.aa = ptrtoint ptr %6 to i64
  %i.ab = call i32 @rb_st_foreach(ptr noundef nonnull %i.x, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.aa) #21 ; 0 uses
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ad = icmp eq i32 %i.ac, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.ad, label %ractor_basket_new.exit, label %bb.h

bb.h:                                             ; preds = %rb_ractor_shareable_p.exit.i.i, %rb_ractor_shareable_p.exit.thread4.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @copy_enter, ptr %4, align 8, !tbaa !182
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @copy_leave, ptr %i.ae, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i64 36, ptr %i.ag, align 8, !tbaa !185
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ah, align 8
  %i.ai = call fastcc i32 @obj_traverse_replace_i(i64 noundef %1, ptr noundef nonnull %4)
  %.not.i.i8.i.i = icmp ne i32 %i.ai, 0
  %i.aj = load i64, ptr %i.ag, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ak = icmp eq i64 %i.aj, 36
  %i.al = select i1 %.not.i.i8.i.i, i1 true, i1 %i.ak
  br i1 %i.al, label %bb.i, label %ractor_basket_new.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.111) #22
  unreachable

ractor_basket_new.exit:                           ; preds = %bb.b, %bb.d, %bb.e, %rb_ractor_shareable_p.exit.thread2.i.i, %rb_ractor_shareable_p.exit.i.i, %bb.h
  %.0.i = phi i32 [ 3, %bb.b ], [ 2, %bb.h ], [ 1, %bb.d ], [ 1, %rb_ractor_shareable_p.exit.i.i ], [ 1, %rb_ractor_shareable_p.exit.thread2.i.i ], [ 1, %bb.e ]
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.h ], [ %1, %bb.d ], [ %1, %rb_ractor_shareable_p.exit.i.i ], [ %1, %rb_ractor_shareable_p.exit.thread2.i.i ], [ %1, %bb.e ]
  %i.an = call noalias noundef nonnull dereferenceable(56) ptr @ruby_xmalloc(i64 noundef 56) #24 ; 7 uses
  store i32 %.0.i, ptr %i.an, align 8, !tbaa !248
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.0.i.i, ptr %i.ao, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i8 0, ptr %i.ap, align 8, !tbaa !142
  %i.aq = load ptr, ptr %0, align 8, !tbaa !205
  %i.ar = getelementptr i8, ptr %i.aq, i64 56
  call void @rb_native_mutex_lock(ptr noundef %i.ar) #21
  %i.as = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %ractor_lock.exit.i, label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %ractor_basket_new.exit
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %.val.i.i = load ptr, ptr %i.at, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.au = getelementptr i8, ptr %.val.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.aw = getelementptr i8, ptr %i.av, i64 448
  store i8 1, ptr %i.aw, align 8, !tbaa !47
  br label %ractor_lock.exit.i

ractor_lock.exit.i:                               ; preds = %rb_ec_ractor_ptr.exit.i.i, %ractor_basket_new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ax = load ptr, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !115 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.az, null
  br i1 %.not.i13.i, label %ractor_closed_port_p.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %ractor_lock.exit.i
  %i.ba = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val.i14.i = load i64, ptr %i.ba, align 8, !tbaa !136
  %i.bb = call i32 @rb_st_lookup(ptr noundef nonnull %i.az, i64 noundef %.val.i14.i, ptr noundef nonnull %i.a) #21
  %.not5.i.i = icmp eq i32 %i.bb, 0
  %.pre.pre.i = load ptr, ptr %0, align 8, !tbaa !205 ; 4 uses
  br i1 %.not5.i.i, label %ractor_closed_port_p.exit.thread.i, label %ractor_closed_port_p.exit.i

ractor_closed_port_p.exit.thread.i:               ; preds = %bb.j, %ractor_lock.exit.i
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.j ], [ %i.ax, %ractor_lock.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.critedge.i

ractor_closed_port_p.exit.i:                      ; preds = %bb.j
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !123, !range !77, !noundef !25
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %i.bf, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %ractor_closed_port_p.exit.i
  %.val.i = load i64, ptr %i.ba, align 8, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.val.i, ptr %i.bg, align 8, !tbaa !207
  %i.bh = getelementptr i8, ptr %.pre.pre.i, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !116 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 3 uses
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
  %.val.i17.i = load ptr, ptr %i.bo, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.bp = getelementptr i8, ptr %.val.i17.i, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.br = getelementptr i8, ptr %i.bq, i64 448
  store i8 0, ptr %i.br, align 8, !tbaa !47
  br label %ractor_unlock.exit.i

ractor_unlock.exit.i:                             ; preds = %rb_ec_ractor_ptr.exit.i16.i, %bb.k
  %i.bs = getelementptr i8, ptr %.pre.pre.i, i64 56
  call void @rb_native_mutex_unlock(ptr noundef %i.bs) #21
  %i.bt = load ptr, ptr %0, align 8, !tbaa !205   ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 56     ; 2 uses
  call void @rb_native_mutex_lock(ptr noundef %i.bu) #21
  %i.bv = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i7, label %ractor_lock.exit.i.i, label %rb_ec_ractor_ptr.exit.i.i.i

rb_ec_ractor_ptr.exit.i.i.i:                      ; preds = %ractor_unlock.exit.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %.val.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.bx = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.bz = getelementptr i8, ptr %i.by, i64 448
  store i8 1, ptr %i.bz, align 8, !tbaa !47
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
  store i32 1, ptr %i.cg, align 8, !tbaa !243
  %i.ch = getelementptr i8, ptr %i.cb, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !245
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
  store i32 1, ptr %i.cp, align 8, !tbaa !243
  %i.cq = getelementptr i8, ptr %i.ck, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !245
  call void @rb_ractor_sched_wakeup(ptr noundef nonnull %i.bt, ptr noundef %i.cr) #21
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.cs, %i.ca
  br i1 %.not.i12.i.i, label %ccan_list_pop_.exit.thread.i.i, label %ccan_list_pop_.exit.i.i, !llvm.loop !249

ccan_list_pop_.exit.thread.i.i:                   ; preds = %bb.m, %ccan_list_pop_.exit.i.i, %bb.l, %ccan_list_pop_.exit.preheader.i.i, %ractor_lock.exit.i.i
  %i.ct = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i13.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i13.i.i, label %ractor_wakeup_all.exit.i, label %rb_ec_ractor_ptr.exit.i14.i.i

rb_ec_ractor_ptr.exit.i14.i.i:                    ; preds = %ccan_list_pop_.exit.thread.i.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 48
  %.val.i15.i.i = load ptr, ptr %i.cu, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.cv = getelementptr i8, ptr %.val.i15.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !26
  %i.cx = getelementptr i8, ptr %i.cw, i64 448
  store i8 0, ptr %i.cx, align 8, !tbaa !47
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
  %.val.i21.i = load ptr, ptr %i.da, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.db = getelementptr i8, ptr %.val.i21.i, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = getelementptr i8, ptr %i.dc, i64 448
  store i8 0, ptr %i.dd, align 8, !tbaa !47
  br label %ractor_unlock.exit22.i

ractor_unlock.exit22.i:                           ; preds = %rb_ec_ractor_ptr.exit.i20.i, %.critedge.i
  %i.de = getelementptr i8, ptr %i.cy, i64 56
  call void @rb_native_mutex_unlock(ptr noundef %i.de) #21
  br i1 %3, label %bb.n, label %ractor_send_basket.exit

bb.n:                                             ; preds = %ractor_unlock.exit22.i
  call fastcc void @ractor_basket_free(ptr noundef nonnull %i.an)
  %i.df = load i64, ptr @rb_eRactorClosedError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.df, ptr noundef nonnull @.str.76) #22
  unreachable

ractor_send_basket.exit:                          ; preds = %ractor_wakeup_all.exit.i, %ractor_unlock.exit22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.b, ptr %i.c, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !251
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.dh = load volatile i64, ptr %i.dg, align 8, !tbaa !57 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @move_enter(i64 noundef %0, ptr noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  %i.h = and i64 %i.g, 256
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.i, align 8, !tbaa !163
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
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !166
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = ptrtoint ptr %3 to i64
  %i.p = call i32 @rb_st_foreach(ptr noundef nonnull %i.l, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.o) #21 ; 0 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.r = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.r, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread19, %rb_ractor_shareable_p.exit
  %i.s = load i64, ptr %i.f, align 8, !tbaa !119
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
  %i.aa = getelementptr i8, ptr @wb_protected_types, i64 %i.t
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !252, !range !77, !noundef !25
  %i.ac = shl nuw nsw i8 %i.ab, 5
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.t, %i.ad
  %i.af = call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef %i.ae, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = add i64 %i.u, -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ai, i8 noundef 0, i64 noundef %i.aj, i1 noundef false) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread17, %bb.a, %bb.b, %bb.h
  %.sink = phi i64 [ %i.ag, %bb.h ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %rb_ractor_shareable_p.exit.thread17 ], [ %0, %rb_ractor_shareable_p.exit ]
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %rb_ractor_shareable_p.exit.thread17 ], [ 1, %rb_ractor_shareable_p.exit ]
  %i.ak = getelementptr i8, ptr %1, i64 32
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !185
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @move_leave(i64 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119
  %i.c = and i64 %i.b, -33
  %i.d = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !185
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  %i.h = and i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %i.f, align 8, !tbaa !119
  %i.j = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.k = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #21
  %i.l = add i64 %i.k, -8                         ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.f, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.m, ptr noundef nonnull readonly align 1 %i.j, i64 noundef range(i64 1, 0) %i.l, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.n = load i64, ptr %i.d, align 8, !tbaa !185
  tail call void @rb_gc_writebarrier_remember(i64 noundef %i.n) #21
  %i.o = icmp eq i64 %0, 0
  %i.p = and i64 %0, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  %.pre = load i64, ptr %i.a, align 8, !tbaa !119 ; 2 uses
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
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.c, !prof !253

bb.c:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !185
  tail call void @rb_replace_generic_ivar(i64 noundef %i.v, i64 noundef %0) #21
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.c, %rb_obj_gen_fields_p.exit
  %i.w = load i64, ptr %i.d, align 8, !tbaa !185
  tail call void @rb_gc_obj_id_moved(i64 noundef %i.w) #21
  %i.x = load i64, ptr %i.a, align 8, !tbaa !119
  %i.y = and i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, 2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #21
  store i64 %i.z, ptr %i.a, align 8, !tbaa !119
  %i.aa = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !57
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
  store i64 %0, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 32
  store i64 %0, ptr %i.h, align 8, !tbaa !185
  br label %.critedge209

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !182
  %i.j = tail call i32 %i.i(i64 noundef %0, ptr noundef nonnull %1) #21
  switch i32 %i.j, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %.critedge209
  ]

bb.d:                                             ; preds = %bb.c
  br label %.critedge209

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 32         ; 13 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !185
  store i64 %i.l, ptr %i.b, align 8, !tbaa !57
  %i.m = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !254  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %obj_traverse_replace_rec.exit, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @rb_ident_hash_new() #21   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !255
  %i.q = add i64 %i.o, 24
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !254
  br label %obj_traverse_replace_rec.exit

obj_traverse_replace_rec.exit:                    ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %i.t = call i32 @rb_st_lookup(ptr noundef %i.s, i64 noundef %0, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !256

bb.g:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.u, ptr %i.k, align 8, !tbaa !185
  br label %.critedge209

bb.h:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !254  ; 2 uses
  %.not.i218 = icmp eq ptr %i.v, null
  br i1 %.not.i218, label %bb.i, label %rb_obj_written.exit, !prof !132

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @rb_ident_hash_new() #21        ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !255
  %i.y = add i64 %i.w, 24
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store ptr %i.z, ptr %i.m, align 8, !tbaa !254
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.z, %bb.i ], [ %i.v, %bb.h ]
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !57
  %i.ac = call i32 @rb_st_insert(ptr noundef %i.aa, i64 noundef %0, i64 noundef %i.ab) #21 ; 0 uses
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !255
  call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %0) #21
  %i.af = load i64, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_obj_written.exit220, label %bb.j

bb.j:                                             ; preds = %rb_obj_written.exit
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !255
  call void @rb_gc_writebarrier(i64 noundef %i.ak, i64 noundef %i.af) #21
  br label %rb_obj_written.exit220

rb_obj_written.exit220:                           ; preds = %rb_obj_written.exit, %bb.j
  %i.al = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !247, !range !77, !noundef !25
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit220
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rb_obj_written.exit220
  %i.ap = phi i64 [ %i.ao, %bb.k ], [ %0, %rb_obj_written.exit220 ] ; 48 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = and i64 %i.ap, 7                        ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as                      ; 2 uses
  %.pre.i = inttoptr i64 %i.ap to ptr             ; 14 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !119 ; 2 uses
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
  %.not248 = icmp eq i64 %i.aw, 0
  br i1 %.not248, label %rb_obj_gen_fields_p.exit.thread, label %bb.m, !prof !253

bb.m:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.ax = call i64 @rb_obj_fields(i64 noundef %i.ap, i64 noundef 0) #21 ; 5 uses
end_hunk_2
begin_hunk_3_@obj_traverse_replace_i:bb.a

bb.au:                                            ; preds = %bb.at
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !57
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = and i64 %i.ew, 7
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = or i1 %i.ex, %i.ez
  br i1 %i.fa, label %rb_obj_write.exit233, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.ew) #21
  br label %rb_obj_write.exit233

rb_obj_write.exit233:                             ; preds = %bb.at, %bb.au, %bb.av
  %i.fb = add nuw nsw i64 %.0160262, 1            ; 2 uses
  %exitcond274.not = icmp eq i64 %i.fb, %.0.i230244
  br i1 %exitcond274.not, label %.critedge197, label %.lr.ph263, !llvm.loop !269

bb.aw:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fc = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !270 ; 2 uses
  %i.fe = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fd, ptr noundef nonnull %1)
  %.not182 = icmp eq i32 %i.fe, 0
  br i1 %.not182, label %bb.ax, label %.critedge209

bb.ax:                                            ; preds = %bb.aw
  %i.ff = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not183 = icmp eq i64 %i.ff, %i.fd
  br i1 %.not183, label %.critedge197, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.ff, ptr %i.fc, align 8, !tbaa !57
  %i.fg = icmp eq i64 %i.ff, 0
  %i.fh = and i64 %i.ff, 7
  %i.fi = icmp ne i64 %i.fh, 0
  %i.fj = or i1 %i.fg, %i.fi
  br i1 %i.fj, label %.critedge197, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.ff) #21
  br label %.critedge197

bb.ba:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.fk = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !272 ; 2 uses
  %i.fm = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.fl, ptr noundef nonnull %1)
  %.not178 = icmp eq i32 %i.fm, 0
  br i1 %.not178, label %bb.bb, label %.critedge209

bb.bb:                                            ; preds = %bb.ba
  %i.fn = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not179 = icmp eq i64 %i.fn, %i.fl
  br i1 %.not179, label %rb_obj_write.exit235, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.fn, ptr %i.fk, align 8, !tbaa !57
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = and i64 %i.fn, 7
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = or i1 %i.fo, %i.fq
  br i1 %i.fr, label %rb_obj_write.exit235, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.fn) #21
  br label %rb_obj_write.exit235

rb_obj_write.exit235:                             ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.fs = getelementptr i8, ptr %.pre.i, i64 24   ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !274 ; 2 uses
  %i.fu = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.ft, ptr noundef nonnull %1)
  %.not180 = icmp eq i32 %i.fu, 0
  br i1 %.not180, label %bb.be, label %.critedge209

bb.be:                                            ; preds = %rb_obj_write.exit235
  %i.fv = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not181 = icmp eq i64 %i.fv, %i.ft
  br i1 %.not181, label %.critedge197, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i64 %i.fv, ptr %i.fs, align 8, !tbaa !57
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = and i64 %i.fv, 7
  %i.fy = icmp ne i64 %i.fx, 0
  %i.fz = or i1 %i.fw, %i.fy
  br i1 %i.fz, label %.critedge197, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.fv) #21
  br label %.critedge197

bb.bh:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ga = getelementptr i8, ptr %.pre.i, i64 16   ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !275 ; 2 uses
  %i.gc = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.gb, ptr noundef nonnull %1)
  %.not174 = icmp eq i32 %i.gc, 0
  br i1 %.not174, label %bb.bi, label %.critedge209

bb.bi:                                            ; preds = %bb.bh
  %i.gd = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not175 = icmp eq i64 %i.gd, %i.gb
  br i1 %.not175, label %rb_obj_write.exit237, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.gd, ptr %i.ga, align 8, !tbaa !57
  %i.ge = icmp eq i64 %i.gd, 0
  %i.gf = and i64 %i.gd, 7
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = or i1 %i.ge, %i.gg
  br i1 %i.gh, label %rb_obj_write.exit237, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.gd) #21
  br label %rb_obj_write.exit237

rb_obj_write.exit237:                             ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.gi = getelementptr i8, ptr %.pre.i, i64 24   ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !277 ; 2 uses
  %i.gk = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.gj, ptr noundef nonnull %1)
  %.not176 = icmp eq i32 %i.gk, 0
  br i1 %.not176, label %bb.bl, label %.critedge209

bb.bl:                                            ; preds = %rb_obj_write.exit237
  %i.gl = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not177 = icmp eq i64 %i.gl, %i.gj
  br i1 %.not177, label %.critedge197, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.gl, ptr %i.gi, align 8, !tbaa !57
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = and i64 %i.gl, 7
  %i.go = icmp ne i64 %i.gn, 0
  %i.gp = or i1 %i.gm, %i.go
  br i1 %i.gp, label %.critedge197, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.gl) #21
  br label %.critedge197

bb.bo:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.gq = load i8, ptr %i.al, align 8, !tbaa !247, !range !77, !noundef !25
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gs = call fastcc i32 @obj_refer_only_shareables_p(i64 noundef %i.ap)
  %.not173 = icmp eq i32 %i.gs, 0
  br i1 %.not173, label %._crit_edge, label %.critedge197

._crit_edge:                                      ; preds = %bb.bp
  %.pre284 = load i8, ptr %i.al, align 8, !tbaa !247, !range !77
  %i.gt = trunc nuw i8 %.pre284 to i1
  %i.gu = select i1 %i.gt, ptr @.str.91, ptr @.str.92
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge, %bb.bo
  %i.gv = phi ptr [ %i.gu, %._crit_edge ], [ @.str.91, %bb.bo ]
  %i.gw = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  %i.gx = call fastcc i64 @rb_class_of(i64 noundef %i.ap) #25
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gw, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.gv, i64 noundef %i.gx) #22
  unreachable

bb.br:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_obj_info_dump_loc(i64 noundef %i.ap, ptr noundef nonnull @.str, i32 noundef 1952, ptr noundef nonnull @__func__.obj_traverse_replace_i) #21
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

.critedge197:                                     ; preds = %rb_obj_write.exit233, %rb_obj_write.exit228, %RSTRUCT_CONST_PTR.exit, %ROBJECT_FIELDS.exit, %bb.bl, %bb.bm, %bb.bn, %bb.be, %bb.bf, %bb.bg, %bb.ax, %bb.ay, %bb.az, %bb.ap, %bb.bp, %bb.w, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %rb_obj_gen_fields_p.exit.thread, %.critedge200, %bb.u
  %i.gy = phi i64 [ %i.ap, %rb_obj_write.exit228 ], [ %i.ap, %bb.u ], [ %i.ap, %RSTRUCT_CONST_PTR.exit ], [ %i.ap, %ROBJECT_FIELDS.exit ], [ %i.ap, %bb.bl ], [ %i.ap, %bb.bm ], [ %i.ap, %bb.bn ], [ %i.ap, %bb.be ], [ %i.ap, %bb.bf ], [ %i.ap, %bb.bg ], [ %i.ap, %bb.ax ], [ %i.ap, %bb.ay ], [ %i.ap, %bb.az ], [ %i.ap, %bb.ap ], [ %i.ap, %bb.bp ], [ %i.ap, %bb.w ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %i.ap, %rb_obj_gen_fields_p.exit.thread ], [ %.pre285, %.critedge200 ], [ %i.ap, %rb_obj_write.exit233 ]
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.gz, ptr %i.k, align 8, !tbaa !185
  %i.ha = getelementptr i8, ptr %1, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !184
  %i.hc = call i32 %i.hb(i64 noundef %i.gy, ptr noundef nonnull %1) #21
  %i.hd = icmp eq i32 %i.hc, 2
  %. = zext i1 %i.hd to i32
  br label %.critedge209

.critedge202:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge209

.critedge204:                                     ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge209

.critedge209:                                     ; preds = %.lr.ph, %.lr.ph263, %bb.ag, %.lr.ph266, %rb_imemo_fields_complex_tbl.exit, %rb_obj_write.exit237, %bb.bh, %rb_obj_write.exit235, %bb.ba, %bb.aw, %.critedge197, %rb_obj_gen_fields_p.exit.thread, %.critedge204, %.critedge202, %bb.c, %bb.w, %bb.g, %bb.d, %bb.b
  %.24 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ %., %.critedge197 ], [ 1, %rb_obj_gen_fields_p.exit.thread ], [ 1, %bb.w ], [ 1, %rb_obj_write.exit237 ], [ 1, %.lr.ph263 ], [ 1, %.lr.ph266 ], [ 1, %bb.ba ], [ 1, %bb.ag ], [ 1, %rb_obj_write.exit235 ], [ 1, %bb.aw ], [ 1, %.critedge202 ], [ 1, %.critedge204 ], [ 1, %bb.bh ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %rb_imemo_fields_complex_tbl.exit ], [ 1, %.lr.ph ]
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
define internal range(i32 0, 2) i32 @obj_iv_hash_traverse_replace_i(ptr readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !57
  %i.e = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.d, ptr noundef %i.c)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !262
  br label %rb_obj_written.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.c, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !185  ; 5 uses
  %.not12 = icmp eq i64 %i.f, %i.h
  br i1 %.not12, label %rb_obj_written.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %1, align 8, !tbaa !57
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_written.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !258
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.h) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare void @rb_str_make_independent(i64 noundef) local_unnamed_addr #1

declare void @rb_ary_cancel_sharing(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #15

declare i32 @rb_hash_stlike_foreach_with_replace(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @obj_hash_traverse_replace_foreach_i(i64 %0, i64 %1, i64 %2, i32 %3) #9 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @obj_hash_traverse_replace_i(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261  ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !57
  %i.e = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.d, ptr noundef %i.c)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !262
  br label %rb_obj_written.exit25

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !185  ; 5 uses
  %.not22 = icmp eq i64 %i.f, %i.h
  br i1 %.not22, label %rb_obj_written.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %0, align 8, !tbaa !57
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_written.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !258
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.h) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.e, %bb.d, %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !57
  %i.p = tail call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.o, ptr noundef nonnull %i.c)
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_obj_written.exit
  store i8 1, ptr %i.a, align 8, !tbaa !262
  br label %rb_obj_written.exit25

bb.g:                                             ; preds = %rb_obj_written.exit
  %i.q = load i64, ptr %1, align 8, !tbaa !57
  %i.r = load i64, ptr %i.g, align 8, !tbaa !185  ; 5 uses
  %.not24 = icmp eq i64 %i.q, %i.r
  br i1 %.not24, label %rb_obj_written.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.r, ptr %1, align 8, !tbaa !57
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_written.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !258
  tail call void @rb_gc_writebarrier(i64 noundef %i.x, i64 noundef %i.r) #21
  br label %rb_obj_written.exit25

rb_obj_written.exit25:                            ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

declare i64 @rb_hash_set_ifnone(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @obj_refer_only_shareables_p(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter_nb.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.b) #21
  br label %rb_vm_lock_enter_nb.exit

rb_vm_lock_enter_nb.exit:                         ; preds = %bb.b, %bb.a
  call void @rb_objspace_reachable_objects_from(i64 noundef %0, ptr noundef nonnull @obj_refer_only_shareables_p_i, ptr noundef nonnull %i.a) #21
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i.i2, label %bb.c, label %rb_vm_lock_leave_nb.exit

bb.c:                                             ; preds = %rb_vm_lock_enter_nb.exit
  call void @rb_vm_lock_leave_body_nb(ptr noundef nonnull %i.b) #21
  br label %rb_vm_lock_leave_nb.exit

rb_vm_lock_leave_nb.exit:                         ; preds = %rb_vm_lock_enter_nb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  %i.f = icmp eq i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !57
  ret i64 %.0
}

declare void @rb_obj_info_dump_loc(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #18

declare i64 @rb_ident_hash_new() local_unnamed_addr #1

declare i64 @rb_obj_fields(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #1

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #1

declare void @rb_objspace_reachable_objects_from(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @obj_refer_only_shareables_p_i(i64 noundef %0, ptr noundef captures(none) %1) #0 {
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !163
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
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.q, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread5, %rb_ractor_shareable_p.exit
  %i.r = load i32, ptr %1, align 4, !tbaa !7
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %1, align 4, !tbaa !7
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
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !205  ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !205
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
  %.val = load i64, ptr %i.m, align 8, !tbaa !136
  %i.n = getelementptr i8, ptr %i.c, i64 8
  store i64 %.val, ptr %i.n, align 8, !tbaa !136
  ret i64 %0
}

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @ractor_port_init(i64 noundef returned %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !205
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !278  ; 3 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !278
  %i.l = getelementptr i8, ptr %i.c, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !136
  %i.m = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #24 ; 6 uses
end_hunk_3
begin_hunk_4_@obj_traverse_i:bb.a
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef nonnull @obj_hash_traverse_i, i64 noundef %i.am) #21
  %i.an = load i8, ptr %3, align 8, !tbaa !284, !range !77, !noundef !25
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
  %i.au = load i64, ptr %i.at, align 8, !tbaa !145
  %i.av = getelementptr i8, ptr %i.v, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !145
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.p, %bb.q
  %.0.i84 = phi i64 [ %i.ar, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  %.0.i80 = phi ptr [ %i.as, %bb.p ], [ %i.aw, %bb.q ]
  %.not7290 = icmp sgt i64 %.0.i84, 0
  br i1 %.not7290, label %.lr.ph, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  %i.ax = add nuw nsw i64 %.05791, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %.0.i84
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !286

.lr.ph:                                           ; preds = %RSTRUCT_CONST_PTR.exit, %bb.r
  %.05791 = phi i64 [ %i.ax, %bb.r ], [ 0, %RSTRUCT_CONST_PTR.exit ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %.0.i80, i64 %.05791
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !57
  %i.ba = call fastcc i32 @obj_traverse_i(i64 noundef %i.az, ptr noundef nonnull %1)
  %.not71 = icmp eq i32 %i.ba, 0
  br i1 %.not71, label %bb.r, label %.loopexit

bb.s:                                             ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %i.v, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !270
  %i.bd = call fastcc i32 @obj_traverse_i(i64 noundef %i.bc, ptr noundef nonnull %1)
  %.not70 = icmp eq i32 %i.bd, 0
  br i1 %.not70, label %.critedge, label %.loopexit

bb.t:                                             ; preds = %bb.f
  %i.be = getelementptr i8, ptr %i.v, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !272
  %i.bg = call fastcc i32 @obj_traverse_i(i64 noundef %i.bf, ptr noundef nonnull %1)
  %.not68 = icmp eq i32 %i.bg, 0
  br i1 %.not68, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %i.v, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !274
  %i.bj = call fastcc i32 @obj_traverse_i(i64 noundef %i.bi, ptr noundef nonnull %1)
  %.not69 = icmp eq i32 %i.bj, 0
  br i1 %.not69, label %.critedge, label %.loopexit

bb.v:                                             ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %i.v, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !275
  %i.bm = call fastcc i32 @obj_traverse_i(i64 noundef %i.bl, ptr noundef nonnull %1)
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr i8, ptr %i.v, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !277
  %i.bp = call fastcc i32 @obj_traverse_i(i64 noundef %i.bo, ptr noundef nonnull %1)
  %.not67 = icmp eq i32 %i.bp, 0
  br i1 %.not67, label %.critedge, label %.loopexit

bb.x:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !281
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
  %i.bt = load i8, ptr %4, align 8, !tbaa !284, !range !77, !noundef !25
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bu, label %.loopexit, label %.critedge

bb.aa:                                            ; preds = %bb.f
  call void @rb_obj_info_dump_loc(i64 noundef %0, ptr noundef nonnull @.str, i32 noundef 1392, ptr noundef nonnull @__func__.obj_traverse_i) #21
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.93) #23
  unreachable

.critedge:                                        ; preds = %bb.r, %RARRAY_LENINT.exit, %RSTRUCT_CONST_PTR.exit, %rb_vm_lock_leave_nb.exit, %bb.w, %bb.u, %bb.s, %bb.n, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.bv = getelementptr i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !163
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = tail call i32 %i.b(i64 noundef %0) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !166
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = tail call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !284
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = tail call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.f = tail call fastcc i32 @obj_traverse_i(i64 noundef %1, ptr noundef %i.e)
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !284
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @obj_traverse_reachable_i(i64 noundef %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.c = tail call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8, !tbaa !284
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_ractor_make_shareable(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_id(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @copy_enter(i64 noundef %0, ptr noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !163
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
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !166
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
  store i64 %.sink, ptr %i.s, align 8, !tbaa !185
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @copy_leave(i64 %0, ptr readnone captures(none) %1) #9 {
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
  store i64 %0, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !287

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !119
  %i.i = and i64 %i.h, 95
  %or.cond.not.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !288

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @cross_ractor_require_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !256

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.s = getelementptr i8, ptr %.016.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !289  ; 2 uses
  %i.u = icmp eq ptr %i.t, @cross_ractor_require_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !290

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @cross_ractor_require_data_type) #21
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.v, %.critedge.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.q, %bb.d ] ; 4 uses
  %i.w = getelementptr i8, ptr %.1.i, i64 32
  %i.x = load i8, ptr %i.w, align 8, !tbaa !203, !range !77, !noundef !25
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = load i64, ptr @rb_eException, align 8, !tbaa !57
  %i.aa = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef %1, i64 noundef %0, ptr noundef nonnull @require_rescue, i64 noundef %0, i64 noundef %i.z, i32 noundef 0) #21
  br label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ab = tail call ptr @rb_ruby_debug_ptr() #21
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !57
  %i.ad = tail call i64 @rb_errinfo() #21
  %i.ae = load i64, ptr @rb_eException, align 8, !tbaa !57
  %i.af = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef %1, i64 noundef %0, ptr noundef nonnull @require_rescue, i64 noundef %0, i64 noundef %i.ae, i32 noundef 0) #21
  %i.ag = tail call ptr @rb_ruby_debug_ptr() #21
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !57
  tail call void @rb_set_errinfo(i64 noundef %i.ad) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ah = phi i64 [ %i.af, %bb.f ], [ %i.aa, %bb.e ]
  %i.ai = load i64, ptr %.1.i, align 8, !tbaa !204
  %i.aj = getelementptr i8, ptr %.1.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !201, !range !77, !noundef !25
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.al, i64 20, i64 0
  %i.an = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ah, i64 noundef %i.am) #21
  %i.ao = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ai, i64 noundef %i.an) #21
  %i.ap = load i64, ptr @rb_eException, align 8, !tbaa !57
  %i.aq = load i64, ptr %.1.i, align 8, !tbaa !204
  %i.ar = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @require_result_send_body, i64 noundef %i.ao, ptr noundef nonnull @require_result_send_resuce, i64 noundef %i.ap, i64 noundef %i.aq) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.a, ptr %i.b, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #21, !srcloc !291
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.at = load volatile i64, ptr %i.as, align 8, !tbaa !57 ; 0 uses
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
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !287

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !288

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @cross_ractor_require_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !256

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !289  ; 2 uses
  %i.t = icmp eq ptr %i.s, @cross_ractor_require_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !290

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @cross_ractor_require_data_type) #21
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.v = getelementptr i8, ptr %.1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !145  ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !57
  %.pr.i = load i64, ptr @require_body.rbimpl_id, align 8, !tbaa !57 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rbimpl_check_typeddata.exit, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.113, i64 noundef 7) #21 ; 3 uses
  store i64 %i.x, ptr @require_body.rbimpl_id, align 8, !tbaa !57
  %.not.i4 = icmp eq i64 %i.x, 0
  br i1 %.not.i4, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !114

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rbimpl_check_typeddata.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rbimpl_check_typeddata.exit ], [ %i.x, %.lr.ph.i ]
  %i.y = getelementptr i8, ptr %.1.i, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !203, !range !77, !noundef !25
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

end_hunk_4
