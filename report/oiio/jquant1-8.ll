inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@color_quantize:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cc, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cf, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ci, i8 0, i64 %i.k, i1 false), !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit56.unr-lcssa, label %.preheader.lr.ph, !llvm.loop !105

._crit_edge.split.loopexit56.unr-lcssa:           ; preds = %.preheader.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.preheader.lr.ph.epil.preheader

.preheader.lr.ph.epil.preheader:                  ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.split.loopexit56.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %.preheader.lr.ph.epil

.preheader.lr.ph.epil:                            ; preds = %.preheader.lr.ph.epil, %.preheader.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.epil ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 0, i64 %i.k, i1 false), !tbaa !36
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.preheader.lr.ph.epil, !llvm.loop !106

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.epil, %._crit_edge35.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @quantize3_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %.lr.ph52.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph52
  %wide.trip.count = zext nneg i32 %3 to i64
  %.pre = load i32, ptr %i.m, align 4, !tbaa !87
  br label %.lr.ph

.lr.ph52.split.us:                                ; preds = %.lr.ph52
  %.promoted = load i32, ptr %i.m, align 4, !tbaa !87 ; 2 uses
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.q = icmp ult i32 %3, 8
  br i1 %i.q, label %.epil.preheader, label %.lr.ph52.split.us.new

.lr.ph52.split.us.new:                            ; preds = %.lr.ph52.split.us
  %unroll_iter = and i32 %3, 2147483640
  %i.r = and i32 %.promoted, 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph52.split.us.new
  %i.s = phi i32 [ %i.r, %.lr.ph52.split.us.new ], [ %i.t, %bb.b ]
  %niter = phi i32 [ 0, %.lr.ph52.split.us.new ], [ %niter.next.7, %bb.b ]
  %i.t = xor i32 %i.s, 8                          ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge53.split.us.unr-lcssa, label %bb.b, !llvm.loop !107

._crit_edge53.split.us.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge53.split.us.unr-lcssa, %.lr.ph52.split.us
  %.epil.init = phi i32 [ %.promoted, %.lr.ph52.split.us ], [ %i.t, %._crit_edge53.split.us.unr-lcssa ]
  %lcmp.mod58 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.u = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.w, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = add nsw i32 %i.u, 1
  %i.w = and i32 %i.v, 15                         ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53.split.us, label %bb.c, !llvm.loop !108

