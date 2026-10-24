Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/convexify?download=true
inline.NumInlined: 1165
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  %i.dp = sub i64 %i.cq, %i.do
  %i.dq = mul i64 %i.cp, %.4149.epil.init
  %i.dr = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep.epil = getelementptr i8, ptr %i.dr, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.dp, i1 false), !tbaa !85
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph148.epil, %.lr.ph150.epil.preheader, %.preheader132
  %i.ds = load i64, ptr %7, align 8, !tbaa !50    ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %._crit_edge151
  %.idx = mul i64 %i.ds, 24
  %i.du = getelementptr i8, ptr %7, i64 %.idx
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  %i.dw = shl i64 %0, 3
  %i.dx = mul i64 %0, -8
  %i.dy = shl nsw i64 %0, 3
  %i.dz = sub nuw nsw i64 -8, %i.dy
  %i.ea = shl i64 %0, 3
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge156
  %.5158 = phi i64 [ %i.iz, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
  %.0122157 = phi ptr [ %i.ec, %._crit_edge156 ], [ %i.dv, %.lr.ph160.preheader ] ; 4 uses
  %i.eb = load i64, ptr %.0122157, align 8, !tbaa !50 ; 8 uses
  %i.ec = getelementptr inbounds i8, ptr %.0122157, i64 -24
  %i.ed = icmp sgt i64 %i.eb, 1
  br i1 %i.ed, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160
  %i.ee = getelementptr inbounds nuw i8, ptr %.0122157, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !50
  %i.eg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.0122157, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !50 ; 6 uses
  %i.ej = add nsw i64 %i.ei, %i.eb                ; 2 uses
  %i.ek = add nsw i64 %i.eb, -2
  %i.el = add nsw i64 %i.eb, -1
  %i.em = add i64 %i.el, %i.ei
  %i.en = mul i64 %i.dw, %i.em
  %i.eo = add i64 %i.eb, %i.ei
  %i.ep = add nuw i64 %i.eb, 2305843009213693950
  %i.eq = add i64 %i.ep, %i.ei
  %i.er = mul i64 %0, %i.eq
  %i.es = add i64 %i.eo, %i.er
  %i.et = add i64 %0, %i.es
  %i.eu = shl i64 %i.et, 3
  %i.ev = mul i64 %i.ea, %i.ej
  %i.ew = add nsw i64 %i.eb, -3
  %i.ex = add i64 %i.ew, %i.ei
  %i.ey = getelementptr i8, ptr %1, i64 %i.en
  %i.ez = getelementptr i8, ptr %1, i64 %i.eu
  %i.fa = getelementptr i8, ptr %1, i64 %i.ev
  %i.fb = add i64 %i.eb, %i.ei
  %i.fc = sub i64 %0, %i.fb
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.eg, %.lr.ph155 ], [ %i.fg, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 2 uses
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.iy, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %i.fd = mul i64 %i.dx, %.2126152                ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.ey, i64 %i.fd
  %i.fe = mul i64 %i.dz, %.2126152
  %scevgep189 = getelementptr i8, ptr %i.ez, i64 %i.fe
  %scevgep190 = getelementptr i8, ptr %i.fa, i64 %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.0121153, i64 -8
  %i.fg = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !85 ; 7 uses
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !85 ; 8 uses
  %i.fj = sub i64 %i.ej, %.2126152                ; 5 uses
  %i.fk = add i64 %i.fj, -2                       ; 4 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fk ; 3 uses
  %i.fm = icmp sgt i64 %i.fj, 2
  br i1 %i.fm, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter243 = and i64 %i.fj, 1
  %i.fn = icmp eq i64 %i.ex, %.2126152
  br i1 %i.fn, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter248 = and i64 %i.fk, -2
  %i.fo = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fl, %.lr.ph.i.preheader.new ], [ %i.gh, %.lr.ph.i ] ; 3 uses
  %niter249 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter249.next.1, %.lr.ph.i ]
  %i.fw = load <2 x double>, ptr %.080.i, align 8, !tbaa !85 ; 3 uses
  %i.fx = fneg <2 x double> %i.fw
  %i.fy = shufflevector <2 x double> %i.fw, <2 x double> %i.fx, <2 x i32> <i32 1, i32 2>
  %i.fz = fmul <2 x double> %i.fp, %i.fy
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fw, <2 x double> %i.fz)
  store <2 x double> %i.ga, ptr %.080.i, align 8, !tbaa !85
  %i.gb = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.gc = load <2 x double>, ptr %i.gb, align 8, !tbaa !85 ; 3 uses
  %i.gd = fneg <2 x double> %i.gc
  %i.ge = shufflevector <2 x double> %i.gc, <2 x double> %i.gd, <2 x i32> <i32 1, i32 2>
  %i.gf = fmul <2 x double> %i.ft, %i.ge
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gc, <2 x double> %i.gf)
  store <2 x double> %i.gg, ptr %i.gb, align 8, !tbaa !85
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %0 ; 3 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !515

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod245.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod245.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fl, %.lr.ph.i.preheader ], [ %i.gh, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i64 %i.fj to i1
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.gi = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !85 ; 3 uses
  %i.gj = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fneg <2 x double> %i.gi
  %i.gm = shufflevector <2 x double> %i.gi, <2 x double> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.gn = fmul <2 x double> %i.gk, %i.gm
  %i.go = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gi, <2 x double> %i.gn)
  store <2 x double> %i.gq, ptr %.080.i.epil.init, align 8, !tbaa !85
  %i.gr = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fl, %bb.l ], [ %i.gh, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gs = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gt = getelementptr i8, ptr %i.gs, i64 8      ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !85 ; 2 uses
  %i.gv = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !85 ; 4 uses
  %i.gw = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gy = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x double> %i.gy, double %i.gu, i64 1
  %i.ha = fmul <2 x double> %i.gx, %i.gz          ; 2 uses
  %i.hb = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.gv, <2 x double> %i.ha) ; 3 uses
  %i.he = extractelement <2 x double> %i.gv, i64 0
  %i.hf = fneg double %i.he
  %i.hg = fmul double %i.fh, %i.hf
  %i.hh = extractelement <2 x double> %i.gv, i64 1
  %i.hi = call double @llvm.fmuladd.f64(double %i.fi, double %i.hh, double %i.hg)
  %i.hj = extractelement <2 x double> %i.ha, i64 0
  %i.hk = fneg double %i.hj
  %i.hl = call double @llvm.fmuladd.f64(double %i.fi, double %i.gu, double %i.hk)
  %i.hm = fneg <2 x double> %i.hd
  %i.hn = shufflevector <2 x double> %i.hd, <2 x double> %i.hm, <2 x i32> <i32 1, i32 2>
  %i.ho = fmul <2 x double> %i.gx, %i.hn
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.ho)
  store <2 x double> %i.hp, ptr %.0.lcssa.i, align 8, !tbaa !85
  %i.hq = fneg double %i.hi
  %i.hr = fmul double %i.fh, %i.hq
  %i.hs = call double @llvm.fmuladd.f64(double %i.fi, double %i.hl, double %i.hr)
  store double %i.hs, ptr %i.gt, align 8, !tbaa !85
  %i.ht = sub i64 %0, %i.fj                       ; 2 uses
  %i.hu = icmp sgt i64 %i.ht, 0
  br i1 %i.hu, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hv = mul i64 %i.fk, %0
  %i.hw = getelementptr [8 x i8], ptr %1, i64 %i.hv
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.fk
  %i.hy = getelementptr i8, ptr %i.hx, i64 16     ; 5 uses
  %i.hz = add i64 %i.fc, %.2126152                ; 3 uses
  %min.iters.check = icmp ult i64 %i.hz, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.hy, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hz, -2                      ; 4 uses
  %i.ia = shl i64 %n.vec, 3
  %i.ib = getelementptr i8, ptr %i.hy, i64 %i.ia
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.fi, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hy, i64 %i.ic ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !85, !alias.scope !534, !noalias !535 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.id, align 8, !tbaa !85, !alias.scope !535 ; 2 uses
  %i.ie = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.ie)
  store <2 x double> %i.if, ptr %next.gep, align 8, !tbaa !85, !alias.scope !534, !noalias !535
  %i.ig = fneg <2 x double> %wide.load
  %i.ih = fmul <2 x double> %broadcast.splat, %i.ig
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ih)
  store <2 x double> %i.ii, ptr %i.id, align 8, !tbaa !85, !alias.scope !535
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hz, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hy, %vector.memcheck ], [ %i.hy, %.lr.ph84.preheader.i ], [ %i.ib, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.iw, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.ix, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.ik = load double, ptr %.182.i, align 8, !tbaa !85 ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !85 ; 2 uses
  %i.in = fneg double %i.ik
  %i.io = insertelement <2 x double> poison, double %i.im, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1
  %i.iq = fmul <2 x double> %i.gx, %i.ip
  %i.ir = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.im, i64 1
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.is, <2 x double> %i.iq) ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  store double %i.iu, ptr %.182.i, align 8, !tbaa !85
  %i.iv = extractelement <2 x double> %i.it, i64 1
  store double %i.iv, ptr %i.il, align 8, !tbaa !85
  %i.iw = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.ix = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ix, %i.ht
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !520

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.iy = add nuw nsw i64 %.2126152, 1
  %exitcond171.not.a = icmp eq i64 %.2126152, %i.ek
  br i1 %exitcond171.not.a, label %._crit_edge156, label %bb.l, !llvm.loop !521

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.iz = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.iz, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !522

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.ja = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.jb = shl nsw i64 %0, 3                       ; 3 uses
  %i.jc = add i64 %i.jb, -16                      ; 2 uses
  %i.jd = mul i64 %0, %i.jc
  %i.je = mul i64 %0, -8
  %i.jf = shl i64 %0, 4                           ; 2 uses
  %i.jg = shl i64 %0, 3
  %8 = add i64 %i.jb, 8
  %i.jh = add i64 %0, -2
  %i.ji = getelementptr i8, ptr %1, i64 %i.jb
  %i.jj = getelementptr i8, ptr %i.ji, i64 -8
  %i.jk = getelementptr i8, ptr %1, i64 %i.jd
  %i.jl = getelementptr i8, ptr %1, i64 %i.jf
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  %i.jn = getelementptr i8, ptr %1, i64 %i.jf
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %i.jp = getelementptr i8, ptr %6, i64 %i.jc
  %stride.check = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 11 uses
  %.0123162 = phi i64 [ %i.ja, %.lr.ph164 ], [ %i.nc, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jq = add i64 %indvar, 1                      ; 3 uses
  %9 = sub i64 %i.jh, %indvar                     ; 5 uses
  %i.jr = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196.a = getelementptr i8, ptr %i.jj, i64 %i.jr ; 2 uses
  %i.js = mul i64 %i.je, %indvar
  %scevgep197.a = getelementptr i8, ptr %i.jk, i64 %i.js ; 2 uses
  %i.jt = mul i64 %i.jg, %indvar
  %scevgep198 = getelementptr i8, ptr %i.jm, i64 %i.jt
  %i.ju = mul i64 %8, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jo, i64 %i.ju
  %scevgep200 = getelementptr i8, ptr %i.jp, i64 %i.jr
  %i.jv = xor i64 %.0123162, -1
  %i.jw = add i64 %0, %i.jv                       ; 3 uses
  %i.jx = mul nsw i64 %i.jw, %0
  %i.jy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jx ; 8 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !85
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.jy, double noundef %i.ka)
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 6 uses
  %i.kd = load double, ptr %i.jz, align 8, !tbaa !85 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.ke = shl nuw nsw i64 %.0123162, 3
  %i.kf = add nuw nsw i64 %i.ke, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.kf, i1 false), !tbaa !85
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %10 = icmp sgt i64 %i.jw, 1
  br i1 %10, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter250 = and i64 %9, 1
  %11 = icmp eq i64 %.0123162, 0
  br i1 %11, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter254 = and i64 %9, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.kg = icmp eq i64 %indvar, 0
  %unroll_iter267 = and i64 %i.jq, -2
  %i.kh = and i64 %indvar, 1
  %lcmp.mod265.not.not = icmp eq i64 %i.kh, 0
  %lcmp.mod266 = trunc i64 %i.jq to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.lh, %._crit_edge.us.i ], [ %i.kc, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.li, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.ki = load double, ptr %.046.us.i, align 8, !tbaa !85
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !85
  %i.kl = call double @llvm.fmuladd.f64(double %i.kd, double %i.ki, double %i.kk) ; 3 uses
  store double %i.kl, ptr %i.kj, align 8, !tbaa !85
  br i1 %i.kg, label %.epil.preheader262, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.km = phi double [ %i.kz, %.lr.ph.us.i.new ], [ %i.kl, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.la, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter268 = phi i64 [ %niter268.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !85
  %i.kp = fmul double %i.kd, %i.ko
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.03944.us.i
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !85
  %i.ks = call double @llvm.fmuladd.f64(double %i.kp, double %i.kr, double %i.km) ; 2 uses
  store double %i.ks, ptr %i.kj, align 8, !tbaa !85
  %i.kt = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !85
  %i.kw = fmul double %i.kd, %i.kv
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kt
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !85
  %i.kz = call double @llvm.fmuladd.f64(double %i.kw, double %i.ky, double %i.ks) ; 3 uses
  store double %i.kz, ptr %i.kj, align 8, !tbaa !85
  %i.la = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter268.next.1 = add nuw i64 %niter268, 2     ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !523

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod265.not.not, label %.epil.preheader262, label %._crit_edge.us.i

.epil.preheader262:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kl, %.lr.ph.us.i ], [ %i.kz, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.la, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !85
  %i.ld = fmul double %i.kd, %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.03944.us.i.epil.init
  %i.lf = load double, ptr %i.le, align 8, !tbaa !85
  %i.lg = call double @llvm.fmuladd.f64(double %i.ld, double %i.lf, double %.epil.init)
  store double %i.lg, ptr %i.kj, align 8, !tbaa !85
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader262
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.li = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !524

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %i.lj = add nuw i64 %indvar, 1                  ; 2 uses
  %min.iters.check208 = icmp ult i64 %indvar, 3
  %bound0201.a = icmp ult ptr %scevgep196.a, %scevgep199
  %bound1202.a = icmp ult ptr %scevgep198, %scevgep197.a
  %found.conflict203.a = and i1 %bound0201.a, %bound1202.a
  %i.lk = or i1 %found.conflict203.a, %stride.check
  %bound0204 = icmp ult ptr %scevgep196.a, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197.a
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx = or i1 %i.lk, %found.conflict206
  %n.vec210 = and i64 %i.lj, -4                   ; 3 uses
  %i.ll = or disjoint i64 %n.vec210, 1
  %cmp.n221 = icmp eq i64 %i.lj, %n.vec210
  %i.lm = sub i64 %0, %.0123162
  %xtraiter269 = and i64 %i.lm, 1
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %12, %._crit_edge.us54.i ], [ %i.kc, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %13, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !85
  %i.lp = load double, ptr %.150.us.i, align 8, !tbaa !85
  %i.lq = fsub double %i.lp, %i.lo
  store double %i.lq, ptr %.150.us.i, align 8, !tbaa !85
  %brmerge = select i1 %min.iters.check208, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph207.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.us53.i
  %i.lr = load double, ptr %i.ln, align 8, !tbaa !85, !alias.scope !536
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.lr, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next219, %vector.body211 ] ; 2 uses
  %i.ls = or disjoint i64 %index212, 1            ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %wide.load213.a = load <2 x double>, ptr %i.lt, align 8, !tbaa !85, !alias.scope !537
  %wide.load214 = load <2 x double>, ptr %i.lu, align 8, !tbaa !85, !alias.scope !537
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.ls ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.lv, align 8, !tbaa !85, !alias.scope !538, !noalias !539
  %wide.load216 = load <2 x double>, ptr %i.lw, align 8, !tbaa !85, !alias.scope !538, !noalias !539
  %i.lx = fneg <2 x double> %wide.load213.a
  %i.ly = fneg <2 x double> %wide.load214
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %broadcast.splat218, <2 x double> %wide.load215)
  %i.ma = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %broadcast.splat218, <2 x double> %wide.load216)
  store <2 x double> %i.lz, ptr %i.lv, align 8, !tbaa !85, !alias.scope !538, !noalias !539
  store <2 x double> %i.ma, ptr %i.lw, align 8, !tbaa !85, !alias.scope !538, !noalias !539
  %index.next219 = add nuw i64 %index212, 4       ; 2 uses
  %i.mb = icmp eq i64 %index.next219, %n.vec210
  br i1 %i.mb, label %middle.block220, label %vector.body211, !llvm.loop !529

