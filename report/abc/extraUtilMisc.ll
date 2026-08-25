Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMisc?download=true
inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@Extra_NtkPowerTest:bb.a
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.i) ; 0 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.k) ; 0 uses
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = lshr i32 %i.u, 3
  %i.w = and i32 %i.v, 1
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.w) ; 0 uses
  %i.y = trunc nuw i64 %indvars.iv to i32
  %i.z = lshr i32 %i.y, 2
  %i.aa = and i32 %i.z, 1
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.aa) ; 0 uses
  %i.ac = trunc nuw i64 %indvars.iv to i32
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = and i32 %i.ad, 1
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ae) ; 0 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = and i32 %i.ag, 1
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ah) ; 0 uses
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  br label %.lr.ph.i12

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02425 = phi i64 [ %indvars.iv31, %.lr.ph.preheader.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.02425, %factor.op.mul44 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !185

.lr.ph.i12:                                       ; preds = %.lr.ph.i12, %.lr.ph.i.preheader
  %indvars.iv.i13 = phi i64 [ 64, %.lr.ph.i.preheader ], [ %indvars.iv.next.i14, %.lr.ph.i12 ] ; 2 uses
  %indvars.iv.next.i14 = add nsw i64 %indvars.iv.i13, -1 ; 2 uses
  %i.aj = lshr i64 %.024.lcssa, %indvars.iv.next.i14
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.al) ; 0 uses
  %i.an = icmp samesign ugt i64 %indvars.iv.i13, 1
  br i1 %i.an, label %.lr.ph.i12, label %Extra_NtkPrintBin.exit15, !llvm.loop !183

Extra_NtkPrintBin.exit15:                         ; preds = %.lr.ph.i12
  %putchar7 = tail call i32 @putchar(i32 10)      ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond30.not, label %bb.c, label %bb.b, !llvm.loop !186

