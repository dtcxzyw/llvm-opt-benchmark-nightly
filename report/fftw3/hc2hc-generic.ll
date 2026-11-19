Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2hc-generic?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@destroy:bb.a
}

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare ptr @fftw_mktensor_3d(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_hc2hc(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_dit(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 5 uses
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
  %i.ee = shl i64 %i.ec, 3                        ; 3 uses
  %i.ef = add i64 %i.ee, 16
  %i.eg = mul i64 %i.dm, %i.ef
  %i.eh = add i64 %i.eg, 8
  %i.ei = shl i64 %i.dr, 3                        ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = shl i64 %i.dp, 3
  %2 = shl i64 %i.dm, 4
  %3 = or disjoint i64 %2, 8
  %i.el = add i64 %i.dr, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.el) ; 2 uses
  %i.em = shl i64 %smax, 3                        ; 3 uses
  %4 = sub i64 %3, %i.em
  %i.en = shl i64 %i.dl, 3                        ; 2 uses
  %i.eo = add i64 %i.en, -8
  %i.ep = sub i64 %i.eo, %i.ee
  %5 = mul i64 %i.dm, %i.ep
  %6 = mul i64 %i.dm, %i.dy
  %i.eq = add i64 %6, %i.dr
  %i.er = shl i64 %i.eq, 3
  %i.es = mul i64 %i.dm, -8
  %i.et = shl i64 %i.dm, 3                        ; 2 uses
  %i.eu = sub i64 %i.en, %i.ee
  %i.ev = mul i64 %i.dm, %i.eu
  %i.ew = add i64 %i.ev, 8
  %i.ex = sub i64 %i.ew, %i.ei
  %i.ey = mul i64 %i.dm, %i.dl
  %i.ez = shl i64 %i.ey, 3
  %7 = add i64 %i.ez, 8
  %8 = sub i64 %7, %i.em
  %9 = mul i64 %i.dm, %i.ec
  %10 = add i64 %i.dm, %smax
  %11 = add i64 %9, %10
  %12 = shl i64 %11, 3
  %i.fa = getelementptr i8, ptr %1, i64 %i.ej
  %i.fb = getelementptr i8, ptr %1, i64 %4
  %i.fc = getelementptr i8, ptr %1, i64 %5
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.em
  %i.fe = getelementptr i8, ptr %1, i64 %i.er
  %i.ff = getelementptr i8, ptr %1, i64 %i.ex
  %i.fg = getelementptr i8, ptr %1, i64 %8
  %i.fh = getelementptr i8, ptr %1, i64 %12
  %i.fi = getelementptr i8, ptr %1, i64 %i.et
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.ei
  %i.fk = add i64 %i.dr, 1
  %i.fl = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.fk)
  %i.fm = sub i64 %i.fl, %i.dr                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.fm, 7
  %ident.check.not = icmp eq i64 %i.dn, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fn = or i64 %i.es, %i.et
  %i.fo = icmp slt i64 %i.fn, 0
  %n.vec = and i64 %i.fm, -2                      ; 3 uses
  %i.fp = add i64 %i.dr, %n.vec
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  %xtraiter99 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %i.fq = icmp ult i64 %i.ds, 8
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %swapri.exit.us.us.us.i.loopexit, %.preheader.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.it, %swapri.exit.us.us.us.i.loopexit ], [ %1, %.preheader.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.is, %swapri.exit.us.us.us.i.loopexit ], [ 0, %.preheader.us.us.us.preheader.i ] ; 2 uses
  %i.fr = mul i64 %i.ek, %.07179.us.us.us.i       ; 8 uses
  %scevgep.a = getelementptr i8, ptr %i.fa, i64 %i.fr ; 3 uses
  %scevgep59 = getelementptr i8, ptr %i.fb, i64 %i.fr ; 3 uses
  %scevgep60 = getelementptr i8, ptr %i.fd, i64 %i.fr ; 3 uses
  %scevgep61 = getelementptr i8, ptr %i.fe, i64 %i.fr ; 3 uses
  %scevgep62 = getelementptr i8, ptr %i.ff, i64 %i.fr ; 3 uses
  %scevgep63.a = getelementptr i8, ptr %i.fg, i64 %i.fr ; 3 uses
  %scevgep64.a = getelementptr i8, ptr %i.fh, i64 %i.fr ; 3 uses
  %scevgep65.a = getelementptr i8, ptr %i.fj, i64 %i.fr ; 3 uses
  %bound0 = icmp ult ptr %scevgep65.a, %scevgep62
  %bound1 = icmp ult ptr %scevgep63.a, %scevgep64.a
  %found.conflict = and i1 %bound0, %bound1
  %i.fs = or i1 %found.conflict, %i.fo
  %bound067 = icmp ult ptr %scevgep65.a, %scevgep60
  %bound168 = icmp ult ptr %scevgep61, %scevgep64.a
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %i.fs, %found.conflict69
  %bound070 = icmp ult ptr %scevgep65.a, %scevgep.a
  %bound171 = icmp ult ptr %scevgep59, %scevgep64.a
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %scevgep63.a, %scevgep60
  %bound175 = icmp ult ptr %scevgep61, %scevgep62
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %scevgep63.a, %scevgep.a
  %bound179 = icmp ult ptr %scevgep59, %scevgep62
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %bound082 = icmp ult ptr %scevgep61, %scevgep.a
  %bound183 = icmp ult ptr %scevgep59, %scevgep60
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %._crit_edge.us.us.us.i, %.preheader.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ 1, %.preheader.us.us.us.i ], [ %i.hb, %._crit_edge.us.us.us.i ] ; 4 uses
  %i.ft = mul nsw i64 %.07276.us.us.us.i, %i.dq
  %i.fu = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.ft ; 4 uses
  %i.fv = sub nuw nsw i64 %i.dl, %.07276.us.us.us.i
  %i.fw = mul nsw i64 %i.fv, %i.dq
  %i.fx = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.fw ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.fy = add i64 %i.dr, %index                   ; 3 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fy ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fz, align 8, !tbaa !33, !alias.scope !60, !noalias !61 ; 2 uses
  %i.ga = sub nsw i64 %i.dq, %i.fy                ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8 ; 2 uses
  %wide.load86 = load <2 x double>, ptr %i.gc, align 8, !tbaa !33, !alias.scope !62, !noalias !63 ; 2 uses
  %reverse = shufflevector <2 x double> %wide.load86, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.gd, align 8, !tbaa !33, !alias.scope !64, !noalias !65 ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.ga
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8 ; 2 uses
  %wide.load88 = load <2 x double>, ptr %i.gf, align 8, !tbaa !33, !alias.scope !65 ; 2 uses
  %reverse89 = shufflevector <2 x double> %wide.load88, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = fsub <2 x double> %wide.load, %reverse
  store <2 x double> %i.gg, ptr %i.fz, align 8, !tbaa !33, !alias.scope !60, !noalias !61
  %i.gh = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse90 = fadd <2 x double> %i.gh, %wide.load86
  store <2 x double> %reverse90, ptr %i.gc, align 8, !tbaa !33, !alias.scope !62, !noalias !63
  %i.gi = fsub <2 x double> %wide.load87, %reverse89
  store <2 x double> %i.gi, ptr %i.gd, align 8, !tbaa !33, !alias.scope !64, !noalias !65
  %i.gj = shufflevector <2 x double> %wide.load87, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse91 = fadd <2 x double> %i.gj, %wide.load88
  store <2 x double> %reverse91, ptr %i.gf, align 8, !tbaa !33, !alias.scope !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.fp, %middle.block ], [ %i.dr, %.lr.ph.us.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.gz, %scalar.ph ], [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gl = mul nsw i64 %.07375.us.us.us.i, %i.dn   ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !33 ; 2 uses
  %i.go = sub nsw i64 %i.dq, %i.gl                ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.go ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !33 ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gl ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !33 ; 2 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.go ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !33 ; 2 uses
  %i.gv = fsub double %i.gn, %i.gq
  store double %i.gv, ptr %i.gm, align 8, !tbaa !33
  %i.gw = fadd double %i.gn, %i.gq
  store double %i.gw, ptr %i.gp, align 8, !tbaa !33
  %i.gx = fsub double %i.gs, %i.gu
  store double %i.gx, ptr %i.gr, align 8, !tbaa !33
  %i.gy = fadd double %i.gs, %i.gu
  store double %i.gy, ptr %i.gt, align 8, !tbaa !33
  %i.gz = add nsw i64 %.07375.us.us.us.i, 1       ; 2 uses
  %i.ha = icmp slt i64 %i.gz, %i.dt
  br i1 %i.ha, label %scalar.ph, label %._crit_edge.us.us.us.i, !llvm.loop !55

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph, %middle.block
  %i.hb = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond92.not.i = icmp eq i64 %.07276.us.us.us.i, %i.ed
  br i1 %exitcond92.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !56

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge78.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.hc, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %._crit_edge78.us.us.us.i ] ; 3 uses
  %i.hc = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.hd = mul nsw i64 %i.hc, %i.dq
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.hd ; 2 uses
  %i.he = sub nuw nsw i64 %i.dl, %.036.i.us.us.us.i
  %i.hf = mul nsw i64 %i.he, %i.dq
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.hf ; 2 uses
  br i1 %lcmp.mod100.not, label %.prol.loopexit98, label %.prol.preheader97