middle.block220:                                  ; preds = %vector.body211
  br i1 %cmp.n221, label %._crit_edge.us54.i, label %scalar.ph207.preheader

scalar.ph207.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block220
  %.14048.us.i.ph = phi i64 [ %i.ll, %middle.block220 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod270.not, label %scalar.ph207.prol.loopexit, label %scalar.ph207.prol

scalar.ph207.prol:                                ; preds = %scalar.ph207.preheader
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.14048.us.i.ph
  %i.md = load double, ptr %i.mc, align 8, !tbaa !85
  %i.me = load double, ptr %i.ln, align 8, !tbaa !85
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !85
  %i.mh = fneg double %i.md
  %i.mi = call double @llvm.fmuladd.f64(double %i.mh, double %i.me, double %i.mg)
  store double %i.mi, ptr %i.mf, align 8, !tbaa !85
  %i.mj = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph207.prol.loopexit

scalar.ph207.prol.loopexit:                       ; preds = %scalar.ph207.prol, %scalar.ph207.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph207.preheader ], [ %i.mj, %scalar.ph207.prol ]
  %i.mk = icmp eq i64 %i.jq, %.14048.us.i.ph
  br i1 %i.mk, label %._crit_edge.us54.i, label %scalar.ph207

scalar.ph207:                                     ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207
  %.14048.us.i = phi i64 [ %i.na, %scalar.ph207 ], [ %.14048.us.i.unr, %scalar.ph207.prol.loopexit ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.14048.us.i
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !85
  %i.mn = load double, ptr %i.ln, align 8, !tbaa !85
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !85
  %i.mq = fneg double %i.mm
  %i.mr = call double @llvm.fmuladd.f64(double %i.mq, double %i.mn, double %i.mp)
  store double %i.mr, ptr %i.mo, align 8, !tbaa !85
  %i.ms = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !85
  %i.mv = load double, ptr %i.ln, align 8, !tbaa !85
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.ms ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !85
  %i.my = fneg double %i.mu
  %i.mz = call double @llvm.fmuladd.f64(double %i.my, double %i.mv, double %i.mx)
  store double %i.mz, ptr %i.mw, align 8, !tbaa !85
  %i.na = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.na, %i.jw
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph207, !llvm.loop !530

._crit_edge.us54.i:                               ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207, %middle.block220
  %12 = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %13 = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !531

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.kc, %.lr.ph47.split.i.preheader.new ], [ %24, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %25, %.lr.ph47.split.i ] ; 3 uses
  %niter255 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter255.next.1, %.lr.ph47.split.i ]
  %14 = load double, ptr %.046.i, align 8, !tbaa !85
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %16 = load double, ptr %15, align 8, !tbaa !85
  %17 = call double @llvm.fmuladd.f64(double %i.kd, double %14, double %16)
  store double %17, ptr %15, align 8, !tbaa !85
  %18 = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %19 = load double, ptr %18, align 8, !tbaa !85
  %20 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %22 = load double, ptr %21, align 8, !tbaa !85
  %23 = call double @llvm.fmuladd.f64(double %i.kd, double %19, double %22)
  store double %23, ptr %21, align 8, !tbaa !85
  %24 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %0 ; 2 uses
  %25 = add nuw nsw i64 %.04145.i, 2              ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %.lr.ph51.split.i.preheader.unr-lcssa, label %.lr.ph47.split.i, !llvm.loop !524

