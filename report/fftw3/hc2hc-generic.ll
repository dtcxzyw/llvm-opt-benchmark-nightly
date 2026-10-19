Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2hc-generic?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@apply_dit:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %i.k = mul nsw i64 %i.f, %i.d                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32   ; 6 uses
  %i.n = icmp sgt i64 %i.h, 0
  br i1 %i.n, label %.lr.ph76.i, label %bytwiddle.exit

.lr.ph76.i:                                       ; preds = %bb.a
  %i.o = add nsw i64 %i.d, -1                     ; 2 uses
  %i.p = sdiv i64 %i.o, 2
  %i.q = sub nsw i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.o
  %.idx.i = shl i64 %i.s, 4
  %i.x = getelementptr i8, ptr %i.w, i64 %.idx.i
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %i.z = icmp slt i64 %i.b, 2
  %i.aa = mul nsw i64 %i.s, %i.f                  ; 2 uses
  %i.ab = sub i64 0, %i.aa
  %i.ac = icmp slt i64 %i.m, 1
  %i.ad = sub i64 0, %i.f                         ; 2 uses
  %.idx63.i = shl nsw i64 %i.q, 4
  %brmerge.i = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %brmerge.i, label %bytwiddle.exit, label %.lr.ph71.i.preheader

.lr.ph71.i.preheader:                             ; preds = %.lr.ph76.i
  %xtraiter = and i64 %i.m, 1
  %i.ae = icmp eq i64 %i.m, 1
  %unroll_iter = and i64 %i.m, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod77 = trunc i64 %i.m to i1
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader, %._crit_edge72.i
  %.074.i = phi ptr [ %i.cx, %._crit_edge72.i ], [ %1, %.lr.ph71.i.preheader ] ; 3 uses
  %.05773.i = phi i64 [ %i.cw, %._crit_edge72.i ], [ 0, %.lr.ph71.i.preheader ]
  %i.af = getelementptr inbounds [8 x i8], ptr %.074.i, i64 %i.aa
  %i.ag = getelementptr inbounds [8 x i8], ptr %.074.i, i64 %i.ab
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph71.i
  %.05969.i = phi i64 [ 1, %.lr.ph71.i ], [ %i.aj, %._crit_edge.i ] ; 2 uses
  %.06268.i = phi ptr [ %i.y, %.lr.ph71.i ], [ %i.cv, %._crit_edge.i ] ; 2 uses
  %i.ah = mul nsw i64 %.05969.i, %i.k
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = add nuw nsw i64 %.05969.i, 1            ; 3 uses
  %i.ak = mul nsw i64 %i.aj, %i.k
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.06066.i = phi ptr [ %i.cb, %.lr.ph.i.new ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %.06165.i = phi ptr [ %i.ca, %.lr.ph.i.new ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %.164.i = phi ptr [ %i.bz, %.lr.ph.i.new ], [ %.06268.i, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.am = load double, ptr %.06165.i, align 8, !tbaa !33 ; 2 uses
  %i.an = load double, ptr %.06066.i, align 8, !tbaa !33 ; 2 uses
  %i.ao = load double, ptr %.164.i, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %.164.i, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !33 ; 2 uses
  %i.ar = fneg double %i.aq
  %i.as = insertelement <2 x double> poison, double %i.am, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.an, i64 1
  %i.au = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.aq, i64 1
  %i.aw = fmul <2 x double> %i.at, %i.av
  %i.ax = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.am, i64 1
  %i.az = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ba, <2 x double> %i.aw) ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1
  store double %i.bc, ptr %.06165.i, align 8, !tbaa !33
  %i.bd = extractelement <2 x double> %i.bb, i64 0
  store double %i.bd, ptr %.06066.i, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %.164.i, i64 16
  %i.bf = getelementptr inbounds [8 x i8], ptr %.06165.i, i64 %i.f ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.06066.i, i64 %i.ad ; 3 uses
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !33 ; 2 uses
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !33 ; 2 uses
  %i.bj = load double, ptr %i.be, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.164.i, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.bm = fneg double %i.bl
  %i.bn = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bi, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bl, i64 1
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bh, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bv, <2 x double> %i.br) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  store double %i.bx, ptr %i.bf, align 8, !tbaa !33
  %i.by = extractelement <2 x double> %i.bw, i64 0
  store double %i.by, ptr %i.bg, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %.164.i, i64 32 ; 3 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.f ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ad ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !0

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.06066.i.epil.init = phi ptr [ %i.al, %.lr.ph.i ], [ %i.cb, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06165.i.epil.init = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ca, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.164.i.epil.init = phi ptr [ %.06268.i, %.lr.ph.i ], [ %i.bz, %._crit_edge.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.cc = load double, ptr %.06165.i.epil.init, align 8, !tbaa !33 ; 2 uses
  %i.cd = load double, ptr %.06066.i.epil.init, align 8, !tbaa !33 ; 2 uses
  %i.ce = load double, ptr %.164.i.epil.init, align 8, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %.164.i.epil.init, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !33 ; 2 uses
  %i.ch = fneg double %i.cg
  %i.ci = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.cd, i64 1
  %i.ck = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cg, i64 1
  %i.cm = fmul <2 x double> %i.cj, %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cc, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cq, <2 x double> %i.cm) ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 1
  store double %i.cs, ptr %.06165.i.epil.init, align 8, !tbaa !33
  %i.ct = extractelement <2 x double> %i.cr, i64 0
  store double %i.ct, ptr %.06066.i.epil.init, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %.164.i.epil.init, i64 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.bz, %._crit_edge.i.unr-lcssa ], [ %i.cu, %.epil.preheader ]
  %i.cv = getelementptr inbounds i8, ptr %.lcssa, i64 %.idx63.i
  %exitcond80.not.i = icmp eq i64 %i.aj, %i.b
  br i1 %exitcond80.not.i, label %._crit_edge72.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge72.i:                                  ; preds = %._crit_edge.i
  %i.cw = add nuw nsw i64 %.05773.i, 1            ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.074.i, i64 %i.j
  %exitcond81.not.i = icmp eq i64 %i.cw, %i.h
  br i1 %exitcond81.not.i, label %bytwiddle.exit, label %.lr.ph71.i, !llvm.loop !2

bytwiddle.exit:                                   ; preds = %._crit_edge72.i, %bb.a, %.lr.ph76.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !38
  tail call void %i.db(ptr noundef %i.cz, ptr noundef %1, ptr noundef %1) #5
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = load i64, ptr %i.e, align 8, !tbaa !27
  %i.df = mul nsw i64 %i.de, %i.dd
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !23 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !38
  %i.dk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df ; 2 uses
  tail call void %i.dj(ptr noundef %i.dh, ptr noundef %i.dk, ptr noundef %i.dk) #5
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !25  ; 9 uses
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !26  ; 11 uses
  %i.dn = load i64, ptr %i.e, align 8, !tbaa !27  ; 5 uses
  %i.do = load i64, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.dp = load i64, ptr %i.i, align 8, !tbaa !29  ; 3 uses
  %i.dq = mul nsw i64 %i.dn, %i.dm                ; 8 uses
  %i.dr = load i64, ptr %i.dc, align 8, !tbaa !31 ; 14 uses
  %i.ds = load i64, ptr %i.l, align 8, !tbaa !32  ; 7 uses
  %i.dt = add i64 %i.ds, %i.dr                    ; 5 uses
  %i.du = icmp sgt i64 %i.do, 0
  br i1 %i.du, label %.preheader.lr.ph.i, label %reorder_dit.exit

.preheader.lr.ph.i:                               ; preds = %bytwiddle.exit
  %i.dv = icmp sgt i64 %i.dl, 2
  %i.dw = mul i64 %i.dn, %i.dr
  %factor.op.mul.i.reass.i = sub i64 0, %i.dw     ; 2 uses
  %i.dx = sub i64 0, %i.dn                        ; 36 uses
  %i.dy = add i64 %i.dl, -1                       ; 2 uses
  %i.dz = lshr i64 %i.dy, 1
  br i1 %i.dv, label %.preheader.lr.ph.split.us.i, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.ea = icmp sgt i64 %i.ds, 0
  br i1 %i.ea, label %.preheader.us.us.us.preheader.i, label %reorder_dit.exit

.preheader.us.us.us.preheader.i:                  ; preds = %.preheader.lr.ph.split.us.i
  %i.eb = add nsw i64 %i.dl, -3
  %i.ec = lshr i64 %i.eb, 1                       ; 3 uses
  %i.ed = add nuw nsw i64 %i.ec, 1
  %i.ee = shl i64 %i.dm, 3                        ; 6 uses
  %i.ef = shl i64 %i.dr, 3                        ; 3 uses
  %i.eg = shl i64 %i.dp, 3
  %i.eh = mul i64 %i.dm, %i.ec
  %i.ei = add i64 %i.dr, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.ei) ; 2 uses
  %i.ej = add i64 %i.dm, %smax
  %i.ek = add i64 %i.eh, %i.ej
  %i.el = shl i64 %i.ek, 3
  %i.em = mul i64 %i.dm, %i.dl
  %i.en = shl i64 %i.em, 3
  %i.eo = add i64 %i.en, 8
  %i.ep = shl i64 %smax, 3                        ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = shl i64 %i.dl, 3                        ; 2 uses
  %i.es = shl i64 %i.ec, 3                        ; 3 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = mul i64 %i.dm, %i.et
  %i.ev = add i64 %i.eu, 8
  %i.ew = sub i64 %i.ev, %i.ef
  %i.ex = mul i64 %i.dm, -8                       ; 5 uses
  %i.ey = mul i64 %i.dm, %i.dy
  %i.ez = add i64 %i.ey, %i.dr
  %i.fa = shl i64 %i.ez, 3
  %i.fb = add i64 %i.er, -8
  %i.fc = sub i64 %i.fb, %i.es
  %i.fd = mul i64 %i.dm, %i.fc
  %i.fe = shl i64 %i.dm, 4
  %i.ff = or disjoint i64 %i.fe, 8
  %i.fg = sub i64 %i.ff, %i.ep
  %i.fh = add i64 %i.es, 16
  %i.fi = mul i64 %i.dm, %i.fh
  %i.fj = add i64 %i.fi, 8
  %i.fk = sub i64 %i.fj, %i.ef
  %i.fl = getelementptr i8, ptr %1, i64 %i.ee
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.ef
  %i.fn = getelementptr i8, ptr %1, i64 %i.el
  %i.fo = getelementptr i8, ptr %1, i64 %i.eq
  %i.fp = getelementptr i8, ptr %1, i64 %i.ew
  %i.fq = getelementptr i8, ptr %1, i64 %i.fa
  %i.fr = getelementptr i8, ptr %1, i64 %i.fd
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.ep
  %i.ft = getelementptr i8, ptr %1, i64 %i.fg
  %i.fu = getelementptr i8, ptr %1, i64 %i.fk
  %i.fv = add i64 %i.dr, 1
  %i.fw = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.fv)
  %i.fx = sub i64 %i.fw, %i.dr                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.fx, 13
  %ident.check.not = icmp eq i64 %i.dn, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %2 = or i64 %i.ex, %i.ee
  %3 = icmp slt i64 %2, 0
  %4 = or i64 %i.ex, %i.ee
  %5 = icmp slt i64 %4, 0
  %stride.check48 = icmp slt i64 %i.ee, 0
  %stride.check54 = icmp slt i64 %i.ex, 0
  %6 = or i64 %i.ee, %i.ex
  %7 = icmp slt i64 %6, 0
  %i.fy = or i64 %i.ee, %i.ex
  %i.fz = icmp slt i64 %i.fy, 0
  %n.vec = and i64 %i.fx, -2                      ; 3 uses
  %i.ga = add i64 %i.dr, %n.vec
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  %xtraiter82 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  %i.gb = icmp ult i64 %i.ds, 8
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %swapri.exit.us.us.us.i.loopexit, %.preheader.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.je, %swapri.exit.us.us.us.i.loopexit ], [ %1, %.preheader.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.jd, %swapri.exit.us.us.us.i.loopexit ], [ 0, %.preheader.us.us.us.preheader.i ] ; 2 uses
  %i.gc = mul i64 %i.eg, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.fm, i64 %i.gc ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.fn, i64 %i.gc ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.fo, i64 %i.gc ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.fp, i64 %i.gc ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.fq, i64 %i.gc ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.fs, i64 %i.gc ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.ft, i64 %i.gc ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.fu, i64 %i.gc ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.gd = or i1 %found.conflict, %3
  %bound040 = icmp ult ptr %scevgep, %scevgep36
  %bound141 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %8 = or i1 %found.conflict42, %5
  %conflict.rdx = or i1 %i.gd, %8
  %bound045 = icmp ult ptr %scevgep, %scevgep38
  %bound146 = icmp ult ptr %scevgep37, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %9 = or i1 %found.conflict47, %stride.check48
  %conflict.rdx50.a = or i1 %conflict.rdx, %9
  %bound051.a = icmp ult ptr %scevgep33, %scevgep36
  %bound152.a = icmp ult ptr %scevgep35, %scevgep34
  %found.conflict53.a = and i1 %bound051.a, %bound152.a
  %10 = or i1 %found.conflict53.a, %stride.check54
  %conflict.rdx56 = or i1 %conflict.rdx50.a, %10
  %bound057 = icmp ult ptr %scevgep33, %scevgep38
  %bound158 = icmp ult ptr %scevgep37, %scevgep34
  %found.conflict59 = and i1 %bound057, %bound158
  %11 = or i1 %found.conflict59, %7
  %conflict.rdx62 = or i1 %conflict.rdx56, %11
  %bound063 = icmp ult ptr %scevgep35, %scevgep38
  %bound164 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict65 = and i1 %bound063, %bound164
  %12 = or i1 %found.conflict65, %i.fz
  %conflict.rdx68 = or i1 %conflict.rdx62, %12
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %._crit_edge.us.us.us.i, %.preheader.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ 1, %.preheader.us.us.us.i ], [ %i.hm, %._crit_edge.us.us.us.i ] ; 4 uses
  %i.ge = mul nsw i64 %.07276.us.us.us.i, %i.dq
  %i.gf = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.ge ; 4 uses
  %i.gg = sub nuw nsw i64 %i.dl, %.07276.us.us.us.i
  %i.gh = mul nsw i64 %i.gg, %i.dq
  %i.gi = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gh ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.gj = add i64 %i.dr, %index                   ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gj ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gk, align 8, !tbaa !33, !alias.scope !60, !noalias !61 ; 2 uses
  %i.gl = sub nsw i64 %i.dq, %i.gj                ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.gn, align 8, !tbaa !33, !alias.scope !62, !noalias !63 ; 2 uses
  %reverse = shufflevector <2 x double> %wide.load69, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gj ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.go, align 8, !tbaa !33, !alias.scope !64, !noalias !65 ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gl
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.gq, align 8, !tbaa !33, !alias.scope !65 ; 2 uses
  %reverse72 = shufflevector <2 x double> %wide.load71, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fsub <2 x double> %wide.load, %reverse
  store <2 x double> %i.gr, ptr %i.gk, align 8, !tbaa !33, !alias.scope !60, !noalias !61
  %i.gs = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse73 = fadd <2 x double> %i.gs, %wide.load69
  store <2 x double> %reverse73, ptr %i.gn, align 8, !tbaa !33, !alias.scope !62, !noalias !63
  %i.gt = fsub <2 x double> %wide.load70, %reverse72
  store <2 x double> %i.gt, ptr %i.go, align 8, !tbaa !33, !alias.scope !64, !noalias !65
  %i.gu = shufflevector <2 x double> %wide.load70, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = fadd <2 x double> %i.gu, %wide.load71
  store <2 x double> %reverse74, ptr %i.gq, align 8, !tbaa !33, !alias.scope !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.ga, %middle.block ], [ %i.dr, %.lr.ph.us.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.hk, %scalar.ph ], [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gw = mul nsw i64 %.07375.us.us.us.i, %i.dn   ; 3 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gw ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !33 ; 2 uses
  %i.gz = sub nsw i64 %i.dq, %i.gw                ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gz ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !33 ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gw ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !33 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gz ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !33 ; 2 uses
  %i.hg = fsub double %i.gy, %i.hb
  store double %i.hg, ptr %i.gx, align 8, !tbaa !33
  %i.hh = fadd double %i.gy, %i.hb
  store double %i.hh, ptr %i.ha, align 8, !tbaa !33
  %i.hi = fsub double %i.hd, %i.hf
  store double %i.hi, ptr %i.hc, align 8, !tbaa !33
  %i.hj = fadd double %i.hd, %i.hf
  store double %i.hj, ptr %i.he, align 8, !tbaa !33
  %i.hk = add nsw i64 %.07375.us.us.us.i, 1       ; 2 uses
  %i.hl = icmp slt i64 %i.hk, %i.dt
  br i1 %i.hl, label %scalar.ph, label %._crit_edge.us.us.us.i, !llvm.loop !55

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph, %middle.block
  %i.hm = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond92.not.i = icmp eq i64 %.07276.us.us.us.i, %i.ed
  br i1 %exitcond92.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !56

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge78.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.hn, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %._crit_edge78.us.us.us.i ] ; 3 uses
  %i.hn = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.ho = mul nsw i64 %i.hn, %i.dq
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ho ; 2 uses
  %i.hp = sub nuw nsw i64 %i.dl, %.036.i.us.us.us.i
  %i.hq = mul nsw i64 %i.hp, %i.dq
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.hq ; 2 uses
  br i1 %lcmp.mod83.not, label %.prol.loopexit81, label %.prol.preheader80

