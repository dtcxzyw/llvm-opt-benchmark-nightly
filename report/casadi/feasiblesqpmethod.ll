Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  %i.do = shl i64 %.4149.epil.init, 3
  %i.dp = sub i64 %i.cq, %i.do
  %i.dq = mul i64 %i.cp, %.4149.epil.init
  %i.dr = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep.epil = getelementptr i8, ptr %i.dr, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.dp, i1 false), !tbaa !155
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph148.epil, %.lr.ph150.epil.preheader, %.preheader132
  %i.ds = load i64, ptr %7, align 8, !tbaa !210   ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %._crit_edge151
  %.idx = mul i64 %i.ds, 24
  %i.du = getelementptr i8, ptr %7, i64 %.idx
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  %i.dw = shl i64 %0, 3                           ; 2 uses
  %i.dx = mul i64 %0, -8
  %i.dy = sub nuw nsw i64 -8, %i.dw
  %i.dz = shl i64 %0, 3
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge156
  %.5158 = phi i64 [ %i.iy, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
  %.0122157 = phi ptr [ %i.eb, %._crit_edge156 ], [ %i.dv, %.lr.ph160.preheader ] ; 4 uses
  %i.ea = load i64, ptr %.0122157, align 8, !tbaa !210 ; 8 uses
  %i.eb = getelementptr inbounds i8, ptr %.0122157, i64 -24
  %i.ec = icmp sgt i64 %i.ea, 1
  br i1 %i.ec, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160
  %i.ed = getelementptr inbounds nuw i8, ptr %.0122157, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !210
  %i.ef = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.0122157, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !210 ; 6 uses
  %i.ei = add nsw i64 %i.eh, %i.ea                ; 2 uses
  %i.ej = add nsw i64 %i.ea, -2
  %i.ek = add nsw i64 %i.ea, -1
  %i.el = add i64 %i.ek, %i.eh
  %i.em = mul i64 %i.dw, %i.el
  %i.en = add i64 %i.ea, %i.eh
  %i.eo = add nuw i64 %i.ea, 2305843009213693950
  %i.ep = add i64 %i.eo, %i.eh
  %i.eq = mul i64 %0, %i.ep
  %i.er = add i64 %i.en, %i.eq
  %i.es = add i64 %0, %i.er
  %i.et = shl i64 %i.es, 3
  %i.eu = mul i64 %i.dz, %i.ei
  %i.ev = add nsw i64 %i.ea, -3
  %i.ew = add i64 %i.ev, %i.eh
  %i.ex = getelementptr i8, ptr %1, i64 %i.em
  %i.ey = getelementptr i8, ptr %1, i64 %i.et
  %i.ez = getelementptr i8, ptr %1, i64 %i.eu
  %i.fa = add i64 %i.ea, %i.eh
  %i.fb = sub i64 %0, %i.fa
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.ef, %.lr.ph155 ], [ %i.ff, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 2 uses
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.ix, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %i.fc = mul i64 %i.dx, %.2126152                ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.ex, i64 %i.fc
  %i.fd = mul i64 %i.dy, %.2126152
  %scevgep189 = getelementptr i8, ptr %i.ey, i64 %i.fd
  %scevgep190 = getelementptr i8, ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds i8, ptr %.0121153, i64 -8
  %i.ff = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !155 ; 7 uses
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !155 ; 8 uses
  %i.fi = sub i64 %i.ei, %.2126152                ; 5 uses
  %i.fj = add i64 %i.fi, -2                       ; 4 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fj ; 3 uses
  %i.fl = icmp sgt i64 %i.fi, 2
  br i1 %i.fl, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter243 = and i64 %i.fi, 1
  %i.fm = icmp eq i64 %i.ew, %.2126152
  br i1 %i.fm, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter248 = and i64 %i.fj, -2
  %i.fn = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fk, %.lr.ph.i.preheader.new ], [ %i.gg, %.lr.ph.i ] ; 3 uses
  %niter249 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter249.next.1, %.lr.ph.i ]
  %i.fv = load <2 x double>, ptr %.080.i, align 8, !tbaa !155 ; 3 uses
  %i.fw = fneg <2 x double> %i.fv
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.fy = fmul <2 x double> %i.fo, %i.fx
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fv, <2 x double> %i.fy)
  store <2 x double> %i.fz, ptr %.080.i, align 8, !tbaa !155
  %i.ga = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.gb = load <2 x double>, ptr %i.ga, align 8, !tbaa !155 ; 3 uses
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = shufflevector <2 x double> %i.gb, <2 x double> %i.gc, <2 x i32> <i32 1, i32 2>
  %i.ge = fmul <2 x double> %i.fs, %i.gd
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.gb, <2 x double> %i.ge)
  store <2 x double> %i.gf, ptr %i.ga, align 8, !tbaa !155
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %0 ; 3 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1305

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod245.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod245.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fk, %.lr.ph.i.preheader ], [ %i.gg, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i64 %i.fi to i1
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.gh = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !155 ; 3 uses
  %i.gi = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fneg <2 x double> %i.gh
  %i.gl = shufflevector <2 x double> %i.gh, <2 x double> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.gm = fmul <2 x double> %i.gj, %i.gl
  %i.gn = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gh, <2 x double> %i.gm)
  store <2 x double> %i.gp, ptr %.080.i.epil.init, align 8, !tbaa !155
  %i.gq = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fk, %bb.l ], [ %i.gg, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gq, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gr = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gs = getelementptr i8, ptr %i.gr, i64 8      ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !155 ; 2 uses
  %i.gu = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !155 ; 4 uses
  %i.gv = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gx = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x double> %i.gx, double %i.gt, i64 1
  %i.gz = fmul <2 x double> %i.gw, %i.gy          ; 2 uses
  %i.ha = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.gu, <2 x double> %i.gz) ; 3 uses
  %i.hd = extractelement <2 x double> %i.gu, i64 0
  %i.he = fneg double %i.hd
  %i.hf = fmul double %i.fg, %i.he
  %i.hg = extractelement <2 x double> %i.gu, i64 1
  %i.hh = call double @llvm.fmuladd.f64(double %i.fh, double %i.hg, double %i.hf)
  %i.hi = extractelement <2 x double> %i.gz, i64 0
  %i.hj = fneg double %i.hi
  %i.hk = call double @llvm.fmuladd.f64(double %i.fh, double %i.gt, double %i.hj)
  %i.hl = fneg <2 x double> %i.hc
  %i.hm = shufflevector <2 x double> %i.hc, <2 x double> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.hn = fmul <2 x double> %i.gw, %i.hm
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hc, <2 x double> %i.hn)
  store <2 x double> %i.ho, ptr %.0.lcssa.i, align 8, !tbaa !155
  %i.hp = fneg double %i.hh
  %i.hq = fmul double %i.fg, %i.hp
  %i.hr = call double @llvm.fmuladd.f64(double %i.fh, double %i.hk, double %i.hq)
  store double %i.hr, ptr %i.gs, align 8, !tbaa !155
  %i.hs = sub i64 %0, %i.fi                       ; 2 uses
  %i.ht = icmp sgt i64 %i.hs, 0
  br i1 %i.ht, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hu = mul i64 %i.fj, %0
  %i.hv = getelementptr [8 x i8], ptr %1, i64 %i.hu
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %i.fj
  %i.hx = getelementptr i8, ptr %i.hw, i64 16     ; 5 uses
  %i.hy = add i64 %i.fb, %.2126152                ; 3 uses
  %min.iters.check = icmp ult i64 %i.hy, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.hx, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, -2                      ; 4 uses
  %i.hz = shl i64 %n.vec, 3
  %i.ia = getelementptr i8, ptr %i.hx, i64 %i.hz
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ib = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hx, i64 %i.ib ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325 ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.ic, align 8, !tbaa !155, !alias.scope !1325 ; 2 uses
  %i.id = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.id)
  store <2 x double> %i.ie, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325
  %i.if = fneg <2 x double> %wide.load
  %i.ig = fmul <2 x double> %broadcast.splat, %i.if
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ig)
  store <2 x double> %i.ih, ptr %i.ic, align 8, !tbaa !155, !alias.scope !1325
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !1309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hx, %vector.memcheck ], [ %i.hx, %.lr.ph84.preheader.i ], [ %i.ia, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.iv, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.iw, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.ij = load double, ptr %.182.i, align 8, !tbaa !155 ; 2 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !155 ; 2 uses
  %i.im = fneg double %i.ij
  %i.in = insertelement <2 x double> poison, double %i.il, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.im, i64 1
  %i.ip = fmul <2 x double> %i.gw, %i.io
  %i.iq = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.il, i64 1
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.ir, <2 x double> %i.ip) ; 2 uses
  %i.it = extractelement <2 x double> %i.is, i64 0
  store double %i.it, ptr %.182.i, align 8, !tbaa !155
  %i.iu = extractelement <2 x double> %i.is, i64 1
  store double %i.iu, ptr %i.ik, align 8, !tbaa !155
  %i.iv = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.iw = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.iw, %i.hs
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !1310

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.ix = add nuw nsw i64 %.2126152, 1
  %exitcond171.not.a = icmp eq i64 %.2126152, %i.ej
  br i1 %exitcond171.not.a, label %._crit_edge156, label %bb.l, !llvm.loop !1311

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.iy = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.iy, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !1312

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.iz = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.ja = shl i64 %0, 3                           ; 4 uses
  %i.jb = add i64 %i.ja, -16                      ; 2 uses
  %i.jc = mul i64 %0, %i.jb
  %i.jd = mul i64 %0, -8
  %i.je = shl i64 %0, 4                           ; 2 uses
  %i.jf = shl i64 %0, 3
  %8 = add i64 %i.ja, 8
  %i.jg = add i64 %0, -2
  %i.jh = getelementptr i8, ptr %1, i64 %i.ja
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8
  %i.jj = getelementptr i8, ptr %1, i64 %i.jc
  %i.jk = getelementptr i8, ptr %1, i64 %i.je
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  %i.jm = getelementptr i8, ptr %1, i64 %i.je
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %i.jo = getelementptr i8, ptr %6, i64 %i.jb
  %stride.check = icmp slt i64 %i.ja, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 11 uses
  %.0123162 = phi i64 [ %i.iz, %.lr.ph164 ], [ %i.nb, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jp = add i64 %indvar, 1                      ; 3 uses
  %9 = sub i64 %i.jg, %indvar                     ; 5 uses
  %i.jq = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196.a = getelementptr i8, ptr %i.ji, i64 %i.jq ; 2 uses
  %i.jr = mul i64 %i.jd, %indvar
  %scevgep197.a = getelementptr i8, ptr %i.jj, i64 %i.jr ; 2 uses
  %i.js = mul i64 %i.jf, %indvar
  %scevgep198 = getelementptr i8, ptr %i.jl, i64 %i.js
  %i.jt = mul i64 %8, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jn, i64 %i.jt
  %scevgep200 = getelementptr i8, ptr %i.jo, i64 %i.jq
  %i.ju = xor i64 %.0123162, -1
  %i.jv = add i64 %0, %i.ju                       ; 3 uses
  %i.jw = mul nsw i64 %i.jv, %0
  %i.jx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jw ; 8 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.jx, double noundef %i.jz)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 6 uses
  %i.kc = load double, ptr %i.jy, align 8, !tbaa !155 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.kd = shl nuw nsw i64 %.0123162, 3
  %i.ke = add nuw nsw i64 %i.kd, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.ke, i1 false), !tbaa !155
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %10 = icmp sgt i64 %i.jv, 1
  br i1 %10, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter250 = and i64 %9, 1
  %11 = icmp eq i64 %.0123162, 0
  br i1 %11, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter254 = and i64 %9, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.kf = icmp eq i64 %indvar, 0
  %unroll_iter267 = and i64 %i.jp, -2
  %i.kg = and i64 %indvar, 1
  %lcmp.mod265.not.not = icmp eq i64 %i.kg, 0
  %lcmp.mod266 = trunc i64 %i.jp to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.lg, %._crit_edge.us.i ], [ %i.kb, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.lh, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.kh = load double, ptr %.046.us.i, align 8, !tbaa !155
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !155
  %i.kk = call double @llvm.fmuladd.f64(double %i.kc, double %i.kh, double %i.kj) ; 3 uses
  store double %i.kk, ptr %i.ki, align 8, !tbaa !155
  br i1 %i.kf, label %.epil.preheader262, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kl = phi double [ %i.ky, %.lr.ph.us.i.new ], [ %i.kk, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.kz, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter268 = phi i64 [ %niter268.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.kn = load double, ptr %i.km, align 8, !tbaa !155
  %i.ko = fmul double %i.kc, %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.03944.us.i
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !155
  %i.kr = call double @llvm.fmuladd.f64(double %i.ko, double %i.kq, double %i.kl) ; 2 uses
  store double %i.kr, ptr %i.ki, align 8, !tbaa !155
  %i.ks = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !155
  %i.kv = fmul double %i.kc, %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.ks
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !155
  %i.ky = call double @llvm.fmuladd.f64(double %i.kv, double %i.kx, double %i.kr) ; 3 uses
  store double %i.ky, ptr %i.ki, align 8, !tbaa !155
  %i.kz = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter268.next.1 = add nuw i64 %niter268, 2     ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !1313

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod265.not.not, label %.epil.preheader262, label %._crit_edge.us.i

.epil.preheader262:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kk, %.lr.ph.us.i ], [ %i.ky, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.kz, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.lb = load double, ptr %i.la, align 8, !tbaa !155
  %i.lc = fmul double %i.kc, %i.lb
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.03944.us.i.epil.init
  %i.le = load double, ptr %i.ld, align 8, !tbaa !155
  %i.lf = call double @llvm.fmuladd.f64(double %i.lc, double %i.le, double %.epil.init)
  store double %i.lf, ptr %i.ki, align 8, !tbaa !155
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader262
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.lh = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !1314

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %i.li = add nuw i64 %indvar, 1                  ; 2 uses
  %min.iters.check208 = icmp ult i64 %indvar, 3
  %bound0201.a = icmp ult ptr %scevgep196.a, %scevgep199
  %bound1202.a = icmp ult ptr %scevgep198, %scevgep197.a
  %found.conflict203.a = and i1 %bound0201.a, %bound1202.a
  %i.lj = or i1 %found.conflict203.a, %stride.check
  %bound0204 = icmp ult ptr %scevgep196.a, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197.a
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx = or i1 %i.lj, %found.conflict206
  %n.vec210 = and i64 %i.li, -4                   ; 3 uses
  %i.lk = or disjoint i64 %n.vec210, 1
  %cmp.n221 = icmp eq i64 %i.li, %n.vec210
  %i.ll = sub i64 %0, %.0123162
  %xtraiter269 = and i64 %i.ll, 1
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %12, %._crit_edge.us54.i ], [ %i.kb, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %13, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !155
  %i.lo = load double, ptr %.150.us.i, align 8, !tbaa !155
  %i.lp = fsub double %i.lo, %i.ln
  store double %i.lp, ptr %.150.us.i, align 8, !tbaa !155
  %brmerge = select i1 %min.iters.check208, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph207.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.us53.i
  %i.lq = load double, ptr %i.lm, align 8, !tbaa !155, !alias.scope !1326
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.lq, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next219, %vector.body211 ] ; 2 uses
  %i.lr = or disjoint i64 %index212, 1            ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.lr ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load213.a = load <2 x double>, ptr %i.ls, align 8, !tbaa !155, !alias.scope !1327
  %wide.load214 = load <2 x double>, ptr %i.lt, align 8, !tbaa !155, !alias.scope !1327
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lr ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.lu, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %wide.load216 = load <2 x double>, ptr %i.lv, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %i.lw = fneg <2 x double> %wide.load213.a
  %i.lx = fneg <2 x double> %wide.load214
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %broadcast.splat218, <2 x double> %wide.load215)
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %broadcast.splat218, <2 x double> %wide.load216)
  store <2 x double> %i.ly, ptr %i.lu, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  store <2 x double> %i.lz, ptr %i.lv, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %index.next219 = add nuw i64 %index212, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next219, %n.vec210
  br i1 %i.ma, label %middle.block220, label %vector.body211, !llvm.loop !1319