.lr.ph51.split.i.preheader.unr-lcssa:             ; preds = %.lr.ph47.split.i
  %lcmp.mod252.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod252.not, label %.lr.ph51.split.i.preheader, label %.lr.ph47.split.i.epil.preheader

.lr.ph47.split.i.epil.preheader:                  ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.preheader
  %.046.i.epil.init = phi ptr [ %i.kc, %.lr.ph47.split.i.preheader ], [ %24, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %.04145.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.preheader ], [ %25, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %lcmp.mod253 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod253)
  %26 = load double, ptr %.046.i.epil.init, align 8, !tbaa !85
  %27 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i.epil.init ; 2 uses
  %28 = load double, ptr %27, align 8, !tbaa !85
  %29 = call double @llvm.fmuladd.f64(double %i.kd, double %26, double %28)
  store double %29, ptr %27, align 8, !tbaa !85
  br label %.lr.ph51.split.i.preheader

.lr.ph51.split.i.preheader:                       ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.epil.preheader
  %xtraiter256 = and i64 %9, 3                    ; 3 uses
  %30 = icmp ult i64 %.0123162, 3
  br i1 %30, label %.lr.ph51.split.i.epil.preheader, label %.lr.ph51.split.i.preheader.new

.lr.ph51.split.i.preheader.new:                   ; preds = %.lr.ph51.split.i.preheader
  %unroll_iter260 = and i64 %9, -4
  br label %.lr.ph51.split.i

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.split.i, %.lr.ph51.split.i.preheader.new
  %.150.i = phi ptr [ %i.kc, %.lr.ph51.split.i.preheader.new ], [ %53, %.lr.ph51.split.i ] ; 3 uses
  %.14249.i = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %54, %.lr.ph51.split.i ] ; 5 uses
  %niter261 = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %niter261.next.3, %.lr.ph51.split.i ]
  %31 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %32 = load double, ptr %31, align 8, !tbaa !85
  %33 = load double, ptr %.150.i, align 8, !tbaa !85
  %34 = fsub double %33, %32
  store double %34, ptr %.150.i, align 8, !tbaa !85
  %35 = getelementptr inbounds nuw [8 x i8], ptr %.150.i, i64 %0 ; 3 uses
  %36 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !85
  %39 = load double, ptr %35, align 8, !tbaa !85
  %40 = fsub double %39, %38
  store double %40, ptr %35, align 8, !tbaa !85
  %41 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %0 ; 3 uses
  %42 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %44 = load double, ptr %43, align 8, !tbaa !85
  %45 = load double, ptr %41, align 8, !tbaa !85
  %46 = fsub double %45, %44
  store double %46, ptr %41, align 8, !tbaa !85
  %47 = getelementptr inbounds nuw [8 x i8], ptr %41, i64 %0 ; 3 uses
  %48 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 24
  %50 = load double, ptr %49, align 8, !tbaa !85
  %51 = load double, ptr %47, align 8, !tbaa !85
  %52 = fsub double %51, %50
  store double %52, ptr %47, align 8, !tbaa !85
  %53 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %0 ; 2 uses
  %54 = add nuw nsw i64 %.14249.i, 4              ; 2 uses
  %niter261.next.3 = add i64 %niter261, 4         ; 2 uses
  %niter261.ncmp.3 = icmp eq i64 %niter261.next.3, %unroll_iter260
  br i1 %niter261.ncmp.3, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa, label %.lr.ph51.split.i, !llvm.loop !531

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa: ; preds = %.lr.ph51.split.i
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod258.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil.preheader

.lr.ph51.split.i.epil.preheader:                  ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa, %.lr.ph51.split.i.preheader
  %.150.i.epil.init = phi ptr [ %i.kc, %.lr.ph51.split.i.preheader ], [ %53, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa ]
  %.14249.i.epil.init = phi i64 [ 0, %.lr.ph51.split.i.preheader ], [ %54, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa ]
  %lcmp.mod259 = icmp ne i64 %xtraiter256, 0
  call void @llvm.assume(i1 %lcmp.mod259)
  br label %.lr.ph51.split.i.epil

.lr.ph51.split.i.epil:                            ; preds = %.lr.ph51.split.i.epil, %.lr.ph51.split.i.epil.preheader
  %.150.i.epil = phi ptr [ %i.nb, %.lr.ph51.split.i.epil ], [ %.150.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 3 uses
  %.14249.i.epil = phi i64 [ %59, %.lr.ph51.split.i.epil ], [ %.14249.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 2 uses
  %epil.iter257 = phi i64 [ %epil.iter257.next, %.lr.ph51.split.i.epil ], [ 0, %.lr.ph51.split.i.epil.preheader ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i.epil
  %56 = load double, ptr %55, align 8, !tbaa !85
  %57 = load double, ptr %.150.i.epil, align 8, !tbaa !85
  %58 = fsub double %57, %56
  store double %58, ptr %.150.i.epil, align 8, !tbaa !85
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.150.i.epil, i64 %0
  %59 = add nuw nsw i64 %.14249.i.epil, 1
  %epil.iter257.next = add i64 %epil.iter257, 1   ; 2 uses
  %epil.iter257.cmp.not = icmp eq i64 %epil.iter257.next, %xtraiter256
  br i1 %epil.iter257.cmp.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil, !llvm.loop !532

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit: ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa, %.lr.ph51.split.i.epil, %._crit_edge.us54.i
  %i.nc = add nsw i64 %.0123162, -1
  %i.nd = icmp sgt i64 %.0123162, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.nd, label %bb.m, label %.loopexit, !llvm.loop !533

.loopexit:                                        ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, %._crit_edge161, %._crit_edge143, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %._crit_edge143 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge161 ], [ 0, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [1000 x double], align 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp sgt i64 %1, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  %i.c = add nsw i64 %1, -3                       ; 2 uses
  %i.d = mul i64 %1, %1
  %i.e = shl i64 %i.d, 3
  %i.f = shl i64 %1, 3                            ; 2 uses
  %i.g = sub nuw nsw i64 -8, %i.f
  %i.h = shl i64 %1, 3
  %i.i = add nsw i64 %1, -2
  %i.j = getelementptr i8, ptr %0, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = getelementptr i8, ptr %0, i64 %i.f
  %i.m = add nsw i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit
  %.027 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit ] ; 12 uses
  %i.n = sub i64 %i.c, %.027
  %i.o = sub i64 %i.i, %.027                      ; 3 uses
  %i.p = mul i64 %i.g, %.027
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.p
  %i.q = mul i64 %i.h, %.027
  %scevgep30 = getelementptr i8, ptr %i.l, i64 %i.q
  %i.r = getelementptr [8 x i8], ptr %0, i64 %.027
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = mul i64 %.027, %1
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.t ; 6 uses
  %i.v = xor i64 %.027, -1
  %i.w = add nsw i64 %1, %i.v                     ; 9 uses
  %i.x = mul i64 %i.w, %1
  %i.y = getelementptr [8 x i8], ptr %0, i64 %i.x ; 17 uses
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %4

4:                                                ; preds = %bb.b
  %5 = icmp sgt i64 %i.w, 0
  br i1 %5, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

.lr.ph.i.preheader:                               ; preds = %4
  %min.iters.check32 = icmp ult i64 %i.w, 4
  br i1 %min.iters.check32, label %.lr.ph.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %bound0 = icmp ult ptr %i.y, %scevgep30
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck
  %n.vec34 = and i64 %i.w, 9223372036854775804    ; 4 uses
  %i.z = shl i64 %n.vec34, 3                      ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.u, i64 %i.z
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body35 ] ; 2 uses
  %i.ac = shl i64 %index36, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ac ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.u, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <2 x double>, ptr %next.gep37, align 8, !tbaa !85, !alias.scope !551
  %wide.load39 = load <2 x double>, ptr %i.ad, align 8, !tbaa !85, !alias.scope !551
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load38, ptr %next.gep, align 8, !tbaa !85, !alias.scope !552, !noalias !551
  store <2 x double> %wide.load39, ptr %i.ae, align 8, !tbaa !85, !alias.scope !552, !noalias !551
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.af, label %middle.block41, label %vector.body35, !llvm.loop !543

middle.block41:                                   ; preds = %vector.body35
  %cmp.n42 = icmp eq i64 %i.w, %n.vec34
  br i1 %cmp.n42, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader47

.lr.ph.i.preheader47:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block41
  %.020.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec34, %middle.block41 ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.preheader ], [ %i.aa, %middle.block41 ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.preheader ], [ %i.ab, %middle.block41 ] ; 2 uses
  %i.ag = sub nsw i64 %i.w, %.020.i.ph
  %i.ah = sub i64 %i.o, %.020.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader47, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.al, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader47 ]
  %.01019.i.prol = phi ptr [ %i.ak, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader47 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.aj = load double, ptr %.01218.i.prol, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.aj, ptr %.01019.i.prol, align 8, !tbaa !85
  %i.al = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !544

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader47
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader47 ], [ %i.al, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader47 ], [ %i.ak, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader47 ], [ %i.ai, %.lr.ph.i.prol ]
  %i.am = icmp ult i64 %i.ah, 7
  br i1 %i.am, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %4
  %6 = load double, ptr %i.y, align 8, !tbaa !85
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bl, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ao = load double, ptr %.01218.i, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ao, ptr %.01019.i, align 8, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ar = load double, ptr %i.an, align 8, !tbaa !85
  %i.as = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ar, ptr %i.ap, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.au = load double, ptr %i.aq, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.au, ptr %i.as, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ax = load double, ptr %i.at, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ax, ptr %i.av, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.ba, ptr %i.ay, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.bd = load double, ptr %i.az, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.bd, ptr %i.bb, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.bg = load double, ptr %i.bc, align 8, !tbaa !85
  %i.bh = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.bg, ptr %i.be, align 8, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bj = load double, ptr %i.bf, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bj, ptr %i.bh, align 8, !tbaa !85
  %i.bl = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bl, %i.w
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !545

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block41, %bb.b
  %7 = load double, ptr %i.y, align 8, !tbaa !85  ; 3 uses
  %8 = icmp sgt i64 %i.w, 1
  br i1 %8, label %.lr.ph.i25.preheader, label %._crit_edge.i