.prol.preheader97:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader97
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.hi, %.prol.preheader97 ], [ %i.dr, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.hk, %.prol.preheader97 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.hj, %.prol.preheader97 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.prol.preheader97 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.hg = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.hh = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.hh, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.hg, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.hi = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.prol.loopexit98, label %.prol.preheader97, !llvm.loop !57

.prol.loopexit98:                                 ; preds = %.prol.preheader97, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.dr, %.lr.ph.i.us.us.us.i ], [ %i.hi, %.prol.preheader97 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.hk, %.prol.preheader97 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.hj, %.prol.preheader97 ]
  br i1 %i.fq, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit98, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.ip, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit98 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.ir, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit98 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.iq, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit98 ] ; 3 uses
  %i.hl = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.hm = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.hm, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.hl, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.hn = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.hp = load double, ptr %i.hn, align 8, !tbaa !33
  %i.hq = load double, ptr %i.ho, align 8, !tbaa !33
  store double %i.hq, ptr %i.hn, align 8, !tbaa !33
  store double %i.hp, ptr %i.ho, align 8, !tbaa !33
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.dx ; 3 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.dx ; 3 uses
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !33
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !33
  store double %i.hu, ptr %i.hr, align 8, !tbaa !33
  store double %i.ht, ptr %i.hs, align 8, !tbaa !33
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.dx ; 3 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.dx ; 3 uses
  %i.hx = load double, ptr %i.hv, align 8, !tbaa !33
  %i.hy = load double, ptr %i.hw, align 8, !tbaa !33
  store double %i.hy, ptr %i.hv, align 8, !tbaa !33
  store double %i.hx, ptr %i.hw, align 8, !tbaa !33
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.dx ; 3 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.dx ; 3 uses
  %i.ib = load double, ptr %i.hz, align 8, !tbaa !33
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !33
  store double %i.ic, ptr %i.hz, align 8, !tbaa !33
  store double %i.ib, ptr %i.ia, align 8, !tbaa !33
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.dx ; 3 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.dx ; 3 uses
  %i.if = load double, ptr %i.id, align 8, !tbaa !33
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !33
  store double %i.ig, ptr %i.id, align 8, !tbaa !33
  store double %i.if, ptr %i.ie, align 8, !tbaa !33
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.dx ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.dx ; 3 uses
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !33
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !33
  store double %i.ik, ptr %i.ih, align 8, !tbaa !33
  store double %i.ij, ptr %i.ii, align 8, !tbaa !33
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.dx ; 3 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.dx ; 3 uses
  %i.in = load double, ptr %i.il, align 8, !tbaa !33
  %i.io = load double, ptr %i.im, align 8, !tbaa !33
  store double %i.io, ptr %i.il, align 8, !tbaa !33
  store double %i.in, ptr %i.im, align 8, !tbaa !33
  %i.ip = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.dx
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.dx
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.ip, %i.dt
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit98
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.dz
  br i1 %exitcond40.not.i.us.us.us.i, label %swapri.exit.us.us.us.i.loopexit, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

