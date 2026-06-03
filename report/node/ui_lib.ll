inline.NumInlined: 24
inline.NumDeleted: 5
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local ptr @UI_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @UI_new_method(ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_new_method(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 25) #7 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CRYPTO_THREAD_lock_new() #7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !9
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @__func__.UI_new_method) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 524303, ptr noundef null) #7
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @UI_get_default_method() #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @UI_null() #7
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.e
  %.1 = phi ptr [ %i.i, %bb.f ], [ %i.g, %bb.e ], [ %0, %bb.d ]
  store ptr %.1, ptr %i.a, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.k = tail call i32 @CRYPTO_new_ex_data(i32 noundef 11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #7
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = and i32 %i.m, 2
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %UI_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  tail call void %i.q(ptr noundef nonnull %i.a, ptr noundef %i.s) #7, !inline_history !23
  br label %UI_free.exit

UI_free.exit:                                     ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.u, ptr noundef nonnull @free_string) #7
  tail call void @CRYPTO_free_ex_data(i32 noundef 11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #7
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !9
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.v) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %UI_free.exit
  %.sink = phi i32 [ 81, %UI_free.exit ], [ 33, %bb.c ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef %.sink) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.thread, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %.thread ], [ null, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @UI_get_default_method() local_unnamed_addr #2

declare ptr @UI_null() local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  tail call void %i.g(ptr noundef nonnull %0, ptr noundef %i.i) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.k, ptr noundef nonnull @free_string) #7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @CRYPTO_free_ex_data(i32 noundef 11, ptr noundef nonnull %0, ptr noundef nonnull %i.l) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.n) #7
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 81) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @free_string(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 53) #7
  %i.f = load i32, ptr %0, align 8, !tbaa !29
  %cond = icmp eq i32 %i.f, 3
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.h, ptr noundef nonnull @.str, i32 noundef 56) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef 57) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.l, ptr noundef nonnull @.str, i32 noundef 58) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 68) #7
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_add_input_string(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 0) i32 @general_allocate_string(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 1, 6) %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @general_allocate_prompt(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) ; 15 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @OPENSSL_sk_new_null() #7  ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !24
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %allocate_string_stack.exit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %9 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i32 %6, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %7, ptr %i.h, align 4, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %8, ptr %i.i, align 8, !tbaa !30
  %i.j = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %9, ptr noundef nonnull %i.a) #7 ; 3 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.j, -1                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25
  %i.o = and i32 %i.n, 1
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  tail call void @CRYPTO_free(ptr noundef %i.q, ptr noundef nonnull @.str, i32 noundef 53) #7
  %i.r = load i32, ptr %i.a, align 8, !tbaa !29
  %cond.i = icmp eq i32 %i.r, 3
  br i1 %cond.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.s, ptr noundef nonnull @.str, i32 noundef 56) #7
  br label %.sink.split.sink.split

allocate_string_stack.exit:                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !25
  %i.v = and i32 %i.u, 1
  %.not.i22 = icmp eq i32 %i.v, 0
  br i1 %.not.i22, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %allocate_string_stack.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  tail call void @CRYPTO_free(ptr noundef %i.x, ptr noundef nonnull @.str, i32 noundef 53) #7
  %i.y = load i32, ptr %i.a, align 8, !tbaa !29
  %cond.i23 = icmp eq i32 %i.y, 3
  br i1 %cond.i23, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 56) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.g, %bb.i
  %.sink.in = phi ptr [ %i.ab, %bb.i ], [ %i.i, %bb.g ]
  %.0.ph.ph = phi i32 [ -1, %bb.i ], [ %i.l, %bb.g ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %.sink, ptr noundef nonnull @.str, i32 noundef 57) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.ad, ptr noundef nonnull @.str, i32 noundef 58) #7
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.h, %allocate_string_stack.exit, %bb.f, %bb.e
  %.0.ph = phi i32 [ -1, %bb.h ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ -1, %allocate_string_stack.exit ], [ %.0.ph.ph, %.sink.split.sink.split ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 68) #7
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.j, %bb.d ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @UI_dup_input_string(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 212) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.012 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %.012, i32 noundef 1, i32 noundef 1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef null) ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_free(ptr noundef %.012, ptr noundef nonnull @.str, i32 noundef 221) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  ret i32 %.0
}

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_add_verify_string(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_dup_verify_string(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 243) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %.013, i32 noundef 1, i32 noundef 2, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_free(ptr noundef %.013, ptr noundef nonnull @.str, i32 noundef 252) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_add_input_boolean(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @general_allocate_boolean(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 0) i32 @general_allocate_boolean(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @__func__.general_allocate_boolean) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, ptr noundef null) #7
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %4, null
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.c = load i8, ptr %3, align 1, !tbaa !30      ; 2 uses
  %.not39 = icmp eq i8 %i.c, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @__func__.general_allocate_boolean) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, ptr noundef null) #7
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.d = phi i8 [ %i.h, %bb.f ], [ %i.c, %.preheader ]
  %.040 = phi ptr [ %i.g, %bb.f ], [ %3, %.preheader ]
  %i.e = sext i8 %i.d to i32
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.e) #8
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 165, ptr noundef nonnull @__func__.general_allocate_boolean) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 104, ptr noundef null) #7
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.i = tail call fastcc ptr @general_allocate_prompt(ptr noundef %1, i32 noundef %5, i32 noundef 3, i32 noundef %6, ptr noundef %7) ; 16 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.o, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @OPENSSL_sk_new_null() #7  ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !24
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %allocate_string_stack.exit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %8 = phi ptr [ %i.k, %bb.g ], [ %i.m, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store ptr %3, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  store ptr %4, ptr %i.q, align 8, !tbaa !30
  %i.r = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %8, ptr noundef nonnull %i.i) #7 ; 3 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.r, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !25
  %i.w = and i32 %i.v, 1
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %free_string.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  tail call void @CRYPTO_free(ptr noundef %i.y, ptr noundef nonnull @.str, i32 noundef 53) #7
  %i.z = load i32, ptr %i.i, align 8, !tbaa !29
  %cond.i = icmp eq i32 %i.z, 3
  br i1 %cond.i, label %bb.l, label %free_string.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 56) #7
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 57) #7
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.ac, ptr noundef nonnull @.str, i32 noundef 58) #7
  br label %free_string.exit

