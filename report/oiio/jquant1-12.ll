inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@color_quantize:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cg, i8 0, i64 %i.l, i1 false), !tbaa !72
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cj, i8 0, i64 %i.l, i1 false), !tbaa !72
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cm, i8 0, i64 %i.l, i1 false), !tbaa !72
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit56.unr-lcssa, label %.preheader.lr.ph, !llvm.loop !110

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
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.co, i8 0, i64 %i.l, i1 false), !tbaa !72
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.preheader.lr.ph.epil, !llvm.loop !111

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.epil, %._crit_edge35.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @quantize3_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !85   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %.not45 = icmp eq i32 %i.k, 0
  %.promoted = load i32, ptr %i.m, align 4, !tbaa !92 ; 3 uses
  br i1 %.not45, label %.lr.ph52.split.us.preheader, label %.lr.ph.preheader

.lr.ph52.split.us.preheader:                      ; preds = %.lr.ph52
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.t = icmp ult i32 %3, 8
  br i1 %i.t, label %.lr.ph52.split.us.epil.preheader, label %.lr.ph52.split.us.preheader.new

.lr.ph52.split.us.preheader.new:                  ; preds = %.lr.ph52.split.us.preheader
  %unroll_iter = and i32 %3, 2147483640
  %i.u = and i32 %.promoted, 15
  br label %.lr.ph52.split.us

.lr.ph.preheader:                                 ; preds = %.lr.ph52
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph52.split.us:                                ; preds = %.lr.ph52.split.us, %.lr.ph52.split.us.preheader.new
  %i.v = phi i32 [ %i.u, %.lr.ph52.split.us.preheader.new ], [ %i.w, %.lr.ph52.split.us ]
  %niter = phi i32 [ 0, %.lr.ph52.split.us.preheader.new ], [ %niter.next.7, %.lr.ph52.split.us ]
  %i.w = xor i32 %i.v, 8                          ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge53.split.us.unr-lcssa, label %.lr.ph52.split.us, !llvm.loop !112

._crit_edge53.split.us.unr-lcssa:                 ; preds = %.lr.ph52.split.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53.split.us, label %.lr.ph52.split.us.epil.preheader

.lr.ph52.split.us.epil.preheader:                 ; preds = %._crit_edge53.split.us.unr-lcssa, %.lr.ph52.split.us.preheader
  %.epil.init = phi i32 [ %.promoted, %.lr.ph52.split.us.preheader ], [ %i.w, %._crit_edge53.split.us.unr-lcssa ]
  %lcmp.mod58 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph52.split.us.epil

.lr.ph52.split.us.epil:                           ; preds = %.lr.ph52.split.us.epil, %.lr.ph52.split.us.epil.preheader
  %i.x = phi i32 [ %i.z, %.lr.ph52.split.us.epil ], [ %.epil.init, %.lr.ph52.split.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph52.split.us.epil ], [ 0, %.lr.ph52.split.us.epil.preheader ]
  %i.y = add nsw i32 %i.x, 1
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53.split.us, label %.lr.ph52.split.us.epil, !llvm.loop !113

._crit_edge53.split.us:                           ; preds = %.lr.ph52.split.us.epil, %._crit_edge53.split.us.unr-lcssa
  %.lcssa = phi i32 [ %i.w, %._crit_edge53.split.us.unr-lcssa ], [ %i.z, %.lr.ph52.split.us.epil ]
  store i32 %.lcssa, ptr %i.m, align 4, !tbaa !92
  br label %._crit_edge53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.aa = phi i32 [ %.promoted, %.lr.ph.preheader ], [ %i.bs, %._crit_edge ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.af = sext i32 %i.aa to i64                   ; 3 uses
  %i.ag = getelementptr inbounds [64 x i8], ptr %i.o, i64 %i.af
  %i.ah = getelementptr inbounds [64 x i8], ptr %i.q, i64 %i.af
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.s, i64 %i.af
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.049 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bd, %bb.b ] ; 4 uses
  %.04148 = phi i32 [ %i.k, %.lr.ph ], [ %i.bq, %bb.b ]
  %.04347 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.b ] ; 2 uses
  %.04446 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bn, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.ak = load i16, ptr %.049, align 2, !tbaa !72
  %i.al = sext i16 %i.ak to i32
  %i.am = zext nneg i32 %.04347 to i64            ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.au = load i16, ptr %i.aj, align 2, !tbaa !72
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.am
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, %i.av
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !72
  %i.bc = add i16 %i.bb, %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %.049, i64 6
  %i.be = load i16, ptr %i.at, align 2, !tbaa !72
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !72
  %i.bm = add i16 %i.bc, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.04446, i64 2
  store i16 %i.bm, ptr %.04446, align 2, !tbaa !72
  %i.bo = add nuw nsw i32 %.04347, 1
  %i.bp = and i32 %i.bo, 15
  %i.bq = add i32 %.04148, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.b
  %i.br = add nsw i32 %i.aa, 1
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  store i32 %i.bs, ptr %i.m, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %.lr.ph, !llvm.loop !112