middle.block220:                                  ; preds = %vector.body211
  br i1 %cmp.n221, label %._crit_edge.us54.i, label %scalar.ph207.preheader

scalar.ph207.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block220
  %.14048.us.i.ph = phi i64 [ %i.lk, %middle.block220 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod270.not, label %scalar.ph207.prol.loopexit, label %scalar.ph207.prol

scalar.ph207.prol:                                ; preds = %scalar.ph207.preheader
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.14048.us.i.ph
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !155
  %i.md = load double, ptr %i.lm, align 8, !tbaa !155
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !155
  %i.mg = fneg double %i.mc
  %i.mh = call double @llvm.fmuladd.f64(double %i.mg, double %i.md, double %i.mf)
  store double %i.mh, ptr %i.me, align 8, !tbaa !155
  %i.mi = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph207.prol.loopexit

scalar.ph207.prol.loopexit:                       ; preds = %scalar.ph207.prol, %scalar.ph207.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph207.preheader ], [ %i.mi, %scalar.ph207.prol ]
  %i.mj = icmp eq i64 %i.jp, %.14048.us.i.ph
  br i1 %i.mj, label %._crit_edge.us54.i, label %scalar.ph207

scalar.ph207:                                     ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207
  %.14048.us.i = phi i64 [ %i.mz, %scalar.ph207 ], [ %.14048.us.i.unr, %scalar.ph207.prol.loopexit ] ; 4 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.14048.us.i
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !155
  %i.mm = load double, ptr %i.lm, align 8, !tbaa !155
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !155
  %i.mp = fneg double %i.ml
  %i.mq = call double @llvm.fmuladd.f64(double %i.mp, double %i.mm, double %i.mo)
  store double %i.mq, ptr %i.mn, align 8, !tbaa !155
  %i.mr = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !155
  %i.mu = load double, ptr %i.lm, align 8, !tbaa !155
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.mr ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !155
  %i.mx = fneg double %i.mt
  %i.my = call double @llvm.fmuladd.f64(double %i.mx, double %i.mu, double %i.mw)
  store double %i.my, ptr %i.mv, align 8, !tbaa !155
  %i.mz = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.mz, %i.jv
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph207, !llvm.loop !1320

