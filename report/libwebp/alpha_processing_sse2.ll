Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/alpha_processing_sse2?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DispatchAlpha_SSE2:bb.a
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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i64 %indvars.iv121.prol, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !8
  %i.av = and i32 %.198.prol, %i.as               ; 3 uses
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !23

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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !8
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !8
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i64 %indvars.iv.next122.1, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !8
  %i.bp = and i32 %i.bj, %i.bm
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8   ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i64 %indvars.iv.next122.2, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !8
  %i.bv = and i32 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next122.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !24

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %bb.c
  %.1.lcssa = phi i32 [ %.077106, %bb.c ], [ %.lcssa133.unr, %.lr.ph100.prol.loopexit ], [ %i.bv, %.lr.ph100 ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0108, i64 %i.b
  %i.bx = getelementptr inbounds i8, ptr %.076107, i64 %i.c
  %i.by = add nuw nsw i32 %.080105, 1             ; 2 uses
  %exitcond124.not = icmp eq i32 %i.by, %3
  br i1 %exitcond124.not, label %._crit_edge109.loopexit, label %.preheader, !llvm.loop !25

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
  %i.h = or disjoint i64 %i.f, 1
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  %i.j = sub nsw i64 %i.i, %i.f                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  %i.k = and i64 %i.i, 7                          ; 2 uses
  %n.vec = sub nuw nsw i64 %i.j, %i.k             ; 2 uses
  %cmp.n = icmp eq i64 %i.k, 0
  br label %.preheader46.us

.preheader46.us:                                  ; preds = %.preheader46.us.preheader, %._crit_edge.us
  %.052.us = phi ptr [ %i.ag, %._crit_edge.us ], [ %0, %.preheader46.us.preheader ] ; 4 uses
  %.04351.us = phi ptr [ %i.ah, %._crit_edge.us ], [ %4, %.preheader46.us.preheader ] ; 4 uses
  %.04550.us = phi i32 [ %i.ai, %._crit_edge.us ], [ 0, %.preheader46.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader46.us, %bb.b
  %indvars.iv60 = phi i64 [ 16, %.preheader46.us ], [ %indvars.iv.next61, %bb.b ] ; 4 uses
  %indvars.iv57 = phi i64 [ 0, %.preheader46.us ], [ %indvars.iv.next58, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv57
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !8 ; 2 uses
  %i.n = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.o = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.m, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.p = bitcast <16 x i8> %i.n to <8 x i16>      ; 2 uses
  %i.q = shufflevector <8 x i16> %i.p, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.r = bitcast <16 x i8> %i.o to <8 x i16>      ; 2 uses
  %i.s = shufflevector <8 x i16> %i.r, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.t = shufflevector <8 x i16> %i.p, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.u = shufflevector <8 x i16> %i.r, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv57 ; 4 uses
  store <8 x i16> %i.q, ptr %i.v, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.w, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <8 x i16> %i.s, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <8 x i16> %i.u, ptr %i.y, align 1, !tbaa !8
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 16 ; 3 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next58, %i.f
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 16
  br i1 %i.z, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !26

.lr.ph49.us:                                      ; preds = %.lr.ph49.us.preheader72, %.lr.ph49.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph49.us ], [ %indvars.iv62.ph, %.lr.ph49.us.preheader72 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv62
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv62
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !11
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next63, %i.g
  br i1 %i.af, label %.lr.ph49.us, label %._crit_edge.us, !llvm.loop !27

._crit_edge.us:                                   ; preds = %.lr.ph49.us, %middle.block, %..preheader_crit_edge.us
  %i.ag = getelementptr inbounds i8, ptr %.052.us, i64 %i.d
  %i.ah = getelementptr inbounds [4 x i8], ptr %.04351.us, i64 %i.e
  %i.ai = add nuw nsw i32 %.04550.us, 1           ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ai, %3
  br i1 %exitcond65.not, label %._crit_edge53, label %.preheader46.us, !llvm.loop !28

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.aj = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %i.ak = icmp sgt i32 %2, %i.aj
  br i1 %i.ak, label %.lr.ph49.us.preheader, label %._crit_edge.us

.lr.ph49.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph49.us.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.us.preheader
  %6 = add i64 %indvars.iv60, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add nuw i64 %indvars.iv60, %index       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.052.us, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load = load <4 x i8>, ptr %i.am, align 1, !tbaa !8
  %wide.load71 = load <4 x i8>, ptr %i.an, align 1, !tbaa !8
  %i.ao = zext <4 x i8> %wide.load to <4 x i32>
  %i.ap = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.aq = shl nuw nsw <4 x i32> %i.ao, splat (i32 8)
  %i.ar = shl nuw nsw <4 x i32> %i.ap, splat (i32 8)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %i.al ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !11
  store <4 x i32> %i.ar, ptr %i.at, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph49.us.preheader72

.lr.ph49.us.preheader72:                          ; preds = %.lr.ph49.us.preheader, %middle.block
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph49.us.preheader ], [ %6, %middle.block ]
  br label %.lr.ph49.us

.preheader46.lr.ph.split:                         ; preds = %.preheader46.lr.ph
  %i.av = icmp sgt i32 %2, 0
  br i1 %i.av, label %.preheader46.preheader, label %._crit_edge53

.preheader46.preheader:                           ; preds = %.preheader46.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aw = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %._crit_edge
  %.052 = phi ptr [ %i.bw, %._crit_edge ], [ %0, %.preheader46.preheader ] ; 6 uses
  %.04351 = phi ptr [ %i.bx, %._crit_edge ], [ %4, %.preheader46.preheader ] ; 6 uses
  %.04550 = phi i32 [ %i.by, %._crit_edge ], [ 0, %.preheader46.preheader ]
  br i1 %i.aw, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46, %.preheader46.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader46.new ], [ 0, %.preheader46 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader46.new ], [ 0, %.preheader46 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !11
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next.1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next.1
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !11
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next.2
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader46.new, !llvm.loop !30

._crit_edge.unr-lcssa:                            ; preds = %.preheader46.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader46
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.br = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.epil
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.epil
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !11
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %i.bw = getelementptr inbounds i8, ptr %.052, i64 %i.d
  %i.bx = getelementptr inbounds [4 x i8], ptr %.04351, i64 %i.e
  %i.by = add nuw nsw i32 %.04550, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.by, %3
  br i1 %exitcond56.not, label %._crit_edge53, label %.preheader46, !llvm.loop !28

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
  %i.n = or disjoint i64 %i.g, 1
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.h) ; 2 uses
  %i.p = sub i64 %i.o, %i.g                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 9
  %i.q = and i64 %i.o, 7                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 8, i64 %i.q
  %n.vec = sub i64 %i.p, %i.s                     ; 2 uses
  br label %.preheader50.us

.preheader50.us:                                  ; preds = %.preheader50.us.preheader, %._crit_edge.us
  %.063.us = phi ptr [ %i.az, %._crit_edge.us ], [ %0, %.preheader50.us.preheader ] ; 12 uses
  %.04262.us = phi ptr [ %i.ba, %._crit_edge.us ], [ %4, %.preheader50.us.preheader ] ; 6 uses
  %.04361.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 255, %.preheader50.us.preheader ] ; 3 uses
  %.04660.us = phi i32 [ %i.bb, %._crit_edge.us ], [ 0, %.preheader50.us.preheader ]
  %.04859.us = phi <2 x i64> [ %.lcssa, %._crit_edge.us ], [ <i64 -1, i64 0>, %.preheader50.us.preheader ] ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader50.us.new

