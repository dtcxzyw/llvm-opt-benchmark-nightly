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
  %lcmp.mod94 = trunc i64 %i.m to i1
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
  tail call void @llvm.assume(i1 %lcmp.mod94)
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
  %2 = mul i64 %i.dm, -8
  %3 = shl i64 %i.dm, 3                           ; 2 uses
  %i.ee = shl i64 %i.ec, 3                        ; 3 uses
  %i.ef = add i64 %i.ee, 16
  %i.eg = mul i64 %i.dm, %i.ef
  %i.eh = add i64 %i.eg, 8
  %i.ei = shl i64 %i.dr, 3                        ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = shl i64 %i.dp, 3
  %i.el = shl i64 %i.dm, 4
  %i.em = or disjoint i64 %i.el, 8
  %i.en = add i64 %i.dr, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.en) ; 2 uses
  %i.eo = shl i64 %smax, 3                        ; 3 uses
  %i.ep = sub i64 %i.em, %i.eo
  %i.eq = shl i64 %i.dl, 3                        ; 2 uses
  %i.er = add i64 %i.eq, -8
  %i.es = sub i64 %i.er, %i.ee
  %i.et = mul i64 %i.dm, %i.es
  %i.eu = mul i64 %i.dm, %i.dy
  %i.ev = add i64 %i.eu, %i.dr
  %i.ew = shl i64 %i.ev, 3
  %i.ex = sub i64 %i.eq, %i.ee
  %i.ey = mul i64 %i.dm, %i.ex
  %i.ez = add i64 %i.ey, 8
  %i.fa = sub i64 %i.ez, %i.ei
  %i.fb = mul i64 %i.dm, %i.dl
  %i.fc = shl i64 %i.fb, 3
  %i.fd = add i64 %i.fc, 8
  %i.fe = sub i64 %i.fd, %i.eo
  %i.ff = mul i64 %i.dm, %i.ec
  %i.fg = add i64 %i.dm, %smax
  %i.fh = add i64 %i.ff, %i.fg
  %i.fi = shl i64 %i.fh, 3
  %i.fj = getelementptr i8, ptr %1, i64 %i.ej
  %i.fk = getelementptr i8, ptr %1, i64 %i.ep
  %i.fl = getelementptr i8, ptr %1, i64 %i.et
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.eo
  %i.fn = getelementptr i8, ptr %1, i64 %i.ew
  %i.fo = getelementptr i8, ptr %1, i64 %i.fa
  %i.fp = getelementptr i8, ptr %1, i64 %i.fe
  %i.fq = getelementptr i8, ptr %1, i64 %i.fi
  %i.fr = getelementptr i8, ptr %1, i64 %3
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.ei
  %i.ft = add i64 %i.dr, 1
  %i.fu = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.ft)
  %i.fv = sub i64 %i.fu, %i.dr                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.fv, 7
  %ident.check.not = icmp eq i64 %i.dn, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fw = or i64 %2, %3
  %i.fx = icmp slt i64 %i.fw, 0
  %n.vec = and i64 %i.fv, -2                      ; 3 uses
  %i.fy = add i64 %i.dr, %n.vec
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  %xtraiter99 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %i.fz = icmp ult i64 %i.ds, 8
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %swapri.exit.us.us.us.i.loopexit, %.preheader.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.jc, %swapri.exit.us.us.us.i.loopexit ], [ %1, %.preheader.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.jb, %swapri.exit.us.us.us.i.loopexit ], [ 0, %.preheader.us.us.us.preheader.i ] ; 2 uses
  %i.ga = mul i64 %i.ek, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.fj, i64 %i.ga ; 3 uses
  %scevgep59 = getelementptr i8, ptr %i.fk, i64 %i.ga ; 3 uses
  %scevgep60 = getelementptr i8, ptr %i.fm, i64 %i.ga ; 3 uses
  %scevgep61 = getelementptr i8, ptr %i.fn, i64 %i.ga ; 3 uses
  %scevgep62 = getelementptr i8, ptr %i.fo, i64 %i.ga ; 3 uses
  %scevgep63 = getelementptr i8, ptr %i.fp, i64 %i.ga ; 3 uses
  %scevgep64 = getelementptr i8, ptr %i.fq, i64 %i.ga ; 3 uses
  %scevgep65 = getelementptr i8, ptr %i.fs, i64 %i.ga ; 3 uses
  %bound0 = icmp ult ptr %scevgep65, %scevgep62
  %bound1 = icmp ult ptr %scevgep63, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  %i.gb = or i1 %found.conflict, %i.fx
  %bound067 = icmp ult ptr %scevgep65, %scevgep60
  %bound168 = icmp ult ptr %scevgep61, %scevgep64
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %i.gb, %found.conflict69
  %bound070 = icmp ult ptr %scevgep65, %scevgep
  %bound171 = icmp ult ptr %scevgep59, %scevgep64
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %scevgep63, %scevgep60
  %bound175 = icmp ult ptr %scevgep61, %scevgep62
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %scevgep63, %scevgep
  %bound179 = icmp ult ptr %scevgep59, %scevgep62
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %bound082 = icmp ult ptr %scevgep61, %scevgep
  %bound183 = icmp ult ptr %scevgep59, %scevgep60
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %._crit_edge.us.us.us.i, %.preheader.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ 1, %.preheader.us.us.us.i ], [ %i.hk, %._crit_edge.us.us.us.i ] ; 4 uses
  %i.gc = mul nsw i64 %.07276.us.us.us.i, %i.dq
  %i.gd = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gc ; 4 uses
  %i.ge = sub nuw nsw i64 %i.dl, %.07276.us.us.us.i
  %i.gf = mul nsw i64 %i.ge, %i.dq
  %i.gg = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gf ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.gh = add i64 %i.dr, %index                   ; 3 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gh ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gi, align 8, !tbaa !33, !alias.scope !60, !noalias !61 ; 2 uses
  %i.gj = sub nsw i64 %i.dq, %i.gh                ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -8 ; 2 uses
  %wide.load86 = load <2 x double>, ptr %i.gl, align 8, !tbaa !33, !alias.scope !62, !noalias !63 ; 2 uses
  %reverse = shufflevector <2 x double> %wide.load86, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gh ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.gm, align 8, !tbaa !33, !alias.scope !64, !noalias !65 ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gj
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8 ; 2 uses
  %wide.load88 = load <2 x double>, ptr %i.go, align 8, !tbaa !33, !alias.scope !65 ; 2 uses
  %reverse89 = shufflevector <2 x double> %wide.load88, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = fsub <2 x double> %wide.load, %reverse
  store <2 x double> %i.gp, ptr %i.gi, align 8, !tbaa !33, !alias.scope !60, !noalias !61
  %i.gq = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse90 = fadd <2 x double> %i.gq, %wide.load86
  store <2 x double> %reverse90, ptr %i.gl, align 8, !tbaa !33, !alias.scope !62, !noalias !63
  %i.gr = fsub <2 x double> %wide.load87, %reverse89
  store <2 x double> %i.gr, ptr %i.gm, align 8, !tbaa !33, !alias.scope !64, !noalias !65
  %i.gs = shufflevector <2 x double> %wide.load87, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse91 = fadd <2 x double> %i.gs, %wide.load88
  store <2 x double> %reverse91, ptr %i.go, align 8, !tbaa !33, !alias.scope !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.fy, %middle.block ], [ %i.dr, %.lr.ph.us.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.hi, %scalar.ph ], [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gu = mul nsw i64 %.07375.us.us.us.i, %i.dn   ; 3 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gu ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !33 ; 2 uses
  %i.gx = sub nsw i64 %i.dq, %i.gu                ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gx ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !33 ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gu ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !33 ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gx ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !33 ; 2 uses
  %i.he = fsub double %i.gw, %i.gz
  store double %i.he, ptr %i.gv, align 8, !tbaa !33
  %i.hf = fadd double %i.gw, %i.gz
  store double %i.hf, ptr %i.gy, align 8, !tbaa !33
  %i.hg = fsub double %i.hb, %i.hd
  store double %i.hg, ptr %i.ha, align 8, !tbaa !33
  %i.hh = fadd double %i.hb, %i.hd
  store double %i.hh, ptr %i.hc, align 8, !tbaa !33
  %i.hi = add nsw i64 %.07375.us.us.us.i, 1       ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %i.dt
  br i1 %i.hj, label %scalar.ph, label %._crit_edge.us.us.us.i, !llvm.loop !55

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph, %middle.block
  %i.hk = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond92.not.i = icmp eq i64 %.07276.us.us.us.i, %i.ed
  br i1 %exitcond92.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !56

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge78.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.hl, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %._crit_edge78.us.us.us.i ] ; 3 uses
  %i.hl = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.hm = mul nsw i64 %i.hl, %i.dq
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.hm ; 2 uses
  %i.hn = sub nuw nsw i64 %i.dl, %.036.i.us.us.us.i
  %i.ho = mul nsw i64 %i.hn, %i.dq
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ho ; 2 uses
  br i1 %lcmp.mod100.not, label %.prol.loopexit98, label %.prol.preheader97

