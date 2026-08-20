inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 109
begin_hunk_0_@Extra_NtkPowerTest:bb.a

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = add nsw i64 %indvars.iv, -2
  %xtraiter = and i64 %i.l, 7                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, -8
  br label %.lr.ph

.lr.ph.i.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.i.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02425.epil.init = phi i64 [ %indvars.iv31, %.lr.ph.preheader ], [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02425.epil = phi i64 [ %i.p, %.lr.ph.epil ], [ %.02425.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.p = mul i64 %.02425.epil, %indvars.iv31      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.preheader, label %.lr.ph.epil, !llvm.loop !182

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %.024.lcssa = phi i64 [ %indvars.iv31, %bb.b ], [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph.i.preheader.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil ]
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.c) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.f) ; 0 uses
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
  br i1 %niter.ncmp.7, label %.lr.ph.i.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !183

.lr.ph.i12:                                       ; preds = %.lr.ph.i12, %.lr.ph.i.preheader
  %indvars.iv.i13 = phi i64 [ 64, %.lr.ph.i.preheader ], [ %indvars.iv.next.i14, %.lr.ph.i12 ] ; 2 uses
  %indvars.iv.next.i14 = add nsw i64 %indvars.iv.i13, -1 ; 2 uses
  %i.aj = lshr i64 %.024.lcssa, %indvars.iv.next.i14
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.al) ; 0 uses
  %i.an = icmp samesign ugt i64 %indvars.iv.i13, 1
  br i1 %i.an, label %.lr.ph.i12, label %Extra_NtkPrintBin.exit15, !llvm.loop !181

Extra_NtkPrintBin.exit15:                         ; preds = %.lr.ph.i12
  %putchar7 = tail call i32 @putchar(i32 10)      ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond30.not, label %bb.c, label %bb.b, !llvm.loop !184

