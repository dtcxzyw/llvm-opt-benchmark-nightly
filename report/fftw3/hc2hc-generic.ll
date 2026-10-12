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
  %i.ee = shl i64 %i.dr, 3                        ; 3 uses
  %i.ef = shl i64 %i.dm, 3                        ; 6 uses
  %i.eg = shl i64 %i.dp, 3
  %i.eh = mul i64 %i.dm, %i.ec
  %i.ei = add i64 %i.dr, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.ei) ; 2 uses
  %i.ej = add i64 %i.dm, %smax
  %i.ek = add i64 %i.eh, %i.ej
  %i.el = shl i64 %i.ek, 3
  %i.em = mul i64 %i.dl, %i.dm
  %i.en = shl i64 %i.em, 3
  %i.eo = add i64 %i.en, 8
  %i.ep = shl i64 %smax, 3                        ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = shl i64 %i.dl, 3                        ; 2 uses
  %i.es = shl i64 %i.ec, 3                        ; 3 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = mul i64 %i.dm, %i.et
  %i.ev = add i64 %i.eu, 8
  %i.ew = sub i64 %i.ev, %i.ee
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
  %i.fk = sub i64 %i.fj, %i.ee
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
  %i.fy = or i64 %i.ex, %i.ef
  %i.fz = icmp slt i64 %i.fy, 0
  %i.ga = or i64 %i.ex, %i.ef
  %i.gb = icmp slt i64 %i.ga, 0
  %stride.check48 = icmp slt i64 %i.ef, 0
  %stride.check54 = icmp slt i64 %i.ex, 0
  %i.gc = or i64 %i.ef, %i.ex
  %i.gd = icmp slt i64 %i.gc, 0
  %i.ge = or i64 %i.ef, %i.ex
  %i.gf = icmp slt i64 %i.ge, 0
  %n.vec = and i64 %i.fx, -2                      ; 3 uses
  %i.gg = add i64 %i.dr, %n.vec
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  %xtraiter82 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  %i.gh = icmp ult i64 %i.ds, 8
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %swapri.exit.us.us.us.i.loopexit, %.preheader.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.jp, %swapri.exit.us.us.us.i.loopexit ], [ %1, %.preheader.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.jo, %swapri.exit.us.us.us.i.loopexit ], [ 0, %.preheader.us.us.us.preheader.i ] ; 2 uses
  %i.gi = mul i64 %i.eg, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.fm, i64 %i.gi ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.fn, i64 %i.gi ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.fo, i64 %i.gi ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.fp, i64 %i.gi ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.fq, i64 %i.gi ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.fs, i64 %i.gi ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.ft, i64 %i.gi ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.fu, i64 %i.gi ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.gj = or i1 %found.conflict, %i.fz
  %bound040 = icmp ult ptr %scevgep, %scevgep36
  %bound141 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %i.gk = or i1 %found.conflict42, %i.gb
  %conflict.rdx = or i1 %i.gj, %i.gk
  %bound045 = icmp ult ptr %scevgep, %scevgep38
  %bound146 = icmp ult ptr %scevgep37, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %i.gl = or i1 %found.conflict47, %stride.check48
  %conflict.rdx50 = or i1 %conflict.rdx, %i.gl
  %bound051 = icmp ult ptr %scevgep33, %scevgep36
  %bound152 = icmp ult ptr %scevgep35, %scevgep34
  %found.conflict53 = and i1 %bound051, %bound152
  %i.gm = or i1 %found.conflict53, %stride.check54
  %conflict.rdx56 = or i1 %conflict.rdx50, %i.gm
  %bound057 = icmp ult ptr %scevgep33, %scevgep38
  %bound158 = icmp ult ptr %scevgep37, %scevgep34
  %found.conflict59 = and i1 %bound057, %bound158
  %i.gn = or i1 %found.conflict59, %i.gd
  %conflict.rdx62 = or i1 %conflict.rdx56, %i.gn
  %bound063 = icmp ult ptr %scevgep35, %scevgep38
  %bound164 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict65 = and i1 %bound063, %bound164
  %i.go = or i1 %found.conflict65, %i.gf
  %conflict.rdx68 = or i1 %conflict.rdx62, %i.go
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %._crit_edge.us.us.us.i, %.preheader.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ 1, %.preheader.us.us.us.i ], [ %i.hx, %._crit_edge.us.us.us.i ] ; 4 uses
  %i.gp = mul nsw i64 %.07276.us.us.us.i, %i.dq
  %i.gq = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gp ; 4 uses
  %i.gr = sub nuw nsw i64 %i.dl, %.07276.us.us.us.i
  %i.gs = mul nsw i64 %i.gr, %i.dq
  %i.gt = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gs ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.gu = add i64 %i.dr, %index                   ; 3 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gu ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gv, align 8, !tbaa !33, !alias.scope !60, !noalias !61 ; 2 uses
  %i.gw = sub nsw i64 %i.dq, %i.gu                ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -8 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.gy, align 8, !tbaa !33, !alias.scope !62, !noalias !63 ; 2 uses
  %reverse = shufflevector <2 x double> %wide.load69, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.gz, align 8, !tbaa !33, !alias.scope !64, !noalias !65 ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gw
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -8 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.hb, align 8, !tbaa !33, !alias.scope !65 ; 2 uses
  %reverse72 = shufflevector <2 x double> %wide.load71, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hc = fsub <2 x double> %wide.load, %reverse
  store <2 x double> %i.hc, ptr %i.gv, align 8, !tbaa !33, !alias.scope !60, !noalias !61
  %i.hd = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse73 = fadd <2 x double> %i.hd, %wide.load69
  store <2 x double> %reverse73, ptr %i.gy, align 8, !tbaa !33, !alias.scope !62, !noalias !63
  %i.he = fsub <2 x double> %wide.load70, %reverse72
  store <2 x double> %i.he, ptr %i.gz, align 8, !tbaa !33, !alias.scope !64, !noalias !65
  %i.hf = shufflevector <2 x double> %wide.load70, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = fadd <2 x double> %i.hf, %wide.load71
  store <2 x double> %reverse74, ptr %i.hb, align 8, !tbaa !33, !alias.scope !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.gg, %middle.block ], [ %i.dr, %.lr.ph.us.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.hv, %scalar.ph ], [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hh = mul nsw i64 %.07375.us.us.us.i, %i.dn   ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.hh ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !33 ; 2 uses
  %i.hk = sub nsw i64 %i.dq, %i.hh                ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hk ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !33 ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hh ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !33 ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.hk ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !33 ; 2 uses
  %i.hr = fsub double %i.hj, %i.hm
  store double %i.hr, ptr %i.hi, align 8, !tbaa !33
  %i.hs = fadd double %i.hj, %i.hm
  store double %i.hs, ptr %i.hl, align 8, !tbaa !33
  %i.ht = fsub double %i.ho, %i.hq
  store double %i.ht, ptr %i.hn, align 8, !tbaa !33
  %i.hu = fadd double %i.ho, %i.hq
  store double %i.hu, ptr %i.hp, align 8, !tbaa !33
  %i.hv = add nsw i64 %.07375.us.us.us.i, 1       ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.dt
  br i1 %i.hw, label %scalar.ph, label %._crit_edge.us.us.us.i, !llvm.loop !55

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph, %middle.block
  %i.hx = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond92.not.i = icmp eq i64 %.07276.us.us.us.i, %i.ed
  br i1 %exitcond92.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !56

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge78.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.hy, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %._crit_edge78.us.us.us.i ] ; 3 uses
  %i.hy = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.hz = mul nsw i64 %i.hy, %i.dq
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.hz ; 2 uses
  %i.ia = sub nuw nsw i64 %i.dl, %.036.i.us.us.us.i
  %i.ib = mul nsw i64 %i.ia, %i.dq
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ib ; 2 uses
  br i1 %lcmp.mod83.not, label %.prol.loopexit81, label %.prol.preheader80