free_string.exit:                                 ; preds = %bb.j, %bb.k, %bb.l
  tail call void @CRYPTO_free(ptr noundef nonnull %i.i, ptr noundef nonnull @.str, i32 noundef 68) #7
  br label %bb.o

allocate_string_stack.exit:                       ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !25
  %i.af = and i32 %i.ae, 1
  %.not.i35 = icmp eq i32 %i.af, 0
  br i1 %.not.i35, label %free_string.exit37, label %bb.m

bb.m:                                             ; preds = %allocate_string_stack.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28
  tail call void @CRYPTO_free(ptr noundef %i.ah, ptr noundef nonnull @.str, i32 noundef 53) #7
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !29
  %cond.i36 = icmp eq i32 %i.ai, 3
  br i1 %cond.i36, label %bb.n, label %free_string.exit37

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.ak, ptr noundef nonnull @.str, i32 noundef 56) #7
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.am, ptr noundef nonnull @.str, i32 noundef 57) #7
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.ao, ptr noundef nonnull @.str, i32 noundef 58) #7
  br label %free_string.exit37

free_string.exit37:                               ; preds = %allocate_string_stack.exit, %bb.m, %bb.n
  tail call void @CRYPTO_free(ptr noundef nonnull %i.i, ptr noundef nonnull @.str, i32 noundef 68) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %free_string.exit37, %free_string.exit, %bb.i, %._crit_edge, %bb.b
  %.027 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.t, %free_string.exit ], [ %i.r, %bb.i ], [ -1, %free_string.exit37 ], [ -1, %._crit_edge ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @UI_dup_input_boolean(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 276) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 5 uses
  %.not45 = icmp eq ptr %2, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef 282) #7 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.028 = phi ptr [ %i.c, %bb.d ], [ null, %bb.c ] ; 4 uses
  %.not46 = icmp eq ptr %3, null
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 288) #7 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026 = phi ptr [ %i.e, %bb.f ], [ null, %bb.e ] ; 3 uses
  %.not47 = icmp eq ptr %4, null
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 294) #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.025 = phi ptr [ %i.g, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.i = tail call fastcc i32 @general_allocate_boolean(ptr noundef %0, ptr noundef %.030, ptr noundef %.028, ptr noundef %.026, ptr noundef %.025, i32 noundef 1, i32 noundef %5, ptr noundef %6) ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.131 = phi ptr [ null, %bb.b ], [ %.030, %bb.d ], [ %.030, %bb.f ], [ %.030, %bb.h ], [ %.030, %bb.i ]
  %.129 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %.028, %bb.f ], [ %.028, %bb.h ], [ %.028, %bb.i ]
  %.127 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %.026, %bb.h ], [ %.026, %bb.i ]
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ %.025, %bb.i ]
  tail call void @CRYPTO_free(ptr noundef %.131, ptr noundef nonnull @.str, i32 noundef 308) #7
  tail call void @CRYPTO_free(ptr noundef %.129, ptr noundef nonnull @.str, i32 noundef 309) #7
  tail call void @CRYPTO_free(ptr noundef %.127, ptr noundef nonnull @.str, i32 noundef 310) #7
  tail call void @CRYPTO_free(ptr noundef %.1, ptr noundef nonnull @.str, i32 noundef 311) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i32 [ -1, %bb.j ], [ %i.i, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_add_info_string(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_dup_info_string(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 327) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.08 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %.08, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_free(ptr noundef %.08, ptr noundef nonnull @.str, i32 noundef 335) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_add_error_string(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 5, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 0) i32 @UI_dup_error_string(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 351) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.08 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = tail call fastcc i32 @general_allocate_string(ptr noundef %0, ptr noundef %.08, i32 noundef 1, i32 noundef 5, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_free(ptr noundef %.08, ptr noundef nonnull @.str, i32 noundef 359) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_construct_prompt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@UI_get0_test_string:bb.a
  %cond = icmp eq i32 %i.a, 2
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @UI_get_result_minsize(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  %.off = add i32 %i.a, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @UI_get_result_maxsize(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  %.off = add i32 %i.a, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @UI_set_result(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #8
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @UI_set_result_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @UI_set_result_ex(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = and i32 %i.b, -2
  store i32 %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = load i32, ptr %1, align 8, !tbaa !29
  switch i32 %i.d, label %.loopexit [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp slt i32 %3, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = or i32 %i.b, 1
  store i32 %i.h, ptr %i.a, align 8, !tbaa !18
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 898, ptr noundef nonnull @__func__.UI_set_result_ex) #7
  %i.i = load i32, ptr %i.e, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 101, ptr noundef nonnull @.str.8, i32 noundef %i.i, i32 noundef %i.k) #7
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = icmp sgt i32 %3, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = or i32 %i.b, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !18
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 906, ptr noundef nonnull @__func__.UI_set_result_ex) #7
  %i.p = load i32, ptr %i.e, align 8, !tbaa !30
  %i.q = load i32, ptr %i.l, align 4, !tbaa !30
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef %i.p, i32 noundef %i.q) #7
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 914, ptr noundef nonnull @__func__.UI_set_result_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 105, ptr noundef null) #7
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = sext i32 %3 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %2, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.l, align 4, !tbaa !30
  %.not44 = icmp sgt i32 %3, %i.v
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.u, ptr %i.y, align 8, !tbaa !37
  br label %.loopexit

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @__func__.UI_set_result_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 105, ptr noundef null) #7
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.aa, align 1, !tbaa !30
  %i.ac = load i8, ptr %2, align 1, !tbaa !30     ; 2 uses
  %.not47 = icmp eq i8 %i.ac, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.n

bb.m:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.03648, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30  ; 2 uses
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %.loopexit, label %bb.n, !llvm.loop !47

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.ai = phi i8 [ %i.ac, %.lr.ph ], [ %i.ah, %bb.m ]
  %.03648 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %bb.m ]
  %i.aj = sext i8 %i.ai to i32                    ; 2 uses
  %i.ak = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef %i.aj) #8
  %.not42 = icmp eq ptr %i.ak, null
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !30
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !36
  store i8 %i.al, ptr %i.am, align 1, !tbaa !30
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ao = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.an, i32 noundef %i.aj) #8
  %.not43 = icmp eq ptr %i.ao, null
  br i1 %.not43, label %bb.m, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !30
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !36
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.a, %bb.j, %bb.o, %bb.q, %.thread, %bb.g, %bb.e, %bb.c
  %.1 = phi i32 [ -1, %.thread ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @general_allocate_prompt(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 1, 6) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @__func__.general_allocate_prompt) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 786690, ptr noundef null) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %or.cond3 = icmp samesign ult i32 %2, 4
  %i.b = icmp eq ptr %4, null
  %or.cond5 = and i1 %or.cond3, %i.b
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.general_allocate_prompt) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 40, i32 noundef 105, ptr noundef null) #7
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 72, ptr noundef nonnull @.str, i32 noundef 108) #7 ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %1, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %3, ptr %i.f, align 8, !tbaa !46
  store i32 %2, ptr %i.c, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %4, ptr %i.g, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.c, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 48}
