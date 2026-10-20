Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/alpha_processing_sse2?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ApplyAlphaMultiply_SSE2:bb.a

bb.m:                                             ; preds = %.preheader102.us
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ep, 32897            ; 3 uses
  %i.er = load i8, ptr %i.en, align 1, !tbaa !8
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.eq, %i.es
  %i.eu = lshr i32 %i.et, 23
  %i.ev = trunc nuw i32 %i.eu to i8
  store i8 %i.ev, ptr %i.en, align 1, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !8
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nuw nsw i32 %i.eq, %i.ey
  %i.fa = lshr i32 %i.ez, 23
  %i.fb = trunc nuw i32 %i.fa to i8
  store i8 %i.fb, ptr %i.ew, align 1, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !8
  %i.fe = zext i8 %i.fd to i32
  %i.ff = mul nuw nsw i32 %i.eq, %i.fe
  %i.fg = lshr i32 %i.ff, 23
  %i.fh = trunc nuw i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us121, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !8   ; 2 uses
  %.not101.us120.1 = icmp eq i8 %i.fj, -1
  br i1 %.not101.us120.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 32897            ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.fo = zext i8 %i.fn to i32
  %i.fp = mul nuw nsw i32 %i.fl, %i.fo
  %i.fq = lshr i32 %i.fp, 23
  %i.fr = trunc nuw i32 %i.fq to i8
  store i8 %i.fr, ptr %i.fm, align 1, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.en, i64 5 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !8
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fl, %i.fu
  %i.fw = lshr i32 %i.fv, 23
  %i.fx = trunc nuw i32 %i.fw to i8
  store i8 %i.fx, ptr %i.fs, align 1, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 6 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !8
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.fl, %i.ga
  %i.gc = lshr i32 %i.gb, 23
  %i.gd = trunc nuw i32 %i.gc to i8
  store i8 %i.gd, ptr %i.fy, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %exitcond.not.1, label %._crit_edge.us121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !8   ; 2 uses
  %.not101.us120.2 = icmp eq i8 %i.gf, -1
  br i1 %.not101.us120.2, label %._crit_edge.us121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = zext i8 %i.gf to i32
  %i.gh = mul nuw nsw i32 %i.gg, 32897            ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = zext i8 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gh, %i.gk
  %i.gm = lshr i32 %i.gl, 23
  %i.gn = trunc nuw i32 %i.gm to i8
  store i8 %i.gn, ptr %i.gi, align 1, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.en, i64 9 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !8
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.gh, %i.gq
  %i.gs = lshr i32 %i.gr, 23
  %i.gt = trunc nuw i32 %i.gs to i8
  store i8 %i.gt, ptr %i.go, align 1, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.en, i64 10 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !8
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gh, %i.gw
  %i.gy = lshr i32 %i.gx, 23
  %i.gz = trunc nuw i32 %i.gy to i8
  store i8 %i.gz, ptr %i.gu, align 1, !tbaa !8
  br label %._crit_edge.us121

._crit_edge.us121:                                ; preds = %bb.r, %bb.s, %bb.q, %bb.n
  %i.ha = getelementptr inbounds i8, ptr %.0112.us117, i64 %i.e
  %i.hb = add nsw i32 %i.el, -1
  %i.hc = icmp sgt i32 %i.el, 0
  br i1 %i.hc, label %.preheader102.us, label %._crit_edge116, !llvm.loop !18

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.hd = phi i32 [ %i.iz, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.iy, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader102, %bb.t
  %indvars.iv126 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next127, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.t ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv126 ; 2 uses
  %i.hf = load <16 x i8>, ptr %i.he, align 1, !tbaa !8 ; 2 uses
  %i.hg = shufflevector <16 x i8> %i.hf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.hh = shufflevector <16 x i8> %i.hf, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hi = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hj = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hk = or <8 x i16> %i.hj, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hl = bitcast <16 x i8> %i.hh to <8 x i16>
  %i.hm = bitcast <16 x i8> %i.hh to <8 x i16>
  %i.hn = or <8 x i16> %i.hm, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.ho = shufflevector <8 x i16> %i.hk, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hp = shufflevector <8 x i16> %i.hn, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hq = mul nuw <8 x i16> %i.ho, %i.hi
  %i.hr = mul nuw <8 x i16> %i.hp, %i.hl
  %i.hs = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.hq, <8 x i16> splat (i16 -32639))
  %i.ht = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.hr, <8 x i16> splat (i16 -32639))
  %i.hu = lshr <8 x i16> %i.hs, splat (i16 7)
  %i.hv = lshr <8 x i16> %i.ht, splat (i16 7)
  %i.hw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hu, <8 x i16> %i.hv)
  store <16 x i8> %i.hw, ptr %i.he, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.ed
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.t, !llvm.loop !21