._crit_edge53.split.us:                           ; preds = %bb.c, %._crit_edge53.split.us.unr-lcssa
  %.lcssa = phi i32 [ %i.t, %._crit_edge53.split.us.unr-lcssa ], [ %i.w, %bb.c ]
  store i32 %.lcssa, ptr %i.m, align 4, !tbaa !87
  br label %._crit_edge53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.x = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.bs, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ad = sext i32 %i.x to i64                    ; 3 uses
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.ag = getelementptr inbounds [64 x i8], ptr %i.af, i64 %i.ad
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.ah, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.049 = phi ptr [ %i.z, %.lr.ph ], [ %i.bd, %bb.d ] ; 4 uses
  %.04148 = phi i32 [ %i.k, %.lr.ph ], [ %i.bq, %bb.d ]
  %.04347 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.d ] ; 2 uses
  %.04446 = phi ptr [ %i.ab, %.lr.ph ], [ %i.bn, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.ak = load i8, ptr %.049, align 1, !tbaa !36
  %i.al = zext i8 %i.ak to i32
  %i.am = zext nneg i32 %.04347 to i64            ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.e, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.au = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.am
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, %i.av
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.g, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = add i8 %i.bb, %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %.049, i64 3
  %i.be = load i8, ptr %i.at, align 1, !tbaa !36
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = add i8 %i.bc, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.04446, i64 1
  store i8 %i.bm, ptr %.04446, align 1, !tbaa !36
  %i.bo = add nuw nsw i32 %.04347, 1
  %i.bp = and i32 %i.bo, 15
  %i.bq = add i32 %.04148, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.d
  %i.br = add nsw i32 %i.x, 1
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  store i32 %i.bs, ptr %i.m, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %.lr.ph, !llvm.loop !107

._crit_edge53:                                    ; preds = %._crit_edge, %._crit_edge53.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %.fr56 = freeze i32 %i.b                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80
  %.fr = freeze i32 %i.d                          ; 6 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %i.h = zext i32 %.fr to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 84 ; 6 uses
  %i.j = icmp sgt i32 %.fr56, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.m = sext i32 %.fr56 to i64                   ; 2 uses
  br i1 %i.j, label %.lr.ph54.split.us, label %.lr.ph54.split.preheader

.lr.ph54.split.preheader:                         ; preds = %.lr.ph54
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph54.split

.lr.ph54.split.us:                                ; preds = %.lr.ph54
  %.not43 = icmp eq i32 %.fr, 0
  %wide.trip.count73 = zext nneg i32 %3 to i64    ; 2 uses
  br i1 %.not43, label %.lr.ph50.us.us, label %.lr.ph50.us.preheader

.lr.ph50.us.preheader:                            ; preds = %.lr.ph54.split.us
  %wide.trip.count63 = zext nneg i32 %.fr56 to i64
  %xtraiter = and i32 %.fr, 1
  %i.n = icmp eq i32 %.fr, 1
  %unroll_iter = and i32 %.fr, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod81 = trunc i32 %.fr to i1
  br label %.lr.ph50.us

.lr.ph50.us.us:                                   ; preds = %.lr.ph54.split.us, %.lr.ph50.us.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.lr.ph50.us.us ], [ 0, %.lr.ph54.split.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv70
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  tail call void @jzero_far(ptr noundef %i.p, i64 noundef 0) #8
  %i.q = load i32, ptr %i.i, align 4, !tbaa !87
  %i.r = add nsw i32 %i.q, 1
  %i.s = and i32 %i.r, 15
  store i32 %i.s, ptr %i.i, align 4, !tbaa !87
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge55, label %.lr.ph50.us.us, !llvm.loop !110

.lr.ph50.us:                                      ; preds = %.lr.ph50.us.preheader, %._crit_edge51.us
  %indvars.iv65 = phi i64 [ 0, %.lr.ph50.us.preheader ], [ %indvars.iv.next66, %._crit_edge51.us ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void @jzero_far(ptr noundef %i.u, i64 noundef %i.h) #8
  %i.v = load i32, ptr %i.i, align 4, !tbaa !87   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.x = sext i32 %i.v to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph50.us, %._crit_edge.us
  %indvars.iv60 = phi i64 [ 0, %.lr.ph50.us ], [ %indvars.iv.next61, %._crit_edge.us ] ; 4 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv60 ; 2 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !71  ; 2 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv60
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv60
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds [64 x i8], ptr %i.af, i64 %i.x ; 3 uses
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.047.us = phi ptr [ %i.bh, %.lr.ph.us.new ], [ %i.z, %.lr.ph.us ] ; 2 uses
  %.04045.us = phi ptr [ %i.bi, %.lr.ph.us.new ], [ %i.aa, %.lr.ph.us ] ; 4 uses
  %.04144.us = phi i32 [ %i.bk, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.ah = load i8, ptr %.047.us, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i32
  %i.aj = zext nneg i32 %.04144.us to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, %i.ai
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ad, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !36
  %i.aq = load i8, ptr %.04045.us, align 1, !tbaa !36
  %i.ar = add i8 %i.aq, %i.ap
  store i8 %i.ar, ptr %.04045.us, align 1, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %.047.us, i64 %i.m ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04045.us, i64 1 ; 2 uses
  %i.au = add nuw nsw i32 %.04144.us, 1
  %i.av = and i32 %i.au, 15
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add nsw i32 %i.ba, %i.ax
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ad, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %i.bf = load i8, ptr %i.at, align 1, !tbaa !36
  %i.bg = add i8 %i.bf, %i.be
  store i8 %i.bg, ptr %i.at, align 1, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.m ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04045.us, i64 2 ; 2 uses
  %i.bj = add nuw nsw i32 %.04144.us, 2
  %i.bk = and i32 %i.bj, 15                       ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !111

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.047.us.epil.init = phi ptr [ %i.z, %.lr.ph.us ], [ %i.bh, %._crit_edge.us.unr-lcssa ]
  %.04045.us.epil.init = phi ptr [ %i.aa, %.lr.ph.us ], [ %i.bi, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.04144.us.epil.init = phi i32 [ 0, %.lr.ph.us ], [ %i.bk, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.bl = load i8, ptr %.047.us.epil.init, align 1, !tbaa !36
  %i.bm = zext i8 %i.bl to i32
  %i.bn = zext nneg i32 %.04144.us.epil.init to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !36
  %i.bu = load i8, ptr %.04045.us.epil.init, align 1, !tbaa !36
  %i.bv = add i8 %i.bu, %i.bt
  store i8 %i.bv, ptr %.04045.us.epil.init, align 1, !tbaa !36
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge51.us, label %.lr.ph.us, !llvm.loop !112

._crit_edge51.us:                                 ; preds = %._crit_edge.us
  %i.bw = add nsw i32 %i.v, 1
  %i.bx = and i32 %i.bw, 15
  store i32 %i.bx, ptr %i.i, align 4, !tbaa !87
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count73
  br i1 %exitcond69.not, label %._crit_edge55, label %.lr.ph50.us, !llvm.loop !110

.lr.ph54.split:                                   ; preds = %.lr.ph54.split.preheader, %.lr.ph54.split
  %indvars.iv = phi i64 [ 0, %.lr.ph54.split.preheader ], [ %indvars.iv.next, %.lr.ph54.split ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !71
  tail call void @jzero_far(ptr noundef %i.bz, i64 noundef %i.h) #8
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !87
  %i.cb = add nsw i32 %i.ca, 1
  %i.cc = and i32 %i.cb, 15
  store i32 %i.cc, ptr %i.i, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.lr.ph54.split, !llvm.loop !110

._crit_edge55:                                    ; preds = %.lr.ph54.split, %._crit_edge51.us, %.lr.ph50.us.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %.fr114 = freeze i32 %i.b                       ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80
  %.fr = freeze i32 %i.d                          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 4 uses
  %i.j = zext i32 %.fr to i64                     ; 2 uses
  %i.k = icmp sgt i32 %.fr114, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 7 uses
  %i.m = add i32 %.fr, -1                         ; 2 uses
  %i.n = mul i32 %i.m, %.fr114
  %i.o = zext i32 %i.n to i64
  %i.p = zext i32 %i.m to i64
  %i.q = sub nsw i32 0, %.fr114
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 20 uses
  %i.s = add i32 %.fr, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br i1 %i.k, label %.lr.ph105.split.us, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %.lr.ph105
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph105.split

.lr.ph105.split.us:                               ; preds = %.lr.ph105
  %.not8990 = icmp eq i32 %.fr, 0
  %wide.trip.count143 = zext nneg i32 %3 to i64   ; 2 uses
  %wide.trip.count133 = zext nneg i32 %.fr114 to i64 ; 5 uses
  br i1 %.not8990, label %.lr.ph101.us.us.preheader, label %.lr.ph101.us

.lr.ph101.us.us.preheader:                        ; preds = %.lr.ph105.split.us
  %xtraiter = and i64 %wide.trip.count133, 7      ; 3 uses
  %i.w = icmp ult i32 %.fr114, 8
  %unroll_iter = and i64 %wide.trip.count133, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod157 = icmp ne i64 %xtraiter, 0
  %xtraiter158 = and i64 %wide.trip.count133, 7   ; 3 uses
  %i.x = icmp ult i32 %.fr114, 8
  %unroll_iter162 = and i64 %wide.trip.count133, 2147483640
  %lcmp.mod160.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = icmp ne i64 %xtraiter158, 0
  br label %.lr.ph101.us.us

.lr.ph101.us.us:                                  ; preds = %.lr.ph101.us.us.preheader, %._crit_edge102.split.us.us.us
  %indvars.iv140 = phi i64 [ 0, %.lr.ph101.us.us.preheader ], [ %indvars.iv.next141, %._crit_edge102.split.us.us.us ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv140
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  tail call void @jzero_far(ptr noundef %i.z, i64 noundef 0) #8
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !93
  %.not88.us.us.us = icmp eq i32 %i.aa, 0         ; 2 uses
  br i1 %.not88.us.us.us, label %.lr.ph101.split.us.split.us.us.us.preheader, label %.lr.ph101.split.us.split.us113.us.preheader

.lr.ph101.split.us.split.us113.us.preheader:      ; preds = %.lr.ph101.us.us
  br i1 %i.w, label %.lr.ph101.split.us.split.us113.us.epil.preheader, label %.lr.ph101.split.us.split.us113.us

.lr.ph101.split.us.split.us.us.us.preheader:      ; preds = %.lr.ph101.us.us
  br i1 %i.x, label %.lr.ph101.split.us.split.us.us.us.epil.preheader, label %.lr.ph101.split.us.split.us.us.us

.lr.ph101.split.us.split.us113.us:                ; preds = %.lr.ph101.split.us.split.us113.us.preheader, %.lr.ph101.split.us.split.us113.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.3, %.lr.ph101.split.us.split.us113.us ], [ 0, %.lr.ph101.split.us.split.us113.us.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph101.split.us.split.us113.us ], [ 0, %.lr.ph101.split.us.split.us113.us.preheader ]
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %6, align 2, !tbaa !114
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %10, align 2, !tbaa !114
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 0, ptr %14, align 2, !tbaa !114
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 2
  store i16 0, ptr %18, align 2, !tbaa !114
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %19 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ac = load ptr, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 0, ptr %20, align 2, !tbaa !114
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %21 = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 0, ptr %21, align 2, !tbaa !114
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %22 = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 0, ptr %22, align 2, !tbaa !114
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %23 = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i16 0, ptr %23, align 2, !tbaa !114
  %indvars.iv.next131.3 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa, label %.lr.ph101.split.us.split.us113.us, !llvm.loop !115

._crit_edge102.split.us.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph101.split.us.split.us.us.us
  br i1 %lcmp.mod160.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us.us.us.epil.preheader

.lr.ph101.split.us.split.us.us.us.epil.preheader: ; preds = %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.us.us.preheader
  %indvars.iv135.epil.init = phi i64 [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ], [ %indvars.iv.next136.7, %._crit_edge102.split.us.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph101.split.us.split.us.us.us.epil

.lr.ph101.split.us.split.us.us.us.epil:           ; preds = %.lr.ph101.split.us.split.us.us.us.epil, %.lr.ph101.split.us.split.us.us.us.epil.preheader
  %indvars.iv135.epil = phi i64 [ %indvars.iv.next136.epil, %.lr.ph101.split.us.split.us.us.us.epil ], [ %indvars.iv135.epil.init, %.lr.ph101.split.us.split.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter159 = phi i64 [ %epil.iter159.next, %.lr.ph101.split.us.split.us.us.us.epil ], [ 0, %.lr.ph101.split.us.split.us.us.us.epil.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135.epil
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  store i16 0, ptr %i.an, align 2, !tbaa !114
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter159.next = add i64 %epil.iter159, 1   ; 2 uses
  %epil.iter159.cmp.not = icmp eq i64 %epil.iter159.next, %xtraiter158
  br i1 %epil.iter159.cmp.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us.us.us.epil, !llvm.loop !116

._crit_edge102.split.us.us.us.loopexit153.unr-lcssa: ; preds = %.lr.ph101.split.us.split.us113.us
  br i1 %lcmp.mod.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us113.us.epil.preheader

.lr.ph101.split.us.split.us113.us.epil.preheader: ; preds = %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa, %.lr.ph101.split.us.split.us113.us.preheader
  %indvars.iv130.epil.init = phi i64 [ 0, %.lr.ph101.split.us.split.us113.us.preheader ], [ %indvars.iv.next131.3, %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph101.split.us.split.us113.us.epil

.lr.ph101.split.us.split.us113.us.epil:           ; preds = %.lr.ph101.split.us.split.us113.us.epil, %.lr.ph101.split.us.split.us113.us.epil.preheader
  %indvars.iv130.epil = phi i64 [ %indvars.iv.next131.epil, %.lr.ph101.split.us.split.us113.us.epil ], [ %indvars.iv130.epil.init, %.lr.ph101.split.us.split.us113.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph101.split.us.split.us113.us.epil ], [ 0, %.lr.ph101.split.us.split.us113.us.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130.epil
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  %24 = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 0, ptr %24, align 2, !tbaa !114
  %indvars.iv.next131.epil = add nuw nsw i64 %indvars.iv130.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us113.us.epil, !llvm.loop !117

._crit_edge102.split.us.us.us:                    ; preds = %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa, %.lr.ph101.split.us.split.us113.us.epil, %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.us.us.epil
  %i.aq = zext i1 %.not88.us.us.us to i32
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !93
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge106, label %.lr.ph101.us.us, !llvm.loop !118

.lr.ph101.split.us.split.us.us.us:                ; preds = %.lr.ph101.split.us.split.us.us.us.preheader, %.lr.ph101.split.us.split.us.us.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.7, %.lr.ph101.split.us.split.us.us.us ], [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ] ; 9 uses
  %niter163 = phi i64 [ %niter163.next.7, %.lr.ph101.split.us.split.us.us.us ], [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  store i16 0, ptr %i.as, align 2, !tbaa !114
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !50
  store i16 0, ptr %i.av, align 2, !tbaa !114
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  store i16 0, ptr %i.ay, align 2, !tbaa !114
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50
  store i16 0, ptr %i.bb, align 2, !tbaa !114
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50
  store i16 0, ptr %i.be, align 2, !tbaa !114
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  store i16 0, ptr %i.bh, align 2, !tbaa !114
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50
  store i16 0, ptr %i.bk, align 2, !tbaa !114
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50
  store i16 0, ptr %i.bn, align 2, !tbaa !114
  %indvars.iv.next136.7 = add nuw nsw i64 %indvars.iv135, 8 ; 2 uses
  %niter163.next.7 = add i64 %niter163, 8         ; 2 uses
  %niter163.ncmp.7 = icmp eq i64 %niter163.next.7, %unroll_iter162
  br i1 %niter163.ncmp.7, label %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, label %.lr.ph101.split.us.split.us.us.us, !llvm.loop !115

.lr.ph101.us:                                     ; preds = %.lr.ph105.split.us, %._crit_edge102.split.us109
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %._crit_edge102.split.us109 ], [ 0, %.lr.ph105.split.us ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv125 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  tail call void @jzero_far(ptr noundef %i.bp, i64 noundef %i.j) #8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv125
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101.us, %._crit_edge.us
  %indvars.iv120 = phi i64 [ 0, %.lr.ph101.us ], [ %indvars.iv.next121, %._crit_edge.us ] ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv120 ; 2 uses
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !71 ; 2 uses
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !93
  %.not88.us108 = icmp eq i32 %i.bu, 0
  br i1 %.not88.us108, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.p
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.t
  br label %.lr.ph.us

bb.d:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %bb.c
  %.085.us = phi ptr [ %i.bw, %bb.c ], [ %i.bt, %bb.d ]
  %.083.us = phi ptr [ %i.bv, %bb.c ], [ %i.bs, %bb.d ]
  %.082.us = phi ptr [ %i.bz, %bb.c ], [ %i.cb, %bb.d ]
  %.080.us = phi i64 [ -1, %bb.c ], [ 1, %bb.d ]  ; 2 uses
  %.079.us = phi i32 [ %i.q, %bb.c ], [ %.fr114, %bb.d ]
  %i.cc = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv120
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !71
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !71
  %i.ci = sext i32 %.079.us to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.us
  %.097.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dl, %bb.e ]
  %.07596.us = phi i32 [ 0, %.lr.ph.us ], [ %i.df, %bb.e ]
  %.07695.us = phi i32 [ %.fr, %.lr.ph.us ], [ %i.do, %bb.e ]
  %.08194.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dk, %bb.e ]
  %.193.us = phi ptr [ %.082.us, %.lr.ph.us ], [ %i.cj, %bb.e ] ; 2 uses
  %.18492.us = phi ptr [ %.083.us, %.lr.ph.us ], [ %i.dm, %bb.e ] ; 2 uses
  %.18691.us = phi ptr [ %.085.us, %.lr.ph.us ], [ %i.dn, %bb.e ] ; 3 uses
  %i.cj = getelementptr inbounds [2 x i8], ptr %.193.us, i64 %.080.us ; 3 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !114
  %i.cl = sext i16 %i.ck to i32
  %i.cm = add nsw i32 %.097.us, 8
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = ashr i32 %i.cn, 4
  %i.cp = load i8, ptr %.18492.us, align 1, !tbaa !36
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.co, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.f, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !36  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = zext i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !36  ; 2 uses
  %i.cz = load i8, ptr %.18691.us, align 1, !tbaa !36
  %i.da = add i8 %i.cz, %i.cy
  store i8 %i.da, ptr %.18691.us, align 1, !tbaa !36
  %i.db = zext i8 %i.cy to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36
  %i.de = zext i8 %i.dd to i32
  %i.df = sub nsw i32 %i.cv, %i.de                ; 4 uses
  %i.dg = mul nsw i32 %i.df, 3
  %i.dh = add nsw i32 %i.dg, %.08194.us
  %i.di = trunc nsw i32 %i.dh to i16
  store i16 %i.di, ptr %.193.us, align 2, !tbaa !114
  %i.dj = mul nsw i32 %i.df, 5
  %i.dk = add nsw i32 %i.dj, %.07596.us           ; 2 uses
  %i.dl = mul nsw i32 %i.df, 7
  %i.dm = getelementptr inbounds i8, ptr %.18492.us, i64 %i.ci
  %i.dn = getelementptr inbounds i8, ptr %.18691.us, i64 %.080.us
  %i.do = add i32 %.07695.us, -1                  ; 2 uses
  %.not89.us = icmp eq i32 %i.do, 0
  br i1 %.not89.us, label %._crit_edge.us, label %bb.e, !llvm.loop !119

._crit_edge.us:                                   ; preds = %bb.e
  %i.dp = trunc nsw i32 %i.dk to i16
  store i16 %i.dp, ptr %i.cj, align 2, !tbaa !114
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count133
  br i1 %exitcond124.not, label %._crit_edge102.split.us109, label %bb.b, !llvm.loop !115

._crit_edge102.split.us109:                       ; preds = %._crit_edge.us
  %i.dq = load i32, ptr %i.l, align 8, !tbaa !93
  %.not.us = icmp eq i32 %i.dq, 0
  %i.dr = zext i1 %.not.us to i32
  store i32 %i.dr, ptr %i.l, align 8, !tbaa !93
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count143
  br i1 %exitcond129.not, label %._crit_edge106, label %.lr.ph101.us, !llvm.loop !118

.lr.ph105.split:                                  ; preds = %.lr.ph105.split.preheader, %.lr.ph105.split
  %indvars.iv = phi i64 [ 0, %.lr.ph105.split.preheader ], [ %indvars.iv.next, %.lr.ph105.split ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !71
  tail call void @jzero_far(ptr noundef %i.dt, i64 noundef %i.j) #8
  %i.du = load i32, ptr %i.l, align 8, !tbaa !93
  %.not = icmp eq i32 %i.du, 0
  %i.dv = zext i1 %.not to i32
  store i32 %i.dv, ptr %i.l, align 8, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge106, label %.lr.ph105.split, !llvm.loop !118

._crit_edge106:                                   ; preds = %.lr.ph105.split, %._crit_edge102.split.us109, %._crit_edge102.split.us.us.us, %bb.a
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_0
