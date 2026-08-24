Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dijkstra?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@enqueue:bb.a
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @qHead, align 8, !tbaa !13 ; 2 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.e, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !19
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr @qHead, align 8, !tbaa !13
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %.preheader
  %.0 = phi ptr [ %i.i, %.preheader ], [ %i.d, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.e, label %.preheader, !llvm.loop !20

bb.e:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.a, ptr %i.j, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load i32, ptr @g_qCount, align 4, !tbaa !4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @g_qCount, align 4, !tbaa !4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @dequeue(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @qHead, align 8, !tbaa !13 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  store i32 %i.b, ptr %0, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  store i32 %i.d, ptr %1, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  store i32 %i.f, ptr %2, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  store ptr %i.h, ptr @qHead, align 8, !tbaa !13
  tail call void @free(ptr noundef nonnull %i.a) #15
  %i.i = load i32, ptr @g_qCount, align 4, !tbaa !4
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr @g_qCount, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @qcount() local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @g_qCount, align 4, !tbaa !4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
vector.ph:
  store <4 x i32> splat (i32 9999), ptr @rgnNodes, align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 16), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 32), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 48), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 64), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 80), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 96), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 112), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 128), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 144), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 160), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 176), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 192), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 208), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 224), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 240), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 256), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 272), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 288), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 304), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 320), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 336), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 352), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 368), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 384), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 400), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 416), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 432), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 448), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 464), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 480), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 496), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 512), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 528), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 544), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 560), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 576), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 592), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 608), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 624), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 640), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 656), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 672), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 688), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 704), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 720), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 736), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 752), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 768), align 16, !tbaa !4
  store <4 x i32> splat (i32 9999), ptr getelementptr inbounds nuw (i8, ptr @rgnNodes, i64 784), align 16, !tbaa !4
  store i32 100, ptr @ch, align 4, !tbaa !4
  %i.a = icmp eq i32 %0, %1
  br i1 %i.a, label %bb.a, label %bb.b

bb.a:                                             ; preds = %vector.ph
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.o