.lr.ph.i25.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %xtraiter48 = and i64 %i.o, 3                   ; 3 uses
  %i.bm = icmp ult i64 %i.n, 3
  br i1 %i.bm, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.o, -4
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.041.i = phi double [ 0.000000e+00, %.lr.ph.i25.preheader.new ], [ %i.cb, %.lr.ph.i25 ]
  %.03640.i = phi i64 [ 1, %.lr.ph.i25.preheader.new ], [ %i.cc, %.lr.ph.i25 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.3, %.lr.ph.i25 ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !85 ; 2 uses
  %i.bp = call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %.041.i)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !85 ; 2 uses
  %i.bt = call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bp)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !85 ; 2 uses
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bt)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !85 ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.bx) ; 3 uses
  %i.cc = add nuw nsw i64 %.03640.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i25, !llvm.loop !546

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i25
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.i, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.preheader
  %.041.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i25.preheader ], [ %i.cb, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03640.i.epil.init = phi i64 [ 1, %.lr.ph.i25.preheader ], [ %i.cc, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i25.epil

.lr.ph.i25.epil:                                  ; preds = %.lr.ph.i25.epil, %.lr.ph.i25.epil.preheader
  %.041.i.epil = phi double [ %i.cf, %.lr.ph.i25.epil ], [ %.041.i.epil.init, %.lr.ph.i25.epil.preheader ]
  %.03640.i.epil = phi i64 [ %i.cg, %.lr.ph.i25.epil ], [ %.03640.i.epil.init, %.lr.ph.i25.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i25.epil ], [ 0, %.lr.ph.i25.epil.preheader ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i.epil
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !85 ; 2 uses
  %i.cf = call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %.041.i.epil) ; 2 uses
  %i.cg = add nuw nsw i64 %.03640.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i25.epil, !llvm.loop !547

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %9 = phi i1 [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ true, %.lr.ph.i25.epil ], [ true, %._crit_edge.i.loopexit.unr-lcssa ]
  %10 = phi double [ %7, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %6, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %7, %.lr.ph.i25.epil ], [ %7, %._crit_edge.i.loopexit.unr-lcssa ] ; 6 uses
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.cb, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cf, %.lr.ph.i25.epil ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.027 ; 3 uses
  %i.ci = call double @llvm.fmuladd.f64(double %10, double %10, double %.0.lcssa.i)
  %i.cj = call double @sqrt(double noundef %i.ci) #24 ; 3 uses
  %i.ck = fcmp oeq double %.0.lcssa.i, 0.000000e+00
  br i1 %i.ck, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.cl = fcmp olt double %10, 0.000000e+00
  %i.cm = select i1 %i.cl, double 2.000000e+00, double 0.000000e+00
  store double %i.cm, ptr %i.ch, align 8, !tbaa !85
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !85
  br label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.cn = fcmp ugt double %10, 0.000000e+00
  %i.co = fsub double %10, %i.cj
  %i.cp = fneg double %.0.lcssa.i
  %i.cq = fadd double %10, %i.cj
  %i.cr = fdiv double %i.cp, %i.cq
  %.035.i = select i1 %i.cn, double %i.cr, double %i.co ; 4 uses
  %i.cs = fmul double %.035.i, %.035.i            ; 2 uses
  %i.ct = fmul double %i.cs, 2.000000e+00
  %i.cu = fadd double %.0.lcssa.i, %i.cs
  %i.cv = fdiv double %i.ct, %i.cu
  store double %i.cv, ptr %i.ch, align 8, !tbaa !85
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !85
  br i1 %9, label %.lr.ph44.i.preheader, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

.lr.ph44.i.preheader:                             ; preds = %bb.d
  %11 = sub i64 %i.m, %.027                       ; 4 uses
  %min.iters.check = icmp ult i64 %11, 2
  br i1 %min.iters.check, label %.lr.ph44.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %11, -2                        ; 2 uses
  %i.cw = or i64 %11, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.035.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cy, align 8, !tbaa !85
  %i.cz = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cz, ptr %i.cy, align 8, !tbaa !85
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i.preheader46

.lr.ph44.i.preheader46:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.142.i.ph = phi i64 [ 1, %.lr.ph44.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader46, %.lr.ph44.i
  %.142.i = phi i64 [ %i.de, %.lr.ph44.i ], [ %.142.i.ph, %.lr.ph44.i.preheader46 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.142.i ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !85
  %i.dd = fdiv double %i.dc, %.035.i
  store double %i.dd, ptr %i.db, align 8, !tbaa !85
  %i.de = add nuw nsw i64 %.142.i, 1              ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.de, %i.w
  br i1 %exitcond45.not.i, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i, !llvm.loop !549

_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit:  ; preds = %.lr.ph44.i, %middle.block, %bb.c, %bb.d
  store double %i.cj, ptr %i.u, align 8, !tbaa !85
  %i.df = load double, ptr %i.ch, align 8, !tbaa !85
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %1, i64 noundef %.027, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, double noundef %i.df)
  %i.dg = add nuw nsw i64 %.027, 1
  %exitcond.not = icmp eq i64 %.027, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !550

._crit_edge:                                      ; preds = %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi21casadi_cvx_symm_schurIdEEixPT_S2_S1_xPxS2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  store i64 0, ptr %5, align 8, !tbaa !50
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.a
  %i.b = add nsw i64 %0, -1                       ; 5 uses
  %.not94 = icmp eq i64 %0, 1
  %.not = icmp eq ptr %6, null
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %._crit_edge91, label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.lr.ph90
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = shl i64 %0, 3                            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 -8
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.e
  %min.iters.check = icmp ult i64 %0, 3
  %bound0 = icmp ult ptr %2, %scevgep104
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %bb.f
  %.07187102 = phi ptr [ %i.d, %.preheader77.lr.ph ], [ %.172, %bb.f ] ; 5 uses
  %.088101 = phi i64 [ 0, %.preheader77.lr.ph ], [ %i.ba, %bb.f ] ; 2 uses
  br i1 %.not94, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader77
  %brmerge = or i1 %min.iters.check, %found.conflict
  br i1 %brmerge, label %.lr.ph.preheader109, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %pred.store.continue108
  %index = phi i64 [ %index.next, %pred.store.continue108 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !85, !alias.scope !559, !noalias !560
  %i.h = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load105 = load <2 x double>, ptr %i.i, align 8, !tbaa !85, !alias.scope !560
  %i.j = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load105)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load106 = load <2 x double>, ptr %i.l, align 8, !tbaa !85, !alias.scope !560
  %i.m = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load106)
  %i.n = fadd <2 x double> %i.j, %i.m
  %i.o = fmul <2 x double> %broadcast.splat, %i.n
  %i.p = fcmp ole <2 x double> %i.h, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !85, !alias.scope !559, !noalias !560
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <2 x i1> %i.p, i64 1
  br i1 %i.r, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !85, !alias.scope !559, !noalias !560
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %pred.store.continue108
  br i1 %cmp.n, label %.lr.ph84.preheader, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06878.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %bb.c
  %.06878 = phi i64 [ %i.z, %bb.c ], [ %.06878.ph, %.lr.ph.preheader109 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06878 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !85
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06878
  %i.z = add nuw nsw i64 %.06878, 1               ; 2 uses
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !85
  %i.ab = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  %i.ac = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ab)
  %i.ad = fmul double %3, %i.ac
  %i.ae = fcmp ugt double %i.x, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %exitcond.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond.not, label %.lr.ph84.preheader, label %.lr.ph, !llvm.loop !557

.lr.ph84.preheader:                               ; preds = %bb.c, %middle.block
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.05983 = phi i1 [ %or.cond, %.lr.ph84 ], [ true, %.lr.ph84.preheader ]
  %.06182 = phi i1 [ %or.cond3, %.lr.ph84 ], [ true, %.lr.ph84.preheader ]
  %.16481 = phi i64 [ %.3, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %.06580 = phi i64 [ %.267, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %.16979 = phi i64 [ %i.aq, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ] ; 3 uses
  %i.af = sub nsw i64 %0, %.16979
  %i.ag = getelementptr [8 x i8], ptr %2, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !85
  %i.aj = fcmp oeq double %i.ai, 0.000000e+00
  %or.cond = and i1 %.05983, %i.aj                ; 2 uses
  %i.ak = zext i1 %or.cond to i64
  %.2 = add nuw nsw i64 %.16481, %i.ak            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16979
  %i.am = load double, ptr %i.al, align 8, !tbaa !85
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond3 = and i1 %.06182, %i.an               ; 2 uses
  %i.ao = zext i1 %or.cond3 to i64
  %.166 = add nsw i64 %.06580, %i.ao
  %i.ap = icmp eq i64 %.2, %i.b                   ; 2 uses
  %.267 = select i1 %i.ap, i64 0, i64 %.166       ; 2 uses
  %.3 = select i1 %i.ap, i64 %0, i64 %.2          ; 2 uses
  %i.aq = add nuw nsw i64 %.16979, 1              ; 2 uses
  %exitcond96.not = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph84, !llvm.loop !558

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader77
  %.065.lcssa = phi i64 [ 0, %.preheader77 ], [ %.267, %.lr.ph84 ] ; 4 uses
  %.164.lcssa = phi i64 [ 0, %.preheader77 ], [ %.3, %.lr.ph84 ] ; 2 uses
  %i.ar = add i64 %.065.lcssa, %.164.lcssa
  %i.as = sub i64 %0, %i.ar                       ; 3 uses
  %i.at = icmp slt i64 %.164.lcssa, %0
  br i1 %i.at, label %bb.d, label %._crit_edge91

bb.d:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %.065.lcssa
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %.065.lcssa
  %i.aw = getelementptr inbounds [8 x i8], ptr %6, i64 %.088101
  %i.ax = select i1 %.not, ptr null, ptr %i.aw
  tail call void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %i.as, ptr noundef %i.au, ptr noundef %i.av, ptr noundef %i.ax)
  %i.ay = shl i64 %i.as, 1
  %i.az = add i64 %.088101, -2
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  %.not76 = icmp eq ptr %.07187102, null
  br i1 %.not76, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.07187102, i64 8
  store i64 %i.as, ptr %.07187102, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %.07187102, i64 16
  store i64 %.065.lcssa, ptr %i.bb, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %.07187102, i64 24
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.172 = phi ptr [ %i.bd, %bb.e ], [ null, %bb.d ]
  %i.be = load i64, ptr %5, align 8, !tbaa !50
  %i.bf = add nsw i64 %i.be, 1                    ; 2 uses
  store i64 %i.bf, ptr %5, align 8, !tbaa !50
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %._crit_edge91, label %.preheader77

._crit_edge91:                                    ; preds = %bb.f, %._crit_edge, %.lr.ph90, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph90 ], [ 0, %._crit_edge ], [ 1, %bb.f ]
  ret i32 %.070
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %1, 1                        ; 3 uses
  %i.b = mul nsw i64 %1, %0
  %i.c = getelementptr [8 x i8], ptr %2, i64 %i.a
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = xor i64 %1, -1
  %i.f = add i64 %0, %i.e                         ; 14 uses
  %.not.i = icmp ne ptr %3, null                  ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 3 uses
  %or.cond.i = and i1 %i.g, %.not.i
  br i1 %or.cond.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread:    ; preds = %bb.a
  %i.h = shl nuw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %3, i8 0, i64 %i.h, i1 false), !tbaa !85
  br label %.lr.ph88.preheader

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.a
  br i1 %i.g, label %.lr.ph88.preheader, label %._crit_edge100

.lr.ph88.preheader:                               ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread, %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %0 ; 2 uses
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %._crit_edge
  %.087 = phi ptr [ %i.ai, %._crit_edge ], [ %i.i, %.lr.ph88.preheader ] ; 3 uses
  %.07386 = phi i64 [ %i.q, %._crit_edge ], [ 0, %.lr.ph88.preheader ] ; 4 uses
  %i.j = load double, ptr %.087, align 8, !tbaa !85
  %i.k = fmul double %5, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07386 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07386 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !85
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.o)
  store double %i.p, ptr %i.n, align 8, !tbaa !85
  %i.q = add nuw nsw i64 %.07386, 1               ; 4 uses
  %i.r = icmp slt i64 %i.q, %i.f
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph88, %.lr.ph
  %.185.pn = phi ptr [ %.185, %.lr.ph ], [ %.087, %.lr.ph88 ]
  %.07184 = phi i64 [ %i.ae, %.lr.ph ], [ %i.q, %.lr.ph88 ] ; 3 uses
  %.185 = getelementptr inbounds nuw i8, ptr %.185.pn, i64 8 ; 4 uses
  %i.s = load double, ptr %.185, align 8, !tbaa !85
  %i.t = fmul double %5, %i.s
  %i.u = load double, ptr %i.l, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07184 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !85
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !85
  %i.y = load double, ptr %.185, align 8, !tbaa !85
  %i.z = fmul double %5, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07184
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !85
  %i.ac = load double, ptr %i.n, align 8, !tbaa !85
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !85
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !561

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !562

