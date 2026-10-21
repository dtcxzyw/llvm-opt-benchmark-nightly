Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/screen?download=true
inline.NumInlined: 1345
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZL17glnvg__renderFillPvP8NVGpaint26NVGcompositeOperationStateP10NVGscissorfPKfPK7NVGpathi:bb.a
  %i.aw = icmp sgt i32 %8, 0
  br i1 %i.aw, label %.lr.ph.preheader.i, label %_ZL19glnvg__maxVertCountPK7NVGpathi.exit

.lr.ph.preheader.i:                               ; preds = %bb.g, %bb.h, %bb.i
  %wide.trip.count.i = zext nneg i32 %8 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ax = add i32 %8, -1
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ca, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !90
  %i.bc = add nsw i32 %i.bb, %.011.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !91
  %i.bf = add nsw i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !90
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !91
  %i.bm = add nsw i32 %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !90
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !91
  %i.bt = add nsw i32 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %indvars.iv.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !90
  %i.bx = add nsw i32 %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 208
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !91
  %i.ca = add nsw i32 %i.bx, %i.bz                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19glnvg__maxVertCountPK7NVGpathi.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa ]
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ca, %_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.011.i.epil = phi i32 [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ch, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.cb = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %indvars.iv.i.epil ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !90
  %i.ce = add nsw i32 %i.cd, %.011.i.epil
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !91
  %i.ch = add nsw i32 %i.ce, %i.cg                ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL19glnvg__maxVertCountPK7NVGpathi.exit, label %.lr.ph.i.epil, !llvm.loop !259

_ZL19glnvg__maxVertCountPK7NVGpathi.exit:         ; preds = %_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.i
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.ca, %_ZL19glnvg__maxVertCountPK7NVGpathi.exit.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.i.epil ]
  %i.ci = load i32, ptr %i.t, align 4, !tbaa !83
  %i.cj = add nsw i32 %i.ci, %.0.lcssa.i          ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !60 ; 2 uses
  %i.cm = add nsw i32 %i.cl, %i.cj                ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !93 ; 2 uses
  %i.cp = icmp sgt i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit

bb.j:                                             ; preds = %_ZL19glnvg__maxVertCountPK7NVGpathi.exit
  %i.cq = tail call noundef range(i32 4, -2147483648) i32 @llvm.smax.i32(i32 %i.cm, i32 4096)
  %i.cr = sdiv i32 %i.co, 2
  %i.cs = add nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cv = sext i32 %i.cs to i64
  %i.cw = shl nsw i64 %i.cv, 4
  %i.cx = tail call ptr @realloc(ptr noundef %i.cu, i64 noundef %i.cw) #39 ; 2 uses
  %.not.i116 = icmp eq ptr %i.cx, null
  br i1 %.not.i116, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !68
  store i32 %i.cs, ptr %i.cn, align 8, !tbaa !93
  %.pre.i117 = load i32, ptr %i.ck, align 4, !tbaa !60 ; 2 uses
  %.pre21.i118 = add nsw i32 %.pre.i117, %i.cj
  br label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit

_ZL17glnvg__allocVertsP12GLNVGcontexti.exit:      ; preds = %_ZL19glnvg__maxVertCountPK7NVGpathi.exit, %bb.k
  %.pre-phi.i114 = phi i32 [ %.pre21.i118, %bb.k ], [ %i.cm, %_ZL19glnvg__maxVertCountPK7NVGpathi.exit ]
  %i.cy = phi i32 [ %.pre.i117, %bb.k ], [ %i.cl, %_ZL19glnvg__maxVertCountPK7NVGpathi.exit ] ; 3 uses
  store i32 %.pre-phi.i114, ptr %i.ck, align 4, !tbaa !60
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit
  %i.da = icmp sgt i32 %8, 0
  br i1 %i.da, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.0136 = phi i32 [ %i.cy, %.lr.ph ], [ %.2, %bb.p ] ; 4 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !72
  %i.de = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.df = trunc nuw nsw i64 %indvars.iv to i32
  %i.dg = add nsw i32 %i.de, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.dh ; 5 uses
  %i.dj = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %indvars.iv ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !90 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.0136, ptr %i.di, align 4, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !78
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !68
  %i.dp = sext i32 %.0136 to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !262
  %i.dt = zext nneg i32 %i.dl to i64
  %i.du = shl nuw nsw i64 %i.dt, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dq, ptr align 4 %i.ds, i64 %i.du, i1 false)
  %i.dv = load i32, ptr %i.dk, align 8, !tbaa !90
  %i.dw = add nsw i32 %i.dv, %.0136
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %i.dw, %bb.m ], [ %.0136, %bb.l ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !91 ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %.1, ptr %i.ea, align 4, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 %i.dy, ptr %i.eb, align 4, !tbaa !81
  %i.ec = load ptr, ptr %i.dc, align 8, !tbaa !68
  %i.ed = sext i32 %.1 to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !94
  %i.eh = zext nneg i32 %i.dy to i64
  %i.ei = shl nuw nsw i64 %i.eh, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ee, ptr align 4 %i.eg, i64 %i.ei, i1 false)
  %i.ej = load i32, ptr %i.dx, align 8, !tbaa !91
  %i.ek = add nsw i32 %i.ej, %.1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2 = phi i32 [ %i.ek, %bb.o ], [ %.1, %bb.n ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.0.lcssa = phi i32 [ %i.cy, %.preheader ], [ %.2, %bb.p ] ; 2 uses
  %i.el = load i32, ptr %i.r, align 4, !tbaa !71
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.q, label %bb.u

bb.q:                                             ; preds = %._crit_edge
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 %.0.lcssa, ptr %i.en, align 4, !tbaa !82
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !68
  %i.eq = sext i32 %.0.lcssa to i64
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.eu = load <2 x float>, ptr %i.es, align 4, !tbaa !59
  %9 = shufflevector <2 x float> %i.eu, <2 x float> <float 5.000000e-01, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.er, align 4, !tbaa !59
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ex = load <2 x float>, ptr %i.ew, align 4, !tbaa !59
  %10 = shufflevector <2 x float> %i.ex, <2 x float> <float 5.000000e-01, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  store <4 x float> %10, ptr %i.ev, align 4, !tbaa !59
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.ez = load float, ptr %6, align 4, !tbaa !59
  %i.fa = load float, ptr %i.et, align 4, !tbaa !59
  store float %i.ez, ptr %i.ey, align 4, !tbaa !264
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  store float %i.fa, ptr %i.fb, align 4, !tbaa !265
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store <2 x float> <float 5.000000e-01, float 1.000000e+00>, ptr %i.fc, align 4, !tbaa !59
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.fe = load <2 x float>, ptr %6, align 4, !tbaa !59
  %11 = shufflevector <2 x float> %i.fe, <2 x float> <float 5.000000e-01, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %i.fd, align 4, !tbaa !59
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !43 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !63 ; 2 uses
  %i.fj = add nsw i32 %i.fi, 2                    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !95 ; 2 uses
  %i.fm = icmp sgt i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.r, label %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit

bb.r:                                             ; preds = %bb.q
  %i.fn = tail call noundef range(i32 4, -2147483648) i32 @llvm.smax.i32(i32 %i.fj, i32 128)
  %i.fo = sdiv i32 %i.fl, 2
  %i.fp = add nsw i32 %i.fn, %i.fo                ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !65
  %i.fs = mul nsw i32 %i.fp, %i.fg
  %i.ft = sext i32 %i.fs to i64
  %i.fu = tail call ptr @realloc(ptr noundef %i.fr, i64 noundef %i.ft) #39 ; 2 uses
  %.not.i121 = icmp eq ptr %i.fu, null
  br i1 %.not.i121, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !65
  store i32 %i.fp, ptr %i.fk, align 8, !tbaa !95
  %.pre.i122 = load i32, ptr %i.fh, align 4, !tbaa !63 ; 2 uses
  %.pre24.i = add nsw i32 %.pre.i122, 2
  br label %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit

_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit: ; preds = %bb.q, %bb.s
  %.pre-phi.i119 = phi i32 [ %.pre24.i, %bb.s ], [ %i.fj, %bb.q ]
  %i.fv = phi i32 [ %.pre.i122, %bb.s ], [ %i.fi, %bb.q ]
  %i.fw = mul nsw i32 %i.fv, %i.fg                ; 3 uses
  store i32 %.pre-phi.i119, ptr %i.fh, align 4, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !75
  %i.fy = icmp eq i32 %i.fw, -1
  br i1 %i.fy, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit
  %i.fz = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %.val109 = load ptr, ptr %i.fz, align 8, !tbaa !65
  %i.ga = sext i32 %i.fw to i64
  %i.gb = getelementptr inbounds i8, ptr %.val109, i64 %i.ga ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(176) %i.gb, i8 0, i64 172, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 164
  store float -1.000000e+00, ptr %i.gc, align 4, !tbaa !97
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 172
  store i32 2, ptr %i.gd, align 4, !tbaa !98
  %i.ge = load i32, ptr %i.fx, align 4, !tbaa !75
  %i.gf = load i32, ptr %i.ff, align 8, !tbaa !43
  %i.gg = add nsw i32 %i.gf, %i.ge
  %.val108 = load ptr, ptr %i.fz, align 8, !tbaa !65
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %.val108, i64 %i.gh
  tail call fastcc void @_ZL19glnvg__convertPaintP12GLNVGcontextP17GLNVGfragUniformsP8NVGpaintP10NVGscissorfff(ptr noundef nonnull %0, ptr noundef %i.gi, ptr noundef %1, ptr noundef %4, float noundef %5, float noundef %5, float noundef -1.000000e+00)
  br label %_ZL16glnvg__allocCallP12GLNVGcontext.exit.thread

bb.u:                                             ; preds = %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !43 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !63 ; 3 uses
  %i.gn = add nsw i32 %i.gm, 1                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !95 ; 2 uses
  %.not134 = icmp slt i32 %i.gm, %i.gp
  br i1 %.not134, label %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit128, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = tail call noundef range(i32 4, -2147483648) i32 @llvm.smax.i32(i32 %i.gn, i32 128)
  %i.gr = sdiv i32 %i.gp, 2
  %i.gs = add nsw i32 %i.gq, %i.gr                ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !65
  %i.gv = mul nsw i32 %i.gs, %i.gk
  %i.gw = sext i32 %i.gv to i64
  %i.gx = tail call ptr @realloc(ptr noundef %i.gu, i64 noundef %i.gw) #39 ; 2 uses
  %.not.i125 = icmp eq ptr %i.gx, null
  br i1 %.not.i125, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.gx, ptr %i.gt, align 8, !tbaa !65
  store i32 %i.gs, ptr %i.go, align 8, !tbaa !95
  %.pre.i126 = load i32, ptr %i.gl, align 4, !tbaa !63 ; 2 uses
  %.pre24.i127 = add nsw i32 %.pre.i126, 1
  br label %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit128

_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit128: ; preds = %bb.u, %bb.w
  %.pre-phi.i123 = phi i32 [ %.pre24.i127, %bb.w ], [ %i.gn, %bb.u ]
  %i.gy = phi i32 [ %.pre.i126, %bb.w ], [ %i.gm, %bb.u ]
  %i.gz = mul nsw i32 %i.gy, %i.gk                ; 3 uses
  store i32 %.pre-phi.i123, ptr %i.gl, align 4, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !75
  %i.hb = icmp eq i32 %i.gz, -1
  br i1 %i.hb, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit128
  %i.hc = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.hc, align 8, !tbaa !65
  %i.hd = sext i32 %i.gz to i64
  %i.he = getelementptr inbounds i8, ptr %.val, i64 %i.hd
  tail call fastcc void @_ZL19glnvg__convertPaintP12GLNVGcontextP17GLNVGfragUniformsP8NVGpaintP10NVGscissorfff(ptr noundef nonnull %0, ptr noundef %i.he, ptr noundef %1, ptr noundef %4, float noundef %5, float noundef %5, float noundef -1.000000e+00)
  br label %_ZL16glnvg__allocCallP12GLNVGcontext.exit.thread

_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread.sink.split: ; preds = %bb.v, %bb.r, %bb.d
  %.sink164 = phi i64 [ 24, %bb.r ], [ 8, %bb.d ], [ 24, %bb.v ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sink164
  store i32 -1, ptr %i.hf, align 4, !tbaa !40
  br label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread

_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread: ; preds = %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread.sink.split, %bb.j, %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit128, %_ZL24glnvg__allocFragUniformsP12GLNVGcontexti.exit, %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit, %_ZL17glnvg__allocPathsP12GLNVGcontexti.exit
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !62  ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %bb.y, label %_ZL16glnvg__allocCallP12GLNVGcontext.exit.thread

bb.y:                                             ; preds = %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %i.a, align 4, !tbaa !62
  br label %_ZL16glnvg__allocCallP12GLNVGcontext.exit.thread

_ZL16glnvg__allocCallP12GLNVGcontext.exit.thread: ; preds = %bb.b, %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread, %bb.y, %bb.t, %bb.x
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19glnvg__renderStrokePvP8NVGpaint26NVGcompositeOperationStateP10NVGscissorffPK7NVGpathi(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 %2, i64 %3, ptr noundef %4, float noundef %5, float noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  br label %_ZL16glnvg__allocCallP12GLNVGcontext.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.b, i32 127)
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = sdiv i32 %i.d, 2
  %i.h = add nsw i32 %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = sext i32 %i.h to i64
  %i.l = mul nsw i64 %i.k, 44
  %i.m = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %i.l) #39 ; 3 uses
  %.not19.i = icmp eq ptr %i.m, null
  br i1 %.not19.i, label %_ZL16glnvg__allocCallP12GLNVGcontext.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !tbaa !69
  store i32 %i.h, ptr %i.c, align 8, !tbaa !84
  %.pre20.i = load i32, ptr %i.a, align 4, !tbaa !62
  br label %_ZL16glnvg__allocCallP12GLNVGcontext.exit

_ZL16glnvg__allocCallP12GLNVGcontext.exit:        ; preds = %._crit_edge.i, %bb.c
  %i.n = phi i32 [ %i.b, %._crit_edge.i ], [ %.pre20.i, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.m, %bb.c ]
  %i.p = add nsw i32 %i.n, 1
  store i32 %i.p, ptr %i.a, align 4, !tbaa !62
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [44 x i8], ptr %i.o, i64 %i.q ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  store i32 3, ptr %i.r, align 4, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61   ; 2 uses
  %i.v = add nsw i32 %i.u, %8                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZL17glnvg__allocPathsP12GLNVGcontexti.exit

bb.d:                                             ; preds = %_ZL16glnvg__allocCallP12GLNVGcontext.exit
  %i.z = tail call noundef range(i32 4, -2147483648) i32 @llvm.smax.i32(i32 %i.v, i32 128)
  %i.aa = sdiv i32 %i.x, 2
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = sext i32 %i.ab to i64
  %i.af = shl nsw i64 %i.ae, 4
  %i.ag = tail call ptr @realloc(ptr noundef %i.ad, i64 noundef %i.af) #39 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ag, null
  br i1 %.not.i81, label %_ZL17glnvg__allocVertsP12GLNVGcontexti.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !72
  store i32 %i.ab, ptr %i.w, align 8, !tbaa !85
  %.pre.i82 = load i32, ptr %i.t, align 4, !tbaa !61 ; 2 uses
  %.pre21.i = add nsw i32 %.pre.i82, %8
  br label %_ZL17glnvg__allocPathsP12GLNVGcontexti.exit

_ZL17glnvg__allocPathsP12GLNVGcontexti.exit:      ; preds = %_ZL16glnvg__allocCallP12GLNVGcontext.exit, %bb.e
  %.pre-phi.i = phi i32 [ %.pre21.i, %bb.e ], [ %i.v, %_ZL16glnvg__allocCallP12GLNVGcontext.exit ]
  %i.ah = phi i32 [ %.pre.i82, %bb.e ], [ %i.u, %_ZL16glnvg__allocCallP12GLNVGcontext.exit ] ; 2 uses
end_hunk_0