bb.b:                                             ; preds = %vector.ph
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @rgnNodes, i64 %i.b ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 9999, ptr %i.d, align 4, !tbaa !8
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12 ; 8 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %i.f) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @qHead, align 8, !tbaa !13 ; 3 uses
  store i32 %0, ptr %i.e, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 9999, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !19
  %.not16.i = icmp eq ptr %i.h, null
  br i1 %.not16.i, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr @qHead, align 8, !tbaa !13
  br label %enqueue.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi ptr [ %i.m, %.preheader.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.f, label %.preheader.i, !llvm.loop !20

bb.f:                                             ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.e, ptr %i.n, align 8, !tbaa !19
  br label %enqueue.exit

enqueue.exit:                                     ; preds = %bb.e, %bb.f
  %i.o = phi ptr [ %i.e, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.p = load i32, ptr @g_qCount, align 4, !tbaa !4 ; 2 uses
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.q, ptr @g_qCount, align 4, !tbaa !4
  %i.r = icmp sgt i32 %i.p, -1
  br i1 %i.r, label %.lr.ph, label %._crit_edge

thread-pre-split:                                 ; preds = %bb.n
  store i32 100, ptr @i, align 4, !tbaa !4
  store i32 %i.ag, ptr @iCost, align 4, !tbaa !4
  %i.s = icmp sgt i32 %.pr, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %enqueue.exit, %thread-pre-split
  %.pr34 = phi i32 [ %.pr, %thread-pre-split ], [ %i.q, %enqueue.exit ]
  %qHead.promoted26 = phi ptr [ %qHead.promoted38, %thread-pre-split ], [ %i.o, %enqueue.exit ]
  %i.t = phi ptr [ %i.ay, %thread-pre-split ], [ %i.o, %enqueue.exit ] ; 6 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %dequeue.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15
  store i32 %i.u, ptr @iNode, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17
  store i32 %i.w, ptr @iDist, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18
  store i32 %i.y, ptr @iPrev, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  store ptr %i.aa, ptr @qHead, align 8, !tbaa !13
  tail call void @free(ptr noundef nonnull %i.t) #15
  %i.ab = load i32, ptr @g_qCount, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr @g_qCount, align 4, !tbaa !4
  %qHead.promoted.pre = load ptr, ptr @qHead, align 8
  br label %dequeue.exit

dequeue.exit:                                     ; preds = %.lr.ph, %bb.g
  %.pr33 = phi i32 [ %.pr34, %.lr.ph ], [ %i.ac, %bb.g ] ; 2 uses
  %qHead.promoted = phi ptr [ %qHead.promoted26, %.lr.ph ], [ %qHead.promoted.pre, %bb.g ] ; 2 uses
  %2 = load i32, ptr @iNode, align 4, !tbaa !4    ; 3 uses
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [400 x i8], ptr @AdjMatrix, i64 %3
  %.pre30 = load i32, ptr @iDist, align 4
  br label %bb.h

bb.h:                                             ; preds = %dequeue.exit, %bb.n
  %i.ad = phi i32 [ %.pr33, %dequeue.exit ], [ %.pr, %bb.n ] ; 2 uses
  %qHead.promoted28 = phi ptr [ %qHead.promoted, %dequeue.exit ], [ %qHead.promoted38, %bb.n ] ; 3 uses
  %indvars.iv32 = phi i64 [ 0, %dequeue.exit ], [ %indvars.iv.next33, %bb.n ] ; 4 uses
  %i.ae = phi ptr [ %qHead.promoted, %dequeue.exit ], [ %i.ay, %bb.n ] ; 5 uses
  %5 = phi i32 [ %.pr33, %dequeue.exit ], [ %i.ax, %bb.n ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv32
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 4 uses
  %.not = icmp eq i32 %i.ag, 9999
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @rgnNodes, i64 %indvars.iv32 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 9999
  %.pre38 = add nsw i32 %.pre30, %i.ag            ; 3 uses
  %i.ak = icmp sgt i32 %i.ai, %.pre38
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond, label %._crit_edge37, label %bb.n

._crit_edge37:                                    ; preds = %bb.i
  store i32 %.pre38, ptr %i.ah, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %2, ptr %i.al, align 4, !tbaa !8
  %i.am = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12 ; 9 uses
  %.not.i15 = icmp eq ptr %i.am, null
  %6 = trunc nuw nsw i64 %indvars.iv32 to i32     ; 2 uses
  br i1 %.not.i15, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge37
  store i32 %6, ptr @i, align 4, !tbaa !4
  store i32 %i.ag, ptr @iCost, align 4, !tbaa !4
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %i.an) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.k:                                             ; preds = %._crit_edge37
  store i32 %6, ptr %i.am, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %.pre38, ptr %i.ap, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %2, ptr %i.aq, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr null, ptr %i.ar, align 8, !tbaa !19
  %.not16.i16 = icmp eq ptr %i.ae, null
  br i1 %.not16.i16, label %bb.l, label %.preheader.i17

bb.l:                                             ; preds = %bb.k
  store ptr %i.am, ptr @qHead, align 8, !tbaa !13
  br label %enqueue.exit20

.preheader.i17:                                   ; preds = %bb.k, %.preheader.i17
  %.0.i18 = phi ptr [ %i.at, %.preheader.i17 ], [ %i.ae, %bb.k ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i18, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19 ; 2 uses
  %.not17.i19 = icmp eq ptr %i.at, null
  br i1 %.not17.i19, label %bb.m, label %.preheader.i17, !llvm.loop !20

bb.m:                                             ; preds = %.preheader.i17
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i18, i64 16
  store ptr %i.am, ptr %i.au, align 8, !tbaa !19
  br label %enqueue.exit20

enqueue.exit20:                                   ; preds = %bb.l, %bb.m
  %qHead.promoted25 = phi ptr [ %i.am, %bb.l ], [ %qHead.promoted28, %bb.m ]
  %i.av = phi ptr [ %i.am, %bb.l ], [ %i.ae, %bb.m ]
  %i.aw = add nsw i32 %5, 1                       ; 3 uses
  store i32 %i.aw, ptr @g_qCount, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.h, %enqueue.exit20
  %.pr = phi i32 [ %i.ad, %bb.h ], [ %i.aw, %enqueue.exit20 ], [ %i.ad, %bb.i ] ; 3 uses
  %qHead.promoted38 = phi ptr [ %qHead.promoted28, %bb.h ], [ %qHead.promoted25, %enqueue.exit20 ], [ %qHead.promoted28, %bb.i ] ; 2 uses
  %i.ax = phi i32 [ %5, %bb.h ], [ %i.aw, %enqueue.exit20 ], [ %5, %bb.i ]
  %i.ay = phi ptr [ %i.ae, %bb.h ], [ %i.av, %enqueue.exit20 ], [ %i.ae, %bb.i ] ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 100
  br i1 %exitcond35.not, label %thread-pre-split, label %bb.h, !llvm.loop !23

._crit_edge:                                      ; preds = %thread-pre-split, %enqueue.exit
  %i.az = sext i32 %1 to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr @rgnNodes, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bb) ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  tail call void @print_path(ptr noundef nonnull @rgnNodes, i32 noundef %1)
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.a
  ret i32 undef
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %i.c) #13 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %i.e) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = tail call noalias ptr @fopen(ptr noundef %i.h, ptr noundef nonnull @.str.8)
  br label %.preheader16

.preheader16:                                     ; preds = %bb.c, %bb.e
  %indvars.iv22 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next23, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [400 x i8], ptr @AdjMatrix, i64 %indvars.iv22
  br label %bb.d

bb.d:                                             ; preds = %.preheader16, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.k = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.l, ptr %i.m, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 100
  br i1 %exitcond25.not, label %.preheader, label %.preheader16, !llvm.loop !27

.preheader:                                       ; preds = %bb.e, %.preheader
  %.120 = phi i32 [ %i.q, %.preheader ], [ 50, %bb.e ]
  %.11519 = phi i32 [ %i.p, %.preheader ], [ 0, %bb.e ] ; 2 uses
  %i.n = srem i32 %.120, 100                      ; 2 uses
  %i.o = call i32 @dijkstra(i32 noundef %.11519, i32 noundef %i.n) ; 0 uses
  %i.p = add nuw nsw i32 %.11519, 1               ; 2 uses
  %i.q = add nsw i32 %i.n, 1
  %exitcond26.not = icmp eq i32 %i.p, 100
  br i1 %exitcond26.not, label %bb.f, label %.preheader, !llvm.loop !28

bb.f:                                             ; preds = %.preheader
  call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"_NODE", !5, i64 0, !5, i64 4}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS6_QITEM", !12, i64 0}
!15 = !{!16, !5, i64 0}
!16 = !{!"_QITEM", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 16}
!17 = !{!16, !5, i64 4}
!18 = !{!16, !5, i64 8}
!19 = !{!16, !14, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!9, !5, i64 0}
!23 = distinct !{!23, !21}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !12, i64 0}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
end_hunk_0