._crit_edge89:                                    ; preds = %._crit_edge
  %i.aj = fneg double %5
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge100

.lr.ph.i.preheader:                               ; preds = %._crit_edge89
  %i.ak = add i64 %0, -2
  %i.al = sub i64 %i.ak, %1
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.f, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ]
  %.0710.i = phi ptr [ %4, %.lr.ph.i.preheader.new ], [ %i.be, %.lr.ph.i ] ; 5 uses
  %.089.i = phi ptr [ %3, %.lr.ph.i.preheader.new ], [ %i.bc, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.089.i, i64 8
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !85
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !85
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !85
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !85
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !563

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.0710.i.epil.init = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.be, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.089.i.epil.init = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.bc, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi double [ %i.bl, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.bj, %.lr.ph.i.epil ], [ %.0710.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.bh, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !85
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !85
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !564

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit:       ; preds = %.lr.ph.i.epil, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa
  %.lcssa = phi double [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ], [ %i.bl, %.lr.ph.i.epil ]
  %i.bm = fmul double %.lcssa, %i.aj
  %i.bn = fmul double %i.bm, 5.000000e-01         ; 2 uses
  br i1 %.not.i, label %.lr.ph.i78.preheader, label %.lr.ph99.preheader

.lr.ph.i78.preheader:                             ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i78.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i78.preheader
  %i.bo = shl i64 %0, 3
  %i.bp = shl i64 %1, 3
  %i.bq = add i64 %i.bo, -8
  %i.br = sub i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = getelementptr i8, ptr %3, i64 %i.br
  %i.bt = getelementptr i8, ptr %4, i64 %i.br
  %bound0 = icmp ult ptr %3, %i.bt
  %bound1 = icmp ult ptr %4, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i78.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 4 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %3, i64 %i.bu
  %i.bw = getelementptr i8, ptr %4, i64 %i.bu
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.bx ; 3 uses
  %next.gep112 = getelementptr i8, ptr %4, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !85, !alias.scope !579
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !85, !alias.scope !579
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !85, !alias.scope !580, !noalias !579
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph99.preheader, label %.lr.ph.i78.preheader161

.lr.ph.i78.preheader161:                          ; preds = %vector.memcheck, %.lr.ph.i78.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec, %middle.block ]
  %.0813.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i78.preheader ], [ %i.bv, %middle.block ]
  %.0912.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i78.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader161, %.lr.ph.i78
  %.014.i = phi i64 [ %i.ci, %.lr.ph.i78 ], [ %.014.i.ph, %.lr.ph.i78.preheader161 ]
  %.0813.i = phi ptr [ %i.cf, %.lr.ph.i78 ], [ %.0813.i.ph, %.lr.ph.i78.preheader161 ] ; 3 uses
  %.0912.i = phi ptr [ %i.cd, %.lr.ph.i78 ], [ %.0912.i.ph, %.lr.ph.i78.preheader161 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !85
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !85
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !85
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !569

.lr.ph99.preheader:                               ; preds = %.lr.ph.i78, %middle.block, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %i.cj = shl i64 %0, 3
  %i.ck = add i64 %i.cj, -8
  %i.cl = shl i64 %1, 3
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %scevgep121 = getelementptr i8, ptr %4, i64 %i.cm ; 2 uses
  %scevgep122 = getelementptr i8, ptr %3, i64 %i.cm ; 2 uses
  %i.cn = add i64 %0, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %._crit_edge95
  %.298 = phi ptr [ %i.el, %._crit_edge95 ], [ %i.i, %.lr.ph99.preheader ] ; 9 uses
  %.17497 = phi i64 [ %i.cz, %._crit_edge95 ], [ 0, %.lr.ph99.preheader ] ; 7 uses
  %i.co = shl i64 %.17497, 3
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = shl i64 %.17497, 3
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %scevgep120 = getelementptr i8, ptr %4, i64 %i.cr
  %scevgep123 = getelementptr i8, ptr %3, i64 %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17497 ; 3 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !85
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !85
  %i.cw = load double, ptr %.298, align 8, !tbaa !85
  %i.cx = fmul double %i.ct, -2.000000e+00
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cv, double %i.cw)
  store double %i.cy, ptr %.298, align 8, !tbaa !85
  %i.cz = add nuw nsw i64 %.17497, 1              ; 7 uses
  %i.da = icmp slt i64 %i.cz, %i.f
  br i1 %i.da, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %.lr.ph99
  %i.db = add i64 %1, %.17497
  %i.dc = sub i64 %i.cn, %i.db                    ; 3 uses
  %min.iters.check139 = icmp ult i64 %i.dc, 6
  br i1 %min.iters.check139, label %.lr.ph94.preheader160, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph94.preheader
  %scevgep = getelementptr i8, ptr %.298, i64 8   ; 4 uses
  %scevgep119 = getelementptr i8, ptr %.298, i64 %i.cp ; 4 uses
  %bound0124 = icmp ult ptr %scevgep, %scevgep121
  %bound1125 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict126 = and i1 %bound0124, %bound1125
  %bound0127 = icmp ult ptr %scevgep, %scevgep121
  %bound1128 = icmp ult ptr %4, %scevgep119
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx = or i1 %found.conflict126, %found.conflict129
  %bound0130 = icmp ult ptr %scevgep, %scevgep122
  %bound1131 = icmp ult ptr %3, %scevgep119
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep, %scevgep122
  %bound1135 = icmp ult ptr %scevgep123, %scevgep119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  br i1 %conflict.rdx137, label %.lr.ph94.preheader160, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck118
  %n.vec141 = and i64 %i.dc, -4                   ; 4 uses
  %i.dd = shl i64 %n.vec141, 3
  %i.de = getelementptr i8, ptr %.298, i64 %i.dd  ; 2 uses
  %i.df = add i64 %i.cz, %n.vec141
  %i.dg = load double, ptr %i.cs, align 8, !tbaa !85, !alias.scope !581
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = load double, ptr %i.cu, align 8, !tbaa !85, !alias.scope !582
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %i.dh, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next155, %vector.body142 ] ; 3 uses
  %i.di = shl i64 %index143, 3
  %next.gep144 = getelementptr i8, ptr %.298, i64 %i.di ; 2 uses
  %i.dj = add nuw i64 %i.cz, %index143            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep144, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dj ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load145 = load <2 x double>, ptr %i.dl, align 8, !tbaa !85, !alias.scope !583
  %wide.load146 = load <2 x double>, ptr %i.dm, align 8, !tbaa !85, !alias.scope !583
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dj ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load147 = load <2 x double>, ptr %i.dn, align 8, !tbaa !85, !alias.scope !584
  %wide.load148 = load <2 x double>, ptr %i.do, align 8, !tbaa !85, !alias.scope !584
  %i.dp = fmul <2 x double> %wide.load147, %broadcast.splat150
  %i.dq = fmul <2 x double> %wide.load148, %broadcast.splat150
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load145, <2 x double> %i.dp)
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load146, <2 x double> %i.dq)
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep144, i64 24 ; 2 uses
  %wide.load153 = load <2 x double>, ptr %i.dk, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  %wide.load154 = load <2 x double>, ptr %i.dt, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  %i.du = fsub <2 x double> %wide.load153, %i.dr
  %i.dv = fsub <2 x double> %wide.load154, %i.ds
  store <2 x double> %i.du, ptr %i.dk, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !85, !alias.scope !585, !noalias !586
  %index.next155 = add nuw i64 %index143, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next155, %n.vec141
  br i1 %i.dw, label %middle.block156, label %vector.body142, !llvm.loop !576

