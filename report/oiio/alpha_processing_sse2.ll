loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DispatchAlpha_SSE2:bb.a
  %.not89.not91 = icmp sgt i32 %2, 16
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %5 to i64
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge101
  %.0108 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.bw, %._crit_edge101 ] ; 8 uses
  %.076107 = phi ptr [ %4, %.preheader.lr.ph ], [ %i.bx, %._crit_edge101 ] ; 8 uses
  %.077106 = phi i32 [ 255, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge101 ] ; 3 uses
  %.080105 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.by, %._crit_edge101 ]
  %.081104 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.182.lcssa, %._crit_edge101 ] ; 2 uses
  %.083103 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.184, %._crit_edge101 ] ; 2 uses
  br i1 %.not89.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %.preheader ] ; 2 uses
  %.18293 = phi <2 x i64> [ %i.v, %.lr.ph ], [ %.081104, %.preheader ]
  %.08592 = phi ptr [ %i.w, %.lr.ph ], [ %.076107, %.preheader ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv116
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !9 ; 2 uses
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>      ; 2 uses
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = shufflevector <16 x i8> %i.f, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.i = bitcast <16 x i8> %i.g to <8 x i16>      ; 2 uses
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.k = shufflevector <8 x i16> %i.i, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.l = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.n = shufflevector <8 x i16> %i.l, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.o = bitcast <8 x i16> %i.j to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.o, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr %.08592)
  %i.p = getelementptr inbounds nuw i8, ptr %.08592, i64 16
  %i.q = bitcast <8 x i16> %i.k to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.q, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.08592, i64 32
  %i.s = bitcast <8 x i16> %i.m to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.s, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.08592, i64 48
  %i.u = bitcast <8 x i16> %i.n to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.u, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.t)
  %i.v = and <2 x i64> %i.e, %.18293              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.08592, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next to i32
  %.not89.not = icmp sgt i32 %2, %i.x
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 16
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.085.lcssa = phi ptr [ %.076107, %.preheader ], [ %i.w, %._crit_edge.loopexit ] ; 2 uses
  %.182.lcssa = phi <2 x i64> [ %.081104, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %.078.lcssa = phi i32 [ 0, %.preheader ], [ %i.y, %._crit_edge.loopexit ] ; 3 uses
  %i.z = or disjoint i32 %.078.lcssa, 8           ; 2 uses
  %.not90.not = icmp slt i32 %i.z, %2
  br i1 %.not90.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.aa = zext nneg i32 %.078.lcssa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !9
  %i.ad = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ac, i64 0 ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <16 x i8>
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ag = bitcast <16 x i8> %i.af to <8 x i16>    ; 2 uses
  %i.ah = shufflevector <8 x i16> %i.ag, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ai = shufflevector <8 x i16> %i.ag, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = bitcast <8 x i16> %i.ah to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.aj, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr %.085.lcssa)
  %i.ak = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 16
  %i.al = bitcast <8 x i16> %i.ai to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.al, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.ak)
  %i.am = and <2 x i64> %i.ad, %.083103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.184 = phi <2 x i64> [ %i.am, %bb.b ], [ %.083103, %._crit_edge ] ; 2 uses
  %.179 = phi i32 [ %i.z, %bb.b ], [ %.078.lcssa, %._crit_edge ] ; 2 uses
  %i.an = icmp slt i32 %.179, %2
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.c
  %i.ao = zext i32 %.179 to i64                   ; 4 uses
  %i.ap = sub nsw i64 %wide.trip.count, %i.ao
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader, %.lr.ph100.prol
  %indvars.iv121.prol = phi i64 [ %indvars.iv.next122.prol, %.lr.ph100.prol ], [ %i.ao, %.lr.ph100.preheader ] ; 3 uses
  %.198.prol = phi i32 [ %i.av, %.lr.ph100.prol ], [ %.077106, %.lr.ph100.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv121.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9   ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nsw i64 %indvars.iv121.prol, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !9
  %i.av = and i32 %.198.prol, %i.as               ; 3 uses
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !18

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader
  %.lcssa133.unr = phi i32 [ poison, %.lr.ph100.preheader ], [ %i.av, %.lr.ph100.prol ]
  %indvars.iv121.unr = phi i64 [ %i.ao, %.lr.ph100.preheader ], [ %indvars.iv.next122.prol, %.lr.ph100.prol ]
  %.198.unr = phi i32 [ %.077106, %.lr.ph100.preheader ], [ %i.av, %.lr.ph100.prol ]
  %i.aw = sub nsw i64 %i.ao, %wide.trip.count
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.3, %.lr.ph100 ], [ %indvars.iv121.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.198 = phi i32 [ %i.bv, %.lr.ph100 ], [ %.198.unr, %.lr.ph100.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv121
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !9
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !9
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nsw i64 %indvars.iv.next122.1, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !9
  %i.bp = and i32 %i.bj, %i.bm
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nsw i64 %indvars.iv.next122.2, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !9
  %i.bv = and i32 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next122.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !20

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %bb.c
  %.1.lcssa = phi i32 [ %.077106, %bb.c ], [ %.lcssa133.unr, %.lr.ph100.prol.loopexit ], [ %i.bv, %.lr.ph100 ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0108, i64 %i.b
  %i.bx = getelementptr inbounds i8, ptr %.076107, i64 %i.c
  %i.by = add nuw nsw i32 %.080105, 1             ; 2 uses
  %exitcond124.not = icmp eq i32 %i.by, %3
  br i1 %exitcond124.not, label %._crit_edge109.loopexit, label %.preheader, !llvm.loop !21

._crit_edge109.loopexit:                          ; preds = %._crit_edge101
  %i.bz = bitcast <2 x i64> %.184 to <16 x i8>
  %i.ca = icmp eq <16 x i8> %i.bz, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = and i16 %i.cb, 255
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = and i32 %.1.lcssa, %i.cd
  %i.cf = icmp ne i32 %i.ce, 255
  %i.cg = bitcast <2 x i64> %.182.lcssa to <16 x i8>
  %i.ch = icmp ne <16 x i8> %i.cg, splat (i8 -1)
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = select i1 %i.cf, i1 true, i1 %i.cj
  %i.cl = zext i1 %i.ck to i32
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.a
  %.not = phi i32 [ 0, %bb.a ], [ %i.cl, %._crit_edge109.loopexit ]
  ret i32 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @DispatchAlphaToGreen_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i32 %2, -16
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.preheader46.lr.ph, label %._crit_edge53

.preheader46.lr.ph:                               ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 15
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.c, label %.preheader46.us.preheader, label %.preheader46.lr.ph.split

.preheader46.us.preheader:                        ; preds = %.preheader46.lr.ph
  %i.f = zext nneg i32 %i.a to i64                ; 3 uses
  %i.g = zext nneg i32 %2 to i64                  ; 2 uses
  %6 = add nsw i64 %i.f, -16
  %i.h = or disjoint i64 %i.f, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  %i.i = sub nsw i64 %umax, %6
  %7 = add nsw i64 %i.i, -16                      ; 2 uses
  %min.iters.check = icmp ult i64 %7, 8
  %n.mod.vf = and i64 %umax, 7                    ; 2 uses
  %n.vec = sub nuw nsw i64 %7, %n.mod.vf          ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %.preheader46.us

.preheader46.us:                                  ; preds = %.preheader46.us.preheader, %._crit_edge.us
  %.052.us = phi ptr [ %i.j, %._crit_edge.us ], [ %0, %.preheader46.us.preheader ] ; 4 uses
  %.04351.us = phi ptr [ %i.k, %._crit_edge.us ], [ %4, %.preheader46.us.preheader ] ; 4 uses
  %.04550.us = phi i32 [ %i.l, %._crit_edge.us ], [ 0, %.preheader46.us.preheader ]
  br label %bb.b

._crit_edge.us:                                   ; preds = %.lr.ph49.us, %middle.block, %..preheader_crit_edge.us
  %i.j = getelementptr inbounds i8, ptr %.052.us, i64 %i.d
  %i.k = getelementptr inbounds [4 x i8], ptr %.04351.us, i64 %i.e
  %i.l = add nuw nsw i32 %.04550.us, 1            ; 2 uses
  %exitcond65.not = icmp eq i32 %i.l, %3
  br i1 %exitcond65.not, label %._crit_edge53, label %.preheader46.us, !llvm.loop !22

.lr.ph49.us:                                      ; preds = %.lr.ph49.us.preheader72, %.lr.ph49.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph49.us ], [ %indvars.iv62.ph, %.lr.ph49.us.preheader72 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv62
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv62
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next63, %i.g
  br i1 %i.r, label %.lr.ph49.us, label %._crit_edge.us, !llvm.loop !23

bb.b:                                             ; preds = %.preheader46.us, %bb.b
  %indvars.iv60 = phi i64 [ 16, %.preheader46.us ], [ %indvars.iv.next61, %bb.b ] ; 4 uses
  %indvars.iv57 = phi i64 [ 0, %.preheader46.us ], [ %indvars.iv.next58, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv57
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !9 ; 2 uses
  %i.u = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.t, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.v = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.w = bitcast <16 x i8> %i.u to <8 x i16>      ; 2 uses
  %i.x = shufflevector <8 x i16> %i.w, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.y = bitcast <16 x i8> %i.v to <8 x i16>      ; 2 uses
  %i.z = shufflevector <8 x i16> %i.y, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aa = shufflevector <8 x i16> %i.w, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ab = shufflevector <8 x i16> %i.y, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv57 ; 4 uses
  store <8 x i16> %i.x, ptr %i.ac, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <8 x i16> %i.aa, ptr %i.ad, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store <8 x i16> %i.z, ptr %i.ae, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <8 x i16> %i.ab, ptr %i.af, align 1, !tbaa !9
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 16 ; 3 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next58, %i.f
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 16
  br i1 %i.ag, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !26

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ah = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %i.ai = icmp sgt i32 %2, %i.ah
  br i1 %i.ai, label %.lr.ph49.us.preheader, label %._crit_edge.us

.lr.ph49.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph49.us.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.us.preheader
  %i.aj = add i64 %indvars.iv60, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add i64 %indvars.iv60, %index           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.052.us, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %wide.load = load <4 x i8>, ptr %i.al, align 1, !tbaa !9
  %wide.load71 = load <4 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = zext <4 x i8> %wide.load to <4 x i32>
  %i.ao = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.ap = shl nuw nsw <4 x i32> %i.an, splat (i32 8)
  %i.aq = shl nuw nsw <4 x i32> %i.ao, splat (i32 8)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %i.ak ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %i.ap, ptr %i.ar, align 4, !tbaa !3
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph49.us.preheader72

.lr.ph49.us.preheader72:                          ; preds = %.lr.ph49.us.preheader, %middle.block
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph49.us.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph49.us

.preheader46.lr.ph.split:                         ; preds = %.preheader46.lr.ph
  %i.au = icmp sgt i32 %2, 0
  br i1 %i.au, label %.preheader46.preheader, label %._crit_edge53

.preheader46.preheader:                           ; preds = %.preheader46.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.av = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %._crit_edge
  %.052 = phi ptr [ %i.bv, %._crit_edge ], [ %0, %.preheader46.preheader ] ; 6 uses
  %.04351 = phi ptr [ %i.bw, %._crit_edge ], [ %4, %.preheader46.preheader ] ; 6 uses
  %.04550 = phi i32 [ %i.bx, %._crit_edge ], [ 0, %.preheader46.preheader ]
  br i1 %i.av, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46, %.preheader46.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader46.new ], [ 0, %.preheader46 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader46.new ], [ 0, %.preheader46 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next.1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next.1
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next.2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next.2
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader46.new, !llvm.loop !28

._crit_edge.unr-lcssa:                            ; preds = %.preheader46.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader46
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.epil
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %i.bv = getelementptr inbounds i8, ptr %.052, i64 %i.d
  %i.bw = getelementptr inbounds [4 x i8], ptr %.04351, i64 %i.e
  %i.bx = add nuw nsw i32 %.04550, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond56.not, label %._crit_edge53, label %.preheader46, !llvm.loop !22

._crit_edge53:                                    ; preds = %._crit_edge, %._crit_edge.us, %.preheader46.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @ExtractAlpha_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = and i32 %i.a, -8
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.preheader50.lr.ph, label %._crit_edge64

.preheader50.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 8
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.d, label %.preheader50.us.preheader, label %.preheader50.lr.ph.split

.preheader50.us.preheader:                        ; preds = %.preheader50.lr.ph
  %i.g = sext i32 %i.b to i64                     ; 3 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = add nsw i64 %i.g, -8                     ; 3 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.i, 0
  %unroll_iter = and i64 %i.k, 4611686018427387902
  %i.m = and i64 %i.i, 8
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  %lcmp.mod118 = trunc i64 %i.k to i1
  %6 = add nsw i64 %i.g, -8
  %7 = or disjoint i64 %i.g, 1
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.h) ; 2 uses
  %9 = sub i64 %8, %6
  %10 = add i64 %9, -8                            ; 2 uses
  %min.iters.check = icmp ult i64 %10, 9
  %n.mod.vf = and i64 %8, 7                       ; 2 uses
  %i.n = icmp eq i64 %n.mod.vf, 0
  %i.o = select i1 %i.n, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %10, %i.o                      ; 2 uses
  br label %.preheader50.us

.preheader50.us:                                  ; preds = %.preheader50.us.preheader, %._crit_edge.us
  %.063.us = phi ptr [ %i.p, %._crit_edge.us ], [ %0, %.preheader50.us.preheader ] ; 12 uses
  %.04262.us = phi ptr [ %i.q, %._crit_edge.us ], [ %4, %.preheader50.us.preheader ] ; 6 uses
  %.04361.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 255, %.preheader50.us.preheader ] ; 3 uses
  %.04660.us = phi i32 [ %i.r, %._crit_edge.us ], [ 0, %.preheader50.us.preheader ]
  %.04759.us = phi <2 x i64> [ %.lcssa, %._crit_edge.us ], [ <i64 -1, i64 0>, %.preheader50.us.preheader ] ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader50.us.new

._crit_edge.us:                                   ; preds = %.lr.ph57.us, %..preheader_crit_edge.us
  %.1.lcssa.us = phi i32 [ %.04361.us, %..preheader_crit_edge.us ], [ %i.x, %.lr.ph57.us ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.063.us, i64 %i.e
  %i.q = getelementptr inbounds i8, ptr %.04262.us, i64 %i.f
  %i.r = add nuw nsw i32 %.04660.us, 1            ; 2 uses
  %exitcond98.not = icmp eq i32 %i.r, %3
  br i1 %exitcond98.not, label %._crit_edge64.loopexit, label %.preheader50.us, !llvm.loop !30

.lr.ph57.us:                                      ; preds = %.lr.ph57.us.preheader109, %.lr.ph57.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.lr.ph57.us ], [ %indvars.iv95.ph, %.lr.ph57.us.preheader109 ] ; 3 uses
  %.156.us = phi i32 [ %i.x, %.lr.ph57.us ], [ %.156.us.ph, %.lr.ph57.us.preheader109 ]
  %i.s = shl nsw i64 %indvars.iv95, 2
  %i.t = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9     ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv95
  store i8 %i.u, ptr %i.w, align 1, !tbaa !9
  %i.x = and i32 %.156.us, %i.v                   ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next96, %i.h
  br i1 %i.y, label %.lr.ph57.us, label %._crit_edge.us, !llvm.loop !31

.preheader50.us.new:                              ; preds = %.preheader50.us, %.preheader50.us.new
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %.preheader50.us.new ], [ 8, %.preheader50.us ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %.preheader50.us.new ], [ 0, %.preheader50.us ] ; 3 uses
  %.14852.us = phi <2 x i64> [ %i.aw, %.preheader50.us.new ], [ %.04759.us, %.preheader50.us ]
  %.04951.us = phi ptr [ %i.ax, %.preheader50.us.new ], [ %.063.us, %.preheader50.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader50.us.new ], [ 0, %.preheader50.us ]
  %i.z = load <4 x i32>, ptr %.04951.us, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %.04951.us, i64 16
  %i.ab = load <4 x i32>, ptr %i.aa, align 1, !tbaa !9
  %i.ac = and <4 x i32> %i.z, splat (i32 255)
  %i.ad = and <4 x i32> %i.ab, splat (i32 255)
  %i.ae = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ac, <4 x i32> %i.ad) ; 2 uses
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> %i.ae)
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90
  %i.ai = extractelement <2 x i64> %i.ag, i64 0
  store i64 %i.ai, ptr %i.ah, align 1, !tbaa !9
  %i.aj = and <2 x i64> %.14852.us, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.04951.us, i64 32
  %i.al = load <4 x i32>, ptr %i.ak, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %.04951.us, i64 48
  %i.an = load <4 x i32>, ptr %i.am, align 1, !tbaa !9
  %i.ao = and <4 x i32> %i.al, splat (i32 255)
  %i.ap = and <4 x i32> %i.an, splat (i32 255)
  %i.aq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ao, <4 x i32> %i.ap) ; 2 uses
  %i.ar = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aq, <8 x i16> %i.aq)
  %i.as = bitcast <16 x i8> %i.ar to <2 x i64>    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = extractelement <2 x i64> %i.as, i64 0
  store i64 %i.av, ptr %i.au, align 1, !tbaa !9
  %i.aw = and <2 x i64> %i.aj, %i.as              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04951.us, i64 64 ; 2 uses
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 16 ; 3 uses
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader_crit_edge.us.unr-lcssa, label %.preheader50.us.new, !llvm.loop !32

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader50.us.new
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 8
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader_crit_edge.us

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader50.us
  %indvars.iv93.epil.init = phi i64 [ 8, %.preheader50.us ], [ %indvars.iv.next94.1, %..preheader_crit_edge.us.unr-lcssa ]
  %indvars.iv90.epil.init = phi i64 [ 0, %.preheader50.us ], [ %indvars.iv.next91.1, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  %.14852.us.epil.init = phi <2 x i64> [ %.04759.us, %.preheader50.us ], [ %i.aw, %..preheader_crit_edge.us.unr-lcssa ]
  %.04951.us.epil.init = phi ptr [ %.063.us, %.preheader50.us ], [ %i.ax, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.ay = load <4 x i32>, ptr %.04951.us.epil.init, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %.04951.us.epil.init, i64 16
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !9
  %i.bb = and <4 x i32> %i.ay, splat (i32 255)
  %i.bc = and <4 x i32> %i.ba, splat (i32 255)
  %i.bd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bb, <4 x i32> %i.bc) ; 2 uses
  %i.be = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bd, <8 x i16> %i.bd)
  %i.bf = bitcast <16 x i8> %i.be to <2 x i64>    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90.epil.init
  %i.bh = extractelement <2 x i64> %i.bf, i64 0
  store i64 %i.bh, ptr %i.bg, align 1, !tbaa !9
  %i.bi = and <2 x i64> %.14852.us.epil.init, %i.bf
  %indvars.iv.next91.epil = add nuw nsw i64 %indvars.iv90.epil.init, 8
  br label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv93.lcssa = phi i64 [ %indvars.iv.next94, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv93.epil.init, %.epil.preheader ] ; 3 uses
  %.lcssa = phi <2 x i64> [ %i.aw, %..preheader_crit_edge.us.unr-lcssa ], [ %i.bi, %.epil.preheader ] ; 2 uses
  %indvars.iv.next91.lcssa = phi i64 [ %indvars.iv.next91.1, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv.next91.epil, %.epil.preheader ]
  %i.bj = trunc nuw nsw i64 %indvars.iv.next91.lcssa to i32
  %i.bk = icmp sgt i32 %2, %i.bj
  br i1 %i.bk, label %.lr.ph57.us.preheader, label %._crit_edge.us