swapri.exit.us.us.us.i.loopexit:                  ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %i.is = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp
  %exitcond93.not.i = icmp eq i64 %i.is, %i.do
  br i1 %exitcond93.not.i, label %reorder_dit.exit, label %.preheader.us.us.us.i, !llvm.loop !58

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.iu = icmp slt i64 %i.ds, 1
  %i.iv = icmp slt i64 %i.dl, 1
  %brmerge87.i = select i1 %i.iv, i1 true, i1 %i.iu
  br i1 %brmerge87.i, label %reorder_dit.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.iw = mul nsw i64 %i.dq, %i.dl
  %i.ix = add nsw i64 %i.ds, -1
  %xtraiter95 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  %i.iy = icmp ult i64 %i.ix, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i
  %.080.i = phi ptr [ %i.jf, %..loopexit_crit_edge.i.i ], [ %1, %.preheader.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.je, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.dq ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.iw ; 2 uses
  br i1 %lcmp.mod96.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.jb, %.prol.preheader ], [ %i.dr, %.preheader.i ]
  %.03034.i.i.prol = phi ptr [ %i.jd, %.prol.preheader ], [ %gep39.i.i, %.preheader.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.jc, %.prol.preheader ], [ %gep.i.i, %.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %i.iz = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.ja = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.ja, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.iz, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.jb = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.dx ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.dx ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter95
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.02935.i.i.unr = phi i64 [ %i.dr, %.preheader.i ], [ %i.jb, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.preheader.i ], [ %i.jd, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.preheader.i ], [ %i.jc, %.prol.preheader ]
  br i1 %i.iy, label %..loopexit_crit_edge.i.i, label %.preheader.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.preheader.i.new, %.prol.loopexit
  %i.je = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.dp
  %exitcond.not.i18 = icmp eq i64 %i.je, %i.do
  br i1 %exitcond.not.i18, label %reorder_dit.exit, label %.preheader.i, !llvm.loop !58

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %.02935.i.i = phi i64 [ %i.kk, %.preheader.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.km, %.preheader.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.kl, %.preheader.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.jg = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.jh = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.jh, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.jg, ptr %.03034.i.i, align 8, !tbaa !33
  %i.ji = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.dx ; 3 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.dx ; 3 uses
  %i.jk = load double, ptr %i.ji, align 8, !tbaa !33
  %i.jl = load double, ptr %i.jj, align 8, !tbaa !33
  store double %i.jl, ptr %i.ji, align 8, !tbaa !33
  store double %i.jk, ptr %i.jj, align 8, !tbaa !33
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.dx ; 3 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.dx ; 3 uses
  %i.jo = load double, ptr %i.jm, align 8, !tbaa !33
  %i.jp = load double, ptr %i.jn, align 8, !tbaa !33
  store double %i.jp, ptr %i.jm, align 8, !tbaa !33
  store double %i.jo, ptr %i.jn, align 8, !tbaa !33
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.dx ; 3 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.dx ; 3 uses
  %i.js = load double, ptr %i.jq, align 8, !tbaa !33
  %i.jt = load double, ptr %i.jr, align 8, !tbaa !33
  store double %i.jt, ptr %i.jq, align 8, !tbaa !33
  store double %i.js, ptr %i.jr, align 8, !tbaa !33
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.dx ; 3 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.dx ; 3 uses
  %i.jw = load double, ptr %i.ju, align 8, !tbaa !33
  %i.jx = load double, ptr %i.jv, align 8, !tbaa !33
  store double %i.jx, ptr %i.ju, align 8, !tbaa !33
  store double %i.jw, ptr %i.jv, align 8, !tbaa !33
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.dx ; 3 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.dx ; 3 uses
  %i.ka = load double, ptr %i.jy, align 8, !tbaa !33
  %i.kb = load double, ptr %i.jz, align 8, !tbaa !33
  store double %i.kb, ptr %i.jy, align 8, !tbaa !33
  store double %i.ka, ptr %i.jz, align 8, !tbaa !33
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %i.dx ; 3 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.dx ; 3 uses
  %i.ke = load double, ptr %i.kc, align 8, !tbaa !33
  %i.kf = load double, ptr %i.kd, align 8, !tbaa !33
  store double %i.kf, ptr %i.kc, align 8, !tbaa !33
  store double %i.ke, ptr %i.kd, align 8, !tbaa !33
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.dx ; 3 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.dx ; 3 uses
  %i.ki = load double, ptr %i.kg, align 8, !tbaa !33
  %i.kj = load double, ptr %i.kh, align 8, !tbaa !33
  store double %i.kj, ptr %i.kg, align 8, !tbaa !33
  store double %i.ki, ptr %i.kh, align 8, !tbaa !33
  %i.kk = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.dx
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.dx
  %exitcond.not.i.i.7 = icmp eq i64 %i.kk, %i.dt
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
  %i.aa = shl i64 %i.y, 3                         ; 4 uses
  %i.ab = add i64 %i.aa, 16
  %i.ac = mul i64 %i.d, %i.ab
  %i.ad = add i64 %i.ac, 8
  %i.ae = shl i64 %i.m, 3                         ; 7 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl i64 %i.j, 3
  %i.ah = shl i64 %i.d, 4
  %2 = or disjoint i64 %i.ah, 8
  %i.ai = shl i64 %i.o, 3                         ; 4 uses
  %i.aj = add i64 %i.ai, %i.ae
  %i.ak = sub i64 %2, %i.aj
  %i.al = shl i64 %i.b, 3                         ; 2 uses
  %3 = add i64 %i.al, -8
  %i.am = sub i64 %3, %i.aa
  %4 = mul i64 %i.d, %i.am
  %5 = mul i64 %i.d, %i.t
  %6 = add i64 %5, %i.m
  %i.an = shl i64 %6, 3
  %7 = mul i64 %i.d, -8
  %8 = shl i64 %i.d, 3                            ; 2 uses
  %i.ao = sub i64 %i.al, %i.aa
  %i.ap = mul i64 %i.d, %i.ao
  %9 = add i64 %i.ap, 8
  %i.aq = sub i64 %9, %i.ae
  %i.ar = mul i64 %i.d, %i.b
  %10 = shl i64 %i.ar, 3
  %i.as = add i64 %10, 8
  %i.at = add i64 %i.ai, %i.ae
  %i.au = sub i64 %i.as, %i.at
  %i.av = add i64 %i.aa, 8
  %i.aw = mul i64 %i.d, %i.av
  %i.ax = add i64 %i.o, %i.m
  %i.ay = add i64 %i.o, %i.m
  %i.az = getelementptr i8, ptr %1, i64 %i.af
  %i.ba = getelementptr i8, ptr %1, i64 %i.ak
  %i.bb = getelementptr i8, ptr %1, i64 %4
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ai
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ae
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.aq
  %i.bg = getelementptr i8, ptr %1, i64 %i.au
  %i.bh = getelementptr i8, ptr %1, i64 %i.aw
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ai
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ae
  %i.bk = getelementptr i8, ptr %1, i64 %8
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.ae
  %xtraiter95 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  %i.bm = icmp ult i64 %i.o, 8
  %min.iters.check = icmp ugt i64 %i.o, 5
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.bn = or i64 %7, %8
  %i.bo = icmp slt i64 %i.bn, 0
  %n.vec = and i64 %i.o, 9223372036854775806      ; 3 uses
  %i.bp = add i64 %i.m, %n.vec
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph37.i.us.us.us.i

.lr.ph37.i.us.us.us.i:                            ; preds = %._crit_edge78.us.us.us.i, %.lr.ph37.i.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.gn, %._crit_edge78.us.us.us.i ], [ %1, %.lr.ph37.i.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.gm, %._crit_edge78.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.preheader.i ] ; 2 uses
  %i.bq = mul i64 %i.ag, %.07179.us.us.us.i       ; 8 uses
  %scevgep.a = getelementptr i8, ptr %i.az, i64 %i.bq ; 3 uses
  %scevgep59 = getelementptr i8, ptr %i.ba, i64 %i.bq ; 3 uses
  %scevgep60 = getelementptr i8, ptr %i.bd, i64 %i.bq ; 3 uses
  %scevgep61 = getelementptr i8, ptr %i.be, i64 %i.bq ; 3 uses
  %scevgep62 = getelementptr i8, ptr %i.bf, i64 %i.bq ; 3 uses
  %scevgep63.a = getelementptr i8, ptr %i.bg, i64 %i.bq ; 3 uses
  %scevgep64.a = getelementptr i8, ptr %i.bj, i64 %i.bq ; 3 uses
  %scevgep65.a = getelementptr i8, ptr %i.bl, i64 %i.bq ; 3 uses
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph37.i.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.br, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.i ] ; 3 uses
  %i.br = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.bs = mul nsw i64 %i.br, %i.k
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.bs ; 2 uses
  %i.bt = sub nuw nsw i64 %i.b, %.036.i.us.us.us.i
  %i.bu = mul nsw i64 %i.bt, %i.k
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.bu ; 2 uses
  br i1 %lcmp.mod96.not, label %.prol.loopexit94, label %.prol.preheader93