.prol.preheader80:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader80
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.ie, %.prol.preheader80 ], [ %i.dr, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.ig, %.prol.preheader80 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.if, %.prol.preheader80 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.prol.preheader80 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.ic = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.id = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.id, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.ic, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.ie = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit81, label %.prol.preheader80, !llvm.loop !57

.prol.loopexit81:                                 ; preds = %.prol.preheader80, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.dr, %.lr.ph.i.us.us.us.i ], [ %i.ie, %.prol.preheader80 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.ig, %.prol.preheader80 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.if, %.prol.preheader80 ]
  br i1 %i.gh, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit81, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.jl, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit81 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.jn, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.jm, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %i.ih = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.ii = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ii, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ih, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.ij = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.il = load double, ptr %i.ij, align 8, !tbaa !33
  %i.im = load double, ptr %i.ik, align 8, !tbaa !33
  store double %i.im, ptr %i.ij, align 8, !tbaa !33
  store double %i.il, ptr %i.ik, align 8, !tbaa !33
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.dx ; 3 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.dx ; 3 uses
  %i.ip = load double, ptr %i.in, align 8, !tbaa !33
  %i.iq = load double, ptr %i.io, align 8, !tbaa !33
  store double %i.iq, ptr %i.in, align 8, !tbaa !33
  store double %i.ip, ptr %i.io, align 8, !tbaa !33
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.dx ; 3 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.dx ; 3 uses
  %i.it = load double, ptr %i.ir, align 8, !tbaa !33
  %i.iu = load double, ptr %i.is, align 8, !tbaa !33
  store double %i.iu, ptr %i.ir, align 8, !tbaa !33
  store double %i.it, ptr %i.is, align 8, !tbaa !33
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.dx ; 3 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.dx ; 3 uses
  %i.ix = load double, ptr %i.iv, align 8, !tbaa !33
  %i.iy = load double, ptr %i.iw, align 8, !tbaa !33
  store double %i.iy, ptr %i.iv, align 8, !tbaa !33
  store double %i.ix, ptr %i.iw, align 8, !tbaa !33
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.dx ; 3 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.dx ; 3 uses
  %i.jb = load double, ptr %i.iz, align 8, !tbaa !33
  %i.jc = load double, ptr %i.ja, align 8, !tbaa !33
  store double %i.jc, ptr %i.iz, align 8, !tbaa !33
  store double %i.jb, ptr %i.ja, align 8, !tbaa !33
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.dx ; 3 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.dx ; 3 uses
  %i.jf = load double, ptr %i.jd, align 8, !tbaa !33
  %i.jg = load double, ptr %i.je, align 8, !tbaa !33
  store double %i.jg, ptr %i.jd, align 8, !tbaa !33
  store double %i.jf, ptr %i.je, align 8, !tbaa !33
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.dx ; 3 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.dx ; 3 uses
  %i.jj = load double, ptr %i.jh, align 8, !tbaa !33
  %i.jk = load double, ptr %i.ji, align 8, !tbaa !33
  store double %i.jk, ptr %i.jh, align 8, !tbaa !33
  store double %i.jj, ptr %i.ji, align 8, !tbaa !33
  %i.jl = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.dx
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.dx
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.jl, %i.dt
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit81
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.dz
  br i1 %exitcond40.not.i.us.us.us.i, label %swapri.exit.us.us.us.i.loopexit, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

