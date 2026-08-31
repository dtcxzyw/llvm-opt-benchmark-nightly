Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_rect_pack?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@stbrp_setup_allow_out_of_mem:bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @stbrp_init_target(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = add i32 %4, -1                           ; 3 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = add nsw i32 %4, -2
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !16
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.3
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !16
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.epil
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.epil
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8, !tbaa !16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %i.t = zext nneg i32 %i.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.t, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0.lcssa
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23
  store i32 %1, ptr %0, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.ab, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.ac, align 4, !tbaa !14
  %i.ad = add i32 %i.a, %1
  %i.ae = sdiv i32 %i.ad, %4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !15
  store i32 0, ptr %i.z, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !16
  store i32 %1, ptr %i.ah, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1073741824, ptr %i.aj, align 4, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ak, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @stbrp__skyline_find_min_y(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %3, %2                       ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.c = icmp slt i32 %i.b, %i.a
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.d = phi i32 [ %i.y, %bb.f ], [ %i.b, %bb.a ] ; 3 uses
  %.03650 = phi i32 [ %.1, %bb.f ], [ 0, %bb.a ]
  %.03749 = phi i32 [ %.138, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.03948 = phi i32 [ %.140, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.04147 = phi ptr [ %i.z, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.04147, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 5 uses
  %i.g = icmp sgt i32 %i.f, %.03948
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.h = sub nsw i32 %i.f, %.03948
  %i.i = mul nsw i32 %i.h, %.03749                ; 2 uses
  %i.j = icmp slt i32 %i.d, %2
  %i.k = getelementptr inbounds nuw i8, ptr %.04147, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 4 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nsw i32 %i.m, %2
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.m, %i.d
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.04147, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = sub nsw i32 %i.r, %i.d                   ; 2 uses
  %i.t = add nsw i32 %i.s, %.03749
  %i.u = icmp sgt i32 %i.t, %3
  %i.v = sub nsw i32 %3, %.03749
  %spec.select = select i1 %i.u, i32 %i.v, i32 %i.s ; 2 uses
  %i.w = sub nsw i32 %.03948, %i.f
  %i.x = mul nsw i32 %spec.select, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.y = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %i.q, %bb.e ]
  %.140 = phi i32 [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %.03948, %bb.e ] ; 2 uses
  %.pn = phi i32 [ %i.n, %bb.c ], [ %i.o, %bb.d ], [ %spec.select, %bb.e ]
  %.pn46 = phi i32 [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.x, %bb.e ]
  %.1 = add nsw i32 %.pn46, %.03650               ; 2 uses
  %.138 = add nsw i32 %.pn, %.03749
  %i.aa = icmp slt i32 %i.y, %i.a
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.039.lcssa = phi i32 [ 0, %bb.a ], [ %.140, %bb.f ]
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]
  store i32 %.036.lcssa, ptr %4, align 4, !tbaa !28
  ret i32 %.039.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @stbrp__skyline_find_best_pos(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = add i32 %1, -1
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = srem i32 %i.d, %i.b
  %i.f = sub nsw i32 %i.d, %i.e                   ; 11 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24   ; 3 uses
  %i.k = icmp sgt i32 %2, %i.j
  br i1 %i.k, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = add nsw i32 %i.n, %i.f                   ; 2 uses
  %.not127 = icmp sgt i32 %i.o, %i.g
  br i1 %.not127, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = icmp sgt i32 %i.f, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !12
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  br i1 %i.p, label %.lr.ph.i.preheader.us, label %.lr.ph.split

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph, %bb.n
  %i.t = phi i32 [ %i.bb, %bb.n ], [ %i.o, %.lr.ph ]
  %i.u = phi i32 [ %i.ba, %bb.n ], [ %i.n, %.lr.ph ] ; 3 uses
  %.0132.us = phi ptr [ %.1.us, %bb.n ], [ null, %.lr.ph ] ; 3 uses
  %.074131.us = phi ptr [ %i.az, %bb.n ], [ %i.m, %.lr.ph ] ; 2 uses
  %.077130.us = phi ptr [ %i.ay, %bb.n ], [ %i.l, %.lr.ph ] ; 2 uses
  %.080129.us = phi i32 [ %.181.us, %bb.n ], [ 1073741824, %.lr.ph ] ; 6 uses
  %.088128.us = phi i32 [ %.189.us, %bb.n ], [ 1073741824, %.lr.ph ] ; 4 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %bb.h
  %i.v = phi i32 [ %i.aq, %bb.h ], [ %i.u, %.lr.ph.i.preheader.us ] ; 3 uses
  %.03650.i.us = phi i32 [ %.1.i.us, %bb.h ], [ 0, %.lr.ph.i.preheader.us ]
  %.03749.i.us = phi i32 [ %.138.i.us, %bb.h ], [ 0, %.lr.ph.i.preheader.us ] ; 4 uses
  %.03948.i.us = phi i32 [ %.140.i.us, %bb.h ], [ 0, %.lr.ph.i.preheader.us ] ; 4 uses
  %.04147.i.us = phi ptr [ %i.ar, %bb.h ], [ %.074131.us, %.lr.ph.i.preheader.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04147.i.us, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26   ; 5 uses
  %i.y = icmp sgt i32 %i.x, %.03948.i.us
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.z = getelementptr inbounds nuw i8, ptr %.04147.i.us, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ac = sub nsw i32 %i.ab, %i.v                 ; 2 uses
  %i.ad = add nsw i32 %i.ac, %.03749.i.us
  %i.ae = icmp sgt i32 %i.ad, %i.f
  %i.af = sub nsw i32 %i.f, %.03749.i.us
  %spec.select.i.us = select i1 %i.ae, i32 %i.af, i32 %i.ac ; 2 uses
  %i.ag = sub nsw i32 %.03948.i.us, %i.x
  %i.ah = mul nsw i32 %spec.select.i.us, %i.ag
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.ai = sub nsw i32 %i.x, %.03948.i.us
  %i.aj = mul nsw i32 %i.ai, %.03749.i.us         ; 2 uses
  %i.ak = icmp slt i32 %i.v, %i.u
  %i.al = getelementptr inbounds nuw i8, ptr %.04147.i.us, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !25 ; 4 uses
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sub nsw i32 %i.an, %i.v
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ap = sub nsw i32 %i.an, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.aq = phi i32 [ %i.an, %bb.g ], [ %i.an, %bb.f ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ar = phi ptr [ %i.am, %bb.g ], [ %i.am, %bb.f ], [ %i.aa, %bb.d ]
  %.140.i.us = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %.03948.i.us, %bb.d ] ; 7 uses
  %.pn.i.us = phi i32 [ %i.ap, %bb.g ], [ %i.ao, %bb.f ], [ %spec.select.i.us, %bb.d ]
  %.pn46.i.us = phi i32 [ %i.aj, %bb.g ], [ %i.aj, %bb.f ], [ %i.ah, %bb.d ]
  %.1.i.us = add nsw i32 %.pn46.i.us, %.03650.i.us ; 3 uses
  %.138.i.us = add nsw i32 %.pn.i.us, %.03749.i.us
  %i.as = icmp slt i32 %i.aq, %i.t
  br i1 %i.as, label %.lr.ph.i.us, label %stbrp__skyline_find_min_y.exit.loopexit.us, !llvm.loop !27

bb.i:                                             ; preds = %stbrp__skyline_find_min_y.exit.loopexit.us
  %i.at = add nsw i32 %.140.i.us, %2
  %.not103.us = icmp sgt i32 %i.at, %i.j
  br i1 %.not103.us, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp slt i32 %.140.i.us, %.080129.us
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp eq i32 %.140.i.us, %.080129.us
  %i.aw = icmp slt i32 %.1.i.us, %.088128.us
  %or.cond.us = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.us, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.n

bb.m:                                             ; preds = %stbrp__skyline_find_min_y.exit.loopexit.us
  %i.ax = icmp slt i32 %.140.i.us, %.080129.us
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %.140.i.us, i32 %.080129.us)
  %spec.select104.us = select i1 %i.ax, ptr %.077130.us, ptr %.0132.us
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %.189.us = phi i32 [ %.088128.us, %bb.i ], [ %.088128.us, %bb.k ], [ %.1.i.us, %bb.l ], [ %.088128.us, %bb.m ] ; 2 uses
  %.181.us = phi i32 [ %.080129.us, %bb.i ], [ %.080129.us, %bb.k ], [ %.140.i.us, %bb.l ], [ %spec.select.us, %bb.m ] ; 2 uses
  %.1.us = phi ptr [ %.0132.us, %bb.i ], [ %.0132.us, %bb.k ], [ %.077130.us, %bb.l ], [ %spec.select104.us, %bb.m ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.074131.us, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.f                 ; 2 uses
  %.not.us = icmp sgt i32 %i.bb, %i.g
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.i.preheader.us, !llvm.loop !29

stbrp__skyline_find_min_y.exit.loopexit.us:       ; preds = %bb.h
  br i1 %i.s, label %bb.m, label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %._crit_edge.thread211, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %.lr.ph.split
  %.088.lcssa = phi i32 [ 0, %.lr.ph.split ], [ %.189.us, %bb.n ] ; 2 uses
  %.080.lcssa = phi i32 [ 0, %.lr.ph.split ], [ %.181.us, %bb.n ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.l, %.lr.ph.split ], [ %.1.us, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %.0.lcssa, null
  br i1 %i.bc, label %._crit_edge.thread, label %._crit_edge.thread211

._crit_edge.thread211:                            ; preds = %.lr.ph.split, %._crit_edge
  %.0.lcssa217 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %.080.lcssa216 = phi i32 [ %.080.lcssa, %._crit_edge ], [ 0, %.lr.ph.split ]
  %.088.lcssa215 = phi i32 [ %.088.lcssa, %._crit_edge ], [ 1073741824, %.lr.ph.split ]
  %i.bd = load ptr, ptr %.0.lcssa217, align 8, !tbaa !30
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge, %._crit_edge.thread211
  %.0.lcssa210 = phi ptr [ %.0.lcssa217, %._crit_edge.thread211 ], [ null, %._crit_edge ], [ null, %bb.c ] ; 2 uses
  %.080.lcssa209 = phi i32 [ %.080.lcssa216, %._crit_edge.thread211 ], [ %.080.lcssa, %._crit_edge ], [ 1073741824, %bb.c ] ; 2 uses
  %.088.lcssa208 = phi i32 [ %.088.lcssa215, %._crit_edge.thread211 ], [ %.088.lcssa, %._crit_edge ], [ 1073741824, %bb.c ]
  %i.bf = phi i32 [ %i.be, %._crit_edge.thread211 ], [ 0, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !12
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.preheader126, label %.loopexit

.preheader126:                                    ; preds = %._crit_edge.thread
  %i.bj = icmp slt i32 %i.n, %i.f
  br i1 %i.bj, label %.lr.ph172, label %.preheader.preheader

.lr.ph172:                                        ; preds = %.preheader126, %.lr.ph172
  %.072171 = phi ptr [ %i.bl, %.lr.ph172 ], [ %i.m, %.preheader126 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.072171, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !25
  %i.bn = icmp slt i32 %i.bm, %i.f
  br i1 %i.bn, label %.lr.ph172, label %.preheader.preheader, !llvm.loop !31

.preheader.preheader:                             ; preds = %.lr.ph172, %.preheader126
  %.173179.ph = phi ptr [ %i.m, %.preheader126 ], [ %i.bl, %.lr.ph172 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.y
  %.2180 = phi ptr [ %.3, %bb.y ], [ %.0.lcssa210, %.preheader.preheader ] ; 2 uses
  %.173179 = phi ptr [ %i.cy, %bb.y ], [ %.173179.ph, %.preheader.preheader ] ; 2 uses
  %.175178 = phi ptr [ %.276, %bb.y ], [ %i.m, %.preheader.preheader ]
  %.178177 = phi ptr [ %.279, %bb.y ], [ %i.l, %.preheader.preheader ]
  %.282176 = phi i32 [ %.383, %bb.y ], [ %.080.lcssa209, %.preheader.preheader ] ; 4 uses
  %.085175 = phi i32 [ %.186, %bb.y ], [ %i.bf, %.preheader.preheader ] ; 3 uses
  %.290174 = phi i32 [ %.391, %bb.y ], [ %.088.lcssa208, %.preheader.preheader ] ; 4 uses
  %i.bo = load i32, ptr %.173179, align 8, !tbaa !25 ; 3 uses
  %i.bp = sub nsw i32 %i.bo, %i.f                 ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader
  %.279 = phi ptr [ %.178177, %.preheader ], [ %i.bq, %bb.o ] ; 2 uses
  %.276 = phi ptr [ %.175178, %.preheader ], [ %i.br, %bb.o ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.276, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !25
  %.not100 = icmp sgt i32 %i.bs, %i.bp
  br i1 %.not100, label %bb.p, label %bb.o, !llvm.loop !32

bb.p:                                             ; preds = %bb.o
  %3 = load i32, ptr %.276, align 8, !tbaa !25    ; 2 uses
  %i.bt = icmp slt i32 %3, %i.bo
  br i1 %i.bt, label %.lr.ph.i110, label %stbrp__skyline_find_min_y.exit121

.lr.ph.i110:                                      ; preds = %bb.p, %bb.u
  %i.bu = phi i32 [ %i.cp, %bb.u ], [ %3, %bb.p ] ; 3 uses
  %.03650.i111 = phi i32 [ %.1.i119, %bb.u ], [ 0, %bb.p ]
  %.03749.i112 = phi i32 [ %.138.i120, %bb.u ], [ 0, %bb.p ] ; 4 uses
  %.03948.i113 = phi i32 [ %.140.i116, %bb.u ], [ 0, %bb.p ] ; 4 uses
  %.04147.i114 = phi ptr [ %i.cq, %bb.u ], [ %.276, %bb.p ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.04147.i114, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26 ; 5 uses
  %i.bx = icmp sgt i32 %i.bw, %.03948.i113
  br i1 %i.bx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.lr.ph.i110
  %i.by = sub nsw i32 %i.bw, %.03948.i113
  %i.bz = mul nsw i32 %i.by, %.03749.i112         ; 2 uses
  %i.ca = icmp slt i32 %i.bu, %i.bp
  %i.cb = getelementptr inbounds nuw i8, ptr %.04147.i114, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !25 ; 4 uses
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = sub nsw i32 %i.cd, %i.bp
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cf = sub nsw i32 %i.cd, %i.bu
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i110
  %i.cg = getelementptr inbounds nuw i8, ptr %.04147.i114, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !16 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %i.cj = sub nsw i32 %i.ci, %i.bu                ; 2 uses
  %i.ck = add nsw i32 %i.cj, %.03749.i112
  %i.cl = icmp sgt i32 %i.ck, %i.f
  %i.cm = sub nsw i32 %i.f, %.03749.i112
  %spec.select.i115 = select i1 %i.cl, i32 %i.cm, i32 %i.cj ; 2 uses
  %i.cn = sub nsw i32 %.03948.i113, %i.bw
  %i.co = mul nsw i32 %spec.select.i115, %i.cn
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.cp = phi i32 [ %i.cd, %bb.r ], [ %i.cd, %bb.s ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cq = phi ptr [ %i.cc, %bb.r ], [ %i.cc, %bb.s ], [ %i.ch, %bb.t ]
  %.140.i116 = phi i32 [ %i.bw, %bb.r ], [ %i.bw, %bb.s ], [ %.03948.i113, %bb.t ] ; 2 uses
  %.pn.i117 = phi i32 [ %i.ce, %bb.r ], [ %i.cf, %bb.s ], [ %spec.select.i115, %bb.t ]
  %.pn46.i118 = phi i32 [ %i.bz, %bb.r ], [ %i.bz, %bb.s ], [ %i.co, %bb.t ]
  %.1.i119 = add nsw i32 %.pn46.i118, %.03650.i111 ; 2 uses
  %.138.i120 = add nsw i32 %.pn.i117, %.03749.i112
  %i.cr = icmp slt i32 %i.cp, %i.bo
  br i1 %i.cr, label %.lr.ph.i110, label %stbrp__skyline_find_min_y.exit121, !llvm.loop !27

stbrp__skyline_find_min_y.exit121:                ; preds = %bb.u, %bb.p
  %.039.lcssa.i108 = phi i32 [ 0, %bb.p ], [ %.140.i116, %bb.u ] ; 4 uses
  %.036.lcssa.i109 = phi i32 [ 0, %bb.p ], [ %.1.i119, %bb.u ] ; 3 uses
  %i.cs = add nsw i32 %.039.lcssa.i108, %2
  %.not101 = icmp sgt i32 %i.cs, %i.j
  %.not102 = icmp sgt i32 %.039.lcssa.i108, %.282176
  %or.cond106 = select i1 %.not101, i1 true, i1 %.not102
  br i1 %or.cond106, label %bb.y, label %bb.v

bb.v:                                             ; preds = %stbrp__skyline_find_min_y.exit121
  %i.ct = icmp slt i32 %.039.lcssa.i108, %.282176
  %i.cu = icmp slt i32 %.036.lcssa.i109, %.290174
  %or.cond125 = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond125, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = icmp eq i32 %.036.lcssa.i109, %.290174
  %i.cw = icmp slt i32 %i.bp, %.085175
  %or.cond107 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond107, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %stbrp__skyline_find_min_y.exit121
  %.391 = phi i32 [ %.036.lcssa.i109, %bb.x ], [ %.290174, %stbrp__skyline_find_min_y.exit121 ], [ %.290174, %bb.w ]
  %.186 = phi i32 [ %i.bp, %bb.x ], [ %.085175, %stbrp__skyline_find_min_y.exit121 ], [ %.085175, %bb.w ] ; 2 uses
  %.383 = phi i32 [ %.039.lcssa.i108, %bb.x ], [ %.282176, %stbrp__skyline_find_min_y.exit121 ], [ %.282176, %bb.w ] ; 2 uses
  %.3 = phi ptr [ %.279, %bb.x ], [ %.2180, %stbrp__skyline_find_min_y.exit121 ], [ %.2180, %bb.w ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.173179, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16 ; 2 uses
  %.not99 = icmp eq ptr %i.cy, null
  br i1 %.not99, label %.loopexit, label %.preheader, !llvm.loop !33

.loopexit:                                        ; preds = %bb.y, %._crit_edge.thread
  %.287 = phi i32 [ %i.bf, %._crit_edge.thread ], [ %.186, %bb.y ]
  %.484 = phi i32 [ %.080.lcssa209, %._crit_edge.thread ], [ %.383, %bb.y ]
  %.4 = phi ptr [ %.0.lcssa210, %._crit_edge.thread ], [ %.3, %bb.y ]
  %i.cz = zext i32 %.484 to i64
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = zext i32 %.287 to i64
  %i.dc = or disjoint i64 %i.da, %i.db
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.sroa.5.0 = phi ptr [ %.4, %.loopexit ], [ null, %bb.b ], [ null, %bb.a ]
  %.sroa.0.0.insert.insert = phi i64 [ %i.dc, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.5.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @stbrp__skyline_pack_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, ptr } @stbrp__skyline_find_best_pos(ptr noundef %0, i32 noundef %1, i32 noundef %2) ; 3 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.b to i32 ; 3 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.e = add nsw i32 %2, %.sroa.7.0.extract.trunc ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.sroa.0.0.extract.trunc, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.e, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = icmp slt i32 %i.p, %.sroa.0.0.extract.trunc
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  store ptr %i.j, ptr %i.r, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.c, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.f ]  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 2 uses
  %.not45 = icmp eq ptr %i.u, null
  %.pre = add nsw i32 %1, %.sroa.0.0.extract.trunc ; 3 uses
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.v = phi ptr [ %i.aa, %bb.h ], [ %i.u, %bb.g ] ; 4 uses
  %i.w = phi ptr [ %i.z, %bb.h ], [ %i.t, %bb.g ]
  %.146 = phi ptr [ %i.v, %bb.h ], [ %.0, %bb.g ] ; 2 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !25
  %.not44 = icmp sgt i32 %i.x, %.pre
  br i1 %.not44, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !22
  store ptr %i.y, ptr %i.w, align 8, !tbaa !16
  store ptr %.146, ptr %i.i, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.1.lcssa = phi ptr [ %.0, %bb.g ], [ %i.v, %bb.h ], [ %.146, %.lr.ph ] ; 3 uses
  store ptr %.1.lcssa, ptr %i.m, align 8, !tbaa !16
  %i.ab = load i32, ptr %.1.lcssa, align 8, !tbaa !25
  %i.ac = icmp slt i32 %i.ab, %.pre
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  store i32 %.pre, ptr %.1.lcssa, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i, %bb.a, %bb.b, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.c, %bb.i ], [ %i.c, %.critedge ]
  %.fca.1.insert = insertvalue { i64, ptr } %i.a, ptr %.sroa.9.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @rect_height_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %i.k = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @rect_original_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @stbrp_pack_rects(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge58.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !38
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !38
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !38
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !38
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !38
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !38
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.5
end_hunk_0
