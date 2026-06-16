begin_hunk_0_@ApplyAlphaMultiply_SSE2:bb.a
bb.e:                                             ; preds = %.preheader102.us.us
  %i.bv = zext i8 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, 32897            ; 3 uses
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nuw nsw i32 %i.bw, %i.by
  %i.ca = lshr i32 %i.bz, 23
  %i.cb = trunc nuw i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bt, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul nuw nsw i32 %i.bw, %i.ce
  %i.cg = lshr i32 %i.cf, 23
  %i.ch = trunc nuw i32 %i.cg to i8
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.bw, %i.ck
  %i.cm = lshr i32 %i.cl, 23
  %i.cn = trunc nuw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader102.us.us
  br i1 %exitcond.not, label %._crit_edge.us120.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.us.1 = icmp eq i8 %i.cp, -1
  br i1 %.not101.us118.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = zext i8 %i.cp to i32
  %i.cr = mul nuw nsw i32 %i.cq, 32897            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cr, %i.cu
  %i.cw = lshr i32 %i.cv, 23
  %i.cx = trunc nuw i32 %i.cw to i8
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 5 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.cr, %i.da
  %i.dc = lshr i32 %i.db, 23
  %i.dd = trunc nuw i32 %i.dc to i8
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 6 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.cr, %i.dg
  %i.di = lshr i32 %i.dh, 23
  %i.dj = trunc nuw i32 %i.di to i8
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %exitcond.not.1, label %._crit_edge.us120.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.us.2 = icmp eq i8 %i.dl, -1
  br i1 %.not101.us118.us.2, label %._crit_edge.us120.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dm, 32897            ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nuw nsw i32 %i.dn, %i.dq
  %i.ds = lshr i32 %i.dr, 23
  %i.dt = trunc nuw i32 %i.ds to i8
  store i8 %i.dt, ptr %i.do, align 1, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %i.bt, i64 9 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !9
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nuw nsw i32 %i.dn, %i.dw
  %i.dy = lshr i32 %i.dx, 23
  %i.dz = trunc nuw i32 %i.dy to i8
  store i8 %i.dz, ptr %i.du, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bt, i64 10 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !9
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.dn, %i.ec
  %i.ee = lshr i32 %i.ed, 23
  %i.ef = trunc nuw i32 %i.ee to i8
  store i8 %i.ef, ptr %i.ea, align 1, !tbaa !9
  br label %._crit_edge.us120.us

._crit_edge.us120.us:                             ; preds = %bb.j, %bb.k, %bb.i, %bb.f
  %i.eg = getelementptr inbounds i8, ptr %.0112.us116.us, i64 %i.e
  %i.eh = add nsw i32 %i.br, -1
  %i.ei = icmp sgt i32 %i.br, 0
  br i1 %i.ei, label %.preheader102.us.us, label %._crit_edge115, !llvm.loop !14

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.ej = phi i32 [ %i.gg, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.gf, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader102, %bb.l
  %indvars.iv125 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next126, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.l ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv125 ; 2 uses
  %i.el = load <16 x i8>, ptr %i.ek, align 1, !tbaa !9 ; 2 uses
  %i.em = shufflevector <16 x i8> %i.el, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.en = shufflevector <16 x i8> %i.el, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eo = bitcast <16 x i8> %i.em to <8 x i16>
  %i.ep = bitcast <16 x i8> %i.em to <8 x i16>
  %i.eq = or <8 x i16> %i.ep, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.er = bitcast <16 x i8> %i.en to <8 x i16>
  %i.es = bitcast <16 x i8> %i.en to <8 x i16>
  %i.et = or <8 x i16> %i.es, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.eu = shufflevector <8 x i16> %i.eq, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.ev = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.ew = mul nuw <8 x i16> %i.eu, %i.eo
  %i.ex = mul nuw <8 x i16> %i.ev, %i.er
  %i.ey = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ew, <8 x i16> splat (i16 -32639))
  %i.ez = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ex, <8 x i16> splat (i16 -32639))
  %i.fa = lshr <8 x i16> %i.ey, splat (i16 7)
  %i.fb = lshr <8 x i16> %i.ez, splat (i16 7)
  %i.fc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fa, <8 x i16> %i.fb)
  store <16 x i8> %i.fc, ptr %i.ek, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.bi
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.l, !llvm.loop !16