..loopexit103_crit_edge:                          ; preds = %bb.t
  br i1 %i.ej, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.hx = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  %i.hy = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.d
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph111, %bb.w
  %indvars.iv131 = phi i64 [ %i.ei, %.lr.ph111 ], [ %indvars.iv.next132, %bb.w ] ; 2 uses
  %i.hz = shl nuw nsw i64 %indvars.iv131, 2       ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !8   ; 2 uses
  %.not101 = icmp eq i8 %i.ib, -1
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ic, 32897            ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz ; 4 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !8
  %i.ig = zext i8 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.id, %i.ig
  %i.ii = lshr i32 %i.ih, 23
  %i.ij = trunc nuw i32 %i.ii to i8
  store i8 %i.ij, ptr %i.ie, align 1, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !8
  %i.im = zext i8 %i.il to i32
  %i.in = mul nuw nsw i32 %i.id, %i.im
  %i.io = lshr i32 %i.in, 23
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !8
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.id, %i.is
  %i.iu = lshr i32 %i.it, 23
  %i.iv = trunc nuw i32 %i.iu to i8
  store i8 %i.iv, ptr %i.iq, align 1, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.iw = trunc nuw i64 %indvars.iv.next132 to i32
  %i.ix = icmp sgt i32 %2, %i.iw
  br i1 %i.ix, label %bb.u, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.w, %..loopexit103_crit_edge
  %i.iy = getelementptr inbounds i8, ptr %.0112, i64 %i.e
  %i.iz = add nsw i32 %i.hd, -1
  %i.ja = icmp sgt i32 %i.hd, 0
  br i1 %i.ja, label %.preheader102, label %._crit_edge116, !llvm.loop !18

._crit_edge116:                                   ; preds = %._crit_edge, %._crit_edge.us121, %._crit_edge.us, %._crit_edge.us.us, %.lr.ph115.split.us.split.us, %.lr.ph115.split.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @DispatchAlpha_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge109

.preheader.lr.ph:                                 ; preds = %bb.a
  %6 = add nsw i32 %2, -1                         ; 2 uses
  %.not8991 = icmp slt i32 %2, 17
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
  br i1 %.not8991, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %.preheader ] ; 2 uses
  %.18293 = phi <2 x i64> [ %i.v, %.lr.ph ], [ %.081104, %.preheader ]
  %.08592 = phi ptr [ %i.w, %.lr.ph ], [ %.076107, %.preheader ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv116
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !8 ; 2 uses
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
  %.not89 = icmp slt i32 %6, %i.x
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 16
  br i1 %.not89, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.085.lcssa = phi ptr [ %.076107, %.preheader ], [ %i.w, %._crit_edge.loopexit ] ; 2 uses
  %.182.lcssa = phi <2 x i64> [ %.081104, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %.078.lcssa = phi i32 [ 0, %.preheader ], [ %i.y, %._crit_edge.loopexit ] ; 3 uses
  %i.z = or disjoint i32 %.078.lcssa, 8           ; 2 uses
  %.not90 = icmp sgt i32 %i.z, %6
  br i1 %.not90, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aa = zext nneg i32 %.078.lcssa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !8
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
end_hunk_0
