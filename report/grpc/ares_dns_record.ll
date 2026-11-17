Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_dns_record?download=true
inline.NumInlined: 25
inline.NumDeleted: 2
begin_hunk_0_@ares_dns_rr_set_bin_own:bb.a

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @ares_dns_multistring_create() #5 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !42
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi ptr [ %i.k, %bb.g ], [ %i.i, %bb.f ]
  tail call void @ares_dns_multistring_clear(ptr noundef nonnull %i.m) #5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.o = tail call i32 @ares_dns_multistring_add_own(ptr noundef %i.n, ptr noundef %2, i64 noundef %3) #5
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.p = call fastcc ptr @ares_dns_rr_data_ptr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %.not28 = icmp eq ptr %i.t, null
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ares_free(ptr noundef nonnull %i.t) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %2, ptr %i.p, align 8, !tbaa !31
  store i64 %3, ptr %i.r, align 8, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.g, %bb.c, %bb.l
  %.1 = phi i32 [ 0, %bb.l ], [ 2, %bb.c ], [ 15, %bb.g ], [ %i.o, %bb.h ], [ 2, %bb.e ], [ 2, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.1
}

declare void @ares_dns_multistring_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ares_dns_rr_set_bin(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %i.b = and i32 %i.a, -3
  %i.c = icmp eq i32 %i.b, 9                      ; 2 uses
  %i.d = zext i1 %i.c to i64
  %i.e = add i64 %3, %i.d
  %i.f = tail call ptr @ares_malloc(i64 noundef %i.e) #5 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %2, i64 %3, i1 false)
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %3
  store i8 0, ptr %i.h, align 1, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call i32 @ares_dns_rr_set_bin_own(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.f, i64 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ares_free(ptr noundef nonnull %i.f) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ 15, %bb.a ], [ %i.i, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @ares_dns_rr_set_str_own(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not = icmp eq i32 %i.a, 7
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not11 = icmp eq i32 %i.b, 6
  br i1 %.not11, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call fastcc ptr @ares_dns_rr_data_ptr(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ares_free(ptr noundef nonnull %i.e) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %2, ptr %i.c, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 2, %bb.b ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 16) i32 @ares_dns_rr_set_str(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @ares_strdup(ptr noundef nonnull %2) #5 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.c = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not.i = icmp eq i32 %i.c, 7
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not11.i = icmp eq i32 %i.d, 6
  br i1 %.not11.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call fastcc ptr @ares_dns_rr_data_ptr(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %ares_dns_rr_set_str_own.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ares_free(ptr noundef nonnull %i.g) #5
  br label %ares_dns_rr_set_str_own.exit

ares_dns_rr_set_str_own.exit:                     ; preds = %bb.f, %bb.g
  store ptr %.0, ptr %i.e, align 8, !tbaa !31
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.e
  tail call void @ares_free(ptr noundef %.0) #5
  br label %bb.i

bb.i:                                             ; preds = %ares_dns_rr_set_str_own.exit, %bb.h, %bb.b
  %.09 = phi i32 [ 15, %bb.b ], [ 2, %bb.h ], [ 0, %ares_dns_rr_set_str_own.exit ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @ares_dns_rr_set_abin_own(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not = icmp eq i32 %i.a, 11
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @ares_dns_rr_data_ptr(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ares_dns_multistring_destroy(ptr noundef nonnull %i.d) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i32 %.0
}

declare void @ares_dns_multistring_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ares_dns_rr_set_opt_own(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !52
  %i.b = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not = icmp eq i32 %i.b, 10
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ares_dns_rr_data_ptr(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @ares_array_create(i64 noundef 24, ptr noundef nonnull @ares_dns_opt_free_cb) #5 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !33
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ]
  %i.j = tail call i64 @ares_array_len(ptr noundef nonnull %i.i) #5 ; 3 uses
  %.not33 = icmp eq i64 %i.j, 0
  br i1 %.not33, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.f
  %.030 = phi i64 [ %i.p, %bb.f ], [ 0, %.thread ] ; 3 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.l = tail call ptr @ares_array_at(ptr noundef %i.k, i64 noundef %.030) #5 ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !52
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = load i16, ptr %i.l, align 8, !tbaa !48
  %i.o = icmp eq i16 %i.n, %2
  br i1 %i.o, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i64 %.030, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.j
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.not51 = icmp eq i64 %.030, %i.j
  br i1 %.not51, label %._crit_edge.thread, label %bb.g

._crit_edge.thread:                               ; preds = %bb.f, %.thread, %._crit_edge
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.r = call i32 @ares_array_insert_last(ptr noundef nonnull %i.a, ptr noundef %i.q) #5 ; 2 uses
  %.not28 = icmp eq i32 %i.r, 0
  br i1 %.not28, label %._crit_edge34, label %.loopexit

._crit_edge34:                                    ; preds = %._crit_edge.thread
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge34, %._crit_edge
  %i.s = phi ptr [ %.pre, %._crit_edge34 ], [ %i.l, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  call void @ares_free(ptr noundef %i.u) #5
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  store i16 %2, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %3, ptr %i.w, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %4, ptr %i.x, align 8, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge.thread, %bb.d, %bb.b, %bb.a, %bb.g
  %.023 = phi i32 [ %i.r, %._crit_edge.thread ], [ 2, %bb.a ], [ 2, %bb.b ], [ 15, %bb.d ], [ 0, %bb.g ], [ 2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal void @ares_dns_opt_free_cb(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  tail call void @ares_free(ptr noundef %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ares_dns_rr_set_opt(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %4, 1
  %i.b = tail call ptr @ares_malloc(i64 noundef %i.a) #5 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %3, i64 %4, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %4
  store i8 0, ptr %i.d, align 1, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.b, %bb.c ], [ null, %bb.a ]  ; 2 uses
  %i.e = tail call i32 @ares_dns_rr_set_opt_own(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %.0, i64 noundef %4) ; 2 uses
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ares_free(ptr noundef %.0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.016 = phi i32 [ 15, %bb.b ], [ %i.e, %bb.e ], [ 0, %bb.d ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define i32 @ares_dns_rr_del_opt_byid(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rr_key_datatype(i32 noundef %1) #5
  %.not = icmp eq i32 %i.a, 10
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @ares_dns_rr_data_ptr(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @ares_array_len(ptr noundef nonnull %i.d) #5 ; 2 uses
  %.not23 = icmp eq i64 %i.f, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.021 = phi i64 [ %i.n, %bb.g ], [ 0, %bb.d ]   ; 3 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.h = tail call ptr @ares_array_at_const(ptr noundef %i.g, i64 noundef %.021) #5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.j = load i16, ptr %i.h, align 8, !tbaa !48
  %i.k = icmp eq i16 %i.j, %2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.m = tail call i32 @ares_array_remove_at(ptr noundef %i.l, i64 noundef %.021) #5
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.n = add nuw i64 %.021, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.016 = phi i32 [ %i.m, %bb.f ], [ 2, %bb.a ], [ 2, %bb.b ], [ 0, %bb.c ], [ 4, %bb.d ], [ 4, %bb.g ], [ 4, %.lr.ph ]
  ret i32 %.016
}

declare ptr @ares_array_at_const(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ares_dns_addr_to_ptr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54
  switch i32 %i.a, label %.thread [
    i32 2, label %bb.b
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = tail call ptr @ares_buf_create() #5      ; 14 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 4, !tbaa !54     ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  %. = select i1 %i.e, i64 4, i64 16
  br label %thread-pre-split

bb.d:                                             ; preds = %bb.j
  %i.f = add nsw i64 %.03554, -1                  ; 2 uses
  %.not46 = icmp eq i64 %i.f, 0
  %i.g = load i32, ptr %0, align 4, !tbaa !54     ; 2 uses
  br i1 %.not46, label %bb.k, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  %i.h = phi i32 [ %i.d, %bb.c ], [ %i.g, %bb.d ]
  %.03554 = phi i64 [ %., %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr i8, ptr %0, i64 %.03554
  %i.k = getelementptr i8, ptr %i.j, i64 3        ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %thread-pre-split
  %i.m = zext i8 %i.l to i64
  %i.n = tail call i32 @ares_buf_append_num_dec(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef 0) #5
  br label %bb.i

bb.f:                                             ; preds = %thread-pre-split
  %i.o = and i8 %i.l, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @ares_dns_addr_to_ptr.hexbytes, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = tail call i32 @ares_buf_append_byte(ptr noundef nonnull %i.b, i8 noundef zeroext %i.r) #5
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @ares_buf_append_byte(ptr noundef nonnull %i.b, i8 noundef zeroext 46) #5
  %.not49 = icmp eq i32 %i.t, 0
  br i1 %.not49, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.k, align 1, !tbaa !28
  %i.v = lshr i8 %i.u, 4
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @ares_dns_addr_to_ptr.hexbytes, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = tail call i32 @ares_buf_append_byte(ptr noundef nonnull %i.b, i8 noundef zeroext %i.y) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1 = phi i32 [ %i.n, %bb.e ], [ %i.z, %bb.h ]
  %.not50 = icmp eq i32 %.1, 0
  br i1 %.not50, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @ares_buf_append_byte(ptr noundef nonnull %i.b, i8 noundef zeroext 46) #5
  %.not51 = icmp eq i32 %i.aa, 0
  br i1 %.not51, label %bb.d, label %.thread
end_hunk_0