middle.block156:                                  ; preds = %vector.body142
  %cmp.n157 = icmp eq i64 %i.dc, %n.vec141
  br i1 %cmp.n157, label %._crit_edge95, label %.lr.ph94.preheader160

.lr.ph94.preheader160:                            ; preds = %vector.memcheck118, %.lr.ph94.preheader, %middle.block156
  %.392.pn.ph = phi ptr [ %.298, %vector.memcheck118 ], [ %.298, %.lr.ph94.preheader ], [ %i.de, %middle.block156 ]
  %.17291.ph = phi i64 [ %i.cz, %vector.memcheck118 ], [ %i.cz, %.lr.ph94.preheader ], [ %i.df, %middle.block156 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader160, %.lr.ph94
  %.392.pn = phi ptr [ %.392, %.lr.ph94 ], [ %.392.pn.ph, %.lr.ph94.preheader160 ]
  %.17291 = phi i64 [ %i.eh, %.lr.ph94 ], [ %.17291.ph, %.lr.ph94.preheader160 ] ; 3 uses
  %.392 = getelementptr inbounds nuw i8, ptr %.392.pn, i64 8 ; 4 uses
  %i.dx = load double, ptr %i.cs, align 8, !tbaa !85
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !85
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !85
  %i.ec = load double, ptr %i.cu, align 8, !tbaa !85
  %i.ed = fmul double %i.eb, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dz, double %i.ed)
  %i.ef = load double, ptr %.392, align 8, !tbaa !85
  %i.eg = fsub double %i.ef, %i.ee
  store double %i.eg, ptr %.392, align 8, !tbaa !85
  %i.eh = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.eh, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !577

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block156, %.lr.ph99
  %i.ei = phi ptr [ %.298, %.lr.ph99 ], [ %i.de, %middle.block156 ], [ %.392, %.lr.ph94 ]
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.a
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %.17497
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %exitcond103.not = icmp eq i64 %i.cz, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !578

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !85
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !85 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !85 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %i.n = tail call double @sqrt(double noundef %i.m) #24
  %i.o = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %i.n, double %i.h)
  %i.p = fdiv double %i.k, %i.o
  %i.q = fsub double %i.f, %i.p
  %i.r = load double, ptr %1, align 8, !tbaa !85  ; 3 uses
  %i.s = fsub double %i.r, %i.q                   ; 3 uses
  %i.t = load double, ptr %2, align 8, !tbaa !85  ; 7 uses
  %i.u = icmp sgt i64 %0, 1
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.v = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.v, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.w = tail call double @llvm.fabs.f64(double %i.t)
  %i.x = tail call double @llvm.fabs.f64(double %i.s)
  %i.y = fcmp ogt double %i.w, %i.x
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = fneg double %i.t
  %i.aa = fdiv double %i.z, %i.s                  ; 3 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double 1.000000e+00)
  %sqrt21.i.peel = tail call double @llvm.sqrt.f64(double %i.ab)
  %i.ac = fdiv double 1.000000e+00, %sqrt21.i.peel ; 2 uses
  %i.ad = fmul double %i.aa, %i.ac
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ae = fneg double %i.s
  %i.af = fdiv double %i.ae, %i.t                 ; 3 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double 1.000000e+00)
  %sqrt.i.peel = tail call double @llvm.sqrt.f64(double %i.ag)
  %i.ah = fdiv double 1.000000e+00, %sqrt.i.peel  ; 2 uses
  %i.ai = fmul double %i.af, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader, %bb.c, %bb.d
  %.077.peel = phi double [ %i.ac, %bb.c ], [ %i.ai, %bb.d ], [ 1.000000e+00, %.lr.ph.preheader ] ; 7 uses
  %.076.peel = phi double [ %i.ad, %bb.c ], [ %i.ah, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !85 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !85
  %i.an = fneg double %.076.peel                  ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.ak, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.ap, %i.ar
  %i.at = insertelement <2 x double> poison, double %i.r, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.t, i64 1
  %i.av = insertelement <2 x double> poison, double %.077.peel, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.aw, <2 x double> %i.as) ; 3 uses
  %i.ay = insertelement <2 x double> poison, double %.076.peel, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %.077.peel, i64 1 ; 2 uses
  %i.ba = fneg <2 x double> %i.ax
  %i.bb = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = shufflevector <2 x double> %i.ax, <2 x double> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bd = fmul <2 x double> %i.bb, %i.bc
  %i.be = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.be, <2 x double> %i.bd) ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1
  store double %i.bg, ptr %1, align 8, !tbaa !85
  %i.bh = extractelement <2 x double> %i.bf, i64 0
  store double %i.bh, ptr %2, align 8, !tbaa !85
  %i.bi = fmul double %.076.peel, %i.r
  %i.bj = fmul double %.076.peel, 2.000000e+00
  %i.bk = fmul double %i.bj, %i.t
  %i.bl = fmul double %.077.peel, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bi, double %.076.peel, double %i.bl)
  %i.bn = fmul double %.077.peel, %i.ak
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %.077.peel, double %i.bm)
  store double %i.bo, ptr %i.aj, align 8, !tbaa !85
  %i.bp = load double, ptr %i.al, align 8, !tbaa !85
  %i.bq = fmul double %.077.peel, %i.bp
  store double %i.bq, ptr %i.al, align 8, !tbaa !85
  %i.br = load double, ptr %2, align 8, !tbaa !85
  %i.bs = fmul double %i.am, %i.an
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.076.peel, ptr %i.bt, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.peel = phi ptr [ %i.bu, %bb.f ], [ null, %bb.e ]
  %exitcond.peel.not = icmp eq i64 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %.081 = phi i64 [ %i.ck, %bb.m ], [ 1, %bb.g ]  ; 3 uses
  %.06380 = phi double [ %i.ea, %bb.m ], [ %i.bs, %bb.g ] ; 5 uses
  %.06479 = phi double [ %i.dz, %bb.m ], [ %i.br, %bb.g ] ; 3 uses
  %.06578 = phi ptr [ %.1, %bb.m ], [ %.1.peel, %bb.g ] ; 4 uses
  %i.bv = fcmp oeq double %.06380, 0.000000e+00
  br i1 %i.bv, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bw = tail call double @llvm.fabs.f64(double %.06380)
  %i.bx = tail call double @llvm.fabs.f64(double %.06479)
  %i.by = fcmp ogt double %i.bw, %i.bx
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = fneg double %.06479
  %i.ca = fdiv double %i.bz, %.06380              ; 3 uses
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.cb)
  %i.cc = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.cd = fmul double %i.ca, %i.cc
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ce = fneg double %.06380
  %i.cf = fdiv double %i.ce, %.06479              ; 3 uses
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.cg)
  %i.ch = fdiv double 1.000000e+00, %sqrt21.i     ; 2 uses
  %i.ci = fmul double %i.cf, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.i, %bb.j
  %.077 = phi double [ %i.ch, %bb.j ], [ %i.cd, %bb.i ], [ 1.000000e+00, %.lr.ph ] ; 8 uses
  %.076 = phi double [ %i.ci, %bb.j ], [ %i.cc, %bb.i ], [ 0.000000e+00, %.lr.ph ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.081 ; 2 uses
  %i.ck = add nuw nsw i64 %.081, 1                ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.081 ; 4 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !85 ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !85
  %i.cq = fneg double %.076                       ; 3 uses
  %i.cr = load <2 x double>, ptr %i.cj, align 8, !tbaa !85 ; 3 uses
  %i.cs = load double, ptr %i.cl, align 8, !tbaa !85
  %i.ct = insertelement <2 x double> %i.cr, double %i.cn, i64 0
  %i.cu = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %i.ct, %i.cv
  %i.cx = insertelement <2 x double> %i.cr, double %i.cn, i64 1
  %i.cy = insertelement <2 x double> poison, double %.077, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cz, <2 x double> %i.cw) ; 3 uses
  %i.db = insertelement <2 x double> poison, double %.076, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %.077, i64 1 ; 2 uses
  %i.dd = fneg <2 x double> %i.da
  %i.de = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.df = shufflevector <2 x double> %i.da, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.dg = fmul <2 x double> %i.de, %i.df
  %i.dh = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dh, <2 x double> %i.dg) ; 2 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1
  store double %i.dj, ptr %i.cj, align 8, !tbaa !85
  %i.dk = extractelement <2 x double> %i.di, i64 0
  store double %i.dk, ptr %i.cm, align 8, !tbaa !85
  %i.dl = extractelement <2 x double> %i.cr, i64 0
  %i.dm = fmul double %.076, %i.dl
  %i.dn = fmul double %.076, 2.000000e+00
  %i.do = fmul double %i.dn, %i.cn
  %i.dp = fmul double %.077, %i.do
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dm, double %.076, double %i.dp)
  %i.dr = fmul double %.077, %i.cs
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %.077, double %i.dq)
  store double %i.ds, ptr %i.cl, align 8, !tbaa !85
  %i.dt = load double, ptr %i.co, align 8, !tbaa !85
  %i.du = fmul double %.077, %i.dt
  store double %i.du, ptr %i.co, align 8, !tbaa !85
  %i.dv = getelementptr i8, ptr %i.cm, i64 -8     ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !85
  %i.dx = fmul double %.06380, %i.cq
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dw, double %.077, double %i.dx)
  store double %i.dy, ptr %i.dv, align 8, !tbaa !85
  %i.dz = load double, ptr %i.cm, align 8, !tbaa !85
  %i.ea = fmul double %i.cp, %i.cq
  %.not66 = icmp eq ptr %.06578, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %.06578, i64 8
  store double %.077, ptr %.06578, align 8, !tbaa !85
  %i.ec = getelementptr inbounds nuw i8, ptr %.06578, i64 16
  store double %.076, ptr %i.eb, align 8, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi ptr [ %i.ec, %bb.l ], [ null, %bb.k ]
  %exitcond.not = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !587

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN6casadi17SerializingStream4packEi(ptr noundef nonnull align 8 dereferenceable(73), i32 noundef) local_unnamed_addr #3

