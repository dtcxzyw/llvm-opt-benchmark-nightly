inline.NumInlined: 2
begin_hunk_0_@ycc_rgb565_convert:bb.a
  %i.ef = sext i16 %i.ee to i32
  %i.eg = sext i16 %i.dv to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dy
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !64
  %i.el = add nsw i64 %i.ek, %i.ei
  %i.em = lshr i64 %i.el, 16
  %i.en = trunc i64 %i.em to i32
  %i.eo = add nsw i32 %i.en, %i.dt
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !75
  %i.es = sext i16 %i.er to i32
  %i.et = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eg
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = add nsw i32 %i.eu, %i.dt
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !75
  %i.ez = sext i16 %i.ey to i32
  %i.fa = shl nsw i32 %i.ef, 8
  %i.fb = and i32 %i.fa, 63488
  %i.fc = shl nsw i32 %i.es, 3
  %i.fd = and i32 %i.fc, 2016
  %i.fe = or disjoint i32 %i.fd, %i.fb
  %i.ff = lshr i32 %i.ez, 3
  %i.fg = or i32 %i.fe, %i.ff
  %i.fh = shl i32 %i.fg, 16
  %i.fi = or i32 %i.dq, %i.fh
  store i32 %i.fi, ptr %.1121.i9, align 4, !tbaa !3
  %i.fj = getelementptr inbounds nuw i8, ptr %.1121.i9, i64 8 ; 2 uses
  %i.fk = add nuw nsw i32 %.0113.i13, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.1121.i.lcssa = phi ptr [ %.0120.i, %bb.d ], [ %i.fj, %.lr.ph ]
  %.1119.i.lcssa = phi ptr [ %.0118.i, %bb.d ], [ %i.dr, %.lr.ph ]
  %.1117.i.lcssa = phi ptr [ %.0116.i, %bb.d ], [ %i.du, %.lr.ph ]
  %.1115.i.lcssa = phi ptr [ %.0114.i, %bb.d ], [ %i.dw, %.lr.ph ]
  %i.fl = and i32 %.1.i, 1
  %.not123.i = icmp eq i32 %i.fl, 0
  br i1 %.not123.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.fm = load i16, ptr %.1119.i.lcssa, align 2, !tbaa !75
  %i.fn = sext i16 %i.fm to i32                   ; 3 uses
  %i.fo = load i16, ptr %.1117.i.lcssa, align 2, !tbaa !75
  %i.fp = load i16, ptr %.1115.i.lcssa, align 2, !tbaa !75
  %i.fq = sext i16 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = add nsw i32 %i.fs, %i.fn
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !75
  %i.fx = sext i16 %i.fw to i32
  %i.fy = sext i16 %i.fo to i64                   ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fq
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !64
  %i.gd = add nsw i64 %i.gc, %i.ga
  %i.ge = lshr i64 %i.gd, 16
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = add nsw i32 %i.gf, %i.fn
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !75
  %i.gk = sext i16 %i.gj to i32
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.fy
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = add nsw i32 %i.gm, %i.fn
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !75
  %i.gr = sext i16 %i.gq to i32
  %i.gs = shl nsw i32 %i.fx, 8
  %i.gt = and i32 %i.gs, 63488
  %i.gu = shl nsw i32 %i.gk, 3
  %i.gv = and i32 %i.gu, 2016
  %i.gw = or disjoint i32 %i.gv, %i.gt
  %i.gx = lshr i32 %i.gr, 3
  %i.gy = or i32 %i.gw, %i.gx
  %i.gz = trunc i32 %i.gy to i16
  store i16 %i.gz, ptr %.1121.i.lcssa, align 2, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ha = icmp samesign ugt i32 %.in, 1
  br i1 %i.ha, label %bb.b, label %ycc_rgb565_convert_le.exit, !llvm.loop !199

ycc_rgb565_convert_le.exit:                       ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @gray_rgb565_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph17, label %gray_rgb565_convert_le.exit