.prol.preheader80:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader80
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.ht, %.prol.preheader80 ], [ %i.dr, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.hv, %.prol.preheader80 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.hu, %.prol.preheader80 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.prol.preheader80 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.hr = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.hs = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.hs, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.hr, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.ht = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit81, label %.prol.preheader80, !llvm.loop !57

.prol.loopexit81:                                 ; preds = %.prol.preheader80, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.dr, %.lr.ph.i.us.us.us.i ], [ %i.ht, %.prol.preheader80 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.hv, %.prol.preheader80 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.hu, %.prol.preheader80 ]
  br i1 %i.gb, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit81, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.ja, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit81 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.jc, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.jb, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %i.hw = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.hx = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.hx, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.hw, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.hy = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.ia = load double, ptr %i.hy, align 8, !tbaa !33
  %i.ib = load double, ptr %i.hz, align 8, !tbaa !33
  store double %i.ib, ptr %i.hy, align 8, !tbaa !33
  store double %i.ia, ptr %i.hz, align 8, !tbaa !33
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.dx ; 3 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.dx ; 3 uses
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !33
  %i.if = load double, ptr %i.id, align 8, !tbaa !33
  store double %i.if, ptr %i.ic, align 8, !tbaa !33
  store double %i.ie, ptr %i.id, align 8, !tbaa !33
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.dx ; 3 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.dx ; 3 uses
  %i.ii = load double, ptr %i.ig, align 8, !tbaa !33
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !33
  store double %i.ij, ptr %i.ig, align 8, !tbaa !33
  store double %i.ii, ptr %i.ih, align 8, !tbaa !33
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.dx ; 3 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.dx ; 3 uses
  %i.im = load double, ptr %i.ik, align 8, !tbaa !33
  %i.in = load double, ptr %i.il, align 8, !tbaa !33
  store double %i.in, ptr %i.ik, align 8, !tbaa !33
  store double %i.im, ptr %i.il, align 8, !tbaa !33
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.dx ; 3 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.dx ; 3 uses
  %i.iq = load double, ptr %i.io, align 8, !tbaa !33
  %i.ir = load double, ptr %i.ip, align 8, !tbaa !33
  store double %i.ir, ptr %i.io, align 8, !tbaa !33
  store double %i.iq, ptr %i.ip, align 8, !tbaa !33
  %i.is = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.dx ; 3 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.dx ; 3 uses
  %i.iu = load double, ptr %i.is, align 8, !tbaa !33
  %i.iv = load double, ptr %i.it, align 8, !tbaa !33
  store double %i.iv, ptr %i.is, align 8, !tbaa !33
  store double %i.iu, ptr %i.it, align 8, !tbaa !33
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.dx ; 3 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.dx ; 3 uses
  %i.iy = load double, ptr %i.iw, align 8, !tbaa !33
  %i.iz = load double, ptr %i.ix, align 8, !tbaa !33
  store double %i.iz, ptr %i.iw, align 8, !tbaa !33
  store double %i.iy, ptr %i.ix, align 8, !tbaa !33
  %i.ja = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.dx
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.dx
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.ja, %i.dt
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit81
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.dz
  br i1 %exitcond40.not.i.us.us.us.i, label %swapri.exit.us.us.us.i.loopexit, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