swapri.exit.us.us.us.i.loopexit:                  ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %i.jo = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp
  %exitcond93.not.i = icmp eq i64 %i.jo, %i.do
  br i1 %exitcond93.not.i, label %reorder_dit.exit, label %.preheader.us.us.us.i, !llvm.loop !58

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.jq = icmp slt i64 %i.ds, 1
  %i.jr = icmp slt i64 %i.dl, 1
  %brmerge87.i = select i1 %i.jr, i1 true, i1 %i.jq
  br i1 %brmerge87.i, label %reorder_dit.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.js = mul nsw i64 %i.dq, %i.dl
  %i.jt = add nsw i64 %i.ds, -1
  %xtraiter78 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.ju = icmp ult i64 %i.jt, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i
  %.080.i = phi ptr [ %i.kb, %..loopexit_crit_edge.i.i ], [ %1, %.preheader.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.ka, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.dq ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.js ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.jx, %.prol.preheader ], [ %i.dr, %.preheader.i ]
  %.03034.i.i.prol = phi ptr [ %i.jz, %.prol.preheader ], [ %gep39.i.i, %.preheader.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.jy, %.prol.preheader ], [ %gep.i.i, %.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %i.jv = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.jw = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.jw, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.jv, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.jx = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.dx ; 2 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.dx ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter78
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.02935.i.i.unr = phi i64 [ %i.dr, %.preheader.i ], [ %i.jx, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.preheader.i ], [ %i.jz, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.preheader.i ], [ %i.jy, %.prol.preheader ]
  br i1 %i.ju, label %..loopexit_crit_edge.i.i, label %.preheader.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.preheader.i.new, %.prol.loopexit
  %i.ka = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.dp
  %exitcond.not.i18 = icmp eq i64 %i.ka, %i.do
  br i1 %exitcond.not.i18, label %reorder_dit.exit, label %.preheader.i, !llvm.loop !58

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %.02935.i.i = phi i64 [ %i.lg, %.preheader.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.li, %.preheader.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.lh, %.preheader.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.kc = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.kd = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.kd, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.kc, ptr %.03034.i.i, align 8, !tbaa !33
  %i.ke = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.dx ; 3 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.dx ; 3 uses
  %i.kg = load double, ptr %i.ke, align 8, !tbaa !33
  %i.kh = load double, ptr %i.kf, align 8, !tbaa !33
  store double %i.kh, ptr %i.ke, align 8, !tbaa !33
  store double %i.kg, ptr %i.kf, align 8, !tbaa !33
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.dx ; 3 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.dx ; 3 uses
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !33
  %i.kl = load double, ptr %i.kj, align 8, !tbaa !33
  store double %i.kl, ptr %i.ki, align 8, !tbaa !33
  store double %i.kk, ptr %i.kj, align 8, !tbaa !33
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.dx ; 3 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.dx ; 3 uses
  %i.ko = load double, ptr %i.km, align 8, !tbaa !33
  %i.kp = load double, ptr %i.kn, align 8, !tbaa !33
  store double %i.kp, ptr %i.km, align 8, !tbaa !33
  store double %i.ko, ptr %i.kn, align 8, !tbaa !33
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.dx ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.dx ; 3 uses
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !33
  %i.kt = load double, ptr %i.kr, align 8, !tbaa !33
  store double %i.kt, ptr %i.kq, align 8, !tbaa !33
  store double %i.ks, ptr %i.kr, align 8, !tbaa !33
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.dx ; 3 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.dx ; 3 uses
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !33
  %i.kx = load double, ptr %i.kv, align 8, !tbaa !33
  store double %i.kx, ptr %i.ku, align 8, !tbaa !33
  store double %i.kw, ptr %i.kv, align 8, !tbaa !33
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.dx ; 3 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.dx ; 3 uses
  %i.la = load double, ptr %i.ky, align 8, !tbaa !33
  %i.lb = load double, ptr %i.kz, align 8, !tbaa !33
  store double %i.lb, ptr %i.ky, align 8, !tbaa !33
  store double %i.la, ptr %i.kz, align 8, !tbaa !33
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.dx ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.dx ; 3 uses
  %i.le = load double, ptr %i.lc, align 8, !tbaa !33
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !33
  store double %i.lf, ptr %i.lc, align 8, !tbaa !33
  store double %i.le, ptr %i.ld, align 8, !tbaa !33
  %i.lg = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.dx
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.dx
  %exitcond.not.i.i.7 = icmp eq i64 %i.lg, %i.dt
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
  %i.aa = shl i64 %i.m, 3                         ; 7 uses
  %i.ab = shl i64 %i.d, 3                         ; 6 uses
  %i.ac = shl i64 %i.j, 3
  %i.ad = shl i64 %i.y, 3                         ; 4 uses
  %i.ae = add i64 %i.ad, 8
  %i.af = mul i64 %i.d, %i.ae
  %i.ag = shl i64 %i.o, 3                         ; 4 uses
  %i.ah = mul i64 %i.b, %i.d
  %i.ai = shl i64 %i.ah, 3
  %i.aj = add i64 %i.ai, 8
  %i.ak = add i64 %i.aa, %i.ag
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = shl i64 %i.b, 3                         ; 2 uses
  %i.an = sub i64 %i.am, %i.ad
  %i.ao = mul i64 %i.d, %i.an
  %i.ap = add i64 %i.ao, 8
  %i.aq = sub i64 %i.ap, %i.aa
  %i.ar = mul i64 %i.d, -8                        ; 5 uses
  %i.as = mul i64 %i.d, %i.t
  %i.at = add i64 %i.as, %i.m
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.am, -8
  %i.aw = sub i64 %i.av, %i.ad
  %i.ax = mul i64 %i.d, %i.aw
  %i.ay = shl i64 %i.d, 4
  %i.az = or disjoint i64 %i.ay, 8
  %i.ba = add i64 %i.aa, %i.ag
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = add i64 %i.ad, 16
  %i.bd = mul i64 %i.d, %i.bc
  %i.be = add i64 %i.bd, 8
  %i.bf = sub i64 %i.be, %i.aa
  %i.bg = add i64 %i.o, %i.m
  %i.bh = add i64 %i.o, %i.m
  %i.bi = getelementptr i8, ptr %1, i64 %i.aa
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ab
  %i.bk = getelementptr i8, ptr %1, i64 %i.af
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.aa
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ag
  %i.bn = getelementptr i8, ptr %1, i64 %i.al
  %i.bo = getelementptr i8, ptr %1, i64 %i.aq
  %i.bp = getelementptr i8, ptr %1, i64 %i.au
  %i.bq = getelementptr i8, ptr %1, i64 %i.ax
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.aa
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.ag
  %i.bt = getelementptr i8, ptr %1, i64 %i.bb
  %i.bu = getelementptr i8, ptr %1, i64 %i.bf
  %xtraiter78 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.bv = icmp ult i64 %i.o, 8
  %min.iters.check = icmp ugt i64 %i.o, 9
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.bw = or i64 %i.ar, %i.ab
  %i.bx = icmp slt i64 %i.bw, 0
  %i.by = or i64 %i.ar, %i.ab
  %i.bz = icmp slt i64 %i.by, 0
  %stride.check48 = icmp slt i64 %i.ab, 0
  %stride.check54 = icmp slt i64 %i.ar, 0
  %i.ca = or i64 %i.ab, %i.ar
  %i.cb = icmp slt i64 %i.ca, 0
  %i.cc = or i64 %i.ab, %i.ar
  %i.cd = icmp slt i64 %i.cc, 0
  %n.vec = and i64 %i.o, 9223372036854775806      ; 3 uses
  %i.ce = add i64 %i.m, %n.vec
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph37.i.us.us.us.i

.lr.ph37.i.us.us.us.i:                            ; preds = %._crit_edge78.us.us.us.i, %.lr.ph37.i.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.hh, %._crit_edge78.us.us.us.i ], [ %1, %.lr.ph37.i.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.hg, %._crit_edge78.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.preheader.i ] ; 2 uses
  %i.cf = mul i64 %i.ac, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.cf ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.bm, i64 %i.cf ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.bn, i64 %i.cf ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.bo, i64 %i.cf ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.bp, i64 %i.cf ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.bs, i64 %i.cf ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.bt, i64 %i.cf ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.bu, i64 %i.cf ; 3 uses
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph37.i.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.cg, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.i ] ; 3 uses
  %i.cg = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.k
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ch ; 2 uses
  %i.ci = sub nuw nsw i64 %i.b, %.036.i.us.us.us.i
  %i.cj = mul nsw i64 %i.ci, %i.k
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.cj ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit77, label %.prol.preheader76