.preheader50.us.new:                              ; preds = %.preheader50.us, %.preheader50.us.new
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %.preheader50.us.new ], [ 8, %.preheader50.us ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %.preheader50.us.new ], [ 0, %.preheader50.us ] ; 3 uses
  %.04752.us = phi ptr [ %i.ar, %.preheader50.us.new ], [ %.063.us, %.preheader50.us ] ; 5 uses
  %.14951.us = phi <2 x i64> [ %i.aq, %.preheader50.us.new ], [ %.04859.us, %.preheader50.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader50.us.new ], [ 0, %.preheader50.us ]
  %i.t = load <4 x i32>, ptr %.04752.us, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %.04752.us, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 1, !tbaa !8
  %i.w = and <4 x i32> %i.t, splat (i32 255)
  %i.x = and <4 x i32> %i.v, splat (i32 255)
  %i.y = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.w, <4 x i32> %i.x) ; 2 uses
  %i.z = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.y, <8 x i16> %i.y)
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90
  %i.ac = extractelement <2 x i64> %i.aa, i64 0
  store i64 %i.ac, ptr %i.ab, align 1, !tbaa !8
  %i.ad = and <2 x i64> %.14951.us, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %.04752.us, i64 32
  %i.af = load <4 x i32>, ptr %i.ae, align 1, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.04752.us, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 1, !tbaa !8
  %i.ai = and <4 x i32> %i.af, splat (i32 255)
  %i.aj = and <4 x i32> %i.ah, splat (i32 255)
  %i.ak = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ai, <4 x i32> %i.aj) ; 2 uses
  %i.al = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ak, <8 x i16> %i.ak)
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = extractelement <2 x i64> %i.am, i64 0
  store i64 %i.ap, ptr %i.ao, align 1, !tbaa !8
  %i.aq = and <2 x i64> %i.ad, %i.am              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04752.us, i64 64 ; 2 uses
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 16 ; 3 uses
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader_crit_edge.us.unr-lcssa, label %.preheader50.us.new, !llvm.loop !32