swapri.exit.us.us.us.i.loopexit:                  ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %i.jd = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp
  %exitcond93.not.i = icmp eq i64 %i.jd, %i.do
  br i1 %exitcond93.not.i, label %reorder_dit.exit, label %.preheader.us.us.us.i, !llvm.loop !58

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.jf = icmp slt i64 %i.ds, 1
  %i.jg = icmp slt i64 %i.dl, 1
  %brmerge87.i = select i1 %i.jg, i1 true, i1 %i.jf
  br i1 %brmerge87.i, label %reorder_dit.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.jh = mul nsw i64 %i.dq, %i.dl
  %i.ji = add nsw i64 %i.ds, -1
  %xtraiter78 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.jj = icmp ult i64 %i.ji, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i
  %.080.i = phi ptr [ %i.jq, %..loopexit_crit_edge.i.i ], [ %1, %.preheader.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.jp, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.dq ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.jh ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.jm, %.prol.preheader ], [ %i.dr, %.preheader.i ]
  %.03034.i.i.prol = phi ptr [ %i.jo, %.prol.preheader ], [ %gep39.i.i, %.preheader.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.jn, %.prol.preheader ], [ %gep.i.i, %.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %i.jk = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.jl = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.jl, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.jk, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.jm = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.dx ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.dx ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter78
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.02935.i.i.unr = phi i64 [ %i.dr, %.preheader.i ], [ %i.jm, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.preheader.i ], [ %i.jo, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.preheader.i ], [ %i.jn, %.prol.preheader ]
  br i1 %i.jj, label %..loopexit_crit_edge.i.i, label %.preheader.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.preheader.i.new, %.prol.loopexit
  %i.jp = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.dp
  %exitcond.not.i18 = icmp eq i64 %i.jp, %i.do
  br i1 %exitcond.not.i18, label %reorder_dit.exit, label %.preheader.i, !llvm.loop !58

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %.02935.i.i = phi i64 [ %i.kv, %.preheader.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.kx, %.preheader.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.kw, %.preheader.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.jr = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.js = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.js, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.jr, ptr %.03034.i.i, align 8, !tbaa !33
  %i.jt = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.dx ; 3 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.dx ; 3 uses
  %i.jv = load double, ptr %i.jt, align 8, !tbaa !33
  %i.jw = load double, ptr %i.ju, align 8, !tbaa !33
  store double %i.jw, ptr %i.jt, align 8, !tbaa !33
  store double %i.jv, ptr %i.ju, align 8, !tbaa !33
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.dx ; 3 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.dx ; 3 uses
  %i.jz = load double, ptr %i.jx, align 8, !tbaa !33
  %i.ka = load double, ptr %i.jy, align 8, !tbaa !33
  store double %i.ka, ptr %i.jx, align 8, !tbaa !33
  store double %i.jz, ptr %i.jy, align 8, !tbaa !33
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.dx ; 3 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %i.dx ; 3 uses
  %i.kd = load double, ptr %i.kb, align 8, !tbaa !33
  %i.ke = load double, ptr %i.kc, align 8, !tbaa !33
  store double %i.ke, ptr %i.kb, align 8, !tbaa !33
  store double %i.kd, ptr %i.kc, align 8, !tbaa !33
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.dx ; 3 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.dx ; 3 uses
  %i.kh = load double, ptr %i.kf, align 8, !tbaa !33
  %i.ki = load double, ptr %i.kg, align 8, !tbaa !33
  store double %i.ki, ptr %i.kf, align 8, !tbaa !33
  store double %i.kh, ptr %i.kg, align 8, !tbaa !33
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.dx ; 3 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.dx ; 3 uses
  %i.kl = load double, ptr %i.kj, align 8, !tbaa !33
  %i.km = load double, ptr %i.kk, align 8, !tbaa !33
  store double %i.km, ptr %i.kj, align 8, !tbaa !33
  store double %i.kl, ptr %i.kk, align 8, !tbaa !33
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.dx ; 3 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.dx ; 3 uses
  %i.kp = load double, ptr %i.kn, align 8, !tbaa !33
  %i.kq = load double, ptr %i.ko, align 8, !tbaa !33
  store double %i.kq, ptr %i.kn, align 8, !tbaa !33
  store double %i.kp, ptr %i.ko, align 8, !tbaa !33
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.dx ; 3 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.dx ; 3 uses
  %i.kt = load double, ptr %i.kr, align 8, !tbaa !33
  %i.ku = load double, ptr %i.ks, align 8, !tbaa !33
  store double %i.ku, ptr %i.kr, align 8, !tbaa !33
  store double %i.kt, ptr %i.ks, align 8, !tbaa !33
  %i.kv = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.dx
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.dx
  %exitcond.not.i.i.7 = icmp eq i64 %i.kv, %i.dt
  br i1 %exitcond.not.i.i.7, label %..loopexit_crit_edge.i.i, label %.preheader.i.new, !llvm.loop !3

reorder_dit.exit:                                 ; preds = %..loopexit_crit_edge.i.i, %swapri.exit.us.us.us.i.loopexit, %bytwiddle.exit, %.preheader.lr.ph.split.us.i, %.preheader.lr.ph.split.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_dif(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %i.k = mul nsw i64 %i.f, %i.d                   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 13 uses
  %i.p = add i64 %i.o, %i.m                       ; 3 uses
  %i.q = icmp sgt i64 %i.h, 0
  br i1 %i.q, label %.lr.ph82.i, label %reorder_dif.exit

.lr.ph82.i:                                       ; preds = %bb.a
  %i.r = mul i64 %i.f, %i.m
  %factor.op.mul.i.reass.i = sub i64 0, %i.r      ; 2 uses
  %i.s = sub i64 0, %i.f                          ; 36 uses
  %i.t = add i64 %i.b, -1                         ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = icmp sgt i64 %i.b, 2
  br i1 %i.v, label %.lr.ph82.split.us.i, label %.lr.ph82.split.i

.lr.ph82.split.us.i:                              ; preds = %.lr.ph82.i
  %i.w = icmp sgt i64 %i.o, 0
  br i1 %i.w, label %.lr.ph37.i.us.us.us.preheader.i, label %reorder_dif.exit

.lr.ph37.i.us.us.us.preheader.i:                  ; preds = %.lr.ph82.split.us.i
  %i.x = add nsw i64 %i.b, -3
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = shl i64 %i.d, 3                         ; 6 uses
  %i.ab = shl i64 %i.m, 3                         ; 7 uses
  %i.ac = shl i64 %i.j, 3
  %i.ad = shl i64 %i.y, 3                         ; 4 uses
  %i.ae = add i64 %i.ad, 8
  %i.af = mul i64 %i.d, %i.ae
  %i.ag = shl i64 %i.o, 3                         ; 4 uses
  %i.ah = mul i64 %i.d, %i.b
  %i.ai = shl i64 %i.ah, 3
  %i.aj = add i64 %i.ai, 8
  %i.ak = add i64 %i.ag, %i.ab
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = shl i64 %i.b, 3                         ; 2 uses
  %i.an = sub i64 %i.am, %i.ad
  %i.ao = mul i64 %i.d, %i.an
  %i.ap = add i64 %i.ao, 8
  %i.aq = sub i64 %i.ap, %i.ab
  %i.ar = mul i64 %i.d, -8                        ; 5 uses
  %i.as = mul i64 %i.d, %i.t
  %i.at = add i64 %i.as, %i.m
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.am, -8
  %i.aw = sub i64 %i.av, %i.ad
  %i.ax = mul i64 %i.d, %i.aw
  %i.ay = shl i64 %i.d, 4
  %i.az = or disjoint i64 %i.ay, 8
  %i.ba = add i64 %i.ag, %i.ab
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = add i64 %i.ad, 16
  %i.bd = mul i64 %i.d, %i.bc
  %i.be = add i64 %i.bd, 8
  %i.bf = sub i64 %i.be, %i.ab
  %i.bg = add i64 %i.o, %i.m
  %i.bh = add i64 %i.o, %i.m
  %i.bi = getelementptr i8, ptr %1, i64 %i.aa
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ab
  %i.bk = getelementptr i8, ptr %1, i64 %i.af
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.ag
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ab
  %i.bn = getelementptr i8, ptr %1, i64 %i.al
  %i.bo = getelementptr i8, ptr %1, i64 %i.aq
  %i.bp = getelementptr i8, ptr %1, i64 %i.au
  %i.bq = getelementptr i8, ptr %1, i64 %i.ax
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.ag
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.ab
  %i.bt = getelementptr i8, ptr %1, i64 %i.bb
  %i.bu = getelementptr i8, ptr %1, i64 %i.bf
  %xtraiter78 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.bv = icmp ult i64 %i.o, 8
  %min.iters.check = icmp ugt i64 %i.o, 9
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %2 = or i64 %i.ar, %i.aa
  %3 = icmp slt i64 %2, 0
  %4 = or i64 %i.ar, %i.aa
  %5 = icmp slt i64 %4, 0
  %stride.check48 = icmp slt i64 %i.aa, 0
  %stride.check54 = icmp slt i64 %i.ar, 0
  %6 = or i64 %i.aa, %i.ar
  %7 = icmp slt i64 %6, 0
  %i.bw = or i64 %i.aa, %i.ar
  %i.bx = icmp slt i64 %i.bw, 0
  %n.vec = and i64 %i.o, 9223372036854775806      ; 3 uses
  %i.by = add i64 %i.m, %n.vec
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph37.i.us.us.us.i

.lr.ph37.i.us.us.us.i:                            ; preds = %._crit_edge78.us.us.us.i, %.lr.ph37.i.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.gw, %._crit_edge78.us.us.us.i ], [ %1, %.lr.ph37.i.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.gv, %._crit_edge78.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.preheader.i ] ; 2 uses
  %i.bz = mul i64 %i.ac, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.bz ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.bm, i64 %i.bz ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.bn, i64 %i.bz ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.bo, i64 %i.bz ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.bp, i64 %i.bz ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.bs, i64 %i.bz ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.bt, i64 %i.bz ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.bu, i64 %i.bz ; 3 uses
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph37.i.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.ca, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.i ] ; 3 uses
  %i.ca = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.cb = mul nsw i64 %i.ca, %i.k
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.cb ; 2 uses
  %i.cc = sub nuw nsw i64 %i.b, %.036.i.us.us.us.i
  %i.cd = mul nsw i64 %i.cc, %i.k
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.cd ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit77, label %.prol.preheader76

.prol.preheader76:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader76
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.cg, %.prol.preheader76 ], [ %i.m, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.ci, %.prol.preheader76 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.ch, %.prol.preheader76 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader76 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.ce = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cf = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.cf, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.ce, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cg = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit77, label %.prol.preheader76, !llvm.loop !66

.prol.loopexit77:                                 ; preds = %.prol.preheader76, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.m, %.lr.ph.i.us.us.us.i ], [ %i.cg, %.prol.preheader76 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.ci, %.prol.preheader76 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.ch, %.prol.preheader76 ]
  br i1 %i.bv, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit77, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.dn, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit77 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.dp, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit77 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.do, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit77 ] ; 3 uses
  %i.cj = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.ck = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ck, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.cj, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.cl = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !33
  %i.co = load double, ptr %i.cm, align 8, !tbaa !33
  store double %i.co, ptr %i.cl, align 8, !tbaa !33
  store double %i.cn, ptr %i.cm, align 8, !tbaa !33
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.s ; 3 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.s ; 3 uses
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !33
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !33
  store double %i.cs, ptr %i.cp, align 8, !tbaa !33
  store double %i.cr, ptr %i.cq, align 8, !tbaa !33
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.s ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.s ; 3 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !33
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !33
  store double %i.cw, ptr %i.ct, align 8, !tbaa !33
  store double %i.cv, ptr %i.cu, align 8, !tbaa !33
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.s ; 3 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.s ; 3 uses
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !33
  %i.da = load double, ptr %i.cy, align 8, !tbaa !33
  store double %i.da, ptr %i.cx, align 8, !tbaa !33
  store double %i.cz, ptr %i.cy, align 8, !tbaa !33
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.s ; 3 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.s ; 3 uses
  %i.dd = load double, ptr %i.db, align 8, !tbaa !33
  %i.de = load double, ptr %i.dc, align 8, !tbaa !33
  store double %i.de, ptr %i.db, align 8, !tbaa !33
  store double %i.dd, ptr %i.dc, align 8, !tbaa !33
  %i.df = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.s ; 3 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.s ; 3 uses
  %i.dh = load double, ptr %i.df, align 8, !tbaa !33
  %i.di = load double, ptr %i.dg, align 8, !tbaa !33
  store double %i.di, ptr %i.df, align 8, !tbaa !33
  store double %i.dh, ptr %i.dg, align 8, !tbaa !33
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.s ; 3 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.s ; 3 uses
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !33
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !33
  store double %i.dm, ptr %i.dj, align 8, !tbaa !33
  store double %i.dl, ptr %i.dk, align 8, !tbaa !33
  %i.dn = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.s
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.s
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.dn, %i.p
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit77
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.u
  br i1 %exitcond40.not.i.us.us.us.i, label %.lr.ph.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