._crit_edge.us54.i:                               ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207, %middle.block220
  %12 = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %13 = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !1321

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.kb, %.lr.ph47.split.i.preheader.new ], [ %24, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %25, %.lr.ph47.split.i ] ; 3 uses
  %niter255 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter255.next.1, %.lr.ph47.split.i ]
  %14 = load double, ptr %.046.i, align 8, !tbaa !155
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %16 = load double, ptr %15, align 8, !tbaa !155
  %17 = call double @llvm.fmuladd.f64(double %i.kc, double %14, double %16)
  store double %17, ptr %15, align 8, !tbaa !155
  %18 = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %19 = load double, ptr %18, align 8, !tbaa !155
  %20 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %22 = load double, ptr %21, align 8, !tbaa !155
  %23 = call double @llvm.fmuladd.f64(double %i.kc, double %19, double %22)
  store double %23, ptr %21, align 8, !tbaa !155
  %24 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %0 ; 2 uses
  %25 = add nuw nsw i64 %.04145.i, 2              ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %.lr.ph51.split.i.preheader.unr-lcssa, label %.lr.ph47.split.i, !llvm.loop !1314

.lr.ph51.split.i.preheader.unr-lcssa:             ; preds = %.lr.ph47.split.i
  %lcmp.mod252.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod252.not, label %.lr.ph51.split.i.preheader, label %.lr.ph47.split.i.epil.preheader

.lr.ph47.split.i.epil.preheader:                  ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.preheader
  %.046.i.epil.init = phi ptr [ %i.kb, %.lr.ph47.split.i.preheader ], [ %24, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %.04145.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.preheader ], [ %25, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %lcmp.mod253 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod253)
  %26 = load double, ptr %.046.i.epil.init, align 8, !tbaa !155
  %27 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i.epil.init ; 2 uses
  %28 = load double, ptr %27, align 8, !tbaa !155
  %29 = call double @llvm.fmuladd.f64(double %i.kc, double %26, double %28)
  store double %29, ptr %27, align 8, !tbaa !155
  br label %.lr.ph51.split.i.preheader

.lr.ph51.split.i.preheader:                       ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.epil.preheader
  %xtraiter256 = and i64 %9, 3                    ; 3 uses
  %30 = icmp ult i64 %.0123162, 3
  br i1 %30, label %.lr.ph51.split.i.epil.preheader, label %.lr.ph51.split.i.preheader.new