.prol.preheader93:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader93
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.bx, %.prol.preheader93 ], [ %i.m, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.bz, %.prol.preheader93 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.by, %.prol.preheader93 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.prol.preheader93 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.bv = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.bw = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.bw, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.bv, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.bx = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.prol.loopexit94, label %.prol.preheader93, !llvm.loop !66

.prol.loopexit94:                                 ; preds = %.prol.preheader93, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.m, %.lr.ph.i.us.us.us.i ], [ %i.bx, %.prol.preheader93 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.bz, %.prol.preheader93 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.by, %.prol.preheader93 ]
  br i1 %i.bm, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit94, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.de, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit94 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.dg, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit94 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.df, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit94 ] ; 3 uses
  %i.ca = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.cb = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.cb, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ca, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.cc = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !33
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !33
  store double %i.cf, ptr %i.cc, align 8, !tbaa !33
  store double %i.ce, ptr %i.cd, align 8, !tbaa !33
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.s ; 3 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.s ; 3 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !33
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !33
  store double %i.cj, ptr %i.cg, align 8, !tbaa !33
  store double %i.ci, ptr %i.ch, align 8, !tbaa !33
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.s ; 3 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.s ; 3 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !33
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !33
  store double %i.cn, ptr %i.ck, align 8, !tbaa !33
  store double %i.cm, ptr %i.cl, align 8, !tbaa !33
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.s ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.s ; 3 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !33
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !33
  store double %i.cr, ptr %i.co, align 8, !tbaa !33
  store double %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.s ; 3 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.s ; 3 uses
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !33
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !33
  store double %i.cv, ptr %i.cs, align 8, !tbaa !33
  store double %i.cu, ptr %i.ct, align 8, !tbaa !33
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.s ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.s ; 3 uses
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !33
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !33
  store double %i.cz, ptr %i.cw, align 8, !tbaa !33
  store double %i.cy, ptr %i.cx, align 8, !tbaa !33
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.s ; 3 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.s ; 3 uses
  %i.dc = load double, ptr %i.da, align 8, !tbaa !33
  %i.dd = load double, ptr %i.db, align 8, !tbaa !33
  store double %i.dd, ptr %i.da, align 8, !tbaa !33
  store double %i.dc, ptr %i.db, align 8, !tbaa !33
  %i.de = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.s
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.s
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.de, %i.p
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit94
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.u
  br i1 %exitcond40.not.i.us.us.us.i, label %.lr.ph.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