.lr.ph.us.us.us.i.preheader:                      ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.dq = or i1 %found.conflict, %3
  %bound040 = icmp ult ptr %scevgep, %scevgep36
  %bound141 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %8 = or i1 %found.conflict42, %5
  %conflict.rdx = or i1 %i.dq, %8
  %bound045 = icmp ult ptr %scevgep, %scevgep38
  %bound146 = icmp ult ptr %scevgep37, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %9 = or i1 %found.conflict47, %stride.check48
  %conflict.rdx50.a = or i1 %conflict.rdx, %9
  %bound051.a = icmp ult ptr %scevgep33, %scevgep36
  %bound152.a = icmp ult ptr %scevgep35, %scevgep34
  %found.conflict53.a = and i1 %bound051.a, %bound152.a
  %10 = or i1 %found.conflict53.a, %stride.check54
  %conflict.rdx56 = or i1 %conflict.rdx50.a, %10
  %bound057 = icmp ult ptr %scevgep33, %scevgep38
  %bound158 = icmp ult ptr %scevgep37, %scevgep34
  %found.conflict59 = and i1 %bound057, %bound158
  %11 = or i1 %found.conflict59, %7
  %conflict.rdx62 = or i1 %conflict.rdx56, %11
  %bound063 = icmp ult ptr %scevgep35, %scevgep38
  %bound164 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict65 = and i1 %bound063, %bound164
  %12 = or i1 %found.conflict65, %i.bx
  %conflict.rdx68 = or i1 %conflict.rdx62, %12
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %.lr.ph.us.us.us.i.preheader, %._crit_edge.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ %i.gu, %._crit_edge.us.us.us.i ], [ 1, %.lr.ph.us.us.us.i.preheader ] ; 4 uses
  %i.dr = mul nsw i64 %.07276.us.us.us.i, %i.k
  %i.ds = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dr ; 8 uses
  %i.dt = sub nuw nsw i64 %i.b, %.07276.us.us.us.i
  %i.du = mul nsw i64 %i.dt, %i.k
  %i.dv = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.du ; 8 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.dw = add i64 %i.m, %index                    ; 3 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dw ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dx, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.dy = fmul <2 x double> %wide.load, splat (double 5.000000e-01) ; 2 uses
  %i.dz = sub nsw i64 %i.k, %i.dw                 ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.eb, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.ec = fmul <2 x double> %wide.load69, splat (double 5.000000e-01) ; 2 uses
  %reverse = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.ed, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ee = fmul <2 x double> %wide.load70, splat (double 5.000000e-01) ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dz
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.eg, align 8, !tbaa !33, !alias.scope !82
  %i.eh = fmul <2 x double> %wide.load71, splat (double 5.000000e-01) ; 2 uses
  %reverse72 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ei = fadd <2 x double> %i.dy, %reverse
  store <2 x double> %i.ei, ptr %i.dx, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.ej = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse73 = fsub <2 x double> %i.ec, %i.ej
  store <2 x double> %reverse73, ptr %i.eb, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.ek = fadd <2 x double> %i.ee, %reverse72
  store <2 x double> %i.ek, ptr %i.ed, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.el = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = fsub <2 x double> %i.eh, %i.el
  store <2 x double> %reverse74, ptr %i.eg, align 8, !tbaa !33, !alias.scope !82
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.by, %middle.block ], [ %i.m, %.lr.ph.us.us.us.i ] ; 5 uses
  %i.en = sub i64 %i.bg, %.07375.us.us.us.i.ph
  %.neg = add i64 %.07375.us.us.us.i.ph, 1
  %xtraiter81 = and i64 %i.en, 1
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.eo = mul nsw i64 %.07375.us.us.us.i.ph, %i.f ; 3 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !33
  %i.er = fmul double %i.eq, 5.000000e-01         ; 2 uses
  %i.es = sub nsw i64 %i.k, %i.eo                 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !33
  %i.ev = fmul double %i.eu, 5.000000e-01         ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.eo ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !33
  %i.ey = fmul double %i.ex, 5.000000e-01         ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.es ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !33
  %i.fb = fmul double %i.fa, 5.000000e-01         ; 2 uses
  %i.fc = fadd double %i.er, %i.ev
  store double %i.fc, ptr %i.ep, align 8, !tbaa !33
  %i.fd = fsub double %i.ev, %i.er
  store double %i.fd, ptr %i.et, align 8, !tbaa !33
  %i.fe = fadd double %i.ey, %i.fb
  store double %i.fe, ptr %i.ew, align 8, !tbaa !33
  %i.ff = fsub double %i.fb, %i.ey
  store double %i.ff, ptr %i.ez, align 8, !tbaa !33
  %i.fg = add nsw i64 %.07375.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07375.us.us.us.i.unr = phi i64 [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.fg, %scalar.ph.prol ]
  %i.fh = icmp eq i64 %i.bh, %.neg
  br i1 %i.fh, label %._crit_edge.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.gt, %scalar.ph ], [ %.07375.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.fi = mul nsw i64 %.07375.us.us.us.i, %i.f    ; 3 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fi ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !33
  %i.fl = fmul double %i.fk, 5.000000e-01         ; 2 uses
  %i.fm = sub nsw i64 %i.k, %i.fi                 ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fm ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !33
  %i.fp = fmul double %i.fo, 5.000000e-01         ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fi ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !33
  %i.fs = fmul double %i.fr, 5.000000e-01         ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fm ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !33
  %i.fv = fmul double %i.fu, 5.000000e-01         ; 2 uses
  %i.fw = fadd double %i.fl, %i.fp
  store double %i.fw, ptr %i.fj, align 8, !tbaa !33
  %i.fx = fsub double %i.fp, %i.fl
  store double %i.fx, ptr %i.fn, align 8, !tbaa !33
  %i.fy = fadd double %i.fs, %i.fv
  store double %i.fy, ptr %i.fq, align 8, !tbaa !33
  %i.fz = fsub double %i.fv, %i.fs
  store double %i.fz, ptr %i.ft, align 8, !tbaa !33
  %i.ga = add nsw i64 %.07375.us.us.us.i, 1
  %i.gb = mul nsw i64 %i.ga, %i.f                 ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.gb ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !33
  %i.ge = fmul double %i.gd, 5.000000e-01         ; 2 uses
  %i.gf = sub nsw i64 %i.k, %i.gb                 ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gf ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !33
  %i.gi = fmul double %i.gh, 5.000000e-01         ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gb ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !33
  %i.gl = fmul double %i.gk, 5.000000e-01         ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.gf ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !33
  %i.go = fmul double %i.gn, 5.000000e-01         ; 2 uses
  %i.gp = fadd double %i.ge, %i.gi
  store double %i.gp, ptr %i.gc, align 8, !tbaa !33
  %i.gq = fsub double %i.gi, %i.ge
  store double %i.gq, ptr %i.gg, align 8, !tbaa !33
  %i.gr = fadd double %i.gl, %i.go
  store double %i.gr, ptr %i.gj, align 8, !tbaa !33
  %i.gs = fsub double %i.go, %i.gl
  store double %i.gs, ptr %i.gm, align 8, !tbaa !33
  %i.gt = add nsw i64 %.07375.us.us.us.i, 2       ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gt, %i.p
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us.i, label %scalar.ph, !llvm.loop !73

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gu = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond94.not.i = icmp eq i64 %.07276.us.us.us.i, %i.z
  br i1 %exitcond94.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !74

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %i.gv = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.j
  %exitcond95.not.i = icmp eq i64 %i.gv, %i.h
  br i1 %exitcond95.not.i, label %reorder_dif.exit, label %.lr.ph37.i.us.us.us.i, !llvm.loop !75

.lr.ph82.split.i:                                 ; preds = %.lr.ph82.i
  %i.gx = icmp slt i64 %i.o, 1
  %i.gy = icmp slt i64 %i.b, 1
  %brmerge89.i = select i1 %i.gy, i1 true, i1 %i.gx
  br i1 %brmerge89.i, label %reorder_dif.exit, label %.lr.ph37.i.preheader.i

.lr.ph37.i.preheader.i:                           ; preds = %.lr.ph82.split.i
  %i.gz = mul nsw i64 %i.k, %i.b
  %i.ha = add nsw i64 %i.o, -1
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hb = icmp ult i64 %i.ha, 7
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.lr.ph37.i.preheader.i
  %.080.i = phi ptr [ %i.hi, %..loopexit_crit_edge.i.i ], [ %1, %.lr.ph37.i.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.hh, %..loopexit_crit_edge.i.i ], [ 0, %.lr.ph37.i.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.k ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.gz ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph37.i.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.he, %.prol.preheader ], [ %i.m, %.lr.ph37.i.i ]
  %.03034.i.i.prol = phi ptr [ %i.hg, %.prol.preheader ], [ %gep39.i.i, %.lr.ph37.i.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.hf, %.prol.preheader ], [ %gep.i.i, %.lr.ph37.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph37.i.i ]
  %i.hc = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.hd = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.hd, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.hc, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.he = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.s ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.s ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph37.i.i
  %.02935.i.i.unr = phi i64 [ %i.m, %.lr.ph37.i.i ], [ %i.he, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.lr.ph37.i.i ], [ %i.hg, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.lr.ph37.i.i ], [ %i.hf, %.prol.preheader ]
  br i1 %i.hb, label %..loopexit_crit_edge.i.i, label %.lr.ph37.i.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph37.i.i.new, %.prol.loopexit
  %i.hh = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.j
  %exitcond.not.i = icmp eq i64 %i.hh, %i.h
  br i1 %exitcond.not.i, label %reorder_dif.exit, label %.lr.ph37.i.i, !llvm.loop !75
end_hunk_0