..loopexit103_crit_edge:                          ; preds = %bb.l
  br i1 %i.bp, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.fd = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.d
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph111, %bb.o
  %indvars.iv130 = phi i64 [ %i.bo, %.lr.ph111 ], [ %indvars.iv.next131, %bb.o ] ; 2 uses
  %i.ff = shl i64 %indvars.iv130, 2
  %i.fg = and i64 %i.ff, 4294967292               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9   ; 2 uses
  %.not101 = icmp eq i8 %i.fi, -1
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fj = zext i8 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.fj, 32897            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %i.fn = zext i8 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.fk, %i.fn
  %i.fp = lshr i32 %i.fo, 23
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %i.fl, align 1, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.fk, %i.ft
  %i.fv = lshr i32 %i.fu, 23
  %i.fw = trunc nuw i32 %i.fv to i8
  store i8 %i.fw, ptr %i.fr, align 1, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 2 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !9
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul nuw nsw i32 %i.fk, %i.fz
  %i.gb = lshr i32 %i.ga, 23
  %i.gc = trunc nuw i32 %i.gb to i8
  store i8 %i.gc, ptr %i.fx, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.gd = trunc nuw i64 %indvars.iv.next131 to i32
  %i.ge = icmp sgt i32 %2, %i.gd
  br i1 %i.ge, label %bb.m, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.o, %..loopexit103_crit_edge
  %i.gf = getelementptr inbounds i8, ptr %.0112, i64 %i.e
  %i.gg = add nsw i32 %i.ej, -1
  %i.gh = icmp sgt i32 %i.ej, 0
  br i1 %i.gh, label %.preheader102, label %._crit_edge115, !llvm.loop !14

._crit_edge115:                                   ; preds = %._crit_edge, %._crit_edge.us120.us, %._crit_edge.us, %.lr.ph114.split.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @DispatchAlpha_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge109

.preheader.lr.ph:                                 ; preds = %bb.a
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
  %i.h = or disjoint i64 %i.f, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  %i.i = sub nsw i64 %umax, %i.f                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  %n.mod.vf = and i64 %umax, 7                    ; 2 uses
  %n.vec = sub nuw nsw i64 %i.i, %n.mod.vf        ; 2 uses
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
  %exitcond73.not = icmp eq i32 %i.l, %3
  br i1 %exitcond73.not, label %._crit_edge53, label %.preheader46.us, !llvm.loop !22

.lr.ph49.us:                                      ; preds = %.lr.ph49.us.preheader80, %.lr.ph49.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.lr.ph49.us ], [ %indvars.iv70.ph, %.lr.ph49.us.preheader80 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv70
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv70
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next71, %i.g
  br i1 %i.r, label %.lr.ph49.us, label %._crit_edge.us, !llvm.loop !23

bb.b:                                             ; preds = %.preheader46.us, %bb.b
  %indvars.iv68 = phi i64 [ 16, %.preheader46.us ], [ %indvars.iv.next69, %bb.b ] ; 4 uses
  %indvars.iv65 = phi i64 [ 0, %.preheader46.us ], [ %indvars.iv.next66, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv65
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !9 ; 2 uses
  %i.u = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.t, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.v = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.w = bitcast <16 x i8> %i.u to <8 x i16>      ; 2 uses
  %i.x = shufflevector <8 x i16> %i.w, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.y = bitcast <16 x i8> %i.v to <8 x i16>      ; 2 uses
  %i.z = shufflevector <8 x i16> %i.y, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aa = shufflevector <8 x i16> %i.w, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ab = shufflevector <8 x i16> %i.y, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv65 ; 4 uses
  store <8 x i16> %i.x, ptr %i.ac, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <8 x i16> %i.aa, ptr %i.ad, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store <8 x i16> %i.z, ptr %i.ae, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <8 x i16> %i.ab, ptr %i.af, align 1, !tbaa !9
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 16 ; 3 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next66, %i.f
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 16
  br i1 %i.ag, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !26

..preheader_crit_edge.us:                         ; preds = %bb.b
end_hunk_0