.lr.ph57.us:                                      ; preds = %.lr.ph57.us.preheader109, %.lr.ph57.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.lr.ph57.us ], [ %indvars.iv95.ph, %.lr.ph57.us.preheader109 ] ; 3 uses
  %.156.us = phi i32 [ %i.ax, %.lr.ph57.us ], [ %.156.us.ph, %.lr.ph57.us.preheader109 ]
  %i.as = shl nuw nsw i64 %indvars.iv95, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8   ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv95
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !8
  %i.ax = and i32 %.156.us, %i.av                 ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next96, %i.h
  br i1 %i.ay, label %.lr.ph57.us, label %._crit_edge.us, !llvm.loop !33

._crit_edge.us:                                   ; preds = %.lr.ph57.us, %..preheader_crit_edge.us
  %.1.lcssa.us = phi i32 [ %.04361.us, %..preheader_crit_edge.us ], [ %i.ax, %.lr.ph57.us ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.063.us, i64 %i.e
  %i.ba = getelementptr inbounds i8, ptr %.04262.us, i64 %i.f
  %i.bb = add nuw nsw i32 %.04660.us, 1           ; 2 uses
  %exitcond98.not = icmp eq i32 %i.bb, %3
  br i1 %exitcond98.not, label %._crit_edge64.loopexit, label %.preheader50.us, !llvm.loop !34

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader50.us.new
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 8
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader_crit_edge.us

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader50.us
  %indvars.iv93.epil.init = phi i64 [ 8, %.preheader50.us ], [ %indvars.iv.next94.1, %..preheader_crit_edge.us.unr-lcssa ]
  %indvars.iv90.epil.init = phi i64 [ 0, %.preheader50.us ], [ %indvars.iv.next91.1, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  %.04752.us.epil.init = phi ptr [ %.063.us, %.preheader50.us ], [ %i.ar, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  %.14951.us.epil.init = phi <2 x i64> [ %.04859.us, %.preheader50.us ], [ %i.aq, %..preheader_crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.bc = load <4 x i32>, ptr %.04752.us.epil.init, align 1, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %.04752.us.epil.init, i64 16
  %i.be = load <4 x i32>, ptr %i.bd, align 1, !tbaa !8
  %i.bf = and <4 x i32> %i.bc, splat (i32 255)
  %i.bg = and <4 x i32> %i.be, splat (i32 255)
  %i.bh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bf, <4 x i32> %i.bg) ; 2 uses
  %i.bi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bh, <8 x i16> %i.bh)
  %i.bj = bitcast <16 x i8> %i.bi to <2 x i64>    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90.epil.init
  %i.bl = extractelement <2 x i64> %i.bj, i64 0
  store i64 %i.bl, ptr %i.bk, align 1, !tbaa !8
  %i.bm = and <2 x i64> %.14951.us.epil.init, %i.bj
  %indvars.iv.next91.epil = add nuw nsw i64 %indvars.iv90.epil.init, 8
  br label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv93.lcssa = phi i64 [ %indvars.iv.next94, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv93.epil.init, %.epil.preheader ] ; 3 uses
  %.lcssa = phi <2 x i64> [ %i.aq, %..preheader_crit_edge.us.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  %indvars.iv.next91.lcssa = phi i64 [ %indvars.iv.next91.1, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv.next91.epil, %.epil.preheader ]
  %i.bn = trunc nuw nsw i64 %indvars.iv.next91.lcssa to i32
  %i.bo = icmp sgt i32 %2, %i.bn
  br i1 %i.bo, label %.lr.ph57.us.preheader, label %._crit_edge.us

.lr.ph57.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph57.us.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph57.us.preheader
  %6 = add i64 %indvars.iv93.lcssa, %n.vec
  %i.bp = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.04361.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bp, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.dj, %vector.body ]
  %i.bq = add nuw i64 %indvars.iv93.lcssa, %index ; 9 uses
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = shl i64 %i.bq, 2
  %i.bt = shl i64 %i.bq, 2
  %i.bu = shl i64 %i.bq, 2
  %i.bv = shl i64 %i.bq, 2
  %i.bw = shl i64 %i.bq, 2
  %i.bx = shl i64 %i.bq, 2
  %i.by = shl i64 %i.bq, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.br
  %i.ca = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bs
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bt
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bu
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bw
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bx
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.by
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.co = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cq = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.cr = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.cs = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 1
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 2
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cr, i64 3 ; 2 uses
  %i.cw = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cx = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cy = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cz = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.da = insertelement <4 x i8> poison, i8 %i.cw, i64 0
  %i.db = insertelement <4 x i8> %i.da, i8 %i.cx, i64 1
  %i.dc = insertelement <4 x i8> %i.db, i8 %i.cy, i64 2
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 3 ; 2 uses
  %i.de = zext <4 x i8> %i.cv to <4 x i32>
  %i.df = zext <4 x i8> %i.dd to <4 x i32>
  %i.dg = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %i.bq ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store <4 x i8> %i.cv, ptr %i.dg, align 1, !tbaa !8
  store <4 x i8> %i.dd, ptr %i.dh, align 1, !tbaa !8
  %i.di = and <4 x i32> %vec.phi, %i.de           ; 2 uses
  %i.dj = and <4 x i32> %vec.phi108, %i.df        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph57.us.preheader109

.lr.ph57.us.preheader109:                         ; preds = %.lr.ph57.us.preheader, %middle.block
  %indvars.iv95.ph = phi i64 [ %indvars.iv93.lcssa, %.lr.ph57.us.preheader ], [ %6, %middle.block ]
  %.156.us.ph = phi i32 [ %.04361.us, %.lr.ph57.us.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph57.us

.preheader50.lr.ph.split:                         ; preds = %.preheader50.lr.ph
  %i.dm = icmp sgt i32 %2, 0
  br i1 %i.dm, label %.preheader50.us68.preheader, label %._crit_edge64

.preheader50.us68.preheader:                      ; preds = %.preheader50.lr.ph.split
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  %exitcond.not.2 = icmp eq i32 %2, 3
  %exitcond.not.3 = icmp eq i32 %2, 4
  %exitcond.not.4 = icmp eq i32 %2, 5
  %exitcond.not.5 = icmp eq i32 %2, 6
  %exitcond.not.6 = icmp eq i32 %2, 7
  br label %.preheader50.us68

.preheader50.us68:                                ; preds = %.preheader50.us68.preheader, %._crit_edge.us76
  %.063.us69 = phi ptr [ %i.ez, %._crit_edge.us76 ], [ %0, %.preheader50.us68.preheader ] ; 9 uses
  %.04262.us70 = phi ptr [ %i.fa, %._crit_edge.us76 ], [ %4, %.preheader50.us68.preheader ] ; 9 uses
  %.04361.us71 = phi i32 [ %.lcssa114, %._crit_edge.us76 ], [ 255, %.preheader50.us68.preheader ]
  %.04660.us72 = phi i32 [ %i.fb, %._crit_edge.us76 ], [ 0, %.preheader50.us68.preheader ]
  %i.dn = load i8, ptr %.063.us69, align 1, !tbaa !8 ; 2 uses
  %i.do = zext i8 %i.dn to i32
  store i8 %i.dn, ptr %.04262.us70, align 1, !tbaa !8
  %i.dp = and i32 %.04361.us71, %i.do             ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us76, label %bb.b

bb.b:                                             ; preds = %.preheader50.us68
  %i.dq = getelementptr inbounds nuw i8, ptr %.063.us69, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !8   ; 2 uses
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 1
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !8
  %i.du = and i32 %i.dp, %i.ds                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us76, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %.063.us69, i64 8
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8   ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 2
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !8
  %i.dz = and i32 %i.du, %i.dx                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us76, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ea = getelementptr inbounds nuw i8, ptr %.063.us69, i64 12
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !8   ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 3
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !8
  %i.ee = and i32 %i.dz, %i.ec                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ef = getelementptr inbounds nuw i8, ptr %.063.us69, i64 16
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8   ; 2 uses
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 4
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !8
  %i.ej = and i32 %i.ee, %i.eh                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us76, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ek = getelementptr inbounds nuw i8, ptr %.063.us69, i64 20
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8   ; 2 uses
  %i.em = zext i8 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 5
  store i8 %i.el, ptr %i.en, align 1, !tbaa !8
  %i.eo = and i32 %i.ej, %i.em                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us76, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ep = getelementptr inbounds nuw i8, ptr %.063.us69, i64 24
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8   ; 2 uses
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 6
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !8
  %i.et = and i32 %i.eo, %i.er                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us76, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eu = getelementptr inbounds nuw i8, ptr %.063.us69, i64 28
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !8   ; 2 uses
  %i.ew = zext i8 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 7
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !8
  %i.ey = and i32 %i.et, %i.ew
  br label %._crit_edge.us76

._crit_edge.us76:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader50.us68
  %.lcssa114 = phi i32 [ %i.dp, %.preheader50.us68 ], [ %i.du, %bb.b ], [ %i.dz, %bb.c ], [ %i.ee, %bb.d ], [ %i.ej, %bb.e ], [ %i.eo, %bb.f ], [ %i.et, %bb.g ], [ %i.ey, %bb.h ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.063.us69, i64 %i.e
  %i.fa = getelementptr inbounds i8, ptr %.04262.us70, i64 %i.f
  %i.fb = add nuw nsw i32 %.04660.us72, 1         ; 2 uses
  %exitcond89.not = icmp eq i32 %i.fb, %3
  br i1 %exitcond89.not, label %._crit_edge64, label %.preheader50.us68, !llvm.loop !34

._crit_edge64.loopexit:                           ; preds = %._crit_edge.us
  %i.fc = bitcast <2 x i64> %.lcssa to <16 x i8>
  %i.fd = icmp eq <16 x i8> %i.fc, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.fe = bitcast <16 x i1> %i.fd to i16
  %i.ff = zext i16 %i.fe to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge.us76, %.preheader50.lr.ph.split, %._crit_edge64.loopexit, %bb.a
  %.048.lcssa = phi i32 [ 65535, %bb.a ], [ 65535, %.preheader50.lr.ph.split ], [ %i.ff, %._crit_edge64.loopexit ], [ 65535, %._crit_edge.us76 ]
  %.043.lcssa = phi i32 [ 255, %bb.a ], [ 255, %.preheader50.lr.ph.split ], [ %.1.lcssa.us, %._crit_edge64.loopexit ], [ %.lcssa114, %._crit_edge.us76 ]
  %i.fg = and i32 %.043.lcssa, %.048.lcssa
  %i.fh = icmp eq i32 %i.fg, 255
  %i.fi = zext i1 %i.fh to i32
  ret i32 %i.fi
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ExtractGreen_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %.not59 = icmp slt i32 %2, 16
  br i1 %.not59, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv68 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next69, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.05460 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.u, %.lr.ph ] ; 5 uses
  %i.b = load <4 x i32>, ptr %.05460, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %.05460, i64 16
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %.05460, i64 32
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %.05460, i64 48
  %i.h = load <4 x i32>, ptr %i.g, align 1, !tbaa !8
  %i.i = lshr <4 x i32> %i.b, splat (i32 8)
  %i.j = lshr <4 x i32> %i.d, splat (i32 8)
  %i.k = lshr <4 x i32> %i.f, splat (i32 8)
  %i.l = lshr <4 x i32> %i.h, splat (i32 8)
  %i.m = and <4 x i32> %i.i, splat (i32 255)
  %i.n = and <4 x i32> %i.j, splat (i32 255)
  %i.o = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.m, <4 x i32> %i.n)
  %i.p = and <4 x i32> %i.k, splat (i32 255)
  %i.q = and <4 x i32> %i.l, splat (i32 255)
  %i.r = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.o, <8 x i16> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv68
  store <16 x i8> %i.s, ptr %i.t, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %.05460, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 16
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = add nuw i32 %2, 2147483632
  %i.w = and i32 %i.v, 2147483632
  %narrow = add nuw i32 %i.w, 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.054.lcssa = phi ptr [ %0, %bb.a ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %i.x = or disjoint i32 %.0.lcssa, 8             ; 2 uses
  %.not58 = icmp sgt i32 %i.x, %2
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = load <4 x i32>, ptr %.054.lcssa, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 16
  %i.aa = load <4 x i32>, ptr %i.z, align 1, !tbaa !8
  %i.ab = lshr <4 x i32> %i.y, splat (i32 8)
  %i.ac = lshr <4 x i32> %i.aa, splat (i32 8)
  %i.ad = and <4 x i32> %i.ab, splat (i32 255)
  %i.ae = and <4 x i32> %i.ac, splat (i32 255)
  %i.af = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ad, <4 x i32> %i.ae)
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.af, <8 x i16> poison)
  %i.ah = bitcast <16 x i8> %i.ag to <2 x i64>
  %i.ai = zext nneg i32 %.0.lcssa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = extractelement <2 x i64> %i.ah, i64 0
  store i64 %i.ak, ptr %i.aj, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.x, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.al = icmp slt i32 %.1, %2
  br i1 %i.al, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %bb.c
  %i.am = zext i32 %.1 to i64                     ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.an = sub nsw i64 %wide.trip.count, %i.am     ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph65.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.an, -8                      ; 3 uses
  %3 = add nsw i64 %n.vec, %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add nuw i64 %index, %i.am               ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !11
  %wide.load78 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.as = lshr <4 x i32> %wide.load78, splat (i32 8)
  %i.at = trunc <4 x i32> %i.ar to <4 x i8>
  %i.au = trunc <4 x i32> %i.as to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store <4 x i8> %i.at, ptr %i.av, align 1, !tbaa !8
  store <4 x i8> %i.au, ptr %i.aw, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %.lr.ph65.preheader79

.lr.ph65.preheader79:                             ; preds = %.lr.ph65.preheader, %middle.block
  %indvars.iv73.ph = phi i64 [ %i.am, %.lr.ph65.preheader ], [ %3, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader79, %.lr.ph65
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph65 ], [ %indvars.iv73.ph, %.lr.ph65.preheader79 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11
  %i.ba = lshr i32 %i.az, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv73
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !8
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !38

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.not37 = icmp slt i32 %1, 16
  br i1 %.not37, label %.preheader, label %.lr.ph40

bb.b:                                             ; preds = %.lr.ph40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next39, 16 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.a
  br i1 %.not, label %.preheader, label %.lr.ph40, !llvm.loop !39

.preheader:                                       ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next39, %bb.b ] ; 2 uses
  %i.b = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph40:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.next39 = phi i64 [ %indvars.iv.next, %bb.b ], [ 16, %bb.a ] ; 3 uses
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !8
  %i.f = icmp ne <16 x i8> %i.e, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not20 = icmp eq i16 %i.g, 0
  br i1 %.not20, label %bb.b, label %.loopexit, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv30 = phi i64 [ %indvars.iv.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next31, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv30
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %.not19 = icmp eq i8 %i.i, -1
  br i1 %.not19, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph40, %.lr.ph, %bb.c, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph40 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha32b_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = add nsw i32 %i.a, -3                     ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %.not99 = icmp slt i32 %1, 17
  br i1 %.not99, label %.preheader69.preheader, label %.lr.ph102

bb.b:                                             ; preds = %.lr.ph102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next101, 64 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.c
  br i1 %.not, label %.preheader69.preheader, label %.lr.ph102, !llvm.loop !41

.preheader69.preheader:                           ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next101, %bb.b ] ; 3 uses
  %indvars.iv.next85103 = or disjoint i64 %indvars.iv.lcssa, 32 ; 2 uses
  %.not64104 = icmp sgt i64 %indvars.iv.next85103, %i.c
  br i1 %.not64104, label %.preheader, label %.lr.ph107

.lr.ph102:                                        ; preds = %bb.a, %bb.b
  %indvars.iv.next101 = phi i64 [ %indvars.iv.next, %bb.b ], [ 64, %bb.a ] ; 3 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv100 ; 4 uses
  %i.e = load <4 x i32>, ptr %i.d, align 1, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <4 x i32>, ptr %i.f, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load <4 x i32>, ptr %i.h, align 1, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <4 x i32>, ptr %i.j, align 1, !tbaa !8
  %i.l = and <4 x i32> %i.e, splat (i32 255)
  %i.m = and <4 x i32> %i.g, splat (i32 255)
  %i.n = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.l, <4 x i32> %i.m)
  %i.o = and <4 x i32> %i.i, splat (i32 255)
  %i.p = and <4 x i32> %i.k, splat (i32 255)
  %i.q = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.o, <4 x i32> %i.p)
  %i.r = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.n, <8 x i16> %i.q)
  %i.s = icmp ne <16 x i8> %i.r, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not68 = icmp eq i16 %i.t, 0
  br i1 %.not68, label %bb.b, label %.loopexit, !llvm.loop !41