.lr.ph57.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph57.us.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph57.us.preheader
  %i.bl = add i64 %indvars.iv93.lcssa, %n.vec
  %i.bm = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.04361.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.dg, %vector.body ]
  %i.bn = add i64 %indvars.iv93.lcssa, %index     ; 9 uses
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = shl i64 %i.bn, 2
  %i.bq = shl i64 %i.bn, 2
  %i.br = shl i64 %i.bn, 2
  %i.bs = shl i64 %i.bn, 2
  %i.bt = shl i64 %i.bn, 2
  %i.bu = shl i64 %i.bn, 2
  %i.bv = shl i64 %i.bn, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bo
  %i.bx = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bp
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bq
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.br
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bs
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bt
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bu
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.cm = load i8, ptr %i.by, align 1, !tbaa !9
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.co = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cp = insertelement <4 x i8> poison, i8 %i.cl, i64 0
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 1
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 2
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 3 ; 2 uses
  %i.ct = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cu = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.cv = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.cw = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cx = insertelement <4 x i8> poison, i8 %i.ct, i64 0
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 1
  %i.cz = insertelement <4 x i8> %i.cy, i8 %i.cv, i64 2
  %i.da = insertelement <4 x i8> %i.cz, i8 %i.cw, i64 3 ; 2 uses
  %i.db = zext <4 x i8> %i.cs to <4 x i32>
  %i.dc = zext <4 x i8> %i.da to <4 x i32>
  %i.dd = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %i.bn ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store <4 x i8> %i.cs, ptr %i.dd, align 1, !tbaa !9
  store <4 x i8> %i.da, ptr %i.de, align 1, !tbaa !9
  %i.df = and <4 x i32> %vec.phi, %i.db           ; 2 uses
  %i.dg = and <4 x i32> %vec.phi108, %i.dc        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph57.us.preheader109