.prol.preheader76:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader76
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.cm, %.prol.preheader76 ], [ %i.m, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.co, %.prol.preheader76 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.cn, %.prol.preheader76 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader76 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.ck = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cl = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.cl, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.ck, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cm = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit77, label %.prol.preheader76, !llvm.loop !66

.prol.loopexit77:                                 ; preds = %.prol.preheader76, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.m, %.lr.ph.i.us.us.us.i ], [ %i.cm, %.prol.preheader76 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.co, %.prol.preheader76 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.cn, %.prol.preheader76 ]
  br i1 %i.bv, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit77, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.dt, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit77 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.dv, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit77 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.du, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit77 ] ; 3 uses
  %i.cp = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.cq = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.cq, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.cp, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.cr = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !33
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !33
  store double %i.cu, ptr %i.cr, align 8, !tbaa !33
  store double %i.ct, ptr %i.cs, align 8, !tbaa !33
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.s ; 3 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.s ; 3 uses
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !33
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !33
  store double %i.cy, ptr %i.cv, align 8, !tbaa !33
  store double %i.cx, ptr %i.cw, align 8, !tbaa !33
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.s ; 3 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.s ; 3 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !33
  %i.dc = load double, ptr %i.da, align 8, !tbaa !33
  store double %i.dc, ptr %i.cz, align 8, !tbaa !33
  store double %i.db, ptr %i.da, align 8, !tbaa !33
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.s ; 3 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.s ; 3 uses
  %i.df = load double, ptr %i.dd, align 8, !tbaa !33
  %i.dg = load double, ptr %i.de, align 8, !tbaa !33
  store double %i.dg, ptr %i.dd, align 8, !tbaa !33
  store double %i.df, ptr %i.de, align 8, !tbaa !33
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.s ; 3 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.s ; 3 uses
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !33
  %i.dk = load double, ptr %i.di, align 8, !tbaa !33
  store double %i.dk, ptr %i.dh, align 8, !tbaa !33
  store double %i.dj, ptr %i.di, align 8, !tbaa !33
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.s ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.s ; 3 uses
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !33
  %i.do = load double, ptr %i.dm, align 8, !tbaa !33
  store double %i.do, ptr %i.dl, align 8, !tbaa !33
  store double %i.dn, ptr %i.dm, align 8, !tbaa !33
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.s ; 3 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.s ; 3 uses
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !33
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !33
  store double %i.ds, ptr %i.dp, align 8, !tbaa !33
  store double %i.dr, ptr %i.dq, align 8, !tbaa !33
  %i.dt = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.s
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.s
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.dt, %i.p
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit77
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.u
  br i1 %exitcond40.not.i.us.us.us.i, label %.lr.ph.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