!10 = !{!"ui_st", !11, i64 0, !13, i64 8, !12, i64 16, !14, i64 24, !6, i64 40, !12, i64 48}
!11 = !{!"p1 _ZTS12ui_method_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS18stack_st_UI_STRING", !12, i64 0}
!14 = !{!"crypto_ex_data_st", !15, i64 0, !16, i64 8}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!16 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!17 = !{!10, !11, i64 0}
!18 = !{!10, !6, i64 40}
!19 = !{!20, !12, i64 56}
!20 = !{!"ui_method_st", !21, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !14, i64 72}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!10, !12, i64 16}
!23 = !{ptr @UI_free}
!24 = !{!10, !13, i64 8}
!25 = !{!26, !6, i64 64}
!26 = !{!"ui_string_st", !6, i64 0, !21, i64 8, !6, i64 16, !21, i64 24, !27, i64 32, !7, i64 40, !6, i64 64}
!27 = !{!"long", !7, i64 0}
!28 = !{!26, !21, i64 8}
!29 = !{!26, !6, i64 0}
!30 = !{!7, !7, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!20, !12, i64 64}
!34 = !{!20, !12, i64 48}
!35 = !{ptr @UI_add_user_data}
!36 = !{!26, !21, i64 24}
!37 = !{!26, !27, i64 32}
!38 = !{!20, !12, i64 8}
!39 = !{!20, !12, i64 16}
!40 = distinct !{!40, !32}
!41 = !{!20, !12, i64 24}
!42 = !{!20, !12, i64 32}
!43 = distinct !{!43, !32}
!44 = !{!20, !12, i64 40}
!45 = !{!20, !21, i64 0}
!46 = !{!26, !6, i64 16}
!47 = distinct !{!47, !32}
end_hunk_1