._crit_edge53:                                    ; preds = %._crit_edge, %._crit_edge53.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.fr56 = freeze i32 %i.b                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %.fr = freeze i32 %i.d                          ; 6 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %i.h = zext i32 %.fr to i64
  %i.i = shl nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 84 ; 6 uses
  %i.k = icmp sgt i32 %.fr56, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.n = sext i32 %.fr56 to i64                   ; 2 uses
  br i1 %i.k, label %.lr.ph54.split.us, label %.lr.ph54.split.preheader

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
  %i.o = icmp eq i32 %.fr, 1
  %unroll_iter = and i32 %.fr, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod81 = trunc i32 %.fr to i1
  br label %.lr.ph50.us

.lr.ph50.us.us:                                   ; preds = %.lr.ph54.split.us, %.lr.ph50.us.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.lr.ph50.us.us ], [ 0, %.lr.ph54.split.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv70
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79
  tail call void @jzero_far(ptr noundef %i.q, i64 noundef %i.i) #8
  %i.r = load i32, ptr %i.j, align 4, !tbaa !92
  %i.s = add nsw i32 %i.r, 1
  %i.t = and i32 %i.s, 15
  store i32 %i.t, ptr %i.j, align 4, !tbaa !92
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge55, label %.lr.ph50.us.us, !llvm.loop !115

.lr.ph50.us:                                      ; preds = %.lr.ph50.us.preheader, %._crit_edge51.us
  %indvars.iv65 = phi i64 [ 0, %.lr.ph50.us.preheader ], [ %indvars.iv.next66, %._crit_edge51.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79
  tail call void @jzero_far(ptr noundef %i.v, i64 noundef %i.i) #8
  %i.w = load i32, ptr %i.j, align 4, !tbaa !92   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.ab = sext i32 %i.w to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph50.us, %._crit_edge.us
  %indvars.iv60 = phi i64 [ 0, %.lr.ph50.us ], [ %indvars.iv.next61, %._crit_edge.us ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv60 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv60
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv60
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds [64 x i8], ptr %i.ag, i64 %i.ab ; 3 uses
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.047.us = phi ptr [ %i.bi, %.lr.ph.us.new ], [ %i.ac, %.lr.ph.us ] ; 2 uses
  %.04045.us = phi ptr [ %i.bj, %.lr.ph.us.new ], [ %i.z, %.lr.ph.us ] ; 4 uses
  %.04144.us = phi i32 [ %i.bl, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.ai = load i16, ptr %.047.us, align 2, !tbaa !72
  %i.aj = sext i16 %i.ai to i32
  %i.ak = zext nneg i32 %.04144.us to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, %i.aj
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !72
  %i.ar = load i16, ptr %.04045.us, align 2, !tbaa !72
  %i.as = add i16 %i.ar, %i.aq
  store i16 %i.as, ptr %.04045.us, align 2, !tbaa !72
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.047.us, i64 %i.n ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04045.us, i64 2 ; 2 uses
  %i.av = add nuw nsw i32 %.04144.us, 1
  %i.aw = and i32 %i.av, 15
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !72
  %i.ay = sext i16 %i.ax to i32
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = add nsw i32 %i.bb, %i.ay
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !72
  %i.bg = load i16, ptr %i.au, align 2, !tbaa !72
  %i.bh = add i16 %i.bg, %i.bf
  store i16 %i.bh, ptr %i.au, align 2, !tbaa !72
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.n ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04045.us, i64 4 ; 2 uses
  %i.bk = add nuw nsw i32 %.04144.us, 2
  %i.bl = and i32 %i.bk, 15                       ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !116

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.047.us.epil.init = phi ptr [ %i.ac, %.lr.ph.us ], [ %i.bi, %._crit_edge.us.unr-lcssa ]
  %.04045.us.epil.init = phi ptr [ %i.z, %.lr.ph.us ], [ %i.bj, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.04144.us.epil.init = phi i32 [ 0, %.lr.ph.us ], [ %i.bl, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.bm = load i16, ptr %.047.us.epil.init, align 2, !tbaa !72
  %i.bn = sext i16 %i.bm to i32
  %i.bo = zext nneg i32 %.04144.us.epil.init to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !72
  %i.bv = load i16, ptr %.04045.us.epil.init, align 2, !tbaa !72
  %i.bw = add i16 %i.bv, %i.bu
  store i16 %i.bw, ptr %.04045.us.epil.init, align 2, !tbaa !72
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge51.us, label %.lr.ph.us, !llvm.loop !117

._crit_edge51.us:                                 ; preds = %._crit_edge.us
  %i.bx = add nsw i32 %i.w, 1
  %i.by = and i32 %i.bx, 15
  store i32 %i.by, ptr %i.j, align 4, !tbaa !92
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count73
  br i1 %exitcond69.not, label %._crit_edge55, label %.lr.ph50.us, !llvm.loop !115

.lr.ph54.split:                                   ; preds = %.lr.ph54.split.preheader, %.lr.ph54.split
  %indvars.iv = phi i64 [ 0, %.lr.ph54.split.preheader ], [ %indvars.iv.next, %.lr.ph54.split ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !79
  tail call void @jzero_far(ptr noundef %i.ca, i64 noundef %i.i) #8
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !92
  %i.cc = add nsw i32 %i.cb, 1
  %i.cd = and i32 %i.cc, 15
  store i32 %i.cd, ptr %i.j, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.lr.ph54.split, !llvm.loop !115

._crit_edge55:                                    ; preds = %.lr.ph54.split, %._crit_edge51.us, %.lr.ph50.us.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.fr113 = freeze i32 %i.b                       ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %.fr = freeze i32 %i.d                          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 4 uses
  %i.j = zext i32 %.fr to i64
  %i.k = shl nuw nsw i64 %i.j, 1                  ; 3 uses
  %i.l = icmp sgt i32 %.fr113, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 6 uses
  %i.n = add i32 %.fr, -1                         ; 2 uses
  %i.o = mul i32 %i.n, %.fr113
  %i.p = zext i32 %i.o to i64
  %i.q = zext i32 %i.n to i64
  %i.r = sub nsw i32 0, %.fr113
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 16 uses
  %i.t = add i32 %.fr, 1
  %i.u = zext i32 %i.t to i64                     ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br i1 %i.l, label %.lr.ph105.split.us, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %.lr.ph105
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph105.split

.lr.ph105.split.us:                               ; preds = %.lr.ph105
  %.not8990 = icmp eq i32 %.fr, 0
  %wide.trip.count142 = zext nneg i32 %3 to i64   ; 2 uses
  %wide.trip.count132 = zext nneg i32 %.fr113 to i64 ; 5 uses
  br i1 %.not8990, label %.lr.ph101.us.us.preheader, label %.lr.ph101.us

.lr.ph101.us.us.preheader:                        ; preds = %.lr.ph105.split.us
  %xtraiter = and i64 %wide.trip.count132, 3      ; 3 uses
  %i.x = icmp ult i32 %.fr113, 4
  %unroll_iter = and i64 %wide.trip.count132, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  %xtraiter157 = and i64 %wide.trip.count132, 7   ; 3 uses
  %i.y = icmp ult i32 %.fr113, 8
  %unroll_iter161 = and i64 %wide.trip.count132, 2147483640
  %lcmp.mod159.not = icmp eq i64 %xtraiter157, 0
  %lcmp.mod160 = icmp ne i64 %xtraiter157, 0
  br label %.lr.ph101.us.us

.lr.ph101.us.us:                                  ; preds = %.lr.ph101.us.us.preheader, %._crit_edge102.split.us.us.us
  %indvars.iv139 = phi i64 [ 0, %.lr.ph101.us.us.preheader ], [ %indvars.iv.next140, %._crit_edge102.split.us.us.us ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv139
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79
  tail call void @jzero_far(ptr noundef %i.aa, i64 noundef %i.k) #8
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !98
  %.not88.us.us = icmp eq i32 %i.ab, 0            ; 2 uses
  br i1 %.not88.us.us, label %.lr.ph101.split.us.split.us.us.us.preheader, label %.lr.ph101.split.us.split.us112.us.preheader

.lr.ph101.split.us.split.us112.us.preheader:      ; preds = %.lr.ph101.us.us
  br i1 %i.x, label %.lr.ph101.split.us.split.us112.us.epil.preheader, label %.lr.ph101.split.us.split.us112.us

.lr.ph101.split.us.split.us.us.us.preheader:      ; preds = %.lr.ph101.us.us
  br i1 %i.y, label %.lr.ph101.split.us.split.us.us.us.epil.preheader, label %.lr.ph101.split.us.split.us.us.us

.lr.ph101.split.us.split.us112.us:                ; preds = %.lr.ph101.split.us.split.us112.us.preheader, %.lr.ph101.split.us.split.us112.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.3, %.lr.ph101.split.us.split.us112.us ], [ 0, %.lr.ph101.split.us.split.us112.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph101.split.us.split.us112.us ], [ 0, %.lr.ph101.split.us.split.us112.us.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.u
  store i64 0, ptr %i.ae, align 8, !tbaa !119
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.u
  store i64 0, ptr %i.ai, align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.u
  store i64 0, ptr %i.am, align 8, !tbaa !119
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.u
  store i64 0, ptr %i.aq, align 8, !tbaa !119
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge102.split.us.us.us.loopexit152.unr-lcssa, label %.lr.ph101.split.us.split.us112.us, !llvm.loop !120

._crit_edge102.split.us.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph101.split.us.split.us.us.us
  br i1 %lcmp.mod159.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us.us.us.epil.preheader

.lr.ph101.split.us.split.us.us.us.epil.preheader: ; preds = %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.us.us.preheader
  %indvars.iv134.epil.init = phi i64 [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ], [ %indvars.iv.next135.7, %._crit_edge102.split.us.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph101.split.us.split.us.us.us.epil

.lr.ph101.split.us.split.us.us.us.epil:           ; preds = %.lr.ph101.split.us.split.us.us.us.epil, %.lr.ph101.split.us.split.us.us.us.epil.preheader
  %indvars.iv134.epil = phi i64 [ %indvars.iv.next135.epil, %.lr.ph101.split.us.split.us.us.us.epil ], [ %indvars.iv134.epil.init, %.lr.ph101.split.us.split.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter158 = phi i64 [ %epil.iter158.next, %.lr.ph101.split.us.split.us.us.us.epil ], [ 0, %.lr.ph101.split.us.split.us.us.us.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51
  store i64 0, ptr %i.as, align 8, !tbaa !119
  %indvars.iv.next135.epil = add nuw nsw i64 %indvars.iv134.epil, 1
  %epil.iter158.next = add i64 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i64 %epil.iter158.next, %xtraiter157
  br i1 %epil.iter158.cmp.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us.us.us.epil, !llvm.loop !121

._crit_edge102.split.us.us.us.loopexit152.unr-lcssa: ; preds = %.lr.ph101.split.us.split.us112.us
  br i1 %lcmp.mod.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us112.us.epil.preheader

.lr.ph101.split.us.split.us112.us.epil.preheader: ; preds = %._crit_edge102.split.us.us.us.loopexit152.unr-lcssa, %.lr.ph101.split.us.split.us112.us.preheader
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph101.split.us.split.us112.us.preheader ], [ %indvars.iv.next130.3, %._crit_edge102.split.us.us.us.loopexit152.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph101.split.us.split.us112.us.epil

.lr.ph101.split.us.split.us112.us.epil:           ; preds = %.lr.ph101.split.us.split.us112.us.epil, %.lr.ph101.split.us.split.us112.us.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph101.split.us.split.us112.us.epil ], [ %indvars.iv129.epil.init, %.lr.ph101.split.us.split.us112.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph101.split.us.split.us112.us.epil ], [ 0, %.lr.ph101.split.us.split.us112.us.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.u
  store i64 0, ptr %4, align 8, !tbaa !119
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us112.us.epil, !llvm.loop !122

._crit_edge102.split.us.us.us:                    ; preds = %._crit_edge102.split.us.us.us.loopexit152.unr-lcssa, %.lr.ph101.split.us.split.us112.us.epil, %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.us.us.epil
  %i.av = zext i1 %.not88.us.us to i32
  store i32 %i.av, ptr %i.m, align 8, !tbaa !98
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge106, label %.lr.ph101.us.us, !llvm.loop !123

.lr.ph101.split.us.split.us.us.us:                ; preds = %.lr.ph101.split.us.split.us.us.us.preheader, %.lr.ph101.split.us.split.us.us.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.7, %.lr.ph101.split.us.split.us.us.us ], [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ] ; 9 uses
  %niter162 = phi i64 [ %niter162.next.7, %.lr.ph101.split.us.split.us.us.us ], [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  store i64 0, ptr %i.ax, align 8, !tbaa !119
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51
  store i64 0, ptr %i.ba, align 8, !tbaa !119
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  store i64 0, ptr %i.bd, align 8, !tbaa !119
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  store i64 0, ptr %i.bg, align 8, !tbaa !119
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  store i64 0, ptr %i.bj, align 8, !tbaa !119
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51
  store i64 0, ptr %i.bm, align 8, !tbaa !119
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51
  store i64 0, ptr %i.bp, align 8, !tbaa !119
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !51
  store i64 0, ptr %i.bs, align 8, !tbaa !119
  %indvars.iv.next135.7 = add nuw nsw i64 %indvars.iv134, 8 ; 2 uses
  %niter162.next.7 = add i64 %niter162, 8         ; 2 uses
  %niter162.ncmp.7 = icmp eq i64 %niter162.next.7, %unroll_iter161
  br i1 %niter162.ncmp.7, label %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, label %.lr.ph101.split.us.split.us.us.us, !llvm.loop !120

.lr.ph101.us:                                     ; preds = %.lr.ph105.split.us, %._crit_edge102.split.us108
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %._crit_edge102.split.us108 ], [ 0, %.lr.ph105.split.us ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv124 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !79
  tail call void @jzero_far(ptr noundef %i.bu, i64 noundef %i.k) #8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv124
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !79 ; 2 uses
  %i.by = load i32, ptr %i.m, align 8, !tbaa !98
  %.not88.us = icmp eq i32 %i.by, 0               ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.q
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101.us, %._crit_edge.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph101.us ], [ %indvars.iv.next120, %._crit_edge.us ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv119 ; 2 uses
  br i1 %.not88.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.p
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.u
  br label %.lr.ph.us

bb.d:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !51
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %bb.c
  %.085.us = phi ptr [ %i.bz, %bb.c ], [ %i.bx, %bb.d ]
  %.083.us = phi ptr [ %i.cd, %bb.c ], [ %i.cc, %bb.d ]
  %.082.us = phi ptr [ %i.cg, %bb.c ], [ %i.ci, %bb.d ]
  %.080.us = phi i64 [ -1, %bb.c ], [ 1, %bb.d ]  ; 2 uses
  %.079.us = phi i32 [ %i.r, %bb.c ], [ %.fr113, %bb.d ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv119
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv119
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !79
  %i.cn = sext i32 %.079.us to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.us
  %.097.us = phi i64 [ 0, %.lr.ph.us ], [ %i.dm, %bb.e ]
  %.07596.us = phi i64 [ 0, %.lr.ph.us ], [ %i.dh, %bb.e ]
  %.07695.us = phi i32 [ %.fr, %.lr.ph.us ], [ %i.dp, %bb.e ]
  %.08194.us = phi i64 [ 0, %.lr.ph.us ], [ %i.dl, %bb.e ]
  %.193.us = phi ptr [ %.082.us, %.lr.ph.us ], [ %i.co, %bb.e ] ; 2 uses
  %.18492.us = phi ptr [ %.083.us, %.lr.ph.us ], [ %i.dn, %bb.e ] ; 2 uses
  %.18691.us = phi ptr [ %.085.us, %.lr.ph.us ], [ %i.do, %bb.e ] ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.193.us, i64 %.080.us ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !119
  %i.cq = add nsw i64 %.097.us, 8
  %i.cr = add i64 %i.cq, %i.cp
  %i.cs = ashr i64 %i.cr, 4
  %i.ct = load i16, ptr %.18492.us, align 2, !tbaa !72
  %i.cu = sext i16 %i.ct to i64
  %i.cv = getelementptr [2 x i8], ptr %i.f, i64 %i.cs
  %i.cw = getelementptr [2 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !72
  %i.cy = sext i16 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !72 ; 2 uses
  %i.db = load i16, ptr %.18691.us, align 2, !tbaa !72
  %i.dc = add i16 %i.db, %i.da
  store i16 %i.dc, ptr %.18691.us, align 2, !tbaa !72
  %i.dd = sext i16 %i.da to i64
  %i.de = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !72
  %i.dg = sext i16 %i.df to i64
  %i.dh = sub nsw i64 %i.cy, %i.dg                ; 4 uses
  %i.di = mul nsw i64 %i.dh, 3
  %i.dj = add nsw i64 %i.di, %.08194.us
  store i64 %i.dj, ptr %.193.us, align 8, !tbaa !119
  %i.dk = mul nsw i64 %i.dh, 5
  %i.dl = add nsw i64 %i.dk, %.07596.us           ; 2 uses
  %i.dm = mul nsw i64 %i.dh, 7
  %i.dn = getelementptr inbounds [2 x i8], ptr %.18492.us, i64 %i.cn
  %i.do = getelementptr inbounds [2 x i8], ptr %.18691.us, i64 %.080.us
  %i.dp = add i32 %.07695.us, -1                  ; 2 uses
  %.not89.us = icmp eq i32 %i.dp, 0
  br i1 %.not89.us, label %._crit_edge.us, label %bb.e, !llvm.loop !124

._crit_edge.us:                                   ; preds = %bb.e
  store i64 %i.dl, ptr %i.co, align 8, !tbaa !119
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count132
  br i1 %exitcond123.not, label %._crit_edge102.split.us108, label %bb.b, !llvm.loop !120

._crit_edge102.split.us108:                       ; preds = %._crit_edge.us
  %i.dq = zext i1 %.not88.us to i32
  store i32 %i.dq, ptr %i.m, align 8, !tbaa !98
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count142
  br i1 %exitcond128.not, label %._crit_edge106, label %.lr.ph101.us, !llvm.loop !123

.lr.ph105.split:                                  ; preds = %.lr.ph105.split.preheader, %.lr.ph105.split
  %indvars.iv = phi i64 [ 0, %.lr.ph105.split.preheader ], [ %indvars.iv.next, %.lr.ph105.split ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !79
  tail call void @jzero_far(ptr noundef %i.ds, i64 noundef %i.k) #8
  %i.dt = load i32, ptr %i.m, align 8, !tbaa !98
  %.not = icmp eq i32 %i.dt, 0
  %i.du = zext i1 %.not to i32
  store i32 %i.du, ptr %i.m, align 8, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge106, label %.lr.ph105.split, !llvm.loop !123

._crit_edge106:                                   ; preds = %.lr.ph105.split, %._crit_edge102.split.us108, %._crit_edge102.split.us.us.us, %bb.a
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
end_hunk_0