bb.c:                                             ; preds = %Extra_NtkPrintBin.exit15
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 16
  br i1 %exitcond34.not, label %bb.d, label %.preheader, !llvm.loop !187

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Extra_Transpose32(ptr nofree noundef captures(none) %0) local_unnamed_addr #27 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.e = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 2 uses
  %i.f = load <4 x i32>, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.g = lshr <4 x i32> %i.f, splat (i32 16)
  %i.h = and <4 x i32> %i.e, splat (i32 65535)
  %i.i = xor <4 x i32> %i.g, %i.h                 ; 2 uses
  %i.j = xor <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %0, align 4, !tbaa !17
  %i.k = shl nuw <4 x i32> %i.i, splat (i32 16)
  %i.l = xor <4 x i32> %i.f, %i.k
  store <4 x i32> %i.l, ptr %i.a, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = load <4 x i32>, ptr %i.m, align 4, !tbaa !17 ; 2 uses
  %i.s = load <4 x i32>, ptr %i.n, align 4, !tbaa !17 ; 2 uses
  %i.t = lshr <4 x i32> %i.s, splat (i32 16)
  %i.u = and <4 x i32> %i.r, splat (i32 65535)
  %i.v = xor <4 x i32> %i.t, %i.u                 ; 2 uses
  %i.w = xor <4 x i32> %i.r, %i.v
  store <4 x i32> %i.w, ptr %i.m, align 4, !tbaa !17
  %i.x = shl nuw <4 x i32> %i.v, splat (i32 16)
  %i.y = xor <4 x i32> %i.s, %i.x
  store <4 x i32> %i.y, ptr %i.n, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.af = load <4 x i32>, ptr %i.z, align 4, !tbaa !17 ; 2 uses
  %i.ag = load <4 x i32>, ptr %i.aa, align 4, !tbaa !17 ; 2 uses
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 16)
  %i.ai = and <4 x i32> %i.af, splat (i32 65535)
  %i.aj = xor <4 x i32> %i.ah, %i.ai              ; 2 uses
  %i.ak = xor <4 x i32> %i.af, %i.aj
  store <4 x i32> %i.ak, ptr %i.z, align 4, !tbaa !17
  %i.al = shl nuw <4 x i32> %i.aj, splat (i32 16)
  %i.am = xor <4 x i32> %i.ag, %i.al
  store <4 x i32> %i.am, ptr %i.aa, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.at = load <4 x i32>, ptr %i.an, align 4, !tbaa !17 ; 2 uses
  %i.au = load <4 x i32>, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %i.av = lshr <4 x i32> %i.au, splat (i32 16)
  %i.aw = and <4 x i32> %i.at, splat (i32 65535)
  %i.ax = xor <4 x i32> %i.av, %i.aw              ; 2 uses
  %i.ay = xor <4 x i32> %i.at, %i.ax              ; 2 uses
  store <4 x i32> %i.ay, ptr %i.an, align 4, !tbaa !17
  %i.az = shl nuw <4 x i32> %i.ax, splat (i32 16)
  %i.ba = xor <4 x i32> %i.au, %i.az
  store <4 x i32> %i.ba, ptr %i.ao, align 4, !tbaa !17
  %i.bb = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 2 uses
  %i.bc = load <4 x i32>, ptr %i.z, align 4, !tbaa !17 ; 2 uses
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 8)
  %i.be = xor <4 x i32> %i.bd, %i.bb
  %i.bf = and <4 x i32> %i.be, splat (i32 16711935) ; 2 uses
  %i.bg = xor <4 x i32> %i.bb, %i.bf
  store <4 x i32> %i.bg, ptr %0, align 4, !tbaa !17
  %i.bh = shl nuw <4 x i32> %i.bf, splat (i32 8)
  %i.bi = xor <4 x i32> %i.bc, %i.bh
  store <4 x i32> %i.bi, ptr %i.z, align 4, !tbaa !17
  %i.bj = load <4 x i32>, ptr %i.m, align 4, !tbaa !17 ; 2 uses
  %i.bk = load <4 x i32>, ptr %i.an, align 4, !tbaa !17 ; 2 uses
  %i.bl = shufflevector <4 x i32> %i.bk, <4 x i32> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 8)
  %i.bn = xor <4 x i32> %i.bm, %i.bj
  %i.bo = and <4 x i32> %i.bn, splat (i32 16711935) ; 2 uses
  %i.bp = xor <4 x i32> %i.bj, %i.bo
  store <4 x i32> %i.bp, ptr %i.m, align 4, !tbaa !17
  %i.bq = shl nuw <4 x i32> %i.bo, splat (i32 8)
  %i.br = xor <4 x i32> %i.bk, %i.bq
  store <4 x i32> %i.br, ptr %i.an, align 4, !tbaa !17
  %i.bs = load <4 x i32>, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.bt = load <4 x i32>, ptr %i.aa, align 4, !tbaa !17 ; 2 uses
  %i.bu = lshr <4 x i32> %i.bt, splat (i32 8)
  %i.bv = xor <4 x i32> %i.bu, %i.bs
  %i.bw = and <4 x i32> %i.bv, splat (i32 16711935) ; 2 uses
  %i.bx = xor <4 x i32> %i.bs, %i.bw
  store <4 x i32> %i.bx, ptr %i.a, align 4, !tbaa !17
  %i.by = shl nuw <4 x i32> %i.bw, splat (i32 8)
  %i.bz = xor <4 x i32> %i.bt, %i.by
  store <4 x i32> %i.bz, ptr %i.aa, align 4, !tbaa !17
  %i.ca = load <4 x i32>, ptr %i.n, align 4, !tbaa !17 ; 2 uses
  %i.cb = load <4 x i32>, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %i.cc = lshr <4 x i32> %i.cb, splat (i32 8)
  %i.cd = xor <4 x i32> %i.cc, %i.ca
  %i.ce = and <4 x i32> %i.cd, splat (i32 16711935) ; 2 uses
  %i.cf = xor <4 x i32> %i.ca, %i.ce
  store <4 x i32> %i.cf, ptr %i.n, align 4, !tbaa !17
  %i.cg = shl nuw <4 x i32> %i.ce, splat (i32 8)
  %i.ch = xor <4 x i32> %i.cb, %i.cg
  store <4 x i32> %i.ch, ptr %i.ao, align 4, !tbaa !17
  %i.ci = load <2 x i32>, ptr %i.c, align 4, !tbaa !17
  %i.cj = load <4 x i32>, ptr %i.p, align 4, !tbaa !17 ; 3 uses
  %i.ck = load <4 x i32>, ptr %i.an, align 4
  %i.cl = shufflevector <4 x i32> %i.cj, <4 x i32> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cm = lshr <4 x i32> %i.cl, splat (i32 4)
  %i.cn = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> %i.cj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cp = xor <4 x i32> %i.cm, %i.co
  %i.cq = and <4 x i32> %i.cp, splat (i32 252645135) ; 3 uses
  %i.cr = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 2 uses
  %i.cs = load <2 x i32>, ptr %i.m, align 4, !tbaa !17 ; 2 uses
  %i.ct = lshr <2 x i32> %i.cs, splat (i32 4)
  %i.cu = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.cv = xor <2 x i32> %i.ct, %i.cu
  %i.cw = and <2 x i32> %i.cv, splat (i32 252645135)
  %i.cx = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cy = shufflevector <2 x i32> %i.cw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> %i.cx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.da = xor <4 x i32> %i.cr, %i.cz
  store <4 x i32> %i.da, ptr %0, align 4, !tbaa !17
  %i.db = shl nuw <4 x i32> %i.cq, <i32 4, i32 4, i32 0, i32 0>
  %i.dc = xor <4 x i32> %i.cj, %i.db
  store <4 x i32> %i.dc, ptr %i.p, align 4, !tbaa !17
  %i.dd = load <2 x i32>, ptr %i.ac, align 4, !tbaa !17
  %i.de = load <4 x i32>, ptr %i.aq, align 4, !tbaa !17 ; 3 uses
  %i.df = load <4 x i32>, ptr %i.n, align 4
  %i.dg = shufflevector <4 x i32> %i.de, <4 x i32> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dh = lshr <4 x i32> %i.dg, splat (i32 4)
  %i.di = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> %i.de, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = xor <4 x i32> %i.dh, %i.dj
  %i.dl = and <4 x i32> %i.dk, splat (i32 252645135) ; 3 uses
  %i.dm = load <4 x i32>, ptr %i.ac, align 4, !tbaa !17
  %i.dn = shufflevector <4 x i32> %i.dl, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.do = shl nuw <4 x i32> %i.dn, <i32 0, i32 0, i32 4, i32 4>
  %i.dp = xor <4 x i32> %i.dm, %i.do
  store <4 x i32> %i.dp, ptr %i.ac, align 4, !tbaa !17
  %i.dq = shl nuw <4 x i32> %i.dl, <i32 4, i32 4, i32 0, i32 0>
  %i.dr = xor <4 x i32> %i.de, %i.dq
  store <4 x i32> %i.dr, ptr %i.aq, align 4, !tbaa !17
  %i.ds = load <2 x i32>, ptr %i.d, align 4, !tbaa !17
  %i.dt = load <4 x i32>, ptr %i.q, align 4, !tbaa !17 ; 3 uses
  %1 = load <2 x i32>, ptr %i.ao, align 4, !tbaa !17
  %2 = shufflevector <2 x i32> %1, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dv = lshr <4 x i32> %i.du, splat (i32 4)
  %i.dw = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x i32> %i.dw, <4 x i32> %i.dt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dy = xor <4 x i32> %i.dv, %i.dx
  %i.dz = and <4 x i32> %i.dy, splat (i32 252645135) ; 3 uses
  %i.ea = load <4 x i32>, ptr %i.d, align 4, !tbaa !17
  %i.eb = shufflevector <4 x i32> %i.dz, <4 x i32> %i.dl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ec = shl nuw <4 x i32> %i.eb, <i32 0, i32 0, i32 4, i32 4>
  %i.ed = xor <4 x i32> %i.ea, %i.ec
  store <4 x i32> %i.ed, ptr %i.d, align 4, !tbaa !17
  %i.ee = shl nuw <4 x i32> %i.dz, <i32 4, i32 4, i32 0, i32 0>
  %i.ef = xor <4 x i32> %i.dt, %i.ee
  store <4 x i32> %i.ef, ptr %i.q, align 4, !tbaa !17
  %i.eg = load <4 x i32>, ptr %i.ad, align 4, !tbaa !17 ; 2 uses
  %i.eh = load <2 x i32>, ptr %i.ar, align 4, !tbaa !17 ; 2 uses
  %i.ei = lshr <2 x i32> %i.eh, splat (i32 4)
  %i.ej = shufflevector <4 x i32> %i.eg, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ek = xor <2 x i32> %i.ei, %i.ej
  %i.el = shufflevector <2 x i32> %i.ek, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = shufflevector <4 x i32> %i.el, <4 x i32> %i.dz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.en = and <4 x i32> %i.em, <i32 252645135, i32 252645135, i32 poison, i32 poison>
  %i.eo = shl nuw <4 x i32> %i.em, <i32 252645135, i32 252645135, i32 4, i32 4>
  %i.ep = shufflevector <4 x i32> %i.en, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.eq = xor <4 x i32> %i.eg, %i.ep
  store <4 x i32> %i.eq, ptr %i.ad, align 4, !tbaa !17
  %i.er = shufflevector <4 x i32> %i.cy, <4 x i32> %i.ep, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.es = shl nuw <4 x i32> %i.er, splat (i32 4)
  %i.et = shufflevector <2 x i32> %i.cs, <2 x i32> %i.eh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eu = xor <4 x i32> %i.et, %i.es              ; 4 uses
  %i.ev = extractelement <4 x i32> %i.eu, i64 0
  store i32 %i.ev, ptr %i.m, align 4, !tbaa !17
  %i.ew = extractelement <4 x i32> %i.eu, i64 1
  store i32 %i.ew, ptr %i.o, align 4, !tbaa !17
  %i.ex = extractelement <4 x i32> %i.eu, i64 2
  store i32 %i.ex, ptr %i.ar, align 4, !tbaa !17
  %i.ey = extractelement <4 x i32> %i.eu, i64 3
  store i32 %i.ey, ptr %i.as, align 4, !tbaa !17
  %i.ez = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 3 uses
  %i.fa = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fb = lshr <2 x i32> %i.fa, splat (i32 2)
  %i.fc = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fd = xor <2 x i32> %i.fb, %i.fc
  %i.fe = and <2 x i32> %i.fd, splat (i32 858993459) ; 2 uses
  %i.ff = shl nuw <2 x i32> %i.fe, splat (i32 2)
  %i.fg = shufflevector <2 x i32> %i.fe, <2 x i32> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fh = xor <4 x i32> %i.ez, %i.fg
  store <4 x i32> %i.fh, ptr %0, align 4, !tbaa !17
  %i.fi = load <4 x i32>, ptr %i.m, align 4, !tbaa !17 ; 3 uses
  %i.fj = shufflevector <4 x i32> %i.fi, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fk = lshr <2 x i32> %i.fj, splat (i32 2)
  %i.fl = shufflevector <4 x i32> %i.fi, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fm = xor <2 x i32> %i.fk, %i.fl
  %i.fn = and <2 x i32> %i.fm, splat (i32 858993459) ; 2 uses
  %i.fo = shl nuw <2 x i32> %i.fn, splat (i32 2)
  %i.fp = shufflevector <2 x i32> %i.fn, <2 x i32> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fq = xor <4 x i32> %i.fi, %i.fp
  store <4 x i32> %i.fq, ptr %i.m, align 4, !tbaa !17
  %i.fr = load <4 x i32>, ptr %i.z, align 4, !tbaa !17 ; 3 uses
  %i.fs = shufflevector <4 x i32> %i.fr, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ft = lshr <2 x i32> %i.fs, splat (i32 2)
  %i.fu = shufflevector <4 x i32> %i.fr, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fv = xor <2 x i32> %i.ft, %i.fu
  %i.fw = and <2 x i32> %i.fv, splat (i32 858993459) ; 2 uses
  %i.fx = shl nuw <2 x i32> %i.fw, splat (i32 2)
  %i.fy = shufflevector <2 x i32> %i.fw, <2 x i32> %i.fx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = xor <4 x i32> %i.fr, %i.fy
  store <4 x i32> %i.fz, ptr %i.z, align 4, !tbaa !17
  %i.ga = load <4 x i32>, ptr %i.an, align 4, !tbaa !17 ; 3 uses
  %i.gb = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gc = lshr <2 x i32> %i.gb, splat (i32 2)
  %i.gd = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ge = xor <2 x i32> %i.gc, %i.gd
  %i.gf = and <2 x i32> %i.ge, splat (i32 858993459) ; 2 uses
  %i.gg = shl nuw <2 x i32> %i.gf, splat (i32 2)
  %i.gh = shufflevector <2 x i32> %i.gf, <2 x i32> %i.gg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gi = xor <4 x i32> %i.ga, %i.gh
  store <4 x i32> %i.gi, ptr %i.an, align 4, !tbaa !17
  %i.gj = load <4 x i32>, ptr %i.a, align 4, !tbaa !17 ; 3 uses
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gl = lshr <2 x i32> %i.gk, splat (i32 2)
  %i.gm = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gn = xor <2 x i32> %i.gl, %i.gm
  %i.go = and <2 x i32> %i.gn, splat (i32 858993459) ; 2 uses
  %i.gp = shl nuw <2 x i32> %i.go, splat (i32 2)
  %i.gq = shufflevector <2 x i32> %i.go, <2 x i32> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gr = xor <4 x i32> %i.gj, %i.gq
  store <4 x i32> %i.gr, ptr %i.a, align 4, !tbaa !17
  %i.gs = load <4 x i32>, ptr %i.n, align 4, !tbaa !17 ; 3 uses
  %i.gt = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gu = lshr <2 x i32> %i.gt, splat (i32 2)
  %i.gv = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gw = xor <2 x i32> %i.gu, %i.gv
  %i.gx = and <2 x i32> %i.gw, splat (i32 858993459) ; 2 uses
  %i.gy = shl nuw <2 x i32> %i.gx, splat (i32 2)
  %i.gz = shufflevector <2 x i32> %i.gx, <2 x i32> %i.gy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ha = xor <4 x i32> %i.gs, %i.gz
  store <4 x i32> %i.ha, ptr %i.n, align 4, !tbaa !17
  %i.hb = load <4 x i32>, ptr %i.aa, align 4, !tbaa !17 ; 3 uses
  %i.hc = shufflevector <4 x i32> %i.hb, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.hd = lshr <2 x i32> %i.hc, splat (i32 2)
  %i.he = shufflevector <4 x i32> %i.hb, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hf = xor <2 x i32> %i.hd, %i.he
  %i.hg = and <2 x i32> %i.hf, splat (i32 858993459) ; 2 uses
  %i.hh = shl nuw <2 x i32> %i.hg, splat (i32 2)
  %i.hi = shufflevector <2 x i32> %i.hg, <2 x i32> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = xor <4 x i32> %i.hb, %i.hi
  store <4 x i32> %i.hj, ptr %i.aa, align 4, !tbaa !17
  %i.hk = load <4 x i32>, ptr %i.ao, align 4, !tbaa !17 ; 3 uses
  %i.hl = shufflevector <4 x i32> %i.hk, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.hm = lshr <2 x i32> %i.hl, splat (i32 2)
  %i.hn = shufflevector <4 x i32> %i.hk, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ho = xor <2 x i32> %i.hm, %i.hn
  %i.hp = and <2 x i32> %i.ho, splat (i32 858993459) ; 2 uses
  %i.hq = shl nuw <2 x i32> %i.hp, splat (i32 2)
  %i.hr = shufflevector <2 x i32> %i.hp, <2 x i32> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hs = xor <4 x i32> %i.hk, %i.hr
  store <4 x i32> %i.hs, ptr %i.ao, align 4, !tbaa !17
  %i.ht = load i32, ptr %0, align 4, !tbaa !17    ; 2 uses
  %i.hu = load i32, ptr %i.ab, align 4, !tbaa !17 ; 2 uses
  %i.hv = load <8 x i32>, ptr %i.b, align 4, !tbaa !17 ; 3 uses
  %i.hw = insertelement <8 x i32> poison, i32 %i.hu, i64 0
  %i.hx = shufflevector <8 x i32> %i.hv, <8 x i32> %i.hw, <8 x i32> <i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8>
  %i.hy = lshr <8 x i32> %i.hx, splat (i32 1)
  %i.hz = insertelement <8 x i32> poison, i32 %i.ht, i64 0
  %i.ia = shufflevector <8 x i32> %i.hz, <8 x i32> %i.hv, <8 x i32> <i32 0, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15>
  %i.ib = xor <8 x i32> %i.hy, %i.ia
  %i.ic = and <8 x i32> %i.ib, splat (i32 1431655765) ; 3 uses
  %i.id = extractelement <8 x i32> %i.ic, i64 0
  %i.ie = xor i32 %i.ht, %i.id
  store i32 %i.ie, ptr %0, align 4, !tbaa !17
  %i.if = shl nuw <8 x i32> %i.ic, <i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0>
  %i.ig = xor <8 x i32> %i.hv, %i.if
  store <8 x i32> %i.ig, ptr %i.b, align 4, !tbaa !17
  %i.ih = extractelement <8 x i32> %i.ic, i64 7
  %i.ii = shl nuw i32 %i.ih, 1
  %i.ij = xor i32 %i.hu, %i.ii
  store i32 %i.ij, ptr %i.ab, align 4, !tbaa !17
  %i.ik = load <8 x i32>, ptr %i.ac, align 4, !tbaa !17 ; 3 uses
  %i.il = shufflevector <8 x i32> %i.ik, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.im = lshr <4 x i32> %i.il, splat (i32 1)
  %i.in = shufflevector <8 x i32> %i.ik, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.io = xor <4 x i32> %i.im, %i.in
  %i.ip = and <4 x i32> %i.io, splat (i32 1431655765) ; 2 uses
  %i.iq = shl nuw <4 x i32> %i.ip, splat (i32 1)
  %i.ir = shufflevector <4 x i32> %i.ip, <4 x i32> %i.iq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.is = xor <8 x i32> %i.ik, %i.ir
  store <8 x i32> %i.is, ptr %i.ac, align 4, !tbaa !17
  %i.it = load <8 x i32>, ptr %i.d, align 4, !tbaa !17 ; 3 uses
  %i.iu = shufflevector <8 x i32> %i.it, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.iv = lshr <4 x i32> %i.iu, splat (i32 1)
  %i.iw = shufflevector <8 x i32> %i.it, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ix = xor <4 x i32> %i.iv, %i.iw
  %i.iy = and <4 x i32> %i.ix, splat (i32 1431655765) ; 2 uses
  %i.iz = shl nuw <4 x i32> %i.iy, splat (i32 1)
  %i.ja = shufflevector <4 x i32> %i.iy, <4 x i32> %i.iz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.jb = xor <8 x i32> %i.it, %i.ja
  store <8 x i32> %i.jb, ptr %i.d, align 4, !tbaa !17
  %i.jc = load i32, ptr %i.ad, align 4, !tbaa !17 ; 2 uses
  %i.jd = load i32, ptr %i.ae, align 4, !tbaa !17 ; 2 uses
  %i.je = lshr i32 %i.jd, 1
  %i.jf = xor i32 %i.je, %i.jc
  %i.jg = and i32 %i.jf, 1431655765               ; 2 uses
  %i.jh = xor i32 %i.jc, %i.jg
  store i32 %i.jh, ptr %i.ad, align 4, !tbaa !17
  %i.ji = shl nuw i32 %i.jg, 1
  %i.jj = xor i32 %i.jd, %i.ji
  store i32 %i.jj, ptr %i.ae, align 4, !tbaa !17
  %i.jk = load i32, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %i.jl = load i32, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %i.jm = lshr i32 %i.jl, 1
  %i.jn = xor i32 %i.jm, %i.jk
  %i.jo = and i32 %i.jn, 1431655765               ; 2 uses
  %i.jp = xor i32 %i.jk, %i.jo
  store i32 %i.jp, ptr %i.ao, align 4, !tbaa !17
  %i.jq = shl nuw i32 %i.jo, 1
  %i.jr = xor i32 %i.jl, %i.jq
  store i32 %i.jr, ptr %i.ap, align 4, !tbaa !17
  %i.js = load i32, ptr %i.ar, align 4, !tbaa !17 ; 2 uses
  %i.jt = load i32, ptr %i.as, align 4, !tbaa !17 ; 2 uses
  %i.ju = lshr i32 %i.jt, 1
  %i.jv = xor i32 %i.ju, %i.js
  %i.jw = and i32 %i.jv, 1431655765               ; 2 uses
  %i.jx = xor i32 %i.js, %i.jw
  store i32 %i.jx, ptr %i.ar, align 4, !tbaa !17
  %i.jy = shl nuw i32 %i.jw, 1
  %i.jz = xor i32 %i.jt, %i.jy
  store i32 %i.jz, ptr %i.as, align 4, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_Transpose64(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
.preheader:
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %.02830 = phi i32 [ 0, %.preheader ], [ %i.n, %bb.a ] ; 3 uses
  %i.a = sext i32 %.02830 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !173  ; 2 uses
end_hunk_0