.prol.preheader97:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader97
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.hr, %.prol.preheader97 ], [ %i.dr, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.ht, %.prol.preheader97 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.hs, %.prol.preheader97 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.prol.preheader97 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.hp = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.hq = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.hq, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.hp, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.hr = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.prol.loopexit98, label %.prol.preheader97, !llvm.loop !57

.prol.loopexit98:                                 ; preds = %.prol.preheader97, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.dr, %.lr.ph.i.us.us.us.i ], [ %i.hr, %.prol.preheader97 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.ht, %.prol.preheader97 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.hs, %.prol.preheader97 ]
  br i1 %i.fz, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit98, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.iy, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit98 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.ja, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit98 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.iz, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit98 ] ; 3 uses
  %i.hu = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.hv = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.hv, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.hu, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.hw = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.hy = load double, ptr %i.hw, align 8, !tbaa !33
  %i.hz = load double, ptr %i.hx, align 8, !tbaa !33
  store double %i.hz, ptr %i.hw, align 8, !tbaa !33
  store double %i.hy, ptr %i.hx, align 8, !tbaa !33
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.dx ; 3 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.dx ; 3 uses
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !33
  %i.id = load double, ptr %i.ib, align 8, !tbaa !33
  store double %i.id, ptr %i.ia, align 8, !tbaa !33
  store double %i.ic, ptr %i.ib, align 8, !tbaa !33
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.dx ; 3 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.dx ; 3 uses
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !33
  %i.ih = load double, ptr %i.if, align 8, !tbaa !33
  store double %i.ih, ptr %i.ie, align 8, !tbaa !33
  store double %i.ig, ptr %i.if, align 8, !tbaa !33
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.dx ; 3 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.dx ; 3 uses
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !33
  %i.il = load double, ptr %i.ij, align 8, !tbaa !33
  store double %i.il, ptr %i.ii, align 8, !tbaa !33
  store double %i.ik, ptr %i.ij, align 8, !tbaa !33
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.dx ; 3 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.dx ; 3 uses
  %i.io = load double, ptr %i.im, align 8, !tbaa !33
  %i.ip = load double, ptr %i.in, align 8, !tbaa !33
  store double %i.ip, ptr %i.im, align 8, !tbaa !33
  store double %i.io, ptr %i.in, align 8, !tbaa !33
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.dx ; 3 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.dx ; 3 uses
  %i.is = load double, ptr %i.iq, align 8, !tbaa !33
  %i.it = load double, ptr %i.ir, align 8, !tbaa !33
  store double %i.it, ptr %i.iq, align 8, !tbaa !33
  store double %i.is, ptr %i.ir, align 8, !tbaa !33
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.dx ; 3 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.dx ; 3 uses
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !33
  %i.ix = load double, ptr %i.iv, align 8, !tbaa !33
  store double %i.ix, ptr %i.iu, align 8, !tbaa !33
  store double %i.iw, ptr %i.iv, align 8, !tbaa !33
  %i.iy = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.dx
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.dx
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.iy, %i.dt
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit98
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.dz
  br i1 %exitcond40.not.i.us.us.us.i, label %swapri.exit.us.us.us.i.loopexit, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