.preheader69:                                     ; preds = %.lr.ph107
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv.next85106, 32 ; 2 uses
  %.not64 = icmp sgt i64 %indvars.iv.next85, %i.c
  br i1 %.not64, label %.preheader, label %.lr.ph107, !llvm.loop !42

.preheader:                                       ; preds = %.preheader69, %.preheader69.preheader
  %indvars.iv84.lcssa = phi i64 [ %indvars.iv.lcssa, %.preheader69.preheader ], [ %indvars.iv.next85106, %.preheader69 ] ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv84.lcssa to i32
  %.not6574 = icmp slt i32 %i.b, %i.u
  br i1 %.not6574, label %.loopexit, label %.lr.ph

.lr.ph107:                                        ; preds = %.preheader69.preheader, %.preheader69
  %indvars.iv.next85106 = phi i64 [ %indvars.iv.next85, %.preheader69 ], [ %indvars.iv.next85103, %.preheader69.preheader ] ; 3 uses
  %indvars.iv84105 = phi i64 [ %indvars.iv.next85106, %.preheader69 ], [ %indvars.iv.lcssa, %.preheader69.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv84105 ; 2 uses
  %i.w = load <4 x i32>, ptr %i.v, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load <4 x i32>, ptr %i.x, align 1, !tbaa !8
  %i.z = and <4 x i32> %i.w, splat (i32 255)
  %i.aa = and <4 x i32> %i.y, splat (i32 255)
  %i.ab = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.z, <4 x i32> %i.aa) ; 2 uses
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.ab)
  %i.ad = icmp ne <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %.not67 = icmp eq i16 %i.ae, 0
  br i1 %.not67, label %.preheader69, label %.loopexit, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 4 ; 2 uses
  %.not65 = icmp sgt i64 %indvars.iv.next89, %i.c
  br i1 %.not65, label %.loopexit, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.c ], [ %indvars.iv84.lcssa, %.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv88
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %.not66 = icmp eq i8 %i.ag, -1
  br i1 %.not66, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph102, %.lr.ph107, %.lr.ph, %bb.c, %.preheader
  %.4 = phi i32 [ 0, %.preheader ], [ 1, %.lr.ph107 ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph102 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @AlphaReplace_SSE2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not38 = icmp slt i32 %1, 8
  br i1 %.not38, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = add nuw i32 %1, 2147483640
  %i.e = and i32 %i.d, 2147483640
  %narrow = add nuw i32 %i.e, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %.preheader.loopexit ] ; 3 uses
  %i.f = icmp slt i32 %.0.lcssa, %1
  br i1 %i.f, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.g = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.h = xor i32 %.0.lcssa, -1
  %i.i = add i32 %1, %i.h                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 7
  br i1 %min.iters.check, label %.lr.ph41.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader
  %n.vec = and i64 %i.k, 8589934584               ; 3 uses
  %3 = add nuw nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue64, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue64 ] ; 2 uses
  %i.l = add nuw i64 %index, %i.g                 ; 8 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !11
  %wide.load50 = load <4 x i32>, ptr %i.n, align 4, !tbaa !11
  %i.o = icmp ult <4 x i32> %wide.load, splat (i32 16777216) ; 4 uses
  %i.p = icmp ult <4 x i32> %wide.load50, splat (i32 16777216) ; 4 uses
  %i.q = extractelement <4 x i1> %i.o, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %2, ptr %i.m, align 4, !tbaa !11
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <4 x i1> %i.o, i64 1
  br i1 %i.r, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.t = getelementptr i8, ptr %i.s, i64 4
  store i32 %2, ptr %i.t, align 4, !tbaa !11
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue
  %i.u = extractelement <4 x i1> %i.o, i64 2
  br i1 %i.u, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.w, align 4, !tbaa !11
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.x = extractelement <4 x i1> %i.o, i64 3
  br i1 %i.x, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.y = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.z = getelementptr i8, ptr %i.y, i64 12
  store i32 %2, ptr %i.z, align 4, !tbaa !11
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.aa = extractelement <4 x i1> %i.p, i64 0
  br i1 %i.aa, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.ab = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i32 %2, ptr %i.ac, align 4, !tbaa !11
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.ad = extractelement <4 x i1> %i.p, i64 1
  br i1 %i.ad, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.af = getelementptr i8, ptr %i.ae, i64 20
  store i32 %2, ptr %i.af, align 4, !tbaa !11
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.ag = extractelement <4 x i1> %i.p, i64 2
  br i1 %i.ag, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  store i32 %2, ptr %i.ai, align 4, !tbaa !11
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.aj = extractelement <4 x i1> %i.p, i64 3
  br i1 %i.aj, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %i.l
  %i.al = getelementptr i8, ptr %i.ak, i64 28
  store i32 %2, ptr %i.al, align 4, !tbaa !11
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %pred.store.continue64
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph41.preheader65