.lr.ph.us.us.us.i.preheader:                      ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.dw = or i1 %found.conflict, %i.bx
  %bound040 = icmp ult ptr %scevgep, %scevgep36
  %bound141 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %i.dx = or i1 %found.conflict42, %i.bz
  %conflict.rdx = or i1 %i.dw, %i.dx
  %bound045 = icmp ult ptr %scevgep, %scevgep38
  %bound146 = icmp ult ptr %scevgep37, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %i.dy = or i1 %found.conflict47, %stride.check48
  %conflict.rdx50 = or i1 %conflict.rdx, %i.dy
  %bound051 = icmp ult ptr %scevgep33, %scevgep36
  %bound152 = icmp ult ptr %scevgep35, %scevgep34
  %found.conflict53 = and i1 %bound051, %bound152
  %i.dz = or i1 %found.conflict53, %stride.check54
  %conflict.rdx56 = or i1 %conflict.rdx50, %i.dz
  %bound057 = icmp ult ptr %scevgep33, %scevgep38
  %bound158 = icmp ult ptr %scevgep37, %scevgep34
  %found.conflict59 = and i1 %bound057, %bound158
  %i.ea = or i1 %found.conflict59, %i.cb
  %conflict.rdx62 = or i1 %conflict.rdx56, %i.ea
  %bound063 = icmp ult ptr %scevgep35, %scevgep38
  %bound164 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict65 = and i1 %bound063, %bound164
  %i.eb = or i1 %found.conflict65, %i.cd
  %conflict.rdx68 = or i1 %conflict.rdx62, %i.eb
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %.lr.ph.us.us.us.i.preheader, %._crit_edge.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ %i.hf, %._crit_edge.us.us.us.i ], [ 1, %.lr.ph.us.us.us.i.preheader ] ; 4 uses
  %i.ec = mul nsw i64 %.07276.us.us.us.i, %i.k
  %i.ed = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.ec ; 8 uses
  %i.ee = sub nuw nsw i64 %i.b, %.07276.us.us.us.i
  %i.ef = mul nsw i64 %i.ee, %i.k
  %i.eg = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.ef ; 8 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.eh = add i64 %i.m, %index                    ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.eh ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ei, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.ej = fmul <2 x double> %wide.load, splat (double 5.000000e-01) ; 2 uses
  %i.ek = sub nsw i64 %i.k, %i.eh                 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.em, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.en = fmul <2 x double> %wide.load69, splat (double 5.000000e-01) ; 2 uses
  %reverse = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.eo, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ep = fmul <2 x double> %wide.load70, splat (double 5.000000e-01) ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ek
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.er, align 8, !tbaa !33, !alias.scope !82
  %i.es = fmul <2 x double> %wide.load71, splat (double 5.000000e-01) ; 2 uses
  %reverse72 = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.et = fadd <2 x double> %i.ej, %reverse
  store <2 x double> %i.et, ptr %i.ei, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.eu = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse73 = fsub <2 x double> %i.en, %i.eu
  store <2 x double> %reverse73, ptr %i.em, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.ev = fadd <2 x double> %i.ep, %reverse72
  store <2 x double> %i.ev, ptr %i.eo, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ew = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = fsub <2 x double> %i.es, %i.ew
  store <2 x double> %reverse74, ptr %i.er, align 8, !tbaa !33, !alias.scope !82
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.ce, %middle.block ], [ %i.m, %.lr.ph.us.us.us.i ] ; 5 uses
  %i.ey = sub i64 %i.bg, %.07375.us.us.us.i.ph
  %.neg = add i64 %.07375.us.us.us.i.ph, 1
  %xtraiter81 = and i64 %i.ey, 1
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol
end_hunk_0