swapri.exit.us.us.us.i.loopexit:                  ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %i.jb = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp
  %exitcond93.not.i = icmp eq i64 %i.jb, %i.do
  br i1 %exitcond93.not.i, label %reorder_dit.exit, label %.preheader.us.us.us.i, !llvm.loop !58

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.jd = icmp slt i64 %i.ds, 1
  %i.je = icmp slt i64 %i.dl, 1
  %brmerge87.i = select i1 %i.je, i1 true, i1 %i.jd
  br i1 %brmerge87.i, label %reorder_dit.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.jf = mul nsw i64 %i.dq, %i.dl
  %i.jg = add nsw i64 %i.ds, -1
  %xtraiter95 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  %i.jh = icmp ult i64 %i.jg, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i
  %.080.i = phi ptr [ %i.jo, %..loopexit_crit_edge.i.i ], [ %1, %.preheader.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.jn, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.dq ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.jf ; 2 uses
  br i1 %lcmp.mod96.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.jk, %.prol.preheader ], [ %i.dr, %.preheader.i ]
  %.03034.i.i.prol = phi ptr [ %i.jm, %.prol.preheader ], [ %gep39.i.i, %.preheader.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.jl, %.prol.preheader ], [ %gep.i.i, %.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %i.ji = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.jj = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.jj, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.ji, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.jk = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.dx ; 2 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.dx ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter95
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.02935.i.i.unr = phi i64 [ %i.dr, %.preheader.i ], [ %i.jk, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.preheader.i ], [ %i.jm, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.preheader.i ], [ %i.jl, %.prol.preheader ]
  br i1 %i.jh, label %..loopexit_crit_edge.i.i, label %.preheader.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.preheader.i.new, %.prol.loopexit
  %i.jn = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.dp
  %exitcond.not.i18 = icmp eq i64 %i.jn, %i.do
  br i1 %exitcond.not.i18, label %reorder_dit.exit, label %.preheader.i, !llvm.loop !58

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %.02935.i.i = phi i64 [ %i.kt, %.preheader.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.kv, %.preheader.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.ku, %.preheader.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.jp = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.jq = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.jq, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.jp, ptr %.03034.i.i, align 8, !tbaa !33
  %i.jr = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.dx ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.dx ; 3 uses
  %i.jt = load double, ptr %i.jr, align 8, !tbaa !33
  %i.ju = load double, ptr %i.js, align 8, !tbaa !33
  store double %i.ju, ptr %i.jr, align 8, !tbaa !33
  store double %i.jt, ptr %i.js, align 8, !tbaa !33
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.dx ; 3 uses
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.dx ; 3 uses
  %i.jx = load double, ptr %i.jv, align 8, !tbaa !33
  %i.jy = load double, ptr %i.jw, align 8, !tbaa !33
  store double %i.jy, ptr %i.jv, align 8, !tbaa !33
  store double %i.jx, ptr %i.jw, align 8, !tbaa !33
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.dx ; 3 uses
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.dx ; 3 uses
  %i.kb = load double, ptr %i.jz, align 8, !tbaa !33
  %i.kc = load double, ptr %i.ka, align 8, !tbaa !33
  store double %i.kc, ptr %i.jz, align 8, !tbaa !33
  store double %i.kb, ptr %i.ka, align 8, !tbaa !33
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.dx ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.dx ; 3 uses
  %i.kf = load double, ptr %i.kd, align 8, !tbaa !33
  %i.kg = load double, ptr %i.ke, align 8, !tbaa !33
  store double %i.kg, ptr %i.kd, align 8, !tbaa !33
  store double %i.kf, ptr %i.ke, align 8, !tbaa !33
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.dx ; 3 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.dx ; 3 uses
  %i.kj = load double, ptr %i.kh, align 8, !tbaa !33
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !33
  store double %i.kk, ptr %i.kh, align 8, !tbaa !33
  store double %i.kj, ptr %i.ki, align 8, !tbaa !33
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.dx ; 3 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.dx ; 3 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !33
  %i.ko = load double, ptr %i.km, align 8, !tbaa !33
  store double %i.ko, ptr %i.kl, align 8, !tbaa !33
  store double %i.kn, ptr %i.km, align 8, !tbaa !33
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.dx ; 3 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.dx ; 3 uses
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !33
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !33
  store double %i.ks, ptr %i.kp, align 8, !tbaa !33
  store double %i.kr, ptr %i.kq, align 8, !tbaa !33
  %i.kt = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.dx
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.dx
  %exitcond.not.i.i.7 = icmp eq i64 %i.kt, %i.dt
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
  br i1 %i.q, label %.lr.ph83.i, label %reorder_dif.exit

.lr.ph83.i:                                       ; preds = %bb.a
  %i.r = mul i64 %i.f, %i.m
  %factor.op.mul.i.reass.i = sub i64 0, %i.r      ; 2 uses
  %i.s = sub i64 0, %i.f                          ; 36 uses
  %i.t = add i64 %i.b, -1                         ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = icmp sgt i64 %i.b, 2
  br i1 %i.v, label %.lr.ph83.split.us.i, label %.lr.ph83.split.i

.lr.ph83.split.us.i:                              ; preds = %.lr.ph83.i
  %i.w = icmp sgt i64 %i.o, 0
  br i1 %i.w, label %.lr.ph37.i.us.us.us.preheader.i, label %reorder_dif.exit

.lr.ph37.i.us.us.us.preheader.i:                  ; preds = %.lr.ph83.split.us.i
  %i.x = add nsw i64 %i.b, -3
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %2 = mul i64 %i.d, -8
  %3 = shl i64 %i.d, 3                            ; 2 uses
  %i.aa = shl i64 %i.y, 3                         ; 4 uses
  %i.ab = add i64 %i.aa, 16
  %i.ac = mul i64 %i.d, %i.ab
  %i.ad = add i64 %i.ac, 8
  %i.ae = shl i64 %i.m, 3                         ; 7 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl i64 %i.j, 3
  %i.ah = shl i64 %i.d, 4
  %i.ai = or disjoint i64 %i.ah, 8
  %i.aj = shl i64 %i.o, 3                         ; 4 uses
  %i.ak = add i64 %i.aj, %i.ae
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = shl i64 %i.b, 3                         ; 2 uses
  %i.an = add i64 %i.am, -8
  %i.ao = sub i64 %i.an, %i.aa
  %i.ap = mul i64 %i.d, %i.ao
  %i.aq = mul i64 %i.d, %i.t
  %i.ar = add i64 %i.aq, %i.m
  %i.as = shl i64 %i.ar, 3
  %i.at = sub i64 %i.am, %i.aa
  %i.au = mul i64 %i.d, %i.at
  %i.av = add i64 %i.au, 8
  %i.aw = sub i64 %i.av, %i.ae
  %i.ax = mul i64 %i.d, %i.b
  %i.ay = shl i64 %i.ax, 3
  %i.az = add i64 %i.ay, 8
  %i.ba = add i64 %i.aj, %i.ae
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = add i64 %i.aa, 8
  %i.bd = mul i64 %i.d, %i.bc
  %i.be = add i64 %i.o, %i.m
  %i.bf = add i64 %i.o, %i.m
  %i.bg = getelementptr i8, ptr %1, i64 %i.af
  %i.bh = getelementptr i8, ptr %1, i64 %i.al
  %i.bi = getelementptr i8, ptr %1, i64 %i.ap
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.aj
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.ae
  %i.bl = getelementptr i8, ptr %1, i64 %i.as
  %i.bm = getelementptr i8, ptr %1, i64 %i.aw
  %i.bn = getelementptr i8, ptr %1, i64 %i.bb
  %i.bo = getelementptr i8, ptr %1, i64 %i.bd
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.aj
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.ae
  %i.br = getelementptr i8, ptr %1, i64 %3
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.ae
  %xtraiter95 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  %i.bt = icmp ult i64 %i.o, 8
  %min.iters.check = icmp ugt i64 %i.o, 5
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.bu = or i64 %2, %3
  %i.bv = icmp slt i64 %i.bu, 0
  %n.vec = and i64 %i.o, 9223372036854775806      ; 3 uses
  %i.bw = add i64 %i.m, %n.vec
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph37.i.us.us.us.i

.lr.ph37.i.us.us.us.i:                            ; preds = %._crit_edge78.us.us.us.i, %.lr.ph37.i.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.gu, %._crit_edge78.us.us.us.i ], [ %1, %.lr.ph37.i.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.gt, %._crit_edge78.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.preheader.i ] ; 2 uses
  %i.bx = mul i64 %i.ag, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.bx ; 3 uses
  %scevgep59 = getelementptr i8, ptr %i.bh, i64 %i.bx ; 3 uses
  %scevgep60 = getelementptr i8, ptr %i.bk, i64 %i.bx ; 3 uses
  %scevgep61 = getelementptr i8, ptr %i.bl, i64 %i.bx ; 3 uses
  %scevgep62 = getelementptr i8, ptr %i.bm, i64 %i.bx ; 3 uses
  %scevgep63 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 3 uses
  %scevgep64 = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %scevgep65 = getelementptr i8, ptr %i.bs, i64 %i.bx ; 3 uses
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph37.i.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.by, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.i ] ; 3 uses
  %i.by = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.k
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.bz ; 2 uses
  %i.ca = sub nuw nsw i64 %i.b, %.036.i.us.us.us.i
  %i.cb = mul nsw i64 %i.ca, %i.k
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.cb ; 2 uses
  br i1 %lcmp.mod96.not, label %.prol.loopexit94, label %.prol.preheader93