.lr.ph41.preheader65:                             ; preds = %.lr.ph41.preheader, %middle.block
  %indvars.iv47.ph = phi i64 [ %i.g, %.lr.ph41.preheader ], [ %3, %middle.block ]
  br label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv42 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next43, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42 ; 3 uses
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !8 ; 2 uses
  %i.ar = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.as = icmp ult <4 x i32> %i.ao, splat (i32 16777216)
  %i.at = icmp ugt <4 x i32> %i.ar, splat (i32 16777215) ; 2 uses
  %i.au = select <4 x i1> %i.at, <4 x i32> zeroinitializer, <4 x i32> %i.b
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = sext <4 x i1> %i.at to <4 x i32>
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = and <2 x i64> %i.aq, %i.ax
  %i.az = select <4 x i1> %i.as, <4 x i32> %i.b, <4 x i32> %i.ao
  store <4 x i32> %i.az, ptr %i.an, align 1, !tbaa !8
  %i.ba = or <2 x i64> %i.ay, %i.av
  store <2 x i64> %i.ba, ptr %i.ap, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.c
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !45

.lr.ph41:                                         ; preds = %.lr.ph41.preheader65, %bb.c
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.c ], [ %indvars.iv47.ph, %.lr.ph41.preheader65 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !11
  %i.bd = icmp ult i32 %i.bc, 16777216
  br i1 %i.bd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41
  store i32 %2, ptr %i.bb, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %bb.b
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.be = trunc nuw i64 %indvars.iv.next48 to i32
  %i.bf = icmp sgt i32 %1, %i.be
  br i1 %i.bf, label %.lr.ph41, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.c, %middle.block, %.preheader
  ret void
}

declare void @WebPMultARGBRow_C(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #5

declare void @WebPMultRow_C(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.maskmov.dqu(<16 x i8>, <16 x i8>, ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9, !12, !13}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9, !13, !12}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9, !12, !13}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9, !13, !12}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9, !13, !12}
!38 = distinct !{!38, !9, !12, !13}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9, !13, !12}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9, !12, !13}
end_hunk_0