.lr.ph51.split.i.preheader.new:                   ; preds = %.lr.ph51.split.i.preheader
  %unroll_iter260 = and i64 %9, -4
  br label %.lr.ph51.split.i

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.split.i, %.lr.ph51.split.i.preheader.new
  %.150.i = phi ptr [ %i.kb, %.lr.ph51.split.i.preheader.new ], [ %53, %.lr.ph51.split.i ] ; 3 uses
  %.14249.i = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %54, %.lr.ph51.split.i ] ; 5 uses
  %niter261 = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %niter261.next.3, %.lr.ph51.split.i ]
  %31 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %32 = load double, ptr %31, align 8, !tbaa !155
  %33 = load double, ptr %.150.i, align 8, !tbaa !155
  %34 = fsub double %33, %32
  store double %34, ptr %.150.i, align 8, !tbaa !155
  %35 = getelementptr inbounds nuw [8 x i8], ptr %.150.i, i64 %0 ; 3 uses
  %36 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !155
  %39 = load double, ptr %35, align 8, !tbaa !155
  %40 = fsub double %39, %38
  store double %40, ptr %35, align 8, !tbaa !155
  %41 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %0 ; 3 uses
  %42 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %44 = load double, ptr %43, align 8, !tbaa !155
  %45 = load double, ptr %41, align 8, !tbaa !155
  %46 = fsub double %45, %44
  store double %46, ptr %41, align 8, !tbaa !155
  %47 = getelementptr inbounds nuw [8 x i8], ptr %41, i64 %0 ; 3 uses
  %48 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 24
  %50 = load double, ptr %49, align 8, !tbaa !155
  %51 = load double, ptr %47, align 8, !tbaa !155
  %52 = fsub double %51, %50
  store double %52, ptr %47, align 8, !tbaa !155
  %53 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %0 ; 2 uses
  %54 = add nuw nsw i64 %.14249.i, 4              ; 2 uses
  %niter261.next.3 = add i64 %niter261, 4         ; 2 uses
  %niter261.ncmp.3 = icmp eq i64 %niter261.next.3, %unroll_iter260
  br i1 %niter261.ncmp.3, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa, label %.lr.ph51.split.i, !llvm.loop !1321

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa: ; preds = %.lr.ph51.split.i
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod258.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil.preheader

.lr.ph51.split.i.epil.preheader:                  ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa, %.lr.ph51.split.i.preheader
  %.150.i.epil.init = phi ptr [ %i.kb, %.lr.ph51.split.i.preheader ], [ %53, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa ]
  %.14249.i.epil.init = phi i64 [ 0, %.lr.ph51.split.i.preheader ], [ %54, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa ]
  %lcmp.mod259 = icmp ne i64 %xtraiter256, 0
  call void @llvm.assume(i1 %lcmp.mod259)
  br label %.lr.ph51.split.i.epil

.lr.ph51.split.i.epil:                            ; preds = %.lr.ph51.split.i.epil, %.lr.ph51.split.i.epil.preheader
  %.150.i.epil = phi ptr [ %i.na, %.lr.ph51.split.i.epil ], [ %.150.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 3 uses
  %.14249.i.epil = phi i64 [ %59, %.lr.ph51.split.i.epil ], [ %.14249.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 2 uses
  %epil.iter257 = phi i64 [ %epil.iter257.next, %.lr.ph51.split.i.epil ], [ 0, %.lr.ph51.split.i.epil.preheader ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i.epil
  %56 = load double, ptr %55, align 8, !tbaa !155
  %57 = load double, ptr %.150.i.epil, align 8, !tbaa !155
  %58 = fsub double %57, %56
  store double %58, ptr %.150.i.epil, align 8, !tbaa !155
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %.150.i.epil, i64 %0
  %59 = add nuw nsw i64 %.14249.i.epil, 1
  %epil.iter257.next = add i64 %epil.iter257, 1   ; 2 uses
  %epil.iter257.cmp.not = icmp eq i64 %epil.iter257.next, %xtraiter256
  br i1 %epil.iter257.cmp.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil, !llvm.loop !1322

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit: ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit223.unr-lcssa, %.lr.ph51.split.i.epil, %._crit_edge.us54.i
  %i.nb = add nsw i64 %.0123162, -1
  %i.nc = icmp sgt i64 %.0123162, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.nc, label %bb.m, label %.loopexit, !llvm.loop !1323

.loopexit:                                        ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, %._crit_edge161, %._crit_edge143, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %._crit_edge143 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge161 ], [ 0, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [1000 x double], align 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
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
  %wide.load38 = load <2 x double>, ptr %next.gep37, align 8, !tbaa !155, !alias.scope !1341
  %wide.load39 = load <2 x double>, ptr %i.ad, align 8, !tbaa !155, !alias.scope !1341
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load38, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1342, !noalias !1341
  store <2 x double> %wide.load39, ptr %i.ae, align 8, !tbaa !155, !alias.scope !1342, !noalias !1341
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.af, label %middle.block41, label %vector.body35, !llvm.loop !1333

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
  %i.aj = load double, ptr %.01218.i.prol, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.aj, ptr %.01019.i.prol, align 8, !tbaa !155
  %i.al = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1334

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader47
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader47 ], [ %i.al, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader47 ], [ %i.ak, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader47 ], [ %i.ai, %.lr.ph.i.prol ]
  %i.am = icmp ult i64 %i.ah, 7
  br i1 %i.am, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %4
  %6 = load double, ptr %i.y, align 8, !tbaa !155
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bl, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ao = load double, ptr %.01218.i, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ao, ptr %.01019.i, align 8, !tbaa !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ar = load double, ptr %i.an, align 8, !tbaa !155
  %i.as = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ar, ptr %i.ap, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.au = load double, ptr %i.aq, align 8, !tbaa !155
  %i.av = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.au, ptr %i.as, align 8, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ax = load double, ptr %i.at, align 8, !tbaa !155
  %i.ay = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ax, ptr %i.av, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.ba, ptr %i.ay, align 8, !tbaa !155
  %i.bc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.bd = load double, ptr %i.az, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.bd, ptr %i.bb, align 8, !tbaa !155
  %i.bf = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.bg = load double, ptr %i.bc, align 8, !tbaa !155
  %i.bh = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.bg, ptr %i.be, align 8, !tbaa !155
  %i.bi = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bj = load double, ptr %i.bf, align 8, !tbaa !155
  %i.bk = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bj, ptr %i.bh, align 8, !tbaa !155
  %i.bl = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bl, %i.w
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !1335

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block41, %bb.b
  %7 = load double, ptr %i.y, align 8, !tbaa !155 ; 3 uses
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
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !155 ; 2 uses
  %i.bp = call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %.041.i)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !155 ; 2 uses
  %i.bt = call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bp)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !155 ; 2 uses
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bt)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03640.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !155 ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.bx) ; 3 uses
  %i.cc = add nuw nsw i64 %.03640.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i25, !llvm.loop !1336

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
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !155 ; 2 uses
  %i.cf = call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %.041.i.epil) ; 2 uses
  %i.cg = add nuw nsw i64 %.03640.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i25.epil, !llvm.loop !1337

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %9 = phi i1 [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ true, %.lr.ph.i25.epil ], [ true, %._crit_edge.i.loopexit.unr-lcssa ]
  %10 = phi double [ %7, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %6, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %7, %.lr.ph.i25.epil ], [ %7, %._crit_edge.i.loopexit.unr-lcssa ] ; 6 uses
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.cb, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cf, %.lr.ph.i25.epil ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.027 ; 3 uses
  %i.ci = call double @llvm.fmuladd.f64(double %10, double %10, double %.0.lcssa.i)
  %i.cj = call double @sqrt(double noundef %i.ci) #29 ; 3 uses
  %i.ck = fcmp oeq double %.0.lcssa.i, 0.000000e+00
  br i1 %i.ck, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.cl = fcmp olt double %10, 0.000000e+00
  %i.cm = select i1 %i.cl, double 2.000000e+00, double 0.000000e+00
  store double %i.cm, ptr %i.ch, align 8, !tbaa !155
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !155
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
  store double %i.cv, ptr %i.ch, align 8, !tbaa !155
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !155
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
  %wide.load = load <2 x double>, ptr %i.cy, align 8, !tbaa !155
  %i.cz = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cz, ptr %i.cy, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !1338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i.preheader46