bb.c:                                             ; preds = %Extra_NtkPrintBin.exit15
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 16
  br i1 %exitcond34.not, label %bb.d, label %.preheader, !llvm.loop !185

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
  %i.cr = load <2 x i32>, ptr %i.m, align 4, !tbaa !17 ; 2 uses
  %i.cs = lshr <2 x i32> %i.cr, splat (i32 4)
  %1 = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 2 uses
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %3 = xor <2 x i32> %i.cs, %2
  %i.ct = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cu = shufflevector <2 x i32> %3, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x i32> %i.cu, <4 x i32> %i.ct, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %4 = and <4 x i32> %i.cv, <i32 252645135, i32 252645135, i32 -1, i32 -1> ; 2 uses
  %i.cw = xor <4 x i32> %1, %4
  store <4 x i32> %i.cw, ptr %0, align 4, !tbaa !17
  %i.cx = shl nuw <4 x i32> %i.cq, <i32 4, i32 4, i32 0, i32 0>
  %i.cy = xor <4 x i32> %i.cj, %i.cx
  store <4 x i32> %i.cy, ptr %i.p, align 4, !tbaa !17
  %i.cz = load <2 x i32>, ptr %i.ac, align 4, !tbaa !17
  %i.da = load <4 x i32>, ptr %i.aq, align 4, !tbaa !17 ; 3 uses
  %i.db = load <4 x i32>, ptr %i.n, align 4
  %i.dc = shufflevector <4 x i32> %i.da, <4 x i32> %i.db, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 4)
  %i.de = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = xor <4 x i32> %i.dd, %i.df
  %i.dh = and <4 x i32> %i.dg, splat (i32 252645135) ; 3 uses
  %i.di = load <4 x i32>, ptr %i.ac, align 4, !tbaa !17
  %i.dj = shufflevector <4 x i32> %i.dh, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = shl nuw <4 x i32> %i.dj, <i32 0, i32 0, i32 4, i32 4>
  %i.dl = xor <4 x i32> %i.di, %i.dk
  store <4 x i32> %i.dl, ptr %i.ac, align 4, !tbaa !17
  %i.dm = shl nuw <4 x i32> %i.dh, <i32 4, i32 4, i32 0, i32 0>
  %i.dn = xor <4 x i32> %i.da, %i.dm
  store <4 x i32> %i.dn, ptr %i.aq, align 4, !tbaa !17
  %i.do = load <2 x i32>, ptr %i.d, align 4, !tbaa !17
  %i.dp = load <4 x i32>, ptr %i.q, align 4, !tbaa !17 ; 3 uses
  %i.dq = load <4 x i32>, ptr %i.ao, align 4
  %i.dr = shufflevector <4 x i32> %i.dp, <4 x i32> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ds = lshr <4 x i32> %i.dr, splat (i32 4)
  %i.dt = shufflevector <2 x i32> %i.do, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> %i.dp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dv = xor <4 x i32> %i.ds, %i.du
  %i.dw = and <4 x i32> %i.dv, splat (i32 252645135) ; 3 uses
  %i.dx = load <4 x i32>, ptr %i.d, align 4, !tbaa !17
  %i.dy = shufflevector <4 x i32> %i.dw, <4 x i32> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dz = shl nuw <4 x i32> %i.dy, <i32 0, i32 0, i32 4, i32 4>
  %i.ea = xor <4 x i32> %i.dx, %i.dz
  store <4 x i32> %i.ea, ptr %i.d, align 4, !tbaa !17
  %i.eb = shl nuw <4 x i32> %i.dw, <i32 4, i32 4, i32 0, i32 0>
  %i.ec = xor <4 x i32> %i.dp, %i.eb
  store <4 x i32> %i.ec, ptr %i.q, align 4, !tbaa !17
  %i.ed = load <4 x i32>, ptr %i.ad, align 4, !tbaa !17 ; 2 uses
  %i.ee = load <2 x i32>, ptr %i.ar, align 4, !tbaa !17 ; 2 uses
  %i.ef = lshr <2 x i32> %i.ee, splat (i32 4)
  %i.eg = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.eh = xor <2 x i32> %i.ef, %i.eg
  %i.ei = shufflevector <2 x i32> %i.eh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x i32> %i.ei, <4 x i32> %i.dw, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ek = and <4 x i32> %i.ej, <i32 252645135, i32 252645135, i32 4, i32 4> ; 2 uses
  %i.el = shl nuw <4 x i32> %i.ej, <i32 252645135, i32 252645135, i32 4, i32 4>
  %i.em = shufflevector <4 x i32> %i.ek, <4 x i32> %i.el, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.en = xor <4 x i32> %i.ed, %i.em
  store <4 x i32> %i.en, ptr %i.ad, align 4, !tbaa !17
  %i.eo = shufflevector <4 x i32> %4, <4 x i32> %i.ek, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ep = shl nuw <4 x i32> %i.eo, splat (i32 4)
  %i.eq = shufflevector <2 x i32> %i.cr, <2 x i32> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.er = xor <4 x i32> %i.eq, %i.ep              ; 4 uses
  %i.es = extractelement <4 x i32> %i.er, i64 0
  store i32 %i.es, ptr %i.m, align 4, !tbaa !17
  %i.et = extractelement <4 x i32> %i.er, i64 1
  store i32 %i.et, ptr %i.o, align 4, !tbaa !17
  %i.eu = extractelement <4 x i32> %i.er, i64 2
  store i32 %i.eu, ptr %i.ar, align 4, !tbaa !17
  %i.ev = extractelement <4 x i32> %i.er, i64 3
  store i32 %i.ev, ptr %i.as, align 4, !tbaa !17
  %i.ew = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 3 uses
  %i.ex = shufflevector <4 x i32> %i.ew, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ey = lshr <2 x i32> %i.ex, splat (i32 2)
  %i.ez = shufflevector <4 x i32> %i.ew, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fa = xor <2 x i32> %i.ey, %i.ez
  %i.fb = and <2 x i32> %i.fa, splat (i32 858993459) ; 2 uses
  %i.fc = shl nuw <2 x i32> %i.fb, splat (i32 2)
  %i.fd = shufflevector <2 x i32> %i.fb, <2 x i32> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = xor <4 x i32> %i.ew, %i.fd
  store <4 x i32> %i.fe, ptr %0, align 4, !tbaa !17
  %i.ff = load <4 x i32>, ptr %i.m, align 4, !tbaa !17 ; 3 uses
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fh = lshr <2 x i32> %i.fg, splat (i32 2)
  %i.fi = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fj = xor <2 x i32> %i.fh, %i.fi
  %i.fk = and <2 x i32> %i.fj, splat (i32 858993459) ; 2 uses
  %i.fl = shl nuw <2 x i32> %i.fk, splat (i32 2)
  %i.fm = shufflevector <2 x i32> %i.fk, <2 x i32> %i.fl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = xor <4 x i32> %i.ff, %i.fm
  store <4 x i32> %i.fn, ptr %i.m, align 4, !tbaa !17
  %i.fo = load <4 x i32>, ptr %i.z, align 4, !tbaa !17 ; 3 uses
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fq = lshr <2 x i32> %i.fp, splat (i32 2)
  %i.fr = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fs = xor <2 x i32> %i.fq, %i.fr
  %i.ft = and <2 x i32> %i.fs, splat (i32 858993459) ; 2 uses
  %i.fu = shl nuw <2 x i32> %i.ft, splat (i32 2)
  %i.fv = shufflevector <2 x i32> %i.ft, <2 x i32> %i.fu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fw = xor <4 x i32> %i.fo, %i.fv
  store <4 x i32> %i.fw, ptr %i.z, align 4, !tbaa !17
  %i.fx = load <4 x i32>, ptr %i.an, align 4, !tbaa !17 ; 3 uses
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fz = lshr <2 x i32> %i.fy, splat (i32 2)
  %i.ga = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gb = xor <2 x i32> %i.fz, %i.ga
  %i.gc = and <2 x i32> %i.gb, splat (i32 858993459) ; 2 uses
  %i.gd = shl nuw <2 x i32> %i.gc, splat (i32 2)
  %i.ge = shufflevector <2 x i32> %i.gc, <2 x i32> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = xor <4 x i32> %i.fx, %i.ge
  store <4 x i32> %i.gf, ptr %i.an, align 4, !tbaa !17
  %i.gg = load <4 x i32>, ptr %i.a, align 4, !tbaa !17 ; 3 uses
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gi = lshr <2 x i32> %i.gh, splat (i32 2)
  %i.gj = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gk = xor <2 x i32> %i.gi, %i.gj
  %i.gl = and <2 x i32> %i.gk, splat (i32 858993459) ; 2 uses
  %i.gm = shl nuw <2 x i32> %i.gl, splat (i32 2)
  %i.gn = shufflevector <2 x i32> %i.gl, <2 x i32> %i.gm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.go = xor <4 x i32> %i.gg, %i.gn
  store <4 x i32> %i.go, ptr %i.a, align 4, !tbaa !17
  %i.gp = load <4 x i32>, ptr %i.n, align 4, !tbaa !17 ; 3 uses
  %i.gq = shufflevector <4 x i32> %i.gp, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gr = lshr <2 x i32> %i.gq, splat (i32 2)
  %i.gs = shufflevector <4 x i32> %i.gp, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gt = xor <2 x i32> %i.gr, %i.gs
  %i.gu = and <2 x i32> %i.gt, splat (i32 858993459) ; 2 uses
  %i.gv = shl nuw <2 x i32> %i.gu, splat (i32 2)
  %i.gw = shufflevector <2 x i32> %i.gu, <2 x i32> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gx = xor <4 x i32> %i.gp, %i.gw
  store <4 x i32> %i.gx, ptr %i.n, align 4, !tbaa !17
  %i.gy = load <4 x i32>, ptr %i.aa, align 4, !tbaa !17 ; 3 uses
  %i.gz = shufflevector <4 x i32> %i.gy, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ha = lshr <2 x i32> %i.gz, splat (i32 2)
  %i.hb = shufflevector <4 x i32> %i.gy, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hc = xor <2 x i32> %i.ha, %i.hb
  %i.hd = and <2 x i32> %i.hc, splat (i32 858993459) ; 2 uses
  %i.he = shl nuw <2 x i32> %i.hd, splat (i32 2)
  %i.hf = shufflevector <2 x i32> %i.hd, <2 x i32> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = xor <4 x i32> %i.gy, %i.hf
  store <4 x i32> %i.hg, ptr %i.aa, align 4, !tbaa !17
  %i.hh = load <4 x i32>, ptr %i.ao, align 4, !tbaa !17 ; 3 uses
  %i.hi = shufflevector <4 x i32> %i.hh, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.hj = lshr <2 x i32> %i.hi, splat (i32 2)
  %i.hk = shufflevector <4 x i32> %i.hh, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hl = xor <2 x i32> %i.hj, %i.hk
  %i.hm = and <2 x i32> %i.hl, splat (i32 858993459) ; 2 uses
  %i.hn = shl nuw <2 x i32> %i.hm, splat (i32 2)
  %i.ho = shufflevector <2 x i32> %i.hm, <2 x i32> %i.hn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hp = xor <4 x i32> %i.hh, %i.ho
  store <4 x i32> %i.hp, ptr %i.ao, align 4, !tbaa !17
  %i.hq = load i32, ptr %0, align 4, !tbaa !17    ; 2 uses
  %i.hr = load i32, ptr %i.ab, align 4, !tbaa !17 ; 2 uses
  %i.hs = load <8 x i32>, ptr %i.b, align 4, !tbaa !17 ; 3 uses
  %i.ht = insertelement <8 x i32> poison, i32 %i.hr, i64 0
  %i.hu = shufflevector <8 x i32> %i.hs, <8 x i32> %i.ht, <8 x i32> <i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8>
  %i.hv = lshr <8 x i32> %i.hu, splat (i32 1)
  %i.hw = insertelement <8 x i32> poison, i32 %i.hq, i64 0
  %i.hx = shufflevector <8 x i32> %i.hw, <8 x i32> %i.hs, <8 x i32> <i32 0, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15>
  %i.hy = xor <8 x i32> %i.hv, %i.hx
  %i.hz = and <8 x i32> %i.hy, splat (i32 1431655765) ; 3 uses
  %i.ia = extractelement <8 x i32> %i.hz, i64 0
  %i.ib = xor i32 %i.hq, %i.ia
  store i32 %i.ib, ptr %0, align 4, !tbaa !17
  %i.ic = shl nuw <8 x i32> %i.hz, <i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0>
  %i.id = xor <8 x i32> %i.hs, %i.ic
  store <8 x i32> %i.id, ptr %i.b, align 4, !tbaa !17
  %i.ie = extractelement <8 x i32> %i.hz, i64 7
  %i.if = shl nuw i32 %i.ie, 1
  %i.ig = xor i32 %i.hr, %i.if
  store i32 %i.ig, ptr %i.ab, align 4, !tbaa !17
  %i.ih = load <8 x i32>, ptr %i.ac, align 4, !tbaa !17 ; 3 uses
  %i.ii = shufflevector <8 x i32> %i.ih, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ij = lshr <4 x i32> %i.ii, splat (i32 1)
  %i.ik = shufflevector <8 x i32> %i.ih, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.il = xor <4 x i32> %i.ij, %i.ik
  %i.im = and <4 x i32> %i.il, splat (i32 1431655765) ; 2 uses
  %i.in = shl nuw <4 x i32> %i.im, splat (i32 1)
  %i.io = shufflevector <4 x i32> %i.im, <4 x i32> %i.in, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ip = xor <8 x i32> %i.ih, %i.io
  store <8 x i32> %i.ip, ptr %i.ac, align 4, !tbaa !17
  %i.iq = load <8 x i32>, ptr %i.d, align 4, !tbaa !17 ; 3 uses
  %i.ir = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.is = lshr <4 x i32> %i.ir, splat (i32 1)
  %i.it = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.iu = xor <4 x i32> %i.is, %i.it
  %i.iv = and <4 x i32> %i.iu, splat (i32 1431655765) ; 2 uses
  %i.iw = shl nuw <4 x i32> %i.iv, splat (i32 1)
  %i.ix = shufflevector <4 x i32> %i.iv, <4 x i32> %i.iw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.iy = xor <8 x i32> %i.iq, %i.ix
  store <8 x i32> %i.iy, ptr %i.d, align 4, !tbaa !17
  %i.iz = load i32, ptr %i.ad, align 4, !tbaa !17 ; 2 uses
  %i.ja = load i32, ptr %i.ae, align 4, !tbaa !17 ; 2 uses
  %i.jb = lshr i32 %i.ja, 1
  %i.jc = xor i32 %i.jb, %i.iz
  %i.jd = and i32 %i.jc, 1431655765               ; 2 uses
  %i.je = xor i32 %i.iz, %i.jd
  store i32 %i.je, ptr %i.ad, align 4, !tbaa !17
  %i.jf = shl nuw i32 %i.jd, 1
  %i.jg = xor i32 %i.ja, %i.jf
  store i32 %i.jg, ptr %i.ae, align 4, !tbaa !17
  %i.jh = load i32, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %i.ji = load i32, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %i.jj = lshr i32 %i.ji, 1
  %i.jk = xor i32 %i.jj, %i.jh
  %i.jl = and i32 %i.jk, 1431655765               ; 2 uses
  %i.jm = xor i32 %i.jh, %i.jl
  store i32 %i.jm, ptr %i.ao, align 4, !tbaa !17
  %i.jn = shl nuw i32 %i.jl, 1
  %i.jo = xor i32 %i.ji, %i.jn
  store i32 %i.jo, ptr %i.ap, align 4, !tbaa !17
  %i.jp = load i32, ptr %i.ar, align 4, !tbaa !17 ; 2 uses
  %i.jq = load i32, ptr %i.as, align 4, !tbaa !17 ; 2 uses
  %i.jr = lshr i32 %i.jq, 1
  %i.js = xor i32 %i.jr, %i.jp
  %i.jt = and i32 %i.js, 1431655765               ; 2 uses
  %i.ju = xor i32 %i.jp, %i.jt
  store i32 %i.ju, ptr %i.ar, align 4, !tbaa !17
  %i.jv = shl nuw i32 %i.jt, 1
  %i.jw = xor i32 %i.jq, %i.jv
  store i32 %i.jw, ptr %i.as, align 4, !tbaa !17
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = sext i32 %.02830 to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 256      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !171  ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %.masked = and i64 %i.c, 4294967295
  %i.i = xor i64 %i.h, %.masked                   ; 2 uses
  %i.j = xor i64 %i.i, %i.c
  store i64 %i.j, ptr %i.b, align 8, !tbaa !171
  %i.k = shl nuw i64 %i.i, 32
  %i.l = xor i64 %i.k, %i.g
  store i64 %i.l, ptr %i.f, align 8, !tbaa !171
  %i.m = add nsw i32 %.02830, 33
  %i.n = and i32 %i.m, -33                        ; 2 uses
  %i.o = icmp slt i32 %i.n, 64
  br i1 %i.o, label %bb.a, label %.preheader.1, !llvm.loop !186

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.ad, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.p = sext i32 %.02830.1 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !171  ; 2 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 128      ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !171  ; 2 uses
end_hunk_0
