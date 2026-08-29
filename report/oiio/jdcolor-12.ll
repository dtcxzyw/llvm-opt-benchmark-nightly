Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jdcolor-12?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ycc_rgb565_convert:bb.a
  %i.cd = sext i16 %i.cc to i32                   ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1114.i11, i64 2
  %i.cf = load i16, ptr %.1114.i11, align 2, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %.1112.i12, i64 2
  %i.ch = load i16, ptr %.1112.i12, align 2, !tbaa !75
  %i.ci = sext i16 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = add nsw i32 %i.ck, %i.cd
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !75
  %i.cp = sext i16 %i.co to i32
  %i.cq = sext i16 %i.cf to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ci
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !64
  %i.cv = add nsw i64 %i.cu, %i.cs
  %i.cw = lshr i64 %i.cv, 16
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, %i.cd
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !75
  %i.dc = sext i16 %i.db to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cq
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = add nsw i32 %i.de, %i.cd
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !75
  %i.dj = sext i16 %i.di to i32
  %i.dk = shl nsw i32 %i.cp, 8
  %i.dl = and i32 %i.dk, 63488
  %i.dm = shl nsw i32 %i.dc, 3
  %i.dn = and i32 %i.dm, 2016
  %i.do = or disjoint i32 %i.dn, %i.dl
  %i.dp = lshr i32 %i.dj, 3
  %i.dq = or i32 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.1116.i10, i64 4 ; 2 uses
  %i.ds = load i16, ptr %i.cb, align 2, !tbaa !75
  %i.dt = sext i16 %i.ds to i32                   ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1114.i11, i64 4 ; 2 uses
  %i.dv = load i16, ptr %i.ce, align 2, !tbaa !75
  %i.dw = getelementptr inbounds nuw i8, ptr %.1112.i12, i64 4 ; 2 uses
  %i.dx = load i16, ptr %i.cg, align 2, !tbaa !75
  %i.dy = sext i16 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = add nsw i32 %i.ea, %i.dt
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !75
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
  store i32 %i.fi, ptr %.1118.i9, align 4, !tbaa !3
  %i.fj = getelementptr inbounds nuw i8, ptr %.1118.i9, i64 8 ; 2 uses
  %i.fk = add nuw nsw i32 %.0110.i13, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.1118.i.lcssa = phi ptr [ %.0117.i, %bb.d ], [ %i.fj, %.lr.ph ]
  %.1116.i.lcssa = phi ptr [ %.0115.i, %bb.d ], [ %i.dr, %.lr.ph ]
  %.1114.i.lcssa = phi ptr [ %.0113.i, %bb.d ], [ %i.du, %.lr.ph ]
  %.1112.i.lcssa = phi ptr [ %.0111.i, %bb.d ], [ %i.dw, %.lr.ph ]
  %i.fl = and i32 %.1.i, 1
  %.not123.i = icmp eq i32 %i.fl, 0
  br i1 %.not123.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.fm = load i16, ptr %.1116.i.lcssa, align 2, !tbaa !75
  %i.fn = sext i16 %i.fm to i32                   ; 3 uses
  %i.fo = load i16, ptr %.1114.i.lcssa, align 2, !tbaa !75
  %i.fp = load i16, ptr %.1112.i.lcssa, align 2, !tbaa !75
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
  store i16 %i.gz, ptr %.1118.i.lcssa, align 2, !tbaa !75
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
  %5 = lshr i32 %.1.i, 1
  %i.ab = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ab, 2147483644              ; 5 uses
  %i.ac = trunc nuw nsw i64 %n.vec to i32
  %i.ad = shl nuw nsw i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %.036.i, i64 %i.ad ; 2 uses
  %i.af = shl nuw nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %.038.i, i64 %i.af ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.036.i, i64 %i.ah
  %i.ai = getelementptr i8, ptr %.036.i, i64 %i.ah
  %next.gep22 = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = getelementptr i8, ptr %.036.i, i64 %i.ah
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 16
  %i.ak = getelementptr i8, ptr %.036.i, i64 %i.ah
  %next.gep24 = getelementptr i8, ptr %i.ak, i64 24
  %i.al = shl i64 %index, 2
  %next.gep25 = getelementptr i8, ptr %.038.i, i64 %i.al
  %wide.vec = load <8 x i16>, ptr %next.gep25, align 2, !tbaa !75 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec26 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.am = sext <4 x i16> %strided.vec to <4 x i32> ; 3 uses
  %i.an = shl nsw <4 x i32> %i.am, splat (i32 8)
  %i.ao = and <4 x i32> %i.an, splat (i32 63488)
  %i.ap = shl nsw <4 x i32> %i.am, splat (i32 3)
  %i.aq = and <4 x i32> %i.ap, splat (i32 2016)
  %i.ar = lshr <4 x i32> %i.am, splat (i32 3)
  %i.as = sext <4 x i16> %strided.vec26 to <4 x i32> ; 3 uses
  %i.at = shl nsw <4 x i32> %i.as, splat (i32 8)
  %i.au = and <4 x i32> %i.at, splat (i32 63488)
  %i.av = shl nsw <4 x i32> %i.as, splat (i32 3)
  %i.aw = and <4 x i32> %i.av, splat (i32 2016)
  %i.ax = lshr <4 x i32> %i.as, splat (i32 3)
  %i.ay = or <4 x i32> %i.aw, %i.ax
  %i.az = or <4 x i32> %i.ay, %i.au
  %i.ba = shl <4 x i32> %i.az, splat (i32 16)
  %i.bb = or <4 x i32> %i.aq, %i.ar
  %i.bc = or <4 x i32> %i.bb, %i.ao
  %i.bd = or <4 x i32> %i.bc, %i.ba               ; 4 uses
  %i.be = extractelement <4 x i32> %i.bd, i64 0
  store i32 %i.be, ptr %next.gep, align 4, !tbaa !3
  %i.bf = extractelement <4 x i32> %i.bd, i64 1
  store i32 %i.bf, ptr %next.gep22, align 4, !tbaa !3
  %i.bg = extractelement <4 x i32> %i.bd, i64 2
  store i32 %i.bg, ptr %next.gep23, align 4, !tbaa !3
  %i.bh = extractelement <4 x i32> %i.bd, i64 3
  store i32 %i.bh, ptr %next.gep24, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader29