.prol.preheader93:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader93
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.ce, %.prol.preheader93 ], [ %i.m, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.cg, %.prol.preheader93 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.cf, %.prol.preheader93 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.prol.preheader93 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.cc = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cd = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.cd, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.cc, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.ce = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.prol.loopexit94, label %.prol.preheader93, !llvm.loop !66

.prol.loopexit94:                                 ; preds = %.prol.preheader93, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.m, %.lr.ph.i.us.us.us.i ], [ %i.ce, %.prol.preheader93 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.cg, %.prol.preheader93 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.cf, %.prol.preheader93 ]
  br i1 %i.bt, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit94, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.dl, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit94 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.dn, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit94 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.dm, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit94 ] ; 3 uses
  %i.ch = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.ci = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ci, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ch, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.cj = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !33
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !33
  store double %i.cm, ptr %i.cj, align 8, !tbaa !33
  store double %i.cl, ptr %i.ck, align 8, !tbaa !33
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.s ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.s ; 3 uses
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !33
  %i.cq = load double, ptr %i.co, align 8, !tbaa !33
  store double %i.cq, ptr %i.cn, align 8, !tbaa !33
  store double %i.cp, ptr %i.co, align 8, !tbaa !33
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.s ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.s ; 3 uses
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
  %i.dl = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.s
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.s
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.dl, %i.p
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit94
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.u
  br i1 %exitcond40.not.i.us.us.us.i, label %.lr.ph.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