.lr.ph57.us.preheader109:                         ; preds = %.lr.ph57.us.preheader, %middle.block
  %indvars.iv95.ph = phi i64 [ %indvars.iv93.lcssa, %.lr.ph57.us.preheader ], [ %i.bl, %middle.block ]
  %.156.us.ph = phi i32 [ %.04361.us, %.lr.ph57.us.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph57.us

.preheader50.lr.ph.split:                         ; preds = %.preheader50.lr.ph
  %i.dj = icmp sgt i32 %2, 0
  br i1 %i.dj, label %.preheader50.us68.preheader, label %._crit_edge64

.preheader50.us68.preheader:                      ; preds = %.preheader50.lr.ph.split
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  %exitcond.not.2 = icmp eq i32 %2, 3
  %exitcond.not.3 = icmp eq i32 %2, 4
  %exitcond.not.4 = icmp eq i32 %2, 5
  %exitcond.not.5 = icmp eq i32 %2, 6
  %exitcond.not.6 = icmp eq i32 %2, 7
  br label %.preheader50.us68

.preheader50.us68:                                ; preds = %.preheader50.us68.preheader, %._crit_edge.us77
  %.063.us69 = phi ptr [ %i.ew, %._crit_edge.us77 ], [ %0, %.preheader50.us68.preheader ] ; 9 uses
  %.04262.us70 = phi ptr [ %i.ex, %._crit_edge.us77 ], [ %4, %.preheader50.us68.preheader ] ; 9 uses
  %.04361.us71 = phi i32 [ %.lcssa114, %._crit_edge.us77 ], [ 255, %.preheader50.us68.preheader ]
  %.04660.us72 = phi i32 [ %i.ey, %._crit_edge.us77 ], [ 0, %.preheader50.us68.preheader ]
  %i.dk = load i8, ptr %.063.us69, align 1, !tbaa !9 ; 2 uses
  %i.dl = zext i8 %i.dk to i32
  store i8 %i.dk, ptr %.04262.us70, align 1, !tbaa !9
end_hunk_0