.lr.ph.us.us.us.i.preheader:                      ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %bound0 = icmp ult ptr %scevgep65.a, %scevgep62
  %bound1 = icmp ult ptr %scevgep63.a, %scevgep64.a
  %found.conflict = and i1 %bound0, %bound1
  %i.dh = or i1 %found.conflict, %i.bo
  %bound067 = icmp ult ptr %scevgep65.a, %scevgep60
  %bound168 = icmp ult ptr %scevgep61, %scevgep64.a
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %i.dh, %found.conflict69
  %bound070 = icmp ult ptr %scevgep65.a, %scevgep.a
  %bound171 = icmp ult ptr %scevgep59, %scevgep64.a
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %scevgep63.a, %scevgep60
  %bound175 = icmp ult ptr %scevgep61, %scevgep62
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %scevgep63.a, %scevgep.a
  %bound179 = icmp ult ptr %scevgep59, %scevgep62
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %bound082 = icmp ult ptr %scevgep61, %scevgep.a
  %bound183 = icmp ult ptr %scevgep59, %scevgep60
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %.lr.ph.us.us.us.i.preheader, %._crit_edge.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ %i.gl, %._crit_edge.us.us.us.i ], [ 1, %.lr.ph.us.us.us.i.preheader ] ; 4 uses
  %i.di = mul nsw i64 %.07276.us.us.us.i, %i.k
  %i.dj = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.di ; 8 uses
  %i.dk = sub nuw nsw i64 %i.b, %.07276.us.us.us.i
  %i.dl = mul nsw i64 %i.dk, %i.k
  %i.dm = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dl ; 8 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.dn = add i64 %i.m, %index                    ; 3 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dn ; 2 uses
  %wide.load = load <2 x double>, ptr %i.do, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.dp = fmul <2 x double> %wide.load, splat (double 5.000000e-01) ; 2 uses
  %i.dq = sub nsw i64 %i.k, %i.dn                 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  %wide.load86 = load <2 x double>, ptr %i.ds, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.dt = fmul <2 x double> %wide.load86, splat (double 5.000000e-01) ; 2 uses
  %reverse = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.du, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.dv = fmul <2 x double> %wide.load87, splat (double 5.000000e-01) ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dq
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 2 uses
  %wide.load88 = load <2 x double>, ptr %i.dx, align 8, !tbaa !33, !alias.scope !82
  %i.dy = fmul <2 x double> %wide.load88, splat (double 5.000000e-01) ; 2 uses
  %reverse89 = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = fadd <2 x double> %i.dp, %reverse
  store <2 x double> %i.dz, ptr %i.do, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.ea = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse90 = fsub <2 x double> %i.dt, %i.ea
  store <2 x double> %reverse90, ptr %i.ds, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.eb = fadd <2 x double> %i.dv, %reverse89
  store <2 x double> %i.eb, ptr %i.du, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ec = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse91 = fsub <2 x double> %i.dy, %i.ec
  store <2 x double> %reverse91, ptr %i.dx, align 8, !tbaa !33, !alias.scope !82
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.bp, %middle.block ], [ %i.m, %.lr.ph.us.us.us.i ] ; 5 uses
  %i.ee = sub i64 %i.ax, %.07375.us.us.us.i.ph
  %.neg = add i64 %.07375.us.us.us.i.ph, 1
  %xtraiter98 = and i64 %i.ee, 1
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ef = mul nsw i64 %.07375.us.us.us.i.ph, %i.f ; 3 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.ef ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !33
  %i.ei = fmul double %i.eh, 5.000000e-01         ; 2 uses
  %i.ej = sub nsw i64 %i.k, %i.ef                 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ej ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !33
  %i.em = fmul double %i.el, 5.000000e-01         ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ef ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !33
  %i.ep = fmul double %i.eo, 5.000000e-01         ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.ej ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !33
  %i.es = fmul double %i.er, 5.000000e-01         ; 2 uses
  %i.et = fadd double %i.ei, %i.em
  store double %i.et, ptr %i.eg, align 8, !tbaa !33
  %i.eu = fsub double %i.em, %i.ei
  store double %i.eu, ptr %i.ek, align 8, !tbaa !33
  %i.ev = fadd double %i.ep, %i.es
  store double %i.ev, ptr %i.en, align 8, !tbaa !33
  %i.ew = fsub double %i.es, %i.ep
  store double %i.ew, ptr %i.eq, align 8, !tbaa !33
  %i.ex = add nsw i64 %.07375.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07375.us.us.us.i.unr = phi i64 [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %i.ey = icmp eq i64 %i.ay, %.neg
  br i1 %i.ey, label %._crit_edge.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.gk, %scalar.ph ], [ %.07375.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ez = mul nsw i64 %.07375.us.us.us.i, %i.f    ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !33
  %i.fc = fmul double %i.fb, 5.000000e-01         ; 2 uses
  %i.fd = sub nsw i64 %i.k, %i.ez                 ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fd ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !33
  %i.fg = fmul double %i.ff, 5.000000e-01         ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ez ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !33
  %i.fj = fmul double %i.fi, 5.000000e-01         ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.fd ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !33
  %i.fm = fmul double %i.fl, 5.000000e-01         ; 2 uses
  %i.fn = fadd double %i.fc, %i.fg
  store double %i.fn, ptr %i.fa, align 8, !tbaa !33
  %i.fo = fsub double %i.fg, %i.fc
  store double %i.fo, ptr %i.fe, align 8, !tbaa !33
  %i.fp = fadd double %i.fj, %i.fm
  store double %i.fp, ptr %i.fh, align 8, !tbaa !33
  %i.fq = fsub double %i.fm, %i.fj
  store double %i.fq, ptr %i.fk, align 8, !tbaa !33
  %i.fr = add nsw i64 %.07375.us.us.us.i, 1
  %i.fs = mul nsw i64 %i.fr, %i.f                 ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.fs ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !33
  %i.fv = fmul double %i.fu, 5.000000e-01         ; 2 uses
  %i.fw = sub nsw i64 %i.k, %i.fs                 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !33
  %i.fz = fmul double %i.fy, 5.000000e-01         ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fs ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !33
  %i.gc = fmul double %i.gb, 5.000000e-01         ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.fw ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !33
  %i.gf = fmul double %i.ge, 5.000000e-01         ; 2 uses
  %i.gg = fadd double %i.fv, %i.fz
  store double %i.gg, ptr %i.ft, align 8, !tbaa !33
  %i.gh = fsub double %i.fz, %i.fv
  store double %i.gh, ptr %i.fx, align 8, !tbaa !33
  %i.gi = fadd double %i.gc, %i.gf
  store double %i.gi, ptr %i.ga, align 8, !tbaa !33
  %i.gj = fsub double %i.gf, %i.gc
  store double %i.gj, ptr %i.gd, align 8, !tbaa !33
  %i.gk = add nsw i64 %.07375.us.us.us.i, 2       ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gk, %i.p
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us.i, label %scalar.ph, !llvm.loop !73

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond95.not.i = icmp eq i64 %.07276.us.us.us.i, %i.z
  br i1 %exitcond95.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !74

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %i.gm = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.j
  %exitcond96.not.i = icmp eq i64 %i.gm, %i.h
  br i1 %exitcond96.not.i, label %reorder_dif.exit, label %.lr.ph37.i.us.us.us.i, !llvm.loop !75

.lr.ph83.split.i:                                 ; preds = %.lr.ph83.i
  %i.go = icmp slt i64 %i.o, 1
  %i.gp = icmp slt i64 %i.b, 1
  %brmerge90.i = select i1 %i.gp, i1 true, i1 %i.go
  br i1 %brmerge90.i, label %reorder_dif.exit, label %.lr.ph37.i.preheader.i

.lr.ph37.i.preheader.i:                           ; preds = %.lr.ph83.split.i
  %i.gq = mul nsw i64 %i.k, %i.b
  %i.gr = add nsw i64 %i.o, -1
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.gs = icmp ult i64 %i.gr, 7
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.lr.ph37.i.preheader.i
  %.080.i = phi ptr [ %i.gz, %..loopexit_crit_edge.i.i ], [ %1, %.lr.ph37.i.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.gy, %..loopexit_crit_edge.i.i ], [ 0, %.lr.ph37.i.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.k ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.gq ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph37.i.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.gv, %.prol.preheader ], [ %i.m, %.lr.ph37.i.i ]
  %.03034.i.i.prol = phi ptr [ %i.gx, %.prol.preheader ], [ %gep39.i.i, %.lr.ph37.i.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.gw, %.prol.preheader ], [ %gep.i.i, %.lr.ph37.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph37.i.i ]
  %i.gt = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.gu = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.gu, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.gt, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.gv = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.s ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.s ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph37.i.i
  %.02935.i.i.unr = phi i64 [ %i.m, %.lr.ph37.i.i ], [ %i.gv, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.lr.ph37.i.i ], [ %i.gx, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.lr.ph37.i.i ], [ %i.gw, %.prol.preheader ]
  br i1 %i.gs, label %..loopexit_crit_edge.i.i, label %.lr.ph37.i.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph37.i.i.new, %.prol.loopexit
  %i.gy = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.j
end_hunk_0
