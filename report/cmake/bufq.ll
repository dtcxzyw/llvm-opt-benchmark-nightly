Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/bufq?download=true
inline.NumInlined: 36
inline.NumDeleted: 17
begin_hunk_0_@Curl_bufq_peek:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @Curl_bufq_peek_at(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %.023 = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not24 = icmp eq ptr %.023, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.026 = phi ptr [ %.0, %bb.c ], [ %.023, %bb.a ] ; 4 uses
  %.01625 = phi i64 [ %i.d, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.026, i64 16
  %.0.val = load i64, ptr %i.a, align 8, !tbaa !37 ; 3 uses
  %i.b = getelementptr i8, ptr %.026, i64 24
  %.0.val20 = load i64, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.c = sub i64 %.0.val20, %.0.val               ; 2 uses
  %.not18 = icmp eq i64 %.0.val20, %.0.val
  br i1 %.not18, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not19 = icmp ult i64 %.01625, %i.c
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw i64 %.01625, %i.c
  %.0 = load ptr, ptr %.026, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

bb.d:                                             ; preds = %bb.b
  %i.e = add i64 %.0.val, %.01625                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.026, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store ptr %i.g, ptr %2, align 8, !tbaa !43
  %i.h = sub i64 %.0.val20, %i.e
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.a
  store ptr null, ptr %2, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %storemerge = phi i64 [ %i.h, %bb.d ], [ 0, %._crit_edge ]
  %.015 = phi i1 [ true, %bb.d ], [ false, %._crit_edge ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !40
  ret i1 %.015
}

; Function Attrs: nounwind uwtable
define dso_local void @Curl_bufq_skip(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not9 = icmp eq i64 %1, 0
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %prune_head.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.av, %prune_head.exit ] ; 4 uses
  %.010 = phi i64 [ %1, %.lr.ph ], [ %i.au, %prune_head.exit ] ; 3 uses
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 3 uses
  %.not.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i, label %chunk_skip.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 %i.i, %i.k
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 range(i64 1, 0) %.010) ; 3 uses
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  store i64 %i.n, ptr %i.j, align 8, !tbaa !37
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %chunk_skip.exit, label %chunk_skip.exit.thread

chunk_skip.exit.thread:                           ; preds = %bb.d, %bb.c
  %.0.i.ph = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.p = sub i64 %.010, %.0.i.ph
  br label %.lr.ph.i.preheader

chunk_skip.exit:                                  ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !35  ; 2 uses
  %i.q = sub i64 %.010, %i.m                      ; 2 uses
  %.not27.i = icmp eq ptr %.pre12, null
  br i1 %.not27.i, label %prune_head.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %chunk_skip.exit.thread, %chunk_skip.exit
  %i.r = phi i64 [ %i.p, %chunk_skip.exit.thread ], [ %i.q, %chunk_skip.exit ] ; 2 uses
  %i.s = phi ptr [ %i.g, %chunk_skip.exit.thread ], [ %.pre12, %chunk_skip.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %i.t = phi ptr [ %i.at, %bb.o ], [ %i.s, %.lr.ph.i.preheader ] ; 11 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr i8, ptr %i.t, i64 24
  %.val25.i = load i64, ptr %i.v, align 8, !tbaa !38
  %.not26.i = icmp ult i64 %.val.i, %.val25.i
  br i1 %.not26.i, label %prune_head.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !23   ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.y = icmp eq ptr %i.x, %i.t
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.w, ptr %i.a, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !32   ; 5 uses
  %.not23.i = icmp eq ptr %i.z, null
  br i1 %.not23.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20
  %.not.i.i = icmp ult i64 %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  tail call void %i.ae(ptr noundef nonnull %i.t) #10, !inline_history !3
  br label %bufcp_put.exit.i

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !41
  store ptr %i.af, ptr %i.t, align 8, !tbaa !23
  store ptr %i.t, ptr %i.z, align 8, !tbaa !41
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !26
  br label %bufcp_put.exit.i

bufcp_put.exit.i:                                 ; preds = %bb.j, %bb.i
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !34
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !34
  %i.al = load i64, ptr %i.d, align 8, !tbaa !30
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.e, align 8, !tbaa !31
  %i.ao = and i32 %i.an, 2
  %.not24.i = icmp eq i32 %i.ao, 0
  br i1 %.not24.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  tail call void %i.ap(ptr noundef nonnull %i.t) #10, !inline_history !4
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !34
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !36
  store ptr %i.as, ptr %i.t, align 8, !tbaa !23
  store ptr %i.t, ptr %i.f, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bufcp_put.exit.i
  %i.at = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %.not.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i8, label %prune_head.exit, label %.lr.ph.i, !llvm.loop !5

prune_head.exit:                                  ; preds = %.lr.ph.i, %bb.o, %chunk_skip.exit
  %i.au = phi i64 [ %i.q, %chunk_skip.exit ], [ %i.r, %bb.o ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.av = phi ptr [ null, %chunk_skip.exit ], [ %i.t, %.lr.ph.i ], [ null, %bb.o ]
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !50

.critedge:                                        ; preds = %bb.b, %prune_head.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_bufq_pass(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca ptr, align 8                        ; 5 uses
  %5 = alloca i64, align 8                        ; 5 uses
  %6 = alloca i64, align 8                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 0, ptr %3, align 8, !tbaa !40
  %7 = call zeroext i1 @Curl_bufq_peek(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br i1 %7, label %.lr.ph.a, label %.loopexit

.lr.ph.a:                                         ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %8 = load ptr, ptr %4, align 8, !tbaa !43
  %9 = load i64, ptr %5, align 8, !tbaa !40
  %i.a = call i32 %1(ptr noundef %2, ptr noundef %8, i64 noundef %9, ptr noundef nonnull %6) #10 ; 2 uses
  switch i32 %i.a, label %.thread [
    i32 0, label %bb.c
    i32 81, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.a
  %i.b = load i64, ptr %3, align 8, !tbaa !40
  %.not17 = icmp eq i64 %i.b, 0
  %spec.select = select i1 %.not17, i32 81, i32 0
  br label %.thread

bb.c:                                             ; preds = %.lr.ph.a
  %i.c = load i64, ptr %6, align 8, !tbaa !40     ; 3 uses
  %.not15 = icmp eq i64 %i.c, 0
  %i.d = load i64, ptr %3, align 8, !tbaa !40     ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not16 = icmp eq i64 %i.d, 0
  %spec.select18 = select i1 %.not16, i32 81, i32 0
  br label %.thread

.thread:                                          ; preds = %.lr.ph.a, %bb.d, %bb.b
  %.3.ph = phi i32 [ %spec.select, %bb.b ], [ %spec.select18, %bb.d ], [ %i.a, %.lr.ph.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = add i64 %i.d, %i.c
  store i64 %i.e, ptr %3, align 8, !tbaa !40
  call void @Curl_bufq_skip(ptr noundef %0, i64 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %10 = call zeroext i1 @Curl_bufq_peek(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br i1 %10, label %.lr.ph.a, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a, %.thread
  %.4 = phi i32 [ %.3.ph, %.thread ], [ 0, %bb.a ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_bufq_write_pass(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca ptr, align 8                        ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %7 = alloca i64, align 8                        ; 7 uses
  store i64 0, ptr %5, align 8, !tbaa !40
  %.not79 = icmp eq i64 %2, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %chunk_append.exit.thread.i.thread.thread
  %.02377 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %chunk_append.exit.thread.i.thread.thread ] ; 2 uses
  %.02476 = phi i64 [ %2, %.lr.ph ], [ %i.ah, %chunk_append.exit.thread.i.thread.thread ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.lr.ph.i33.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !36
  %.not11.i = icmp eq ptr %i.h, null
  br i1 %.not11.i, label %bb.d, label %.lr.ph.i33.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i33.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.i, %i.j
  br i1 %i.l, label %Curl_bufq_is_full.exit.thread41, label %Curl_bufq_is_full.exit

Curl_bufq_is_full.exit:                           ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr i8, ptr %i.g, i64 24
  %.val12.i = load i64, ptr %i.n, align 8, !tbaa !38
  %.not = icmp ult i64 %.val12.i, %.val.i
  br i1 %.not, label %.lr.ph.i33.preheader, label %Curl_bufq_is_full.exit.thread41

Curl_bufq_is_full.exit.thread41:                  ; preds = %bb.e, %Curl_bufq_is_full.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %8 = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %i.a)
  br i1 %8, label %.lr.ph.i.a, label %Curl_bufq_is_full.exit.thread.sink.split

.lr.ph.i.a:                                       ; preds = %Curl_bufq_is_full.exit.thread41, %15
  %.0 = phi i64 [ %16, %15 ], [ 0, %Curl_bufq_is_full.exit.thread41 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = load i64, ptr %i.a, align 8, !tbaa !40
  %i.o = call i32 %3(ptr noundef %4, ptr noundef %9, i64 noundef %10, ptr noundef nonnull %7) #10, !inline_history !52 ; 2 uses
  switch i32 %i.o, label %Curl_bufq_pass.exit [
    i32 0, label %12
    i32 81, label %11
  ]

11:                                               ; preds = %.lr.ph.i.a
  %.not17.i = icmp eq i64 %.0, 0
  br i1 %.not17.i, label %Curl_bufq_pass.exit.thread49, label %Curl_bufq_pass.exit.thread46

12:                                               ; preds = %.lr.ph.i.a
  %13 = load i64, ptr %7, align 8, !tbaa !40      ; 3 uses
  %.not15.i = icmp eq i64 %13, 0
  br i1 %.not15.i, label %14, label %15

14:                                               ; preds = %12
  %.not16.i = icmp eq i64 %.0, 0
  br i1 %.not16.i, label %Curl_bufq_pass.exit.thread49, label %Curl_bufq_pass.exit.thread46

15:                                               ; preds = %12
  %16 = add i64 %13, %.0
  call void @Curl_bufq_skip(ptr noundef nonnull %0, i64 noundef %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %17 = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %i.a)
  br i1 %17, label %.lr.ph.i.a, label %Curl_bufq_is_full.exit.thread.sink.split

Curl_bufq_pass.exit.thread46:                     ; preds = %11, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %Curl_bufq_is_full.exit.thread.sink.split

Curl_bufq_pass.exit.thread49:                     ; preds = %11, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.loopexit

Curl_bufq_pass.exit:                              ; preds = %.lr.ph.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %Curl_bufq_write.exit.thread

Curl_bufq_is_full.exit.thread.sink.split:         ; preds = %15, %Curl_bufq_is_full.exit.thread41, %Curl_bufq_pass.exit.thread46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %Curl_bufq_is_full.exit.thread.sink.split, %bb.c, %bb.d, %bb.b, %Curl_bufq_is_full.exit
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %chunk_append.exit.i
  %.1 = phi i64 [ %i.ac, %chunk_append.exit.i ], [ 0, %.lr.ph.i33.preheader ] ; 3 uses
  %.01930.i = phi i64 [ %i.ae, %chunk_append.exit.i ], [ %.02476, %.lr.ph.i33.preheader ] ; 2 uses
  %.02029.i = phi ptr [ %i.ad, %chunk_append.exit.i ], [ %.02377, %.lr.ph.i33.preheader ] ; 2 uses
  %18 = call fastcc ptr @get_non_full_tail(ptr noundef %0) ; 4 uses
  %.not.i34 = icmp eq ptr %18, null
  br i1 %.not.i34, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i33
  %i.p = load i64, ptr %i.d, align 8, !tbaa !34
  %i.q = load i64, ptr %i.e, align 8, !tbaa !30
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %Curl_bufq_write.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.f, align 8, !tbaa !31
  %i.t = and i32 %i.s, 1
  %.not23.i = icmp eq i32 %i.t, 0
  br i1 %.not23.i, label %chunk_append.exit.thread.i, label %Curl_bufq_write.exit.thread

bb.h:                                             ; preds = %.lr.ph.i33
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, %i.v
  br i1 %.not.i.i, label %chunk_append.exit.thread.i, label %chunk_append.exit.i

chunk_append.exit.i:                              ; preds = %bb.h
  %i.y = sub i64 %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %19 = call i64 @llvm.umin.i64(i64 %i.y, i64 range(i64 1, 0) %.01930.i) ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr readonly align 1 %.02029.i, i64 %19, i1 false)
  %i.ab = add i64 %19, %i.v
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !38
  %i.ac = add i64 %19, %.1                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02029.i, i64 %19
  %i.ae = sub nuw i64 %.01930.i, %19              ; 2 uses
  %.not34.i = icmp eq i64 %i.ae, 0
  br i1 %.not34.i, label %chunk_append.exit.thread.i.thread, label %.lr.ph.i33, !llvm.loop !2

chunk_append.exit.thread.i:                       ; preds = %bb.h, %bb.g
  %.not25.i = icmp eq i64 %.1, 0
  br i1 %.not25.i, label %Curl_bufq_write.exit, label %chunk_append.exit.thread.i.thread.thread

Curl_bufq_write.exit:                             ; preds = %chunk_append.exit.thread.i
  %20 = load i64, ptr %5, align 8, !tbaa !40
  %.not30 = icmp eq i64 %20, 0
  %spec.select = select i1 %.not30, i32 81, i32 0
  br label %Curl_bufq_write.exit.thread

chunk_append.exit.thread.i.thread:                ; preds = %chunk_append.exit.i
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %.loopexit, label %chunk_append.exit.thread.i.thread.thread

chunk_append.exit.thread.i.thread.thread:         ; preds = %chunk_append.exit.thread.i, %chunk_append.exit.thread.i.thread
  %.260102 = phi i64 [ %i.ac, %chunk_append.exit.thread.i.thread ], [ %.1, %chunk_append.exit.thread.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02377, i64 %.260102
  %i.ah = sub i64 %.02476, %.260102               ; 2 uses
  %21 = load i64, ptr %5, align 8, !tbaa !40
  %i.ai = add i64 %21, %.260102
  store i64 %i.ai, ptr %5, align 8, !tbaa !40
  %.not80 = icmp eq i64 %i.ah, 0
  br i1 %.not80, label %.loopexit, label %bb.b, !llvm.loop !51

.loopexit:                                        ; preds = %chunk_append.exit.thread.i.thread.thread, %chunk_append.exit.thread.i.thread, %bb.a, %Curl_bufq_pass.exit.thread49
  %22 = phi i1 [ true, %Curl_bufq_pass.exit.thread49 ], [ false, %bb.a ], [ false, %chunk_append.exit.thread.i.thread.thread ], [ true, %chunk_append.exit.thread.i.thread ]
  %23 = load i64, ptr %5, align 8, !tbaa !40
  %.not32 = icmp eq i64 %23, 0
  %i.aj = and i1 %22, %.not32
  %i.ak = select i1 %i.aj, i32 81, i32 0
  br label %Curl_bufq_write.exit.thread

Curl_bufq_write.exit.thread:                      ; preds = %bb.f, %bb.g, %Curl_bufq_pass.exit, %.loopexit, %Curl_bufq_write.exit
  %.022 = phi i32 [ %spec.select, %Curl_bufq_write.exit ], [ %i.ak, %.loopexit ], [ %i.o, %Curl_bufq_pass.exit ], [ 27, %bb.g ], [ 27, %bb.f ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_bufq_sipn(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef initializes((0, 8)) %4) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %4, align 8, !tbaa !40
  %i.a = tail call fastcc ptr @get_non_full_tail(ptr noundef %0) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp ult i64 %i.c, %i.e
  %. = select i1 %i.f, i32 27, i32 81
  br label %chunk_slurpn.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  store i64 0, ptr %4, align 8, !tbaa !40
  %.not.i = icmp eq i64 %i.j, %i.h
  br i1 %.not.i, label %chunk_slurpn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 %i.j, %i.h                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %.not22.not.i = icmp eq i64 %1, 0
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %1)
  %.0.i = select i1 %.not22.not.i, i64 %i.k, i64 %i.n
  %i.o = tail call i32 %2(ptr noundef %3, ptr noundef nonnull %i.m, i64 noundef %.0.i, ptr noundef nonnull %4) #10, !inline_history !53 ; 2 uses
  %.not23.i = icmp eq i32 %i.o, 0
  br i1 %.not23.i, label %bb.e, label %chunk_slurpn.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %4, align 8, !tbaa !40
  %i.q = load i64, ptr %i.g, align 8, !tbaa !38
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr %i.g, align 8, !tbaa !38
  br label %chunk_slurpn.exit

chunk_slurpn.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %., %bb.b ], [ 81, %bb.c ], [ 0, %bb.e ], [ %i.o, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_bufq_slurp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  store i64 0, ptr %3, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call fastcc ptr @get_non_full_tail(ptr noundef %0) ; 2 uses
  %.not.i44.i = icmp eq ptr %i.b, null
  br i1 %.not.i44.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.g, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = icmp ult i64 %i.e, %i.g
  %..i.i = select i1 %i.h, i32 27, i32 81
  br label %.loopexit.i

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i64 %i.m, %i.k
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sub i64 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  %i.q = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.p, i64 noundef %i.n, ptr noundef nonnull %i.a) #10, !inline_history !54 ; 2 uses
  %.not23.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not23.i.i.i, label %bb.d, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %._crit_edge.i
  %.0.i.ph.i = phi i32 [ %..i.i, %._crit_edge.i ], [ %i.q, %bb.c ], [ 81, %bb.b ] ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !40
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp ne i32 %.0.i.ph.i, 81
  %or.cond.i = or i1 %i.t, %i.s
  br i1 %or.cond.i, label %bufq_slurpn.exit, label %.loopexit43.i

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.v = load i64, ptr %i.j, align 8, !tbaa !38
  %i.w = add i64 %i.v, %i.u
  store i64 %i.w, ptr %i.j, align 8, !tbaa !38
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %.loopexit43.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %3, align 8, !tbaa !40
  %i.z = add i64 %i.y, %i.u
  store i64 %i.z, ptr %3, align 8, !tbaa !40
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  %.not29.i = icmp eq ptr %i.aa, null
  br i1 %.not29.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i = load i64, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val31.i = load i64, ptr %i.ac, align 8, !tbaa !38
  %.not.i = icmp ult i64 %.val31.i, %.val.i
  br i1 %.not.i, label %.loopexit43.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !40
  %i.ad = call fastcc ptr @get_non_full_tail(ptr noundef nonnull %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.b

.loopexit43.i:                                    ; preds = %bb.f, %bb.d, %.loopexit.i
  br label %bufq_slurpn.exit

bufq_slurpn.exit:                                 ; preds = %.loopexit.i, %.loopexit43.i
  %.2.i = phi i32 [ 0, %.loopexit43.i ], [ %.0.i.ph.i, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !25}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS9buf_chunk", !15, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"bufc_pool", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !17, i64 24}
!21 = !{!16, !16, i64 0}
!22 = !{!"buf_chunk", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !11, i64 32}
!23 = !{!22, !16, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!18, !17, i64 16}
!27 = !{!"p1 _ZTS9bufc_pool", !15, i64 0}
!28 = !{!"bufq", !16, i64 0, !16, i64 8, !16, i64 16, !27, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !12, i64 56}
!29 = !{!28, !17, i64 48}
!30 = !{!28, !17, i64 40}
!31 = !{!28, !12, i64 56}
!32 = !{!28, !27, i64 24}
!33 = !{!28, !16, i64 8}
!34 = !{!28, !17, i64 32}
!35 = !{!28, !16, i64 0}
!36 = !{!28, !16, i64 16}
!37 = !{!22, !17, i64 16}
!38 = !{!22, !17, i64 24}
!39 = !{!22, !17, i64 8}
!40 = !{!17, !17, i64 0}
!41 = !{!18, !16, i64 0}
!42 = !{!"p1 omnipotent char", !15, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{null, null}
!47 = distinct !{null}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = !{ptr @Curl_bufq_pass}
!53 = distinct !{null}
!54 = distinct !{null, ptr @Curl_bufq_sipn, null}
end_hunk_0