.lr.ph44.i.preheader46:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.142.i.ph = phi i64 [ 1, %.lr.ph44.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader46, %.lr.ph44.i
  %.142.i = phi i64 [ %i.de, %.lr.ph44.i ], [ %.142.i.ph, %.lr.ph44.i.preheader46 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.142.i ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !155
  %i.dd = fdiv double %i.dc, %.035.i
  store double %i.dd, ptr %i.db, align 8, !tbaa !155
  %i.de = add nuw nsw i64 %.142.i, 1              ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.de, %i.w
  br i1 %exitcond45.not.i, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i, !llvm.loop !1339

_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit:  ; preds = %.lr.ph44.i, %middle.block, %bb.c, %bb.d
  store double %i.cj, ptr %i.u, align 8, !tbaa !155
  %i.df = load double, ptr %i.ch, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %1, i64 noundef %.027, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, double noundef %i.df)
  %i.dg = add nuw nsw i64 %.027, 1
  %exitcond.not = icmp eq i64 %.027, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1340

._crit_edge:                                      ; preds = %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi21casadi_cvx_symm_schurIdEEixPT_S2_S1_xPxS2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  store i64 0, ptr %5, align 8, !tbaa !210
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
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  %i.h = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load105 = load <2 x double>, ptr %i.i, align 8, !tbaa !155, !alias.scope !1350
  %i.j = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load105)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load106 = load <2 x double>, ptr %i.l, align 8, !tbaa !155, !alias.scope !1350
  %i.m = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load106)
  %i.n = fadd <2 x double> %i.j, %i.m
  %i.o = fmul <2 x double> %broadcast.splat, %i.n
  %i.p = fcmp ole <2 x double> %i.h, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <2 x i1> %i.p, i64 1
  br i1 %i.r, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !155, !alias.scope !1349, !noalias !1350
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %pred.store.continue108
  br i1 %cmp.n, label %.lr.ph84.preheader, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06878.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %bb.c
  %.06878 = phi i64 [ %i.z, %bb.c ], [ %.06878.ph, %.lr.ph.preheader109 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06878 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !155
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06878
  %i.z = add nuw nsw i64 %.06878, 1               ; 2 uses
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !155
  %i.ab = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa)
  %i.ac = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ab)
  %i.ad = fmul double %3, %i.ac
  %i.ae = fcmp ugt double %i.x, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !155
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %exitcond.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond.not, label %.lr.ph84.preheader, label %.lr.ph, !llvm.loop !1347

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
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !155
  %i.aj = fcmp oeq double %i.ai, 0.000000e+00
  %or.cond = and i1 %.05983, %i.aj                ; 2 uses
  %i.ak = zext i1 %or.cond to i64
  %.2 = add nuw nsw i64 %.16481, %i.ak            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16979
  %i.am = load double, ptr %i.al, align 8, !tbaa !155
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond3 = and i1 %.06182, %i.an               ; 2 uses
  %i.ao = zext i1 %or.cond3 to i64
  %.166 = add nsw i64 %.06580, %i.ao
  %i.ap = icmp eq i64 %.2, %i.b                   ; 2 uses
  %.267 = select i1 %i.ap, i64 0, i64 %.166       ; 2 uses
  %.3 = select i1 %i.ap, i64 %0, i64 %.2          ; 2 uses
  %i.aq = add nuw nsw i64 %.16979, 1              ; 2 uses
  %exitcond96.not = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph84, !llvm.loop !1348

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
  store i64 %i.as, ptr %.07187102, align 8, !tbaa !210
  %i.bc = getelementptr inbounds nuw i8, ptr %.07187102, i64 16
  store i64 %.065.lcssa, ptr %i.bb, align 8, !tbaa !210
  %i.bd = getelementptr inbounds nuw i8, ptr %.07187102, i64 24
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !210
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.172 = phi ptr [ %i.bd, %bb.e ], [ null, %bb.d ]
  %i.be = load i64, ptr %5, align 8, !tbaa !210
  %i.bf = add nsw i64 %i.be, 1                    ; 2 uses
  store i64 %i.bf, ptr %5, align 8, !tbaa !210
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %._crit_edge91, label %.preheader77

._crit_edge91:                                    ; preds = %bb.f, %._crit_edge, %.lr.ph90, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph90 ], [ 0, %._crit_edge ], [ 1, %bb.f ]
  ret i32 %.070
}

; Function Attrs: mustprogress nounwind uwtable
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %3, i8 0, i64 %i.h, i1 false), !tbaa !155
  br label %.lr.ph88.preheader

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.a
  br i1 %i.g, label %.lr.ph88.preheader, label %._crit_edge100