.lr.ph.preheader29:                               ; preds = %.lr.ph.preheader, %middle.block
  %.035.i11.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.137.i10.ph = phi ptr [ %.036.i, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  %.139.i9.ph = phi ptr [ %.038.i, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %.035.i11 = phi i32 [ %i.by, %.lr.ph ], [ %.035.i11.ph, %.lr.ph.preheader29 ]
  %.137.i10 = phi ptr [ %i.bx, %.lr.ph ], [ %.137.i10.ph, %.lr.ph.preheader29 ] ; 2 uses
  %.139.i9 = phi ptr [ %i.bj, %.lr.ph ], [ %.139.i9.ph, %.lr.ph.preheader29 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.139.i9, i64 4 ; 2 uses
  %i.bk = load <2 x i16>, ptr %.139.i9, align 2, !tbaa !75
  %i.bl = sext <2 x i16> %i.bk to <2 x i32>       ; 3 uses
  %i.bm = shl nsw <2 x i32> %i.bl, splat (i32 8)
  %i.bn = and <2 x i32> %i.bm, splat (i32 63488)
  %i.bo = shl nsw <2 x i32> %i.bl, splat (i32 3)
  %i.bp = and <2 x i32> %i.bo, splat (i32 2016)
  %i.bq = lshr <2 x i32> %i.bl, splat (i32 3)
  %i.br = or <2 x i32> %i.bp, %i.bq
  %i.bs = or <2 x i32> %i.br, %i.bn               ; 2 uses
  %i.bt = extractelement <2 x i32> %i.bs, i64 1
  %i.bu = shl i32 %i.bt, 16
  %i.bv = extractelement <2 x i32> %i.bs, i64 0
  %i.bw = or i32 %i.bv, %i.bu
  store i32 %i.bw, ptr %.137.i10, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.137.i10, i64 8 ; 2 uses
  %i.by = add nuw nsw i32 %.035.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.139.i.lcssa = phi ptr [ %.038.i, %bb.d ], [ %i.ag, %middle.block ], [ %i.bj, %.lr.ph ]
  %.137.i.lcssa = phi ptr [ %.036.i, %bb.d ], [ %i.ae, %middle.block ], [ %i.bx, %.lr.ph ]
  %i.bz = and i32 %.1.i, 1
  %.not44.i = icmp eq i32 %i.bz, 0
  br i1 %.not44.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ca = load i16, ptr %.139.i.lcssa, align 2, !tbaa !75
  %i.cb = sext i16 %i.ca to i32                   ; 3 uses
  %i.cc = shl nsw i32 %i.cb, 8
  %i.cd = and i32 %i.cc, 63488
  %i.ce = shl nsw i32 %i.cb, 3
  %i.cf = and i32 %i.ce, 2016
  %i.cg = lshr i32 %i.cb, 3
  %i.ch = or i32 %i.cf, %i.cg
  %i.ci = or i32 %i.ch, %i.cd
  %i.cj = trunc i32 %i.ci to i16
  store i16 %i.cj, ptr %.137.i.lcssa, align 2, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ck = icmp samesign ugt i32 %.in, 1
  br i1 %i.ck, label %bb.b, label %gray_rgb565_convert_le.exit, !llvm.loop !202

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
  %5 = lshr i32 %.1.i, 1
  %i.ap = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ap, 2147483644              ; 5 uses
  %i.aq = trunc nuw nsw i64 %n.vec to i32
  %i.ar = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.as = getelementptr i8, ptr %.049.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %.051.i, i64 %i.ar ; 2 uses
  %i.au = getelementptr i8, ptr %.053.i, i64 %i.ar ; 2 uses
  %i.av = shl nuw nsw i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %.055.i, i64 %i.av ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.049.i, i64 %i.ax
  %next.gep32 = getelementptr i8, ptr %.051.i, i64 %i.ax
  %next.gep33 = getelementptr i8, ptr %.053.i, i64 %i.ax
  %i.ay = shl i64 %index, 3                       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %.055.i, i64 %i.ay
  %i.az = getelementptr i8, ptr %.055.i, i64 %i.ay
  %next.gep35 = getelementptr i8, ptr %i.az, i64 8
  %i.ba = getelementptr i8, ptr %.055.i, i64 %i.ay
  %next.gep36 = getelementptr i8, ptr %i.ba, i64 16
  %i.bb = getelementptr i8, ptr %.055.i, i64 %i.ay
  %next.gep37 = getelementptr i8, ptr %i.bb, i64 24
  %wide.vec = load <8 x i16>, ptr %next.gep33, align 2, !tbaa !75 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec38 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bc = sext <4 x i16> %strided.vec to <4 x i32>
  %wide.vec39 = load <8 x i16>, ptr %next.gep32, align 2, !tbaa !75 ; 2 uses
  %strided.vec40 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec41 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bd = sext <4 x i16> %strided.vec40 to <4 x i32>
  %wide.vec42 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !75 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.be = sext <4 x i16> %strided.vec43 to <4 x i32>
  %i.bf = shl nsw <4 x i32> %i.bc, splat (i32 8)
  %i.bg = and <4 x i32> %i.bf, splat (i32 63488)
  %i.bh = shl nsw <4 x i32> %i.bd, splat (i32 3)
  %i.bi = and <4 x i32> %i.bh, splat (i32 2016)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.bg
  %i.bk = lshr <4 x i32> %i.be, splat (i32 3)
  %i.bl = or <4 x i32> %i.bj, %i.bk
  %i.bm = sext <4 x i16> %strided.vec38 to <4 x i32>
  %i.bn = sext <4 x i16> %strided.vec41 to <4 x i32>
  %i.bo = sext <4 x i16> %strided.vec44 to <4 x i32>
  %i.bp = shl nsw <4 x i32> %i.bm, splat (i32 8)
  %i.bq = and <4 x i32> %i.bp, splat (i32 63488)
  %i.br = shl nsw <4 x i32> %i.bn, splat (i32 3)
  %i.bs = and <4 x i32> %i.br, splat (i32 2016)
  %i.bt = or disjoint <4 x i32> %i.bs, %i.bq
  %i.bu = lshr <4 x i32> %i.bo, splat (i32 3)
  %i.bv = or <4 x i32> %i.bt, %i.bu
  %i.bw = shl <4 x i32> %i.bv, splat (i32 16)
  %i.bx = or <4 x i32> %i.bl, %i.bw               ; 4 uses
  %i.by = extractelement <4 x i32> %i.bx, i64 0
  store i32 %i.by, ptr %next.gep34, align 4, !tbaa !3
  %i.bz = extractelement <4 x i32> %i.bx, i64 1
  store i32 %i.bz, ptr %next.gep35, align 4, !tbaa !3
  %i.ca = extractelement <4 x i32> %i.bx, i64 2
  store i32 %i.ca, ptr %next.gep36, align 4, !tbaa !3
  %i.cb = extractelement <4 x i32> %i.bx, i64 3
  store i32 %i.cb, ptr %next.gep37, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %.lr.ph.preheader, %middle.block
  %.048.i13.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  %.150.i12.ph = phi ptr [ %.049.i, %.lr.ph.preheader ], [ %i.as, %middle.block ]
  %.152.i11.ph = phi ptr [ %.051.i, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  %.154.i10.ph = phi ptr [ %.053.i, %.lr.ph.preheader ], [ %i.au, %middle.block ]
  %.156.i9.ph = phi ptr [ %.055.i, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader49, %.lr.ph
  %.048.i13 = phi i32 [ %i.cy, %.lr.ph ], [ %.048.i13.ph, %.lr.ph.preheader49 ]
  %.150.i12 = phi ptr [ %i.cf, %.lr.ph ], [ %.150.i12.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.152.i11 = phi ptr [ %i.ce, %.lr.ph ], [ %.152.i11.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.154.i10 = phi ptr [ %i.cd, %.lr.ph ], [ %.154.i10.ph, %.lr.ph.preheader49 ] ; 2 uses
  %.156.i9 = phi ptr [ %i.cx, %.lr.ph ], [ %.156.i9.ph, %.lr.ph.preheader49 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.154.i10, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.152.i11, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.150.i12, i64 4 ; 2 uses
  %i.cg = load <2 x i16>, ptr %.154.i10, align 2, !tbaa !75
  %i.ch = sext <2 x i16> %i.cg to <2 x i32>
  %i.ci = load <2 x i16>, ptr %.152.i11, align 2, !tbaa !75
  %i.cj = sext <2 x i16> %i.ci to <2 x i32>
  %i.ck = load <2 x i16>, ptr %.150.i12, align 2, !tbaa !75
  %i.cl = sext <2 x i16> %i.ck to <2 x i32>
  %i.cm = shl nsw <2 x i32> %i.ch, splat (i32 8)
  %i.cn = and <2 x i32> %i.cm, splat (i32 63488)
  %i.co = shl nsw <2 x i32> %i.cj, splat (i32 3)
  %i.cp = and <2 x i32> %i.co, splat (i32 2016)
  %i.cq = or disjoint <2 x i32> %i.cp, %i.cn
  %i.cr = lshr <2 x i32> %i.cl, splat (i32 3)
  %i.cs = or <2 x i32> %i.cq, %i.cr               ; 2 uses
  %i.ct = extractelement <2 x i32> %i.cs, i64 1
  %i.cu = shl i32 %i.ct, 16
  %i.cv = extractelement <2 x i32> %i.cs, i64 0
  %i.cw = or i32 %i.cv, %i.cu
  store i32 %i.cw, ptr %.156.i9, align 4, !tbaa !3
  %i.cx = getelementptr inbounds nuw i8, ptr %.156.i9, i64 8 ; 2 uses
  %i.cy = add nuw nsw i32 %.048.i13, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.156.i.lcssa = phi ptr [ %.055.i, %bb.d ], [ %i.aw, %middle.block ], [ %i.cx, %.lr.ph ]
  %.154.i.lcssa = phi ptr [ %.053.i, %bb.d ], [ %i.au, %middle.block ], [ %i.cd, %.lr.ph ]
  %.152.i.lcssa = phi ptr [ %.051.i, %bb.d ], [ %i.at, %middle.block ], [ %i.ce, %.lr.ph ]
  %.150.i.lcssa = phi ptr [ %.049.i, %bb.d ], [ %i.as, %middle.block ], [ %i.cf, %.lr.ph ]
  %i.cz = and i32 %.1.i, 1
  %.not61.i = icmp eq i32 %i.cz, 0
  br i1 %.not61.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.da = load i16, ptr %.154.i.lcssa, align 2, !tbaa !75
  %i.db = sext i16 %i.da to i32
  %i.dc = load i16, ptr %.152.i.lcssa, align 2, !tbaa !75
  %i.dd = sext i16 %i.dc to i32
  %i.de = load i16, ptr %.150.i.lcssa, align 2, !tbaa !75
  %i.df = sext i16 %i.de to i32
  %i.dg = shl nsw i32 %i.db, 8
  %i.dh = and i32 %i.dg, 63488
  %i.di = shl nsw i32 %i.dd, 3
  %i.dj = and i32 %i.di, 2016
  %i.dk = or disjoint i32 %i.dj, %i.dh
  %i.dl = lshr i32 %i.df, 3
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i16
  store i16 %i.dn, ptr %.156.i.lcssa, align 2, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.do = icmp samesign ugt i32 %.in, 1
  br i1 %i.do, label %bb.b, label %rgb_rgb565_convert_le.exit, !llvm.loop !205

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
  %.0127.i21 = phi i32 [ %i.u, %.lr.ph24 ], [ %.1128.i, %bb.f ] ; 2 uses
  %.0139.i20 = phi ptr [ %3, %.lr.ph24 ], [ %i.aj, %bb.f ] ; 2 uses
  %.0140.i19 = phi i32 [ %2, %.lr.ph24 ], [ %i.ai, %bb.f ] ; 2 uses
  %i.aa = add nsw i32 %.in, -1
  %i.ab = zext i32 %.0140.i19 to i64              ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77 ; 3 uses
  %i.ai = add i32 %.0140.i19, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0139.i20, i64 8
end_hunk_0
