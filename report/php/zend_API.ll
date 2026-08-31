Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_API?download=true
inline.NumInlined: 137
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@zend_update_static_property_string:zend_string_alloc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %3, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !49
  store ptr %i.d, ptr %4, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !49
  store i32 0, ptr %i.d, align 8, !tbaa !54
  %i.k = and i64 %2, -8
  %i.l = add i64 %i.k, 32
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.l) #35 ; 7 uses
  store i32 1, ptr %i.m, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 22, ptr %i.n, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %i.p, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %2
  store i8 0, ptr %i.r, align 1, !tbaa !49
  %i.s = call i32 @zend_update_static_property_ex(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %4)
  call void @_efree(ptr noundef nonnull %i.m) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_update_static_property_stringl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = and i64 %4, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %4, ptr %i.f, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %3, i64 %4, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %4
  store i8 0, ptr %i.h, align 1, !tbaa !49
  store ptr %i.c, ptr %5, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !49
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.j = and i64 %2, -8
  %i.k = add i64 %i.j, 32
  %i.l = tail call noalias ptr @_emalloc(i64 noundef %i.k) #35 ; 7 uses
  store i32 1, ptr %i.l, align 4, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 22, ptr %i.m, align 4, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !173
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %2, ptr %i.o, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %2
  store i8 0, ptr %i.q, align 1, !tbaa !49
  %i.r = call i32 @zend_update_static_property_ex(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef nonnull %5)
  call void @_efree(ptr noundef nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret i32 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_read_property_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !374
  %i.f = select i1 %3, i32 3, i32 0
  %i.g = tail call ptr %i.e(ptr noundef %1, ptr noundef %2, i32 noundef %i.f, ptr noundef null, ptr noundef %4) #32
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_read_property(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %i.a = and i64 %3, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 9 uses
  store i32 1, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 22, ptr %i.d, align 4, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %3, ptr %i.f, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %2, i64 %3, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %3
  store i8 0, ptr %i.h, align 1, !tbaa !49
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !374
  %i.n = select i1 %4, i32 3, i32 0
  %i.o = tail call ptr %i.m(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %i.n, ptr noundef null, ptr noundef %5) #32, !inline_history !375
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  %i.p = load i32, ptr %i.d, align 4, !tbaa !49
  %i.q = and i32 %i.p, 64
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.a, label %zend_string_release_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.r = load i32, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.t, ptr %i.c, align 8, !tbaa !54
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %zend_string_release_ex.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %i.c) #32
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %zend_string_alloc.exit, %bb.a, %bb.b
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_read_static_property_ex(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  %i.b = select i1 %2, i32 3, i32 0
  %i.c = tail call ptr @zend_std_get_static_property(ptr noundef %0, ptr noundef %1, i32 noundef %i.b) #32
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  ret ptr %i.c
}

declare ptr @zend_std_get_static_property(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_read_static_property(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %i.a = and i64 %2, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 7 uses
  store i32 1, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.f, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2
  store i8 0, ptr %i.h, align 1, !tbaa !49
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  %i.j = select i1 %3, i32 3, i32 0
  %i.k = tail call ptr @zend_std_get_static_property(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.j) #32
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !140
  tail call void @_efree(ptr noundef nonnull %i.c) #32
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zend_save_error_handling(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 16)) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 840), align 8, !tbaa !376
  store i32 %i.a, ptr %0, align 8, !tbaa !377
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 832), align 8, !tbaa !379
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @zend_replace_error_handling(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #28 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 840), align 8, !tbaa !376
  store i32 %i.a, ptr %2, align 8, !tbaa !377
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 832), align 8, !tbaa !379
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !380
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %3 = icmp eq i32 %0, 1
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  tail call void @llvm.assume(i1 %5)
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 840), align 8, !tbaa !376
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 832), align 8, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zend_restore_error_handling(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #29 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !377
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 840), align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !380
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 832), align 8, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @zend_get_object_type_case(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79   ; 3 uses
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = select i1 %1, ptr @.str.132, ptr @.str.133
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 1
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = select i1 %1, ptr @.str.134, ptr @.str.135
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = and i32 %i.b, 268435456
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = select i1 %1, ptr @.str.136, ptr @.str.137
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = select i1 %1, ptr @.str.138, ptr @.str.139
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_is_iterable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49
  switch i8 %i.b, label %bb.c [
    i8 7, label %bb.d
    i8 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = load ptr, ptr @zend_ce_traversable, align 8, !tbaa !77
  %i.g = tail call zeroext i1 @zend_class_implements_interface(ptr noundef %i.e, ptr noundef %i.f) #32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_is_countable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49
  switch i8 %i.b, label %bb.d [
    i8 7, label %bb.e
    i8 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !381
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = load ptr, ptr @zend_ce_countable, align 8, !tbaa !77
  %i.k = tail call zeroext i1 @zend_class_implements_interface(ptr noundef %i.i, ptr noundef %i.j) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ %i.k, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_get_default_from_internal_arg_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct._zend_file_context, align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382  ; 17 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  switch i64 %i.e, label %bb.i [
    i64 4, label %bb.c
    i64 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 1
  %i.g = icmp ne i32 %i.f, 1819047278
  %i.h = zext i1 %i.g to i32
  %.not47 = icmp eq i32 %i.h, 0
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !49
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 1
  %i.k = icmp ne i32 %i.j, 1702195828
  %i.l = zext i1 %i.k to i32
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !49
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.d, align 1
  %i.o = xor i32 %i.n, 1936482662
  %i.p = getelementptr i8, ptr %i.d, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = xor i32 %i.r, 101
  %i.t = or i32 %i.o, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not51 = icmp eq i32 %i.v, 0
  br i1 %.not51, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.w, align 8, !tbaa !49
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  %i.x = icmp ugt i64 %i.e, 1
  br i1 %i.x, label %.thread, label %..split_crit_edge

..split_crit_edge:                                ; preds = %bb.i
  %.pre = load i8, ptr %i.d, align 1, !tbaa !49
  br label %.split

.thread:                                          ; preds = %bb.e, %bb.g, %bb.i
  %i.y = load i8, ptr %i.d, align 1, !tbaa !49    ; 7 uses
  switch i8 %i.y, label %bb.n [
    i8 39, label %bb.j
    i8 34, label %bb.j
  ]

bb.j:                                             ; preds = %.thread, %.thread
  %i.z = getelementptr i8, ptr %i.d, i64 %i.e
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !49
  %i.ac = icmp eq i8 %i.ab, %i.y
  br i1 %i.ac, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
end_hunk_0