.lr.ph88.preheader:                               ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread, %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %0 ; 2 uses
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %._crit_edge
  %.087 = phi ptr [ %i.ai, %._crit_edge ], [ %i.i, %.lr.ph88.preheader ] ; 3 uses
  %.07386 = phi i64 [ %i.q, %._crit_edge ], [ 0, %.lr.ph88.preheader ] ; 4 uses
  %i.j = load double, ptr %.087, align 8, !tbaa !155
  %i.k = fmul double %5, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07386 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07386 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !155
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.o)
  store double %i.p, ptr %i.n, align 8, !tbaa !155
  %i.q = add nuw nsw i64 %.07386, 1               ; 4 uses
  %i.r = icmp slt i64 %i.q, %i.f
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph88, %.lr.ph
  %.185.pn = phi ptr [ %.185, %.lr.ph ], [ %.087, %.lr.ph88 ]
  %.07184 = phi i64 [ %i.ae, %.lr.ph ], [ %i.q, %.lr.ph88 ] ; 3 uses
  %.185 = getelementptr inbounds nuw i8, ptr %.185.pn, i64 8 ; 4 uses
  %i.s = load double, ptr %.185, align 8, !tbaa !155
  %i.t = fmul double %5, %i.s
  %i.u = load double, ptr %i.l, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07184 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !155
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !155
  %i.y = load double, ptr %.185, align 8, !tbaa !155
  %i.z = fmul double %5, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07184
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !155
  %i.ac = load double, ptr %i.n, align 8, !tbaa !155
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !155
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1351

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !1352

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
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !155
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !155
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !155
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !155
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !155
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

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
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !155
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !155
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !1353

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
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !155, !alias.scope !1368
  %wide.load113 = load <2 x double>, ptr %i.by, align 8, !tbaa !155, !alias.scope !1368
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %wide.load115 = load <2 x double>, ptr %i.bz, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.ca, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !155, !alias.scope !1369, !noalias !1368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1357

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
  %i.ce = load double, ptr %.0912.i, align 8, !tbaa !155
  %i.cf = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.cg = load double, ptr %.0813.i, align 8, !tbaa !155
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ce, double %i.cg)
  store double %i.ch, ptr %.0813.i, align 8, !tbaa !155
  %i.ci = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !1358

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
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !155
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !155
  %i.cw = load double, ptr %.298, align 8, !tbaa !155
  %i.cx = fmul double %i.ct, -2.000000e+00
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cv, double %i.cw)
  store double %i.cy, ptr %.298, align 8, !tbaa !155
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
  %i.dg = load double, ptr %i.cs, align 8, !tbaa !155, !alias.scope !1370
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = load double, ptr %i.cu, align 8, !tbaa !155, !alias.scope !1371
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
  %wide.load145 = load <2 x double>, ptr %i.dl, align 8, !tbaa !155, !alias.scope !1372
  %wide.load146 = load <2 x double>, ptr %i.dm, align 8, !tbaa !155, !alias.scope !1372
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dj ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load147 = load <2 x double>, ptr %i.dn, align 8, !tbaa !155, !alias.scope !1373
  %wide.load148 = load <2 x double>, ptr %i.do, align 8, !tbaa !155, !alias.scope !1373
  %i.dp = fmul <2 x double> %wide.load147, %broadcast.splat150
  %i.dq = fmul <2 x double> %wide.load148, %broadcast.splat150
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load145, <2 x double> %i.dp)
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load146, <2 x double> %i.dq)
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep144, i64 24 ; 2 uses
  %wide.load153 = load <2 x double>, ptr %i.dk, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %wide.load154 = load <2 x double>, ptr %i.dt, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %i.du = fsub <2 x double> %wide.load153, %i.dr
  %i.dv = fsub <2 x double> %wide.load154, %i.ds
  store <2 x double> %i.du, ptr %i.dk, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !155, !alias.scope !1374, !noalias !1375
  %index.next155 = add nuw i64 %index143, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next155, %n.vec141
  br i1 %i.dw, label %middle.block156, label %vector.body142, !llvm.loop !1365

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
  %i.dx = load double, ptr %i.cs, align 8, !tbaa !155
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !155
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !155
  %i.ec = load double, ptr %i.cu, align 8, !tbaa !155
  %i.ed = fmul double %i.eb, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dz, double %i.ed)
  %i.ef = load double, ptr %.392, align 8, !tbaa !155
  %i.eg = fsub double %i.ef, %i.ee
  store double %i.eg, ptr %.392, align 8, !tbaa !155
  %i.eh = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.eh, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !1366

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block156, %.lr.ph99
  %i.ei = phi ptr [ %.298, %.lr.ph99 ], [ %i.de, %middle.block156 ], [ %.392, %.lr.ph94 ]
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.a
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %.17497
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %exitcond103.not = icmp eq i64 %i.cz, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1367

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !155
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !155 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %i.n = tail call double @sqrt(double noundef %i.m) #29
  %i.o = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %i.n, double %i.h)
  %i.p = fdiv double %i.k, %i.o
  %i.q = fsub double %i.f, %i.p
  %i.r = load double, ptr %1, align 8, !tbaa !155 ; 3 uses
  %i.s = fsub double %i.r, %i.q                   ; 3 uses
  %i.t = load double, ptr %2, align 8, !tbaa !155 ; 7 uses
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
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !155
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
  store double %i.bg, ptr %1, align 8, !tbaa !155
  %i.bh = extractelement <2 x double> %i.bf, i64 0
  store double %i.bh, ptr %2, align 8, !tbaa !155
  %i.bi = fmul double %.076.peel, %i.r
  %i.bj = fmul double %.076.peel, 2.000000e+00
  %i.bk = fmul double %i.bj, %i.t
  %i.bl = fmul double %.077.peel, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bi, double %.076.peel, double %i.bl)
  %i.bn = fmul double %.077.peel, %i.ak
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %.077.peel, double %i.bm)
  store double %i.bo, ptr %i.aj, align 8, !tbaa !155
  %i.bp = load double, ptr %i.al, align 8, !tbaa !155
  %i.bq = fmul double %.077.peel, %i.bp
  store double %i.bq, ptr %i.al, align 8, !tbaa !155
  %i.br = load double, ptr %2, align 8, !tbaa !155
  %i.bs = fmul double %i.am, %i.an
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !155
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.076.peel, ptr %i.bt, align 8, !tbaa !155
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
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !155 ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !155
  %i.cq = fneg double %.076                       ; 3 uses
  %i.cr = load <2 x double>, ptr %i.cj, align 8, !tbaa !155 ; 3 uses
  %i.cs = load double, ptr %i.cl, align 8, !tbaa !155
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
  store double %i.dj, ptr %i.cj, align 8, !tbaa !155
  %i.dk = extractelement <2 x double> %i.di, i64 0
  store double %i.dk, ptr %i.cm, align 8, !tbaa !155
  %i.dl = extractelement <2 x double> %i.cr, i64 0
  %i.dm = fmul double %.076, %i.dl
  %i.dn = fmul double %.076, 2.000000e+00
  %i.do = fmul double %i.dn, %i.cn
  %i.dp = fmul double %.077, %i.do
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dm, double %.076, double %i.dp)
  %i.dr = fmul double %.077, %i.cs
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %.077, double %i.dq)
  store double %i.ds, ptr %i.cl, align 8, !tbaa !155
  %i.dt = load double, ptr %i.co, align 8, !tbaa !155
  %i.du = fmul double %.077, %i.dt
  store double %i.du, ptr %i.co, align 8, !tbaa !155
  %i.dv = getelementptr i8, ptr %i.cm, i64 -8     ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !155
  %i.dx = fmul double %.06380, %i.cq
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dw, double %.077, double %i.dx)
  store double %i.dy, ptr %i.dv, align 8, !tbaa !155
  %i.dz = load double, ptr %i.cm, align 8, !tbaa !155
  %i.ea = fmul double %i.cp, %i.cq
  %.not66 = icmp eq ptr %.06578, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %.06578, i64 8
  store double %.077, ptr %.06578, align 8, !tbaa !155
  %i.ec = getelementptr inbounds nuw i8, ptr %.06578, i64 16
  store double %.076, ptr %i.eb, align 8, !tbaa !155
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi ptr [ %i.ec, %bb.l ], [ null, %bb.k ]
  %exitcond.not = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1376

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi3strIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !156, !range !201, !noundef !202
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZNSolsEb.exit unwind label %bb.e ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !25, !alias.scope !1384
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !31, !alias.scope !1384
  store i8 0, ptr %i.e, align 8, !tbaa !30, !alias.scope !1384
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280, !noalias !1384 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1384 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEb.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !281, !noalias !1384 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !1384 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !tbaa !30, !alias.scope !1384
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEb.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !43
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !43
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !30
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #29
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !43
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !283
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ar) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.e:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERb(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERx(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERd(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERc(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream17assert_decorationEc(ptr noundef nonnull align 8 dereferenceable(42), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !135    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
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
  store i64 0, ptr %i.b, align 8, !tbaa !210
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !210
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !294
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.461) #28
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !210
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !210
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !294
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !136
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, %bb.a
  ret void
}

declare void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN6casadi17SerializingStream4packERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6casadi17SerializingStream4packEb(ptr noundef nonnull align 8 dereferenceable(73), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6casadi17SerializingStream4packEx(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef) local_unnamed_addr #5

declare void @_ZN6casadi17SerializingStream4packEd(ptr noundef nonnull align 8 dereferenceable(73), double noundef) local_unnamed_addr #5

declare void @_ZN6casadi17SerializingStream4packERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: uwtable
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v2f64
!1122 = distinct !{!1122, !1121, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!1123 = distinct !{!1123, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1124 = distinct !{!1124, !1123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!1126 = distinct !{!1126, !1125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1128 = distinct !{!1128, !1127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1129 = !{!1116}
!1130 = !{!1118, !1116}
!1131 = !{!1120}
!1132 = !{!1122}
!1133 = !{!1124}
!1134 = !{!1126}
!1135 = !{!1128}
!1136 = distinct !{!1136, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1137 = distinct !{!1137, !1136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1138 = distinct !{!1138, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1139 = distinct !{!1139, !1138, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1140 = distinct !{!1140, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1141 = distinct !{!1141, !1140, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1142 = !{!1137}
!1143 = !{!1139}
!1144 = !{!1141}
!1145 = distinct !{!1145, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!1146 = distinct !{!1146, !1145, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!1147 = distinct !{!1147, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!1148 = distinct !{!1148, !1147, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!1149 = distinct !{!1149, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1150 = distinct !{!1150, !1149, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1151 = !{!1146}
!1152 = !{!1148, !1146}
!1153 = !{!1150}
!1154 = distinct !{!1154, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1155 = distinct !{!1155, !1154, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1156 = distinct !{!1156, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1157 = distinct !{!1157, !1156, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1158 = !{!1155}
!1159 = !{!1157}
!1160 = !{!1157, !1155}
!1161 = distinct !{!1161, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1162 = distinct !{!1162, !1161, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1163 = distinct !{!1163, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1164 = distinct !{!1164, !1163, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1165 = !{!1162}
!1166 = !{!1164}
!1167 = !{!1164, !1162}
!1168 = distinct !{!1168, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1169 = distinct !{!1169, !1168, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1170 = distinct !{!1170, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1171 = distinct !{!1171, !1170, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1172 = !{!1169}
!1173 = !{!1171}
!1174 = !{!1171, !1169}
!1175 = distinct !{!1175, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1176 = distinct !{!1176, !1175, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1177 = !{!1176}
!1178 = distinct !{!1178, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1179 = distinct !{!1179, !1178, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1180 = !{!1179}
!1181 = distinct !{!1181, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1182 = distinct !{!1182, !1181, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1183 = !{!1182}
!1184 = distinct !{!1184, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1185 = distinct !{!1185, !1184, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1186 = !{!1185}
!1187 = distinct !{!1187, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1188 = distinct !{!1188, !1187, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1189 = !{!1188}
!1190 = distinct !{!1190, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1191 = distinct !{!1191, !1190, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1192 = !{!1191}
!1193 = distinct !{!1193, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1194 = distinct !{!1194, !1193, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1195 = !{!1194}
!1196 = distinct !{!1196, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1197 = distinct !{!1197, !1196, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1198 = !{!1197}
!1199 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !87, i64 0, !26, i64 8, !89, i64 16, !26, i64 24, !91, i64 32, !88, i64 48}
!1200 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !1199, i64 0}
!1201 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !22, i64 0}
!1202 = !{!"_ZTSN6casadi17SerializingStreamE", !1200, i64 0, !1201, i64 56, !187, i64 64, !48, i64 72}
!1203 = !{!1202, !48, i64 72}
!1204 = !{!221, !48, i64 56}
!1205 = distinct !{!1205, !36, !159, !160}
!1206 = distinct !{!1206, !36, !160, !159}
!1207 = distinct !{!1207, !36, !159, !160}
!1208 = distinct !{!1208, !36, !160, !159}
!1209 = distinct !{!1209, !36}
!1210 = distinct !{!1210, !36}
!1211 = distinct !{!1211, !36}
!1212 = distinct !{!1212, !36}
!1213 = !{!82, !80, i64 0}
!1214 = distinct !{!1214, !36}
!1215 = distinct !{!1215, !36}
!1216 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!1217 = distinct !{!1217, !36}
!1218 = distinct !{!1218, !36}
!1219 = distinct !{!1219, !36}
!1220 = !{!307, !307, i64 0}
!1221 = distinct !{!1221, !36}
!1222 = distinct !{!1222, !36}
!1223 = distinct !{!1223, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1224 = distinct !{!1224, !1223, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1225 = !{!1224}
!1226 = !{!22, !22, i64 0}
!1227 = !{!19, !19, i64 0}
!1228 = !{i64 0, i64 8, !1226, i64 8, i64 8, !311, i64 16, i64 8, !311, i64 24, i64 4, !1227, i64 32, i64 8, !143, i64 40, i64 8, !1226}
!1229 = distinct !{!1229, i1 true, !"_ZN6casadi6strvecB5cxx11Ev"}
!1230 = distinct !{!1230, !1229, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!1231 = !{!1230}
!1232 = distinct !{!1232, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1233 = distinct !{!1233, !1232, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1234 = distinct !{!1234, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1235 = distinct !{!1235, !1234, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1236 = !{!1233}
!1237 = !{!1235}
!1238 = !{!1235, !1233}
!1239 = distinct !{!1239, i1 true, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!1240 = distinct !{!1240, !1239, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!1241 = !{!1240}
!1242 = !{!312, !312, i64 0}
!1243 = distinct !{!1243, !36}
!1244 = distinct !{!1244, !36}
!1245 = distinct !{!1245, !36}
!1246 = distinct !{!1246, !36}
!1247 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !204, i64 0}
!1248 = !{!1247, !204, i64 0}
!1249 = distinct !{!1249, !36}
!1250 = distinct !{!1250, !36, !159, !160}
!1251 = distinct !{!1251, !262}
!1252 = distinct !{!1252, !36, !159}
!1253 = distinct !{!1253, !262}
!1254 = distinct !{!1254, !36, !159, !160}
!1255 = distinct !{!1255, !36, !160, !159}
!1256 = distinct !{!1256, !36}
!1257 = distinct !{!1257, !36}
!1258 = distinct !{!1258, !36}
!1259 = distinct !{!1259, !36}
!1260 = distinct !{!1260, !262}
!1261 = distinct !{!1261, !36, !159, !160}
!1262 = distinct !{!1262, !36, !160, !159}
!1263 = distinct !{!1263, !36, !159, !160}
!1264 = distinct !{!1264, !262}
!1265 = distinct !{!1265, !36, !159}
!1266 = distinct !{!1266, !36, !159, !160}
!1267 = distinct !{!1267, !36, !160, !159}
!1268 = distinct !{!1268, !262}
!1269 = distinct !{!1269, !36, !159, !160}
!1270 = distinct !{!1270, !36, !160, !159}
!1271 = distinct !{!1271, !36, !159, !160}
!1272 = distinct !{!1272, !36, !160, !159}
!1273 = distinct !{!1273, !262}
!1274 = distinct !{!1274, !36, !159, !160}
!1275 = distinct !{!1275, !36, !160, !159}
!1276 = distinct !{!1276, !36, !159, !160}
!1277 = distinct !{!1277, !36, !160, !159}
!1278 = distinct !{!1278, i1 false, !"LVerDomain"}
!1279 = distinct !{!1279, !1278}
!1280 = distinct !{!1280, !1278}
!1281 = distinct !{!1281, !36, !159, !160}
!1282 = distinct !{!1282, !36, !159}
!1283 = distinct !{!1283, i1 false, !"LVerDomain"}
!1284 = distinct !{!1284, !1283}
!1285 = distinct !{!1285, !1283}
!1286 = distinct !{!1286, !36, !159, !160}
!1287 = distinct !{!1287, !36, !159}
!1288 = distinct !{!1288, !262}
!1289 = distinct !{!1289, !36}
!1290 = distinct !{!1290, !36, !159, !160}
!1291 = distinct !{!1291, !262}
!1292 = distinct !{!1292, !36, !159}
!1293 = !{!1279}
!1294 = !{!1280}
!1295 = !{!1284}
!1296 = !{!1285}
!1297 = distinct !{!1297, !36}
!1298 = distinct !{!1298, !36}
!1299 = distinct !{!1299, !36}
!1300 = distinct !{!1300, !262}
!1301 = distinct !{!1301, !36}
!1302 = distinct !{!1302, !262}
!1303 = distinct !{!1303, !36}
!1304 = distinct !{!1304, !36}
!1305 = distinct !{!1305, !36}
!1306 = distinct !{!1306, i1 false, !"LVerDomain"}
!1307 = distinct !{!1307, !1306}
!1308 = distinct !{!1308, !1306}
!1309 = distinct !{!1309, !36, !159, !160}
!1310 = distinct !{!1310, !36, !159}
!1311 = distinct !{!1311, !36}
!1312 = distinct !{!1312, !36}
!1313 = distinct !{!1313, !36}
!1314 = distinct !{!1314, !36}
!1315 = distinct !{!1315, i1 false, !"LVerDomain"}
!1316 = distinct !{!1316, !1315}
!1317 = distinct !{!1317, !1315}
!1318 = distinct !{!1318, !1315}
!1319 = distinct !{!1319, !36, !159, !160}
!1320 = distinct !{!1320, !36, !159}
!1321 = distinct !{!1321, !36}
!1322 = distinct !{!1322, !262}
!1323 = distinct !{!1323, !36}
!1324 = !{!1307}
!1325 = !{!1308}
!1326 = !{!1316}
!1327 = !{!1317}
!1328 = !{!1318}
!1329 = !{!1317, !1316}
!1330 = distinct !{!1330, i1 false, !"LVerDomain"}
!1331 = distinct !{!1331, !1330}
!1332 = distinct !{!1332, !1330}
!1333 = distinct !{!1333, !36, !159, !160}
!1334 = distinct !{!1334, !262}
!1335 = distinct !{!1335, !36, !159}
!1336 = distinct !{!1336, !36}
!1337 = distinct !{!1337, !262}
!1338 = distinct !{!1338, !36, !159, !160}
!1339 = distinct !{!1339, !36, !160, !159}
!1340 = distinct !{!1340, !36}
!1341 = !{!1331}
!1342 = !{!1332}
!1343 = distinct !{!1343, i1 false, !"LVerDomain"}
!1344 = distinct !{!1344, !1343}
!1345 = distinct !{!1345, !1343}
!1346 = distinct !{!1346, !36, !159, !160}
!1347 = distinct !{!1347, !36, !159}
!1348 = distinct !{!1348, !36}
!1349 = !{!1344}
!1350 = !{!1345}
!1351 = distinct !{!1351, !36}
!1352 = distinct !{!1352, !36}
!1353 = distinct !{!1353, !262}
!1354 = distinct !{!1354, i1 false, !"LVerDomain"}
!1355 = distinct !{!1355, !1354}
!1356 = distinct !{!1356, !1354}
!1357 = distinct !{!1357, !36, !159, !160}
!1358 = distinct !{!1358, !36, !159}
!1359 = distinct !{!1359, i1 false, !"LVerDomain"}
!1360 = distinct !{!1360, !1359}
!1361 = distinct !{!1361, !1359}
!1362 = distinct !{!1362, !1359}
!1363 = distinct !{!1363, !1359}
!1364 = distinct !{!1364, !1359}
!1365 = distinct !{!1365, !36, !159, !160}
!1366 = distinct !{!1366, !36, !159}
!1367 = distinct !{!1367, !36}
!1368 = !{!1355}
!1369 = !{!1356}
!1370 = !{!1360}
!1371 = !{!1361}
!1372 = !{!1362}
!1373 = !{!1363}
!1374 = !{!1364}
!1375 = !{!1363, !1360, !1361, !1362}
!1376 = distinct !{!1376, !36, !1377}
!1377 = !{!"llvm.loop.peeled.count", i32 1}
!1378 = distinct !{!1378, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1379 = distinct !{!1379, !1378, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1380 = distinct !{!1380, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1381 = distinct !{!1381, !1380, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1382 = !{!1379}
!1383 = !{!1381}
!1384 = !{!1381, !1379}
end_hunk_1