.lr.ph17:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !73
  %i.d = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph17, %bb.f
  %.in = phi i32 [ %4, %.lr.ph17 ], [ %i.e, %bb.f ] ; 2 uses
  %.0.i15 = phi i32 [ %i.c, %.lr.ph17 ], [ %.1.i, %bb.f ] ; 2 uses
  %.041.i14 = phi ptr [ %3, %.lr.ph17 ], [ %i.j, %bb.f ] ; 2 uses
  %.042.i13 = phi i32 [ %2, %.lr.ph17 ], [ %i.f, %bb.f ] ; 2 uses
  %i.e = add nsw i32 %.in, -1
  %i.f = add i32 %.042.i13, 1
  %i.g = zext i32 %.042.i13 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.041.i14, i64 8
  %i.k = load ptr, ptr %.041.i14, align 8, !tbaa !77 ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 3
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.o = load i16, ptr %i.i, align 2, !tbaa !75
  %i.p = sext i16 %i.o to i32                     ; 3 uses
  %i.q = shl nsw i32 %i.p, 8
  %i.r = and i32 %i.q, 63488
  %i.s = shl nsw i32 %i.p, 3
  %i.t = and i32 %i.s, 2016
  %i.u = lshr i32 %i.p, 3
  %i.v = or i32 %i.t, %i.u
  %i.w = or i32 %i.v, %i.r
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %i.k, align 2, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.z = add i32 %.0.i15, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.038.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %.036.i = phi ptr [ %i.y, %bb.c ], [ %i.k, %bb.b ] ; 7 uses
  %.1.i = phi i32 [ %i.z, %bb.c ], [ %.0.i15, %bb.b ] ; 5 uses
  %i.aa = lshr i32 %.1.i, 1                       ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ab = lshr i32 %.1.i, 1
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ac, 2147483644              ; 5 uses
  %i.ad = trunc nuw nsw i64 %n.vec to i32
  %i.ae = shl nuw nsw i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %.036.i, i64 %i.ae ; 2 uses
  %i.ag = shl nuw nsw i64 %n.vec, 2
  %i.ah = getelementptr i8, ptr %.038.i, i64 %i.ag ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.036.i, i64 %i.ai
  %i.aj = getelementptr i8, ptr %.036.i, i64 %i.ai
  %next.gep22 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = getelementptr i8, ptr %.036.i, i64 %i.ai
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 16
  %i.al = getelementptr i8, ptr %.036.i, i64 %i.ai
  %next.gep24 = getelementptr i8, ptr %i.al, i64 24
  %i.am = shl i64 %index, 2
  %next.gep25 = getelementptr i8, ptr %.038.i, i64 %i.am
  %wide.vec = load <8 x i16>, ptr %next.gep25, align 2, !tbaa !75 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec26 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.an = sext <4 x i16> %strided.vec to <4 x i32> ; 3 uses
  %i.ao = shl nsw <4 x i32> %i.an, splat (i32 8)
  %i.ap = and <4 x i32> %i.ao, splat (i32 63488)
  %i.aq = shl nsw <4 x i32> %i.an, splat (i32 3)
  %i.ar = and <4 x i32> %i.aq, splat (i32 2016)
  %i.as = lshr <4 x i32> %i.an, splat (i32 3)
  %i.at = sext <4 x i16> %strided.vec26 to <4 x i32> ; 3 uses
  %i.au = shl nsw <4 x i32> %i.at, splat (i32 8)
  %i.av = and <4 x i32> %i.au, splat (i32 63488)
  %i.aw = shl nsw <4 x i32> %i.at, splat (i32 3)
  %i.ax = and <4 x i32> %i.aw, splat (i32 2016)
  %i.ay = lshr <4 x i32> %i.at, splat (i32 3)
  %i.az = or <4 x i32> %i.ax, %i.ay
  %i.ba = or <4 x i32> %i.az, %i.av
  %i.bb = shl <4 x i32> %i.ba, splat (i32 16)
  %i.bc = or <4 x i32> %i.ar, %i.as
  %i.bd = or <4 x i32> %i.bc, %i.ap
  %i.be = or <4 x i32> %i.bd, %i.bb               ; 4 uses
  %i.bf = extractelement <4 x i32> %i.be, i64 0
  store i32 %i.bf, ptr %next.gep, align 4, !tbaa !3
  %i.bg = extractelement <4 x i32> %i.be, i64 1
  store i32 %i.bg, ptr %next.gep22, align 4, !tbaa !3
  %5 = extractelement <4 x i32> %i.be, i64 2
  store i32 %5, ptr %next.gep23, align 4, !tbaa !3
  %6 = extractelement <4 x i32> %i.be, i64 3
  store i32 %6, ptr %next.gep24, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader29