.lr.ph.us.us.us.i.preheader:                      ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %bound0 = icmp ult ptr %scevgep65, %scevgep62
  %bound1 = icmp ult ptr %scevgep63, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  %i.do = or i1 %found.conflict, %i.bv
  %bound067 = icmp ult ptr %scevgep65, %scevgep60
  %bound168 = icmp ult ptr %scevgep61, %scevgep64
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %i.do, %found.conflict69
  %bound070 = icmp ult ptr %scevgep65, %scevgep
  %bound171 = icmp ult ptr %scevgep59, %scevgep64
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %scevgep63, %scevgep60
  %bound175 = icmp ult ptr %scevgep61, %scevgep62
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %scevgep63, %scevgep
  %bound179 = icmp ult ptr %scevgep59, %scevgep62
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %bound082 = icmp ult ptr %scevgep61, %scevgep
  %bound183 = icmp ult ptr %scevgep59, %scevgep60
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %.lr.ph.us.us.us.i.preheader, %._crit_edge.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ %i.gs, %._crit_edge.us.us.us.i ], [ 1, %.lr.ph.us.us.us.i.preheader ] ; 4 uses
  %i.dp = mul nsw i64 %.07276.us.us.us.i, %i.k
  %i.dq = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp ; 8 uses
  %i.dr = sub nuw nsw i64 %i.b, %.07276.us.us.us.i
  %i.ds = mul nsw i64 %i.dr, %i.k
  %i.dt = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.ds ; 8 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.du = add i64 %i.m, %index                    ; 3 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.du ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dv, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.dw = fmul <2 x double> %wide.load, splat (double 5.000000e-01) ; 2 uses
  %i.dx = sub nsw i64 %i.k, %i.du                 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 2 uses
  %wide.load86 = load <2 x double>, ptr %i.dz, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.ea = fmul <2 x double> %wide.load86, splat (double 5.000000e-01) ; 2 uses
  %reverse = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.du ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.eb, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ec = fmul <2 x double> %wide.load87, splat (double 5.000000e-01) ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dx
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 2 uses
  %wide.load88 = load <2 x double>, ptr %i.ee, align 8, !tbaa !33, !alias.scope !82
  %i.ef = fmul <2 x double> %wide.load88, splat (double 5.000000e-01) ; 2 uses
  %reverse89 = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = fadd <2 x double> %i.dw, %reverse
  store <2 x double> %i.eg, ptr %i.dv, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.eh = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse90 = fsub <2 x double> %i.ea, %i.eh
  store <2 x double> %reverse90, ptr %i.dz, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.ei = fadd <2 x double> %i.ec, %reverse89
  store <2 x double> %i.ei, ptr %i.eb, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ej = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse91 = fsub <2 x double> %i.ef, %i.ej
  store <2 x double> %reverse91, ptr %i.ee, align 8, !tbaa !33, !alias.scope !82
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.bw, %middle.block ], [ %i.m, %.lr.ph.us.us.us.i ] ; 5 uses
  %i.el = sub i64 %i.be, %.07375.us.us.us.i.ph
  %.neg = add i64 %.07375.us.us.us.i.ph, 1
  %xtraiter98 = and i64 %i.el, 1
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.em = mul nsw i64 %.07375.us.us.us.i.ph, %i.f ; 3 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.em ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !33
end_hunk_0