declare void @_ZN6casadi17SerializingStream4packEd(ptr noundef nonnull align 8 dereferenceable(73), double noundef) local_unnamed_addr #3

declare void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef) local_unnamed_addr #3

declare void @_ZN6casadi17SerializingStream8decorateEc(ptr noundef nonnull align 8 dereferenceable(73), i8 noundef signext) local_unnamed_addr #3

declare void @_ZN6casadi17SerializingStream4packERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN6casadi19DeserializingStream6unpackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN6casadi19DeserializingStream6unpackERi(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN6casadi19DeserializingStream6unpackERd(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN6casadi19DeserializingStream6unpackERx(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN6casadi19DeserializingStream17assert_decorationEc(ptr noundef nonnull align 8 dereferenceable(42), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !50
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !51
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #23
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !50
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !50
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6casadi19DeserializingStream6unpackERNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #25
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i:     ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6casadi8SparsityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6casadi8SparsityESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #23
  unreachable

_ZNKSt6vectorIN6casadi8SparsityESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !56
  store ptr %i.r, ptr %i.q, align 8, !tbaa !56
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.o

_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6casadi8SparsityESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %i.s = load ptr, ptr %.01215.i.i.i.i.i, align 8, !tbaa !56
  store ptr %i.s, ptr %.016.i.i.i.i.i, align 8, !tbaa !56
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !589

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi8SparsityEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.u, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32
  %.016.i.i.i.i.i30 = phi ptr [ %i.ae, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 4 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.ad, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.01215.i.i.i.i.i31, align 8, !tbaa !56
  store ptr %i.ac, ptr %.016.i.i.i.i.i30, align 8, !tbaa !56
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30)
          to label %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 unwind label %bb.h

_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, label %.lr.ph.i.i.i.i.i29, !llvm.loop !589

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef nonnull %i.ab, ptr noundef nonnull %.016.i.i.i.i.i30)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38: ; preds = %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ae, %_ZSt10_ConstructIN6casadi8SparsityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38 ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #25
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i:   ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_.exit:    ; preds = %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi8SparsityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_.exit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #26
  br label %_ZNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !55
  ret void

bb.o:                                             ; preds = %_ZNKSt6vectorIN6casadi8SparsityESaIS1_EE12_M_check_lenEmPKc.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.au = extractvalue { ptr, i32 } %i.y, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #24 ; 0 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #25
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.j
  %.0.lpad-body.ph = phi ptr [ %i.ab, %bb.j ], [ %i.p, %bb.o ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.at, %bb.o ]
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %i.ay) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.thread: ; preds = %bb.r, %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #23
          to label %bb.v unwind label %bb.s

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.ba

bb.u:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

bb.v:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.thread
  unreachable
}

declare void @_ZN6casadi8Sparsity7diagcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { noreturn }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !57}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v2f64
!332 = distinct !{!332, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!333 = distinct !{!333, !332, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!334 = distinct !{!334, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!335 = distinct !{!335, !334, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!336 = distinct !{!336, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!337 = distinct !{!337, !336, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!338 = distinct !{!338, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!339 = distinct !{!339, !338, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!340 = distinct !{!340, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!341 = distinct !{!341, !340, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!342 = distinct !{!342, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!343 = distinct !{!343, !342, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!344 = distinct !{!344, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!345 = distinct !{!345, !344, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!346 = distinct !{!346, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!347 = distinct !{!347, !346, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!348 = distinct !{!348, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!349 = distinct !{!349, !348, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!350 = distinct !{!350, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!351 = distinct !{!351, !350, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!352 = !{!305}
!353 = !{!307, !305}
!354 = !{!309}
!355 = !{!311, !309}
!356 = !{!"any p2 pointer", !9, i64 0}
!357 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !356, i64 0}
!358 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!359 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !358, i64 0}
!360 = !{!"float", !5, i64 0}
!361 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !360, i64 0, !13, i64 8}
!362 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !357, i64 0, !13, i64 8, !359, i64 16, !13, i64 24, !361, i64 32, !358, i64 48}
!363 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !362, i64 0}
!364 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !9, i64 0}
!365 = !{!"_ZTSN6casadi17SerializingStreamE", !363, i64 0, !364, i64 56, !102, i64 64, !103, i64 72}
!366 = !{!365, !103, i64 72}
!367 = !{!313}
!368 = !{!315, !313}
!369 = !{!317}
!370 = !{!319, !317}
!371 = !{!321}
!372 = !{!323, !321}
!373 = !{!325}
!374 = !{!327, !325}
!375 = !{!329}
!376 = !{!331, !329}
!377 = !{!333}
!378 = !{!335, !333}
!379 = !{!337}
!380 = !{!339, !337}
!381 = !{!341}
!382 = !{!343, !341}
!383 = !{!345}
!384 = !{!347, !345}
!385 = !{!349}
!386 = !{!351, !349}
!387 = distinct !{!387, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!388 = distinct !{!388, !387, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!389 = distinct !{!389, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!390 = distinct !{!390, !389, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!392 = distinct !{!392, !391, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!393 = distinct !{!393, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!394 = distinct !{!394, !393, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!395 = distinct !{!395, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!396 = distinct !{!396, !395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!397 = distinct !{!397, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!398 = distinct !{!398, !397, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!399 = distinct !{!399, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!400 = distinct !{!400, !399, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!401 = distinct !{!401, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!402 = distinct !{!402, !401, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!403 = distinct !{!403, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!404 = distinct !{!404, !403, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!405 = distinct !{!405, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!406 = distinct !{!406, !405, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!407 = distinct !{!407, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!408 = distinct !{!408, !407, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!409 = distinct !{!409, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!410 = distinct !{!410, !409, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!411 = distinct !{!411, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!412 = distinct !{!412, !411, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!413 = distinct !{!413, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!414 = distinct !{!414, !413, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!415 = distinct !{!415, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!416 = distinct !{!416, !415, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!417 = distinct !{!417, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!418 = distinct !{!418, !417, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!419 = distinct !{!419, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!420 = distinct !{!420, !419, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!421 = distinct !{!421, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!422 = distinct !{!422, !421, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!423 = distinct !{!423, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!424 = distinct !{!424, !423, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!425 = distinct !{!425, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!426 = distinct !{!426, !425, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!427 = distinct !{!427, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!428 = distinct !{!428, !427, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!429 = distinct !{!429, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!430 = distinct !{!430, !429, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!431 = distinct !{!431, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!432 = distinct !{!432, !431, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!433 = distinct !{!433, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!434 = distinct !{!434, !433, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!435 = !{!388}
!436 = !{!390, !388}
!437 = !{!392}
!438 = !{!394, !392}
!439 = !{!396}
!440 = !{!398, !396}
!441 = !{!400}
!442 = !{!402, !400}
!443 = !{!404}
!444 = !{!406, !404}
!445 = !{!408}
!446 = !{!410, !408}
!447 = !{!412}
!448 = !{!414, !412}
!449 = !{!416}
!450 = !{!418, !416}
!451 = !{!420}
!452 = !{!422, !420}
!453 = !{!424}
!454 = !{!426, !424}
!455 = !{!428}
!456 = !{!430, !428}
!457 = !{!432}
!458 = !{!434, !432}
!459 = distinct !{!459, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!460 = distinct !{!460, !459, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!461 = !{!460}
!462 = distinct !{!462, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!463 = distinct !{!463, !462, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!464 = !{!463}
!465 = distinct !{!465, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!466 = distinct !{!466, !465, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!467 = !{!466}
!468 = distinct !{!468, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!469 = distinct !{!469, !468, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!470 = !{!469}
!471 = distinct !{!471, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!472 = distinct !{!472, !471, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!473 = !{!472}
!474 = distinct !{null}
!475 = !{!70, !69, i64 8}
!476 = !{!"p1 long", !9, i64 0}
!477 = !{!"_ZTSSt18_Bit_iterator_base", !476, i64 0, !6, i64 8}
!478 = !{!477, !476, i64 0}
!479 = distinct !{null, null, null, null, null}
!480 = !{!96, !13, i64 16}
!481 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!482 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!483 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!484 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!485 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !96, i64 0, !102, i64 216, !5, i64 224, !103, i64 225, !481, i64 232, !482, i64 240, !483, i64 248, !484, i64 256}
!486 = !{!485, !103, i64 225}
!487 = !{!485, !482, i64 240}
!488 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!489 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!490 = !{!"p1 int", !9, i64 0}
!491 = !{!"p1 short", !9, i64 0}
!492 = !{!"_ZTSSt5ctypeIcE", !488, i64 0, !489, i64 16, !103, i64 24, !490, i64 32, !490, i64 40, !491, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!493 = !{!492, !5, i64 56}
!494 = !{!485, !5, i64 224}
!495 = distinct !{!495, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!496 = distinct !{!496, !495, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!497 = distinct !{!497, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!498 = distinct !{!498, !497, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!499 = !{!496}
!500 = !{!498}
!501 = !{!498, !496}
!502 = distinct !{!502, !57}
!503 = !{!45, !44, i64 16}
!504 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!505 = !{!117, !117, i64 0}
!506 = distinct !{!506, !57}
!507 = distinct !{!507, !57}
!508 = distinct !{!508, !57}
!509 = distinct !{!509, !57}
!510 = distinct !{!510, !88}
!511 = distinct !{!511, !57}
!512 = distinct !{!512, !88}
!513 = distinct !{!513, !57}
!514 = distinct !{!514, !57}
!515 = distinct !{!515, !57}
!516 = distinct !{!516, i1 false, !"LVerDomain"}
!517 = distinct !{!517, !516}
!518 = distinct !{!518, !516}
!519 = distinct !{!519, !57, !86, !87}
!520 = distinct !{!520, !57, !86}
!521 = distinct !{!521, !57}
!522 = distinct !{!522, !57}
!523 = distinct !{!523, !57}
!524 = distinct !{!524, !57}
!525 = distinct !{!525, i1 false, !"LVerDomain"}
!526 = distinct !{!526, !525}
!527 = distinct !{!527, !525}
!528 = distinct !{!528, !525}
!529 = distinct !{!529, !57, !86, !87}
!530 = distinct !{!530, !57, !86}
!531 = distinct !{!531, !57}
!532 = distinct !{!532, !88}
!533 = distinct !{!533, !57}
!534 = !{!517}
!535 = !{!518}
!536 = !{!526}
!537 = !{!527}
!538 = !{!528}
!539 = !{!527, !526}
!540 = distinct !{!540, i1 false, !"LVerDomain"}
!541 = distinct !{!541, !540}
!542 = distinct !{!542, !540}
!543 = distinct !{!543, !57, !86, !87}
!544 = distinct !{!544, !88}
!545 = distinct !{!545, !57, !86}
!546 = distinct !{!546, !57}
!547 = distinct !{!547, !88}
!548 = distinct !{!548, !57, !86, !87}
!549 = distinct !{!549, !57, !87, !86}
!550 = distinct !{!550, !57}
!551 = !{!541}
!552 = !{!542}
!553 = distinct !{!553, i1 false, !"LVerDomain"}
!554 = distinct !{!554, !553}
!555 = distinct !{!555, !553}
!556 = distinct !{!556, !57, !86, !87}
!557 = distinct !{!557, !57, !86}
!558 = distinct !{!558, !57}
!559 = !{!554}
!560 = !{!555}
!561 = distinct !{!561, !57}
!562 = distinct !{!562, !57}
!563 = distinct !{!563, !57}
!564 = distinct !{!564, !88}
!565 = distinct !{!565, i1 false, !"LVerDomain"}
!566 = distinct !{!566, !565}
!567 = distinct !{!567, !565}
!568 = distinct !{!568, !57, !86, !87}
!569 = distinct !{!569, !57, !86}
!570 = distinct !{!570, i1 false, !"LVerDomain"}
!571 = distinct !{!571, !570}
!572 = distinct !{!572, !570}
!573 = distinct !{!573, !570}
!574 = distinct !{!574, !570}
!575 = distinct !{!575, !570}
!576 = distinct !{!576, !57, !86, !87}
!577 = distinct !{!577, !57, !86}
!578 = distinct !{!578, !57}
!579 = !{!566}
!580 = !{!567}
!581 = !{!571}
!582 = !{!572}
!583 = !{!573}
!584 = !{!574}
!585 = !{!575}
!586 = !{!574, !571, !572, !573}
!587 = distinct !{!587, !57, !588}
!588 = !{!"llvm.loop.peeled.count", i32 1}
!589 = distinct !{!589, !57}
end_hunk_1
