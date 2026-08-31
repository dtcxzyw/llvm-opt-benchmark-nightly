Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/hsts?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0_@Curl_hsts_cleanup:bb.a
  %i.e = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  tail call void %i.e(ptr noundef %i.c) #9
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.f = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  tail call void %i.f(ptr noundef %i.h) #9
  %i.i = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  tail call void %i.i(ptr noundef nonnull %i.a) #9
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare ptr @Curl_llist_head(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_node_elem(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_node_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @Curl_hsts_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.3) #9 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.d = call i32 @curlx_str_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 9223372036854775807) #9
  %.not1.i = icmp eq i32 %i.d, 0
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !21
  %i.e = load i64, ptr @deltatime, align 8
  %i.f = select i1 %.not1.i, i64 %i.e, i64 0
  %i.g = add nsw i64 %i.f, %.pre.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %hsts_debugtime.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @time(ptr noundef null) #9
  br label %hsts_debugtime.exit

hsts_debugtime.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.i = call ptr @Curl_llist_head(ptr noundef %1) #9 ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hsts_debugtime.exit, %.thread
  %.01626 = phi ptr [ %i.t, %.thread ], [ %i.i, %hsts_debugtime.exit ] ; 2 uses
  %i.j = call ptr @Curl_node_elem(ptr noundef nonnull %.01626) #9 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = icmp sgt i64 %i.l, %.0.i
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 41 ; 2 uses
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #10
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.q = load i8, ptr %i.p, align 8
  %i.r = trunc i8 %i.q to i1
  %i.s = call fastcc i32 @hsts_create(ptr noundef %0, ptr noundef nonnull %i.n, i64 noundef %i.o, i1 noundef zeroext %i.r, i64 noundef %i.l) ; 2 uses
  %.not21 = icmp eq i32 %i.s, 0
  br i1 %.not21, label %.thread, label %._crit_edge

.thread:                                          ; preds = %.lr.ph, %bb.d
  %i.t = call ptr @Curl_node_next(ptr noundef nonnull %.01626) #9 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d, %.thread, %hsts_debugtime.exit
  %.4 = phi i32 [ 0, %hsts_debugtime.exit ], [ 0, %.thread ], [ %i.s, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 28) i32 @hsts_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 %2
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = icmp eq i8 %i.c, 46
  br i1 %i.d, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %2, -1                           ; 2 uses
  %.not22 = icmp eq i64 %i.e, 0
  br i1 %.not22, label %.thread, label %.thread26

.thread26:                                        ; preds = %bb.b, %bb.c
  %.01829 = phi i64 [ %i.e, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !8
  %i.g = add i64 %.01829, 48
  %i.h = tail call ptr %i.f(i64 noundef 1, i64 noundef %i.g) #9 ; 6 uses
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %.thread, label %bb.d

bb.d:                                             ; preds = %.thread26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %.01829, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %4, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.l = zext i1 %3 to i8
  %i.m = load i8, ptr %i.k, align 8
  %i.n = and i8 %i.m, -2
  %i.o = or disjoint i8 %i.n, %i.l
  store i8 %i.o, ptr %i.k, align 8
  %i.p = tail call i64 @Curl_llist_count(ptr noundef %0) #9
  %i.q = icmp eq i64 %i.p, 10000
  br i1 %i.q, label %bb.e, label %.thread30

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @Curl_llist_head(ptr noundef %0) #9 ; 2 uses
  %i.s = tail call ptr @Curl_node_elem(ptr noundef %i.r) #9
  tail call void @Curl_node_remove(ptr noundef %i.r) #9
  %i.t = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  tail call void %i.t(ptr noundef %i.s) #9, !inline_history !28
  br label %.thread30

.thread30:                                        ; preds = %bb.e, %bb.d
  tail call void @Curl_llist_append(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #9
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread30, %.thread26
  %.1 = phi i32 [ 27, %.thread26 ], [ 0, %.thread30 ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @hsts_check(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread75, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.3) #9 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.d = call i32 @curlx_str_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 9223372036854775807) #9
  %.not1.i = icmp eq i32 %i.d, 0
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !21
  %i.e = load i64, ptr @deltatime, align 8
  %i.f = select i1 %.not1.i, i64 %i.e, i64 0
  %i.g = add nsw i64 %i.f, %.pre.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %hsts_debugtime.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @time(ptr noundef null) #9
  br label %hsts_debugtime.exit

hsts_debugtime.exit:                              ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.i = add i64 %2, -1                           ; 2 uses
  %or.cond = icmp ult i64 %i.i, 2048
  br i1 %or.cond, label %bb.e, label %.thread75

bb.e:                                             ; preds = %hsts_debugtime.exit
  %i.j = getelementptr i8, ptr %1, i64 %2
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  %i.m = icmp eq i8 %i.l, 46
  %spec.select = select i1 %i.m, i64 %i.i, i64 %2 ; 6 uses
  %i.n = call ptr @Curl_llist_head(ptr noundef nonnull %0) #9 ; 3 uses
  %.not5780 = icmp eq ptr %i.n, null
  br i1 %.not5780, label %.thread75, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.04283.us = phi i64 [ %.3.ph.us, %bb.l ], [ 0, %.lr.ph ] ; 5 uses
  %.04482.us = phi ptr [ %i.p, %bb.l ], [ %i.n, %.lr.ph ] ; 2 uses
  %.sroa.024.076.us = phi i64 [ %.sroa.024.3.ph.us, %bb.l ], [ 0, %.lr.ph ] ; 4 uses
  %i.o = call ptr @Curl_node_elem(ptr noundef nonnull %.04482.us) #9 ; 7 uses
  %i.p = call ptr @Curl_node_next(ptr noundef nonnull %.04482.us) #9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  %.not58.us = icmp sgt i64 %i.r, %.0.i
  br i1 %.not58.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  call void @Curl_node_remove(ptr noundef nonnull %i.o) #9
  %i.s = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.s(ptr noundef nonnull %i.o) #9
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 41 ; 3 uses
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #10 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.w = load i8, ptr %i.v, align 8
  %.not59.us = trunc i8 %i.w to i1
  %i.x = icmp ult i64 %i.u, %spec.select
  %or.cond62.us = select i1 %.not59.us, i1 %i.x, i1 false
  br i1 %or.cond62.us, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = sub nuw nsw i64 %spec.select, %i.u
  %i.z = getelementptr i8, ptr %1, i64 %i.y       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = icmp eq i8 %i.ab, 46
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @curl_strnequal(ptr noundef %i.z, ptr noundef nonnull %i.t, i64 noundef %i.u) #9
  %.not60.us = icmp ne i32 %i.ad, 0
  %i.ae = icmp ugt i64 %i.u, %.04283.us
  %or.cond63.us = select i1 %.not60.us, i1 %i.ae, i1 false ; 2 uses
  %4 = ptrtoint ptr %i.o to i64
  %spec.select59.us = select i1 %or.cond63.us, i64 %4, i64 %.sroa.024.076.us
  %spec.select65.us = select i1 %or.cond63.us, i64 %i.u, i64 %.04283.us
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.024.2.us = phi i64 [ %.sroa.024.076.us, %bb.g ], [ %.sroa.024.076.us, %bb.h ], [ %spec.select59.us, %bb.i ] ; 2 uses
  %.2.us = phi i64 [ %.04283.us, %bb.g ], [ %.04283.us, %bb.h ], [ %spec.select65.us, %bb.i ] ; 2 uses
  %i.af = icmp eq i64 %spec.select, %i.u
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = call i32 @curl_strnequal(ptr noundef %1, ptr noundef nonnull %i.t, i64 noundef %spec.select) #9
  %.not61.us = icmp eq i32 %i.ag, 0
  br i1 %.not61.us, label %bb.l, label %.thread75

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.f
  %.sroa.024.3.ph.us = phi i64 [ %.sroa.024.076.us, %bb.f ], [ %.sroa.024.2.us, %bb.k ], [ %.sroa.024.2.us, %bb.j ] ; 2 uses
  %.3.ph.us = phi i64 [ %.04283.us, %bb.f ], [ %.2.us, %bb.k ], [ %.2.us, %bb.j ]
  %.not57.us = icmp eq ptr %i.p, null
  br i1 %.not57.us, label %.loopexit.loopexit, label %.lr.ph.split.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %.04482 = phi ptr [ %i.ai, %bb.p ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.ah = call ptr @Curl_node_elem(ptr noundef nonnull %.04482) #9 ; 5 uses
  %i.ai = call ptr @Curl_node_next(ptr noundef nonnull %.04482) #9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22
  %.not58 = icmp sgt i64 %i.ak, %.0.i
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  call void @Curl_node_remove(ptr noundef nonnull %i.ah) #9
  %i.al = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.al(ptr noundef nonnull %i.ah) #9
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 41 ; 2 uses
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #10
  %i.ao = icmp eq i64 %spec.select, %i.an
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = call i32 @curl_strnequal(ptr noundef %1, ptr noundef nonnull %i.am, i64 noundef %spec.select) #9
  %.not61 = icmp eq i32 %i.ap, 0
  br i1 %.not61, label %bb.p, label %.thread75

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.not57 = icmp eq ptr %i.ai, null
  br i1 %.not57, label %.thread75, label %.lr.ph.split, !llvm.loop !29

.loopexit.loopexit:                               ; preds = %bb.l
  %5 = inttoptr i64 %.sroa.024.3.ph.us to ptr
  br label %.thread75

.thread75:                                        ; preds = %bb.o, %bb.p, %bb.k, %bb.a, %bb.e, %.loopexit.loopexit, %hsts_debugtime.exit
  %.352 = phi ptr [ %5, %.loopexit.loopexit ], [ null, %hsts_debugtime.exit ], [ %i.o, %bb.k ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.p ], [ %i.ah, %bb.o ]
  ret ptr %.352
}

declare void @Curl_node_remove(ptr noundef) local_unnamed_addr #2

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_hsts_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 21 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr %2, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i64 0, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.3) #9 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.f = call i32 @curlx_str_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 9223372036854775807) #9
  %.not1.i = icmp eq i32 %i.f, 0
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !21
  %i.g = load i64, ptr @deltatime, align 8
  %i.h = select i1 %.not1.i, i64 %i.g, i64 0
  %i.i = add nsw i64 %i.h, %.pre.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %hsts_debugtime.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @time(ptr noundef null) #9
  br label %hsts_debugtime.exit

hsts_debugtime.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10 ; 3 uses
  %i.l = call zeroext i1 @Curl_host_is_ipnum(ptr noundef nonnull %1) #9
  br i1 %i.l, label %.critedge55, label %.preheader56

.preheader56:                                     ; preds = %hsts_debugtime.exit, %bb.q
  %.033 = phi i8 [ %.2, %bb.q ], [ 0, %hsts_debugtime.exit ] ; 4 uses
  %.031 = phi i1 [ %.132, %bb.q ], [ false, %hsts_debugtime.exit ] ; 5 uses
  %.030 = phi i8 [ %.1, %bb.q ], [ 0, %hsts_debugtime.exit ] ; 4 uses
  call void @curlx_str_passblanks(ptr noundef nonnull %i.c) #9
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.n = call i32 @curl_strnequal(ptr noundef nonnull @.str, ptr noundef %i.m, i64 noundef 7) #9
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.preheader56
  %i.o = trunc nuw i8 %.033 to i1
  br i1 %i.o, label %.critedge55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  store ptr %i.q, ptr %i.c, align 8, !tbaa !20
  call void @curlx_str_passblanks(ptr noundef nonnull %i.c) #9
  %i.r = call i32 @curlx_str_single(ptr noundef nonnull %i.c, i8 noundef signext 61) #9
  %.not46.a = icmp eq i32 %i.r, 0
  br i1 %.not46.a, label %bb.f, label %.critedge55

bb.f:                                             ; preds = %bb.e
  call void @curlx_str_passblanks(ptr noundef nonnull %i.c) #9
  %i.s = call i32 @curlx_str_single(ptr noundef nonnull %i.c, i8 noundef signext 34) #9
  %.not47 = icmp eq i32 %i.s, 0
  %i.t = call i32 @curlx_str_number(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 9223372036854775807) #9
  switch i32 %i.t, label %.critedge55 [
    i32 7, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  store i64 9223372036854775807, ptr %i.d, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br i1 %.not47, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %.not49.a = icmp eq i8 %i.v, 34
  br i1 %.not49.a, label %bb.j, label %.critedge55

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  br label %.critedge.sink.split

bb.k:                                             ; preds = %.preheader56
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.y = call i32 @curl_strnequal(ptr noundef nonnull @.str.1, ptr noundef %i.x, i64 noundef 17) #9
  %.not43 = icmp eq i32 %i.y, 0
  br i1 %.not43, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.promoted = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.031, label %.critedge55, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  br label %.critedge.sink.split

bb.n:                                             ; preds = %.preheader, %bb.o
  %i.ab = phi ptr [ %.promoted, %.preheader ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27
  switch i8 %i.ac, label %bb.o [
    i8 0, label %.critedge
    i8 59, label %.critedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !20
  br label %bb.n, !llvm.loop !30

.critedge.sink.split:                             ; preds = %bb.m, %bb.j
  %.sink = phi ptr [ %i.w, %bb.j ], [ %i.aa, %bb.m ]
  %.2.ph = phi i8 [ 1, %bb.j ], [ %.033, %bb.m ]
  %.132.ph = phi i1 [ %.031, %bb.j ], [ true, %bb.m ]
  %.1.ph = phi i8 [ %.030, %bb.j ], [ 1, %bb.m ]
  store ptr %.sink, ptr %i.c, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.n, %.critedge.sink.split, %bb.h
  %.2 = phi i8 [ 1, %bb.h ], [ %.2.ph, %.critedge.sink.split ], [ %.033, %bb.n ], [ %.033, %bb.n ] ; 2 uses
  %.132 = phi i1 [ %.031, %bb.h ], [ %.132.ph, %.critedge.sink.split ], [ %.031, %bb.n ], [ %.031, %bb.n ]
  %.1 = phi i8 [ %.030, %bb.h ], [ %.1.ph, %.critedge.sink.split ], [ %.030, %bb.n ], [ %.030, %bb.n ] ; 3 uses
  call void @curlx_str_passblanks(ptr noundef nonnull %i.c) #9
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27  ; 2 uses
  %i.ag = icmp eq i8 %i.af, 59
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !20
  %.pre = load i8, ptr %i.ah, align 1, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  %i.ai = phi i8 [ %i.af, %.critedge ], [ %.pre, %bb.p ]
  %.not50.a = icmp eq i8 %i.ai, 0
  br i1 %.not50.a, label %bb.r, label %.preheader56, !llvm.loop !31

bb.r:                                             ; preds = %bb.q
  %i.aj = trunc nuw i8 %.2 to i1
  br i1 %i.aj, label %bb.s, label %.critedge55

bb.s:                                             ; preds = %bb.r
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %.not51.a = icmp eq i64 %i.ak, 0
  br i1 %.not51.a, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.al = call ptr @hsts_check(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.k, i1 noundef zeroext false) ; 3 uses
  %.not52.a = icmp eq ptr %i.al, null
  br i1 %.not52.a, label %.critedge55, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @Curl_node_remove(ptr noundef nonnull %i.al) #9
  %i.am = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.am(ptr noundef nonnull %i.al) #9
  br label %.critedge55

bb.v:                                             ; preds = %bb.s
  %storemerge = call i64 @llvm.sadd.sat.i64(i64 %.0.i, i64 %i.ak)
  store i64 %storemerge, ptr %i.d, align 8, !tbaa !21
  %i.an = call ptr @hsts_check(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.k, i1 noundef zeroext false) ; 3 uses
  %.not53 = icmp eq ptr %i.an, null
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = and i8 %i.ar, -2
  %i.at = or disjoint i8 %i.as, %.1
  store i8 %i.at, ptr %i.aq, align 8
  br label %.critedge55

bb.x:                                             ; preds = %bb.v
  %i.au = trunc nuw i8 %.1 to i1
  %i.av = load i64, ptr %i.d, align 8, !tbaa !21
  %i.aw = call fastcc i32 @hsts_create(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.k, i1 noundef zeroext %i.au, i64 noundef %i.av)
  br label %.critedge55

end_hunk_0