.lr.ph.preheader29:                               ; preds = %.lr.ph.preheader, %middle.block
  %.035.i11.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  %.137.i10.ph = phi ptr [ %.036.i, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %.139.i9.ph = phi ptr [ %.038.i, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %.035.i11 = phi i32 [ %i.bx, %.lr.ph ], [ %.035.i11.ph, %.lr.ph.preheader29 ]
  %.137.i10 = phi ptr [ %i.bw, %.lr.ph ], [ %.137.i10.ph, %.lr.ph.preheader29 ] ; 2 uses
  %.139.i9 = phi ptr [ %i.bi, %.lr.ph ], [ %.139.i9.ph, %.lr.ph.preheader29 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.139.i9, i64 4 ; 2 uses
  %i.bj = load <2 x i16>, ptr %.139.i9, align 2, !tbaa !75
  %i.bk = sext <2 x i16> %i.bj to <2 x i32>       ; 3 uses
  %i.bl = shl nsw <2 x i32> %i.bk, splat (i32 8)
  %i.bm = and <2 x i32> %i.bl, splat (i32 63488)
  %i.bn = shl nsw <2 x i32> %i.bk, splat (i32 3)
  %i.bo = and <2 x i32> %i.bn, splat (i32 2016)
  %i.bp = lshr <2 x i32> %i.bk, splat (i32 3)
  %i.bq = or <2 x i32> %i.bo, %i.bp
  %i.br = or <2 x i32> %i.bq, %i.bm               ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 1
  %i.bt = shl i32 %i.bs, 16
  %i.bu = extractelement <2 x i32> %i.br, i64 0
  %i.bv = or i32 %i.bu, %i.bt
  store i32 %i.bv, ptr %.137.i10, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %.137.i10, i64 8 ; 2 uses
  %i.bx = add nuw nsw i32 %.035.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.139.i.lcssa = phi ptr [ %.038.i, %bb.d ], [ %i.ah, %middle.block ], [ %i.bi, %.lr.ph ]
  %.137.i.lcssa = phi ptr [ %.036.i, %bb.d ], [ %i.af, %middle.block ], [ %i.bw, %.lr.ph ]
  %i.by = and i32 %.1.i, 1
  %.not44.i = icmp eq i32 %i.by, 0
  br i1 %.not44.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bz = load i16, ptr %.139.i.lcssa, align 2, !tbaa !75
  %i.ca = sext i16 %i.bz to i32                   ; 3 uses
  %i.cb = shl nsw i32 %i.ca, 8
  %i.cc = and i32 %i.cb, 63488
  %i.cd = shl nsw i32 %i.ca, 3
  %i.ce = and i32 %i.cd, 2016
  %i.cf = lshr i32 %i.ca, 3
  %i.cg = or i32 %i.ce, %i.cf
  %i.ch = or i32 %i.cg, %i.cc
  %i.ci = trunc i32 %i.ch to i16
  store i16 %i.ci, ptr %.137.i.lcssa, align 2, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.cj = icmp samesign ugt i32 %.in, 1
  br i1 %i.cj, label %bb.b, label %gray_rgb565_convert_le.exit, !llvm.loop !202

gray_rgb565_convert_le.exit:                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb565_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph21, label %rgb_rgb565_convert_le.exit

.lr.ph21:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !73
  %i.d = load ptr, ptr %1, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph21, %bb.f
  %.in = phi i32 [ %4, %.lr.ph21 ], [ %i.i, %bb.f ] ; 2 uses
  %.0.i19 = phi i32 [ %i.c, %.lr.ph21 ], [ %.1.i, %bb.f ] ; 2 uses
  %.058.i18 = phi ptr [ %3, %.lr.ph21 ], [ %i.r, %bb.f ] ; 2 uses
  %.059.i17 = phi i32 [ %2, %.lr.ph21 ], [ %i.q, %bb.f ] ; 2 uses
  %i.i = add nsw i32 %.in, -1
  %i.j = zext i32 %.059.i17 to i64                ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 3 uses
  %i.q = add i32 %.059.i17, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.058.i18, i64 8
  %i.s = load ptr, ptr %.058.i18, align 8, !tbaa !77 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.w = load i16, ptr %i.l, align 2, !tbaa !75
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.z = load i16, ptr %i.n, align 2, !tbaa !75
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.ac = load i16, ptr %i.p, align 2, !tbaa !75
  %i.ad = sext i16 %i.ac to i32
  %i.ae = shl nsw i32 %i.x, 8
  %i.af = and i32 %i.ae, 63488
  %i.ag = shl nsw i32 %i.aa, 3
  %i.ah = and i32 %i.ag, 2016
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = lshr i32 %i.ad, 3
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i16
  store i16 %i.al, ptr %i.s, align 2, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.an = add i32 %.0.i19, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.055.i = phi ptr [ %i.am, %bb.c ], [ %i.s, %bb.b ] ; 7 uses
  %.053.i = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %.051.i = phi ptr [ %i.y, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.049.i = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 4 uses
  %.1.i = phi i32 [ %i.an, %bb.c ], [ %.0.i19, %bb.b ] ; 5 uses
  %i.ao = lshr i32 %.1.i, 1                       ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ap = lshr i32 %.1.i, 1
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aq, 2147483644              ; 5 uses
  %i.ar = trunc nuw nsw i64 %n.vec to i32
  %i.as = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.at = getelementptr i8, ptr %.049.i, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %.051.i, i64 %i.as ; 2 uses
  %i.av = getelementptr i8, ptr %.053.i, i64 %i.as ; 2 uses
  %i.aw = shl nuw nsw i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %.055.i, i64 %i.aw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.049.i, i64 %i.ay
  %next.gep32 = getelementptr i8, ptr %.051.i, i64 %i.ay
  %next.gep33 = getelementptr i8, ptr %.053.i, i64 %i.ay
  %i.az = shl i64 %index, 3                       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %.055.i, i64 %i.az
  %i.ba = getelementptr i8, ptr %.055.i, i64 %i.az
  %next.gep35 = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = getelementptr i8, ptr %.055.i, i64 %i.az
  %next.gep36 = getelementptr i8, ptr %i.bb, i64 16
  %i.bc = getelementptr i8, ptr %.055.i, i64 %i.az
  %next.gep37 = getelementptr i8, ptr %i.bc, i64 24
  %wide.vec = load <8 x i16>, ptr %next.gep33, align 2, !tbaa !75 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec38 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bd = sext <4 x i16> %strided.vec to <4 x i32>
  %wide.vec39 = load <8 x i16>, ptr %next.gep32, align 2, !tbaa !75 ; 2 uses
  %strided.vec40 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec41 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.be = sext <4 x i16> %strided.vec40 to <4 x i32>
  %wide.vec42 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !75 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bf = sext <4 x i16> %strided.vec43 to <4 x i32>
  %i.bg = shl nsw <4 x i32> %i.bd, splat (i32 8)
  %i.bh = and <4 x i32> %i.bg, splat (i32 63488)
  %i.bi = shl nsw <4 x i32> %i.be, splat (i32 3)
  %i.bj = and <4 x i32> %i.bi, splat (i32 2016)
  %i.bk = or disjoint <4 x i32> %i.bj, %i.bh
  %i.bl = lshr <4 x i32> %i.bf, splat (i32 3)
  %i.bm = or <4 x i32> %i.bk, %i.bl
  %i.bn = sext <4 x i16> %strided.vec38 to <4 x i32>
  %i.bo = sext <4 x i16> %strided.vec41 to <4 x i32>
  %i.bp = sext <4 x i16> %strided.vec44 to <4 x i32>
  %i.bq = shl nsw <4 x i32> %i.bn, splat (i32 8)
  %i.br = and <4 x i32> %i.bq, splat (i32 63488)
  %i.bs = shl nsw <4 x i32> %i.bo, splat (i32 3)
  %i.bt = and <4 x i32> %i.bs, splat (i32 2016)
  %i.bu = or disjoint <4 x i32> %i.bt, %i.br
  %i.bv = lshr <4 x i32> %i.bp, splat (i32 3)
  %i.bw = or <4 x i32> %i.bu, %i.bv
  %i.bx = shl <4 x i32> %i.bw, splat (i32 16)
  %i.by = or <4 x i32> %i.bm, %i.bx               ; 4 uses
  %i.bz = extractelement <4 x i32> %i.by, i64 0
  store i32 %i.bz, ptr %next.gep34, align 4, !tbaa !3
  %i.ca = extractelement <4 x i32> %i.by, i64 1
  store i32 %i.ca, ptr %next.gep35, align 4, !tbaa !3
  %5 = extractelement <4 x i32> %i.by, i64 2
  store i32 %5, ptr %next.gep36, align 4, !tbaa !3
  %6 = extractelement <4 x i32> %i.by, i64 3
  store i32 %6, ptr %next.gep37, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %.lr.ph.preheader, %middle.block
  %.048.i13.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.150.i12.ph = phi ptr [ %.049.i, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  %.152.i11.ph = phi ptr [ %.051.i, %.lr.ph.preheader ], [ %i.au, %middle.block ]
  %.154.i10.ph = phi ptr [ %.053.i, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  %.156.i9.ph = phi ptr [ %.055.i, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader49, %.lr.ph
  %.048.i13 = phi i32 [ %i.dl, %.lr.ph ], [ %.048.i13.ph, %.lr.ph.preheader49 ]
  %.150.i12 = phi ptr [ %i.cy, %.lr.ph ], [ %.150.i12.ph, %.lr.ph.preheader49 ] ; 3 uses
  %.152.i11 = phi ptr [ %i.cv, %.lr.ph ], [ %.152.i11.ph, %.lr.ph.preheader49 ] ; 3 uses
  %.154.i10 = phi ptr [ %i.cs, %.lr.ph ], [ %.154.i10.ph, %.lr.ph.preheader49 ] ; 3 uses
  %.156.i9 = phi ptr [ %i.dk, %.lr.ph ], [ %.156.i9.ph, %.lr.ph.preheader49 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.154.i10, i64 2
  %i.cd = load i16, ptr %.154.i10, align 2, !tbaa !75
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.152.i11, i64 2
  %i.cg = load i16, ptr %.152.i11, align 2, !tbaa !75
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %.150.i12, i64 2
  %i.cj = load i16, ptr %.150.i12, align 2, !tbaa !75
  %i.ck = sext i16 %i.cj to i32
  %i.cl = shl nsw i32 %i.ce, 8
  %i.cm = and i32 %i.cl, 63488
  %i.cn = shl nsw i32 %i.ch, 3
  %i.co = and i32 %i.cn, 2016
  %i.cp = or disjoint i32 %i.co, %i.cm
  %i.cq = lshr i32 %i.ck, 3
  %i.cr = or i32 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.154.i10, i64 4 ; 2 uses
  %i.ct = load i16, ptr %i.cc, align 2, !tbaa !75
  %i.cu = sext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.152.i11, i64 4 ; 2 uses
  %i.cw = load i16, ptr %i.cf, align 2, !tbaa !75
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.150.i12, i64 4 ; 2 uses
  %i.cz = load i16, ptr %i.ci, align 2, !tbaa !75
  %i.da = sext i16 %i.cz to i32
  %i.db = shl nsw i32 %i.cu, 8
  %i.dc = and i32 %i.db, 63488
  %i.dd = shl nsw i32 %i.cx, 3
  %i.de = and i32 %i.dd, 2016
  %i.df = or disjoint i32 %i.de, %i.dc
  %i.dg = lshr i32 %i.da, 3
  %i.dh = or i32 %i.df, %i.dg
  %i.di = shl i32 %i.dh, 16
  %i.dj = or i32 %i.cr, %i.di
  store i32 %i.dj, ptr %.156.i9, align 4, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %.156.i9, i64 8 ; 2 uses
  %i.dl = add nuw nsw i32 %.048.i13, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dl, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.156.i.lcssa = phi ptr [ %.055.i, %bb.d ], [ %i.ax, %middle.block ], [ %i.dk, %.lr.ph ]
  %.154.i.lcssa = phi ptr [ %.053.i, %bb.d ], [ %i.av, %middle.block ], [ %i.cs, %.lr.ph ]
  %.152.i.lcssa = phi ptr [ %.051.i, %bb.d ], [ %i.au, %middle.block ], [ %i.cv, %.lr.ph ]
  %.150.i.lcssa = phi ptr [ %.049.i, %bb.d ], [ %i.at, %middle.block ], [ %i.cy, %.lr.ph ]
  %i.dm = and i32 %.1.i, 1
  %.not61.i = icmp eq i32 %i.dm, 0
  br i1 %.not61.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.dn = load i16, ptr %.154.i.lcssa, align 2, !tbaa !75
  %i.do = sext i16 %i.dn to i32
  %i.dp = load i16, ptr %.152.i.lcssa, align 2, !tbaa !75
  %i.dq = sext i16 %i.dp to i32
  %i.dr = load i16, ptr %.150.i.lcssa, align 2, !tbaa !75
  %i.ds = sext i16 %i.dr to i32
  %i.dt = shl nsw i32 %i.do, 8
  %i.du = and i32 %i.dt, 63488
  %i.dv = shl nsw i32 %i.dq, 3
  %i.dw = and i32 %i.dv, 2016
  %i.dx = or disjoint i32 %i.dw, %i.du
  %i.dy = lshr i32 %i.ds, 3
  %i.dz = or i32 %i.dx, %i.dy
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %.156.i.lcssa, align 2, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.eb = icmp samesign ugt i32 %.in, 1
  br i1 %i.eb, label %bb.b, label %rgb_rgb565_convert_le.exit, !llvm.loop !205

rgb_rgb565_convert_le.exit:                       ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ycc_rgb565D_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 4 uses
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph24, label %ycc_rgb565D_convert_le.exit

.lr.ph24:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !206
  %i.p = and i32 %i.o, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load i32, ptr %i.t, align 8, !tbaa !73
  %i.v = load ptr, ptr %1, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %bb.f
  %.in = phi i32 [ %4, %.lr.ph24 ], [ %i.aa, %bb.f ] ; 2 uses
  %.0.i22 = phi i64 [ %i.s, %.lr.ph24 ], [ %.1.i.lcssa, %bb.f ] ; 3 uses
  %.0127.i21 = phi i32 [ %2, %.lr.ph24 ], [ %i.ai, %bb.f ] ; 2 uses
  %.0128.i20 = phi ptr [ %3, %.lr.ph24 ], [ %i.aj, %bb.f ] ; 2 uses
  %.0130.i19 = phi i32 [ %i.u, %.lr.ph24 ], [ %.1131.i, %bb.f ] ; 2 uses
  %i.aa = add nsw i32 %.in, -1
  %i.ab = zext i32 %.0127.i21 to i64              ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77 ; 3 uses
  %i.ai = add i32 %.0127.i21, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0128.i20, i64 8
  %i.ak = load ptr, ptr %.0128.i20, align 8, !tbaa !77 ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 3
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ao = load i16, ptr %i.ad, align 2, !tbaa !75
  %i.ap = sext i16 %i.ao to i32                   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ar = load i16, ptr %i.af, align 2, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.at = load i16, ptr %i.ah, align 2, !tbaa !75
  %i.au = sext i16 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = add nsw i32 %i.aw, %i.ap
  %i.ay = sext i32 %i.ax to i64
  %i.az = and i64 %.0.i22, 255                    ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  %i.bb = getelementptr [2 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !75
  %i.bd = sext i16 %i.bc to i32
  %i.be = sext i16 %i.ar to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.au
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !64
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = lshr i64 %i.bj, 16
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, %i.ap
  %i.bn = sext i32 %i.bm to i64
  %i.bo = lshr i64 %i.az, 1
  %i.bp = getelementptr [2 x i8], ptr %i.d, i64 %i.bo
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %i.bn
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !75
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.be
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, %i.ap
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [2 x i8], ptr %i.ba, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !75
  %i.bz = sext i16 %i.by to i32
  %i.ca = shl nsw i32 %i.bd, 8
  %i.cb = and i32 %i.ca, 63488
  %i.cc = shl nsw i32 %i.bs, 3
  %i.cd = and i32 %i.cc, 2016
  %i.ce = or disjoint i32 %i.cd, %i.cb
  %i.cf = lshr i32 %i.bz, 3
end_hunk_0
