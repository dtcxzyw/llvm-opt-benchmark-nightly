Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_rect_pack?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbrp_setup_heuristic(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbrp_setup_allow_out_of_mem(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 2 uses
  %i.d = add i32 %i.a, -1
  %i.e = add i32 %i.d, %i.c
  %i.f = sdiv i32 %i.e, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.g, align 8, !tbaa !17
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
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %5, ptr %i.g, align 8, !tbaa !19
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %6, ptr %i.j, align 8, !tbaa !19
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %7 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %7, ptr %i.m, align 8, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %8, ptr %i.p, align 8, !tbaa !19
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.epil
  %9 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.epil
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %9, ptr %i.s, align 8, !tbaa !19
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %i.t = zext nneg i32 %i.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.t, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0.lcssa
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23
  store i32 %1, ptr %0, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.ab, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.ac, align 4, !tbaa !16
  %i.ad = add i32 %i.a, %1
  %i.ae = sdiv i32 %i.ad, %4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !17
  store i32 0, ptr %i.z, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !19
  store i32 %1, ptr %i.ah, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1073741824, ptr %i.aj, align 4, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ak, align 8, !tbaa !19
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 3 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
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
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.039.lcssa = phi i32 [ 0, %bb.a ], [ %.140, %bb.f ]
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]
  store i32 %.036.lcssa, ptr %4, align 4, !tbaa !34
  ret i32 %.039.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @stbrp__skyline_find_best_pos(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %1, -1
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = srem i32 %i.d, %i.b
  %i.f = sub nsw i32 %i.d, %i.e                   ; 11 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !15     ; 3 uses
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14
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
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19 ; 3 uses
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
end_hunk_0
