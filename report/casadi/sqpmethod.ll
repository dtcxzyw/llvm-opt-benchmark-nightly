Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sqpmethod?download=true
inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
.lr.ph150.epil.preheader:                         ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph150.preheader
  %.4149.epil.init = phi i64 [ 0, %.lr.ph150.preheader ], [ %i.da, %._crit_edge151.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod241 = trunc i64 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod241)
  %i.dm = add nuw nsw i64 %.4149.epil.init, 1
  %i.dn = icmp slt i64 %i.dm, %0
  br i1 %i.dn, label %.lr.ph148.epil, label %._crit_edge151

.lr.ph148.epil:                                   ; preds = %.lr.ph150.epil.preheader
  %i.do = shl i64 %.4149.epil.init, 3
  %i.dp = sub i64 %i.cq, %i.do
  %i.dq = mul i64 %i.cp, %.4149.epil.init
  %i.dr = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep.epil = getelementptr i8, ptr %i.dr, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.dp, i1 false), !tbaa !145
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit.unr-lcssa, %.lr.ph148.epil, %.lr.ph150.epil.preheader, %.preheader132
  %i.ds = load i64, ptr %7, align 8, !tbaa !177   ; 3 uses
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
  %.5158 = phi i64 [ %i.ir, %._crit_edge156 ], [ 0, %.lr.ph160.preheader ]
  %.0122157 = phi ptr [ %i.ec, %._crit_edge156 ], [ %i.dv, %.lr.ph160.preheader ] ; 4 uses
  %i.eb = load i64, ptr %.0122157, align 8, !tbaa !177 ; 8 uses
  %i.ec = getelementptr inbounds i8, ptr %.0122157, i64 -24
  %i.ed = icmp sgt i64 %i.eb, 1
  br i1 %i.ed, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160
  %i.ee = getelementptr inbounds nuw i8, ptr %.0122157, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !177
  %i.eg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.0122157, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !177 ; 6 uses
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
  %i.ew = add i64 %i.eb, %i.ei
  %i.ex = sub i64 %0, %i.ew
  %i.ey = add nsw i64 %i.eb, -3
  %i.ez = add i64 %i.ey, %i.ei
  %i.fa = getelementptr i8, ptr %1, i64 %i.en
  %i.fb = getelementptr i8, ptr %1, i64 %i.eu
  %i.fc = getelementptr i8, ptr %1, i64 %i.ev
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit
  %.0121153 = phi ptr [ %i.eg, %.lr.ph155 ], [ %i.fg, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ]
  %.2126152 = phi i64 [ 0, %.lr.ph155 ], [ %i.iq, %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit ] ; 7 uses
  %i.fd = add i64 %i.ex, %.2126152                ; 3 uses
  %i.fe = mul i64 %i.dx, %.2126152                ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.fa, i64 %i.fe
  %i.ff = mul i64 %i.dz, %.2126152
  %scevgep189 = getelementptr i8, ptr %i.fb, i64 %i.ff
  %scevgep190 = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds i8, ptr %.0121153, i64 -16 ; 2 uses
  %i.fh = load <2 x double>, ptr %i.fg, align 8, !tbaa !145 ; 12 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 1 ; 4 uses
  %i.fj = extractelement <2 x double> %i.fh, i64 0 ; 3 uses
  %i.fk = sub i64 %i.ej, %.2126152                ; 5 uses
  %i.fl = add i64 %i.fk, -2                       ; 4 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fl ; 3 uses
  %i.fn = icmp sgt i64 %i.fk, 2
  br i1 %i.fn, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter244 = and i64 %i.fk, 1
  %i.fo = icmp eq i64 %i.ez, %.2126152
  br i1 %i.fo, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter249 = and i64 %i.fl, -2
  %i.fp = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fm, %.lr.ph.i.preheader.new ], [ %i.ge, %.lr.ph.i ] ; 3 uses
  %niter250 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter250.next.1, %.lr.ph.i ]
  %i.ft = load <2 x double>, ptr %.080.i, align 8, !tbaa !145 ; 3 uses
  %i.fu = fneg <2 x double> %i.ft
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.fw = fmul <2 x double> %i.fp, %i.fv
  %i.fx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ft, <2 x double> %i.fw)
  store <2 x double> %i.fx, ptr %.080.i, align 8, !tbaa !145
  %i.fy = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.fz = load <2 x double>, ptr %i.fy, align 8, !tbaa !145 ; 3 uses
  %i.ga = fneg <2 x double> %i.fz
  %i.gb = shufflevector <2 x double> %i.fz, <2 x double> %i.ga, <2 x i32> <i32 1, i32 2>
  %i.gc = fmul <2 x double> %i.fr, %i.gb
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fz, <2 x double> %i.gc)
  store <2 x double> %i.gd, ptr %i.fy, align 8, !tbaa !145
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %0 ; 3 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !935

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod246.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod246.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fm, %.lr.ph.i.preheader ], [ %i.ge, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod248 = trunc i64 %i.fk to i1
  call void @llvm.assume(i1 %lcmp.mod248)
  %i.gf = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !145 ; 3 uses
  %i.gg = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = fneg <2 x double> %i.gf
  %i.gi = shufflevector <2 x double> %i.gf, <2 x double> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.gj = fmul <2 x double> %i.gg, %i.gi
  %i.gk = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gf, <2 x double> %i.gj)
  store <2 x double> %i.gl, ptr %.080.i.epil.init, align 8, !tbaa !145
  %i.gm = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fm, %bb.l ], [ %i.ge, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gm, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gn = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.go = getelementptr i8, ptr %i.gn, i64 8      ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !145 ; 2 uses
  %i.gq = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !145 ; 3 uses
  %i.gr = fmul double %i.fi, %i.gp
  %i.gs = extractelement <2 x double> %i.gq, i64 1 ; 2 uses
  %i.gt = fmul double %i.fi, %i.gs                ; 2 uses
  %i.gu = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gv = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gr, i64 1
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gq, <2 x double> %i.gw) ; 3 uses
  %i.gy = extractelement <2 x double> %i.gq, i64 0
  %i.gz = fneg double %i.gy
  %i.ha = fmul double %i.fi, %i.gz
  %i.hb = call double @llvm.fmuladd.f64(double %i.fj, double %i.gs, double %i.ha)
  %i.hc = fneg double %i.gt
  %i.hd = call double @llvm.fmuladd.f64(double %i.fj, double %i.gp, double %i.hc)
  %i.he = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hf = fneg <2 x double> %i.gx
  %i.hg = shufflevector <2 x double> %i.gx, <2 x double> %i.hf, <2 x i32> <i32 1, i32 2>
  %i.hh = fmul <2 x double> %i.he, %i.hg
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gx, <2 x double> %i.hh)
  store <2 x double> %i.hi, ptr %.0.lcssa.i, align 8, !tbaa !145
  %i.hj = fneg double %i.hb
  %i.hk = fmul double %i.fi, %i.hj
  %i.hl = call double @llvm.fmuladd.f64(double %i.fj, double %i.hd, double %i.hk)
  store double %i.hl, ptr %i.go, align 8, !tbaa !145
  %i.hm = sub i64 %0, %i.fk                       ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.ho = mul i64 %i.fl, %0
  %i.hp = getelementptr [8 x i8], ptr %1, i64 %i.ho
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %i.fl
  %i.hr = getelementptr i8, ptr %i.hq, i64 16     ; 5 uses
  %min.iters.check = icmp ult i64 %i.fd, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.hr, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fd, -2                      ; 4 uses
  %i.hs = shl i64 %n.vec, 3
  %i.ht = getelementptr i8, ptr %i.hr, i64 %i.hs
  %broadcast.splat = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat192 = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hu = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hr, i64 %i.hu ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !145, !alias.scope !954, !noalias !955 ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.hv, align 8, !tbaa !145, !alias.scope !955 ; 2 uses
  %i.hw = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.hw)
  store <2 x double> %i.hx, ptr %next.gep, align 8, !tbaa !145, !alias.scope !954, !noalias !955
  %i.hy = fneg <2 x double> %wide.load
  %i.hz = fmul <2 x double> %broadcast.splat, %i.hy
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.hz)
  store <2 x double> %i.ia, ptr %i.hv, align 8, !tbaa !145, !alias.scope !955
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !939

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fd, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hr, %vector.memcheck ], [ %i.hr, %.lr.ph84.preheader.i ], [ %i.ht, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.io, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.ip, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.ic = load double, ptr %.182.i, align 8, !tbaa !145 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !145 ; 2 uses
  %i.if = fneg double %i.ic
  %i.ig = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.if, i64 1
  %i.ii = fmul <2 x double> %i.he, %i.ih
  %i.ij = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.ie, i64 1
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.ik, <2 x double> %i.ii) ; 2 uses
  %i.im = extractelement <2 x double> %i.il, i64 0
  store double %i.im, ptr %.182.i, align 8, !tbaa !145
  %i.in = extractelement <2 x double> %i.il, i64 1
  store double %i.in, ptr %i.id, align 8, !tbaa !145
  %i.io = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.ip = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ip, %i.hm
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !940

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.iq = add nuw nsw i64 %.2126152, 1
  %exitcond171.not.a = icmp eq i64 %.2126152, %i.ek
  br i1 %exitcond171.not.a, label %._crit_edge156, label %bb.l, !llvm.loop !941

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.ir = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.ir, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !942

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.is = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.it = shl nsw i64 %0, 3                       ; 3 uses
  %i.iu = add i64 %i.it, -16                      ; 2 uses
  %i.iv = mul i64 %0, %i.iu
  %i.iw = mul i64 %0, -8
  %i.ix = shl i64 %0, 4                           ; 2 uses
  %i.iy = shl i64 %0, 3
  %8 = add i64 %i.it, 8
  %i.iz = add i64 %0, -2
  %i.ja = getelementptr i8, ptr %1, i64 %i.it
  %i.jb = getelementptr i8, ptr %i.ja, i64 -8
  %i.jc = getelementptr i8, ptr %1, i64 %i.iv
  %i.jd = getelementptr i8, ptr %1, i64 %i.ix
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = getelementptr i8, ptr %1, i64 %i.ix
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %i.jh = getelementptr i8, ptr %6, i64 %i.iu
  %stride.check207 = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 10 uses
  %.0123162 = phi i64 [ %i.is, %.lr.ph164 ], [ %i.mu, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.ji = add i64 %indvar, 1                      ; 3 uses
  %9 = sub i64 %i.iz, %indvar                     ; 5 uses
  %i.jj = add i64 %indvar, 1                      ; 3 uses
  %i.jk = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196.a = getelementptr i8, ptr %i.jb, i64 %i.jk ; 2 uses
  %i.jl = mul i64 %i.iw, %indvar
  %scevgep197.a = getelementptr i8, ptr %i.jc, i64 %i.jl ; 2 uses
  %i.jm = mul i64 %i.iy, %indvar
  %scevgep198 = getelementptr i8, ptr %i.je, i64 %i.jm
  %i.jn = mul i64 %8, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jg, i64 %i.jn
  %scevgep200 = getelementptr i8, ptr %i.jh, i64 %i.jk
  %i.jo = xor i64 %.0123162, -1
  %i.jp = add i64 %0, %i.jo                       ; 3 uses
  %i.jq = mul nsw i64 %i.jp, %0
  %i.jr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jq ; 8 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !145
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.jr, double noundef %i.jt)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 6 uses
  %i.jw = load double, ptr %i.js, align 8, !tbaa !145 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.jx = shl nuw nsw i64 %.0123162, 3
  %i.jy = add nuw i64 %i.jx, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.jy, i1 false), !tbaa !145
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %10 = icmp sgt i64 %i.jp, 1
  br i1 %10, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter251 = and i64 %9, 1
  %11 = icmp eq i64 %.0123162, 0
  br i1 %11, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter255 = and i64 %9, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.jz = icmp eq i64 %indvar, 0
  %unroll_iter268 = and i64 %i.ji, -2
  %i.ka = and i64 %indvar, 1
  %lcmp.mod266.not.not = icmp eq i64 %i.ka, 0
  %lcmp.mod267 = trunc i64 %i.ji to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.la, %._crit_edge.us.i ], [ %i.jv, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.lb, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.kb = load double, ptr %.046.us.i, align 8, !tbaa !145
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !145
  %i.ke = call double @llvm.fmuladd.f64(double %i.jw, double %i.kb, double %i.kd) ; 3 uses
  store double %i.ke, ptr %i.kc, align 8, !tbaa !145
  br i1 %i.jz, label %.epil.preheader263, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kf = phi double [ %i.ks, %.lr.ph.us.i.new ], [ %i.ke, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.kt, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter269 = phi i64 [ %niter269.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !145
  %i.ki = fmul double %i.jw, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.03944.us.i
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !145
  %i.kl = call double @llvm.fmuladd.f64(double %i.ki, double %i.kk, double %i.kf) ; 2 uses
  store double %i.kl, ptr %i.kc, align 8, !tbaa !145
  %i.km = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.km
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !145
  %i.kp = fmul double %i.jw, %i.ko
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.km
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !145
  %i.ks = call double @llvm.fmuladd.f64(double %i.kp, double %i.kr, double %i.kl) ; 3 uses
  store double %i.ks, ptr %i.kc, align 8, !tbaa !145
  %i.kt = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter269.next.1 = add nuw i64 %niter269, 2     ; 2 uses
  %niter269.ncmp.1 = icmp eq i64 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !943

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod266.not.not, label %.epil.preheader263, label %._crit_edge.us.i

.epil.preheader263:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.ke, %.lr.ph.us.i ], [ %i.ks, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.kt, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !145
  %i.kw = fmul double %i.jw, %i.kv
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.03944.us.i.epil.init
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !145
  %i.kz = call double @llvm.fmuladd.f64(double %i.kw, double %i.ky, double %.epil.init)
  store double %i.kz, ptr %i.kc, align 8, !tbaa !145
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader263
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.lb = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !944

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %min.iters.check209 = icmp ult i64 %i.jj, 6
  %bound0201.a = icmp ult ptr %scevgep196.a, %scevgep199
  %bound1202.a = icmp ult ptr %scevgep198, %scevgep197.a
  %found.conflict203.a = and i1 %bound0201.a, %bound1202.a
  %bound0204 = icmp ult ptr %scevgep196.a, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197.a
  %found.conflict206 = and i1 %bound0204, %bound1205
  %i.lc = or i1 %found.conflict206, %stride.check207
  %conflict.rdx = or i1 %found.conflict203.a, %i.lc
  %n.vec211 = and i64 %i.jj, -4                   ; 3 uses
  %i.ld = or disjoint i64 %n.vec211, 1
  %cmp.n222 = icmp eq i64 %i.jj, %n.vec211
  %i.le = sub i64 %0, %.0123162
  %xtraiter270 = and i64 %i.le, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %12, %._crit_edge.us54.i ], [ %i.jv, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %13, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !145
  %i.lh = load double, ptr %.150.us.i, align 8, !tbaa !145
  %i.li = fsub double %i.lh, %i.lg
  store double %i.li, ptr %.150.us.i, align 8, !tbaa !145
  %brmerge = select i1 %min.iters.check209, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.us53.i
  %i.lj = load double, ptr %i.lf, align 8, !tbaa !145, !alias.scope !956
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %i.lj, i64 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body212 ] ; 2 uses
  %i.lk = or disjoint i64 %index213, 1            ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.lk ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load214.a = load <2 x double>, ptr %i.ll, align 8, !tbaa !145, !alias.scope !957
  %wide.load215 = load <2 x double>, ptr %i.lm, align 8, !tbaa !145, !alias.scope !957
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lk ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %wide.load216 = load <2 x double>, ptr %i.ln, align 8, !tbaa !145, !alias.scope !958, !noalias !959
  %wide.load217 = load <2 x double>, ptr %i.lo, align 8, !tbaa !145, !alias.scope !958, !noalias !959
  %i.lp = fneg <2 x double> %wide.load214.a
  %i.lq = fneg <2 x double> %wide.load215
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %broadcast.splat219, <2 x double> %wide.load216)
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %broadcast.splat219, <2 x double> %wide.load217)
  store <2 x double> %i.lr, ptr %i.ln, align 8, !tbaa !145, !alias.scope !958, !noalias !959
  store <2 x double> %i.ls, ptr %i.lo, align 8, !tbaa !145, !alias.scope !958, !noalias !959
  %index.next220 = add nuw i64 %index213, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.lt, label %middle.block221, label %vector.body212, !llvm.loop !949

middle.block221:                                  ; preds = %vector.body212
  br i1 %cmp.n222, label %._crit_edge.us54.i, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block221
  %.14048.us.i.ph = phi i64 [ %i.ld, %middle.block221 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod271.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.14048.us.i.ph
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !145
  %i.lw = load double, ptr %i.lf, align 8, !tbaa !145
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !145
  %i.lz = fneg double %i.lv
  %i.ma = call double @llvm.fmuladd.f64(double %i.lz, double %i.lw, double %i.ly)
  store double %i.ma, ptr %i.lx, align 8, !tbaa !145
  %i.mb = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph208.prol.loopexit

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph208.preheader ], [ %i.mb, %scalar.ph208.prol ]
  %i.mc = icmp eq i64 %i.ji, %.14048.us.i.ph
  br i1 %i.mc, label %._crit_edge.us54.i, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %.14048.us.i = phi i64 [ %i.ms, %scalar.ph208 ], [ %.14048.us.i.unr, %scalar.ph208.prol.loopexit ] ; 4 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.14048.us.i
  %i.me = load double, ptr %i.md, align 8, !tbaa !145
  %i.mf = load double, ptr %i.lf, align 8, !tbaa !145
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !145
  %i.mi = fneg double %i.me
  %i.mj = call double @llvm.fmuladd.f64(double %i.mi, double %i.mf, double %i.mh)
  store double %i.mj, ptr %i.mg, align 8, !tbaa !145
  %i.mk = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.mk
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !145
  %i.mn = load double, ptr %i.lf, align 8, !tbaa !145
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.mk ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !145
  %i.mq = fneg double %i.mm
  %i.mr = call double @llvm.fmuladd.f64(double %i.mq, double %i.mn, double %i.mp)
  store double %i.mr, ptr %i.mo, align 8, !tbaa !145
  %i.ms = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.ms, %i.jp
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph208, !llvm.loop !950

._crit_edge.us54.i:                               ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block221
  %12 = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %13 = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !951

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.jv, %.lr.ph47.split.i.preheader.new ], [ %24, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %25, %.lr.ph47.split.i ] ; 3 uses
  %niter256 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter256.next.1, %.lr.ph47.split.i ]
  %14 = load double, ptr %.046.i, align 8, !tbaa !145
  %15 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %16 = load double, ptr %15, align 8, !tbaa !145
  %17 = call double @llvm.fmuladd.f64(double %i.jw, double %14, double %16)
  store double %17, ptr %15, align 8, !tbaa !145
  %18 = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %19 = load double, ptr %18, align 8, !tbaa !145
  %20 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %22 = load double, ptr %21, align 8, !tbaa !145
  %23 = call double @llvm.fmuladd.f64(double %i.jw, double %19, double %22)
  store double %23, ptr %21, align 8, !tbaa !145
  %24 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %0 ; 2 uses
  %25 = add nuw nsw i64 %.04145.i, 2              ; 2 uses
  %niter256.next.1 = add i64 %niter256, 2         ; 2 uses
  %niter256.ncmp.1 = icmp eq i64 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1, label %.lr.ph51.split.i.preheader.unr-lcssa, label %.lr.ph47.split.i, !llvm.loop !944

.lr.ph51.split.i.preheader.unr-lcssa:             ; preds = %.lr.ph47.split.i
  %lcmp.mod253.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod253.not, label %.lr.ph51.split.i.preheader, label %.lr.ph47.split.i.epil.preheader

.lr.ph47.split.i.epil.preheader:                  ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.preheader
  %.046.i.epil.init = phi ptr [ %i.jv, %.lr.ph47.split.i.preheader ], [ %24, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %.04145.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.preheader ], [ %25, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %lcmp.mod254 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod254)
  %26 = load double, ptr %.046.i.epil.init, align 8, !tbaa !145
  %27 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i.epil.init ; 2 uses
  %28 = load double, ptr %27, align 8, !tbaa !145
  %29 = call double @llvm.fmuladd.f64(double %i.jw, double %26, double %28)
  store double %29, ptr %27, align 8, !tbaa !145
  br label %.lr.ph51.split.i.preheader

.lr.ph51.split.i.preheader:                       ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.epil.preheader
  %xtraiter257 = and i64 %9, 3                    ; 3 uses
  %30 = icmp ult i64 %.0123162, 3
  br i1 %30, label %.lr.ph51.split.i.epil.preheader, label %.lr.ph51.split.i.preheader.new

.lr.ph51.split.i.preheader.new:                   ; preds = %.lr.ph51.split.i.preheader
  %unroll_iter261 = and i64 %9, -4
  br label %.lr.ph51.split.i

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.split.i, %.lr.ph51.split.i.preheader.new
  %.150.i = phi ptr [ %i.jv, %.lr.ph51.split.i.preheader.new ], [ %53, %.lr.ph51.split.i ] ; 3 uses
  %.14249.i = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %54, %.lr.ph51.split.i ] ; 5 uses
  %niter262 = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %niter262.next.3, %.lr.ph51.split.i ]
  %31 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %32 = load double, ptr %31, align 8, !tbaa !145
  %33 = load double, ptr %.150.i, align 8, !tbaa !145
  %34 = fsub double %33, %32
  store double %34, ptr %.150.i, align 8, !tbaa !145
  %35 = getelementptr inbounds nuw [8 x i8], ptr %.150.i, i64 %0 ; 3 uses
  %36 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !145
  %39 = load double, ptr %35, align 8, !tbaa !145
  %40 = fsub double %39, %38
  store double %40, ptr %35, align 8, !tbaa !145
  %41 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %0 ; 3 uses
  %42 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %44 = load double, ptr %43, align 8, !tbaa !145
  %45 = load double, ptr %41, align 8, !tbaa !145
  %46 = fsub double %45, %44
  store double %46, ptr %41, align 8, !tbaa !145
  %47 = getelementptr inbounds nuw [8 x i8], ptr %41, i64 %0 ; 3 uses
  %48 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 24
  %50 = load double, ptr %49, align 8, !tbaa !145
  %51 = load double, ptr %47, align 8, !tbaa !145
  %52 = fsub double %51, %50
  store double %52, ptr %47, align 8, !tbaa !145
  %53 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %0 ; 2 uses
  %54 = add nuw nsw i64 %.14249.i, 4              ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, label %.lr.ph51.split.i, !llvm.loop !951

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa: ; preds = %.lr.ph51.split.i
  %lcmp.mod259.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod259.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil.preheader

.lr.ph51.split.i.epil.preheader:                  ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, %.lr.ph51.split.i.preheader
  %.150.i.epil.init = phi ptr [ %i.jv, %.lr.ph51.split.i.preheader ], [ %53, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa ]
  %.14249.i.epil.init = phi i64 [ 0, %.lr.ph51.split.i.preheader ], [ %54, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa ]
  %lcmp.mod260 = icmp ne i64 %xtraiter257, 0
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph51.split.i.epil

.lr.ph51.split.i.epil:                            ; preds = %.lr.ph51.split.i.epil, %.lr.ph51.split.i.epil.preheader
  %.150.i.epil = phi ptr [ %i.mt, %.lr.ph51.split.i.epil ], [ %.150.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 3 uses
  %.14249.i.epil = phi i64 [ %59, %.lr.ph51.split.i.epil ], [ %.14249.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 2 uses
  %epil.iter258 = phi i64 [ %epil.iter258.next, %.lr.ph51.split.i.epil ], [ 0, %.lr.ph51.split.i.epil.preheader ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i.epil
  %56 = load double, ptr %55, align 8, !tbaa !145
  %57 = load double, ptr %.150.i.epil, align 8, !tbaa !145
  %58 = fsub double %57, %56
  store double %58, ptr %.150.i.epil, align 8, !tbaa !145
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.150.i.epil, i64 %0
  %59 = add nuw nsw i64 %.14249.i.epil, 1
  %epil.iter258.next = add i64 %epil.iter258, 1   ; 2 uses
  %epil.iter258.cmp.not = icmp eq i64 %epil.iter258.next, %xtraiter257
  br i1 %epil.iter258.cmp.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil, !llvm.loop !952

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit: ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, %.lr.ph51.split.i.epil, %._crit_edge.us54.i
  %i.mu = add nsw i64 %.0123162, -1
  %i.mv = icmp sgt i64 %.0123162, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.mv, label %bb.m, label %.loopexit, !llvm.loop !953

.loopexit:                                        ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, %._crit_edge161, %._crit_edge143, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %._crit_edge143 ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge161 ], [ 0, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [1000 x double], align 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = icmp sgt i64 %1, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  %i.c = add nsw i64 %1, -3                       ; 2 uses
  %i.d = add nsw i64 %1, -2
  %i.e = mul i64 %1, %1
  %i.f = shl i64 %i.e, 3
  %i.g = shl i64 %1, 3                            ; 2 uses
  %i.h = sub nuw nsw i64 -8, %i.g
  %i.i = shl i64 %1, 3
  %i.j = add nsw i64 %1, -2
  %i.k = getelementptr i8, ptr %0, i64 %i.f
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = getelementptr i8, ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit
  %.027 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit ] ; 12 uses
  %i.n = sub i64 %i.c, %.027
  %i.o = sub i64 %i.j, %.027                      ; 3 uses
  %i.p = mul i64 %i.h, %.027
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.p
  %i.q = mul i64 %i.i, %.027
  %scevgep30 = getelementptr i8, ptr %i.m, i64 %i.q
  %i.r = sub i64 %i.d, %.027                      ; 4 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.027
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = mul i64 %.027, %1
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u ; 6 uses
  %i.w = xor i64 %.027, -1
  %i.x = add nsw i64 %1, %i.w                     ; 9 uses
  %i.y = mul i64 %i.x, %1
  %i.z = getelementptr [8 x i8], ptr %0, i64 %i.y ; 17 uses
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %4

4:                                                ; preds = %bb.b
  %5 = icmp sgt i64 %i.x, 0
  br i1 %5, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

.lr.ph.i.preheader:                               ; preds = %4
  %min.iters.check32 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check32, label %.lr.ph.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %bound0 = icmp ult ptr %i.z, %scevgep30
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck
  %n.vec34 = and i64 %i.x, 9223372036854775804    ; 4 uses
  %i.aa = shl i64 %n.vec34, 3                     ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.aa
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body35 ] ; 2 uses
  %i.ad = shl i64 %index36, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ad ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.v, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <2 x double>, ptr %next.gep37, align 8, !tbaa !145, !alias.scope !971
  %wide.load39 = load <2 x double>, ptr %i.ae, align 8, !tbaa !145, !alias.scope !971
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load38, ptr %next.gep, align 8, !tbaa !145, !alias.scope !972, !noalias !971
  store <2 x double> %wide.load39, ptr %i.af, align 8, !tbaa !145, !alias.scope !972, !noalias !971
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.ag, label %middle.block41, label %vector.body35, !llvm.loop !963

middle.block41:                                   ; preds = %vector.body35
  %cmp.n42 = icmp eq i64 %i.x, %n.vec34
  br i1 %cmp.n42, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader47

.lr.ph.i.preheader47:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block41
  %.020.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec34, %middle.block41 ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.preheader ], [ %i.ab, %middle.block41 ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.preheader ], [ %i.ac, %middle.block41 ] ; 2 uses
  %i.ah = sub nsw i64 %i.x, %.020.i.ph
  %i.ai = sub i64 %i.o, %.020.i.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader47, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.am, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader47 ]
  %.01019.i.prol = phi ptr [ %i.al, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.aj, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader47 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader47 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.ak = load double, ptr %.01218.i.prol, align 8, !tbaa !145
  %i.al = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.ak, ptr %.01019.i.prol, align 8, !tbaa !145
  %i.am = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !964

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader47
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader47 ], [ %i.am, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader47 ], [ %i.al, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader47 ], [ %i.aj, %.lr.ph.i.prol ]
  %i.an = icmp ult i64 %i.ai, 7
  br i1 %i.an, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %4
  %6 = load double, ptr %i.z, align 8, !tbaa !145
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ap = load double, ptr %.01218.i, align 8, !tbaa !145
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ap, ptr %.01019.i, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.as = load double, ptr %i.ao, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.as, ptr %i.aq, align 8, !tbaa !145
  %i.au = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.av = load double, ptr %i.ar, align 8, !tbaa !145
  %i.aw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.av, ptr %i.at, align 8, !tbaa !145
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ay = load double, ptr %i.au, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ay, ptr %i.aw, align 8, !tbaa !145
  %i.ba = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !145
  %i.bc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.bb, ptr %i.az, align 8, !tbaa !145
  %i.bd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.be = load double, ptr %i.ba, align 8, !tbaa !145
  %i.bf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.be, ptr %i.bc, align 8, !tbaa !145
  %i.bg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !145
  %i.bi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.bh, ptr %i.bf, align 8, !tbaa !145
  %i.bj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bk = load double, ptr %i.bg, align 8, !tbaa !145
  %i.bl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bk, ptr %i.bi, align 8, !tbaa !145
  %i.bm = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bm, %i.x
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !965

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block41, %bb.b
  %7 = load double, ptr %i.z, align 8, !tbaa !145 ; 3 uses
  %8 = icmp sgt i64 %i.x, 1
  br i1 %8, label %.lr.ph.i25.preheader, label %._crit_edge.i

.lr.ph.i25.preheader:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %xtraiter48 = and i64 %i.o, 3                   ; 3 uses
  %i.bn = icmp ult i64 %i.n, 3
  br i1 %i.bn, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.o, -4
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.041.i = phi double [ 0.000000e+00, %.lr.ph.i25.preheader.new ], [ %i.cc, %.lr.ph.i25 ]
  %.03640.i = phi i64 [ 1, %.lr.ph.i25.preheader.new ], [ %i.cd, %.lr.ph.i25 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.3, %.lr.ph.i25 ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03640.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !145 ; 2 uses
  %i.bq = call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %.041.i)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03640.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !145 ; 2 uses
  %i.bu = call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bq)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03640.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !145 ; 2 uses
  %i.by = call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.bu)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03640.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !145 ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %i.by) ; 3 uses
  %i.cd = add nuw nsw i64 %.03640.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i25, !llvm.loop !966

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i25
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.i, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.preheader
  %.041.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i25.preheader ], [ %i.cc, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03640.i.epil.init = phi i64 [ 1, %.lr.ph.i25.preheader ], [ %i.cd, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i25.epil

.lr.ph.i25.epil:                                  ; preds = %.lr.ph.i25.epil, %.lr.ph.i25.epil.preheader
  %.041.i.epil = phi double [ %i.cg, %.lr.ph.i25.epil ], [ %.041.i.epil.init, %.lr.ph.i25.epil.preheader ]
  %.03640.i.epil = phi i64 [ %i.ch, %.lr.ph.i25.epil ], [ %.03640.i.epil.init, %.lr.ph.i25.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i25.epil ], [ 0, %.lr.ph.i25.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03640.i.epil
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !145 ; 2 uses
  %i.cg = call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %.041.i.epil) ; 2 uses
  %i.ch = add nuw nsw i64 %.03640.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i25.epil, !llvm.loop !967

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i25.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %9 = phi i1 [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ true, %.lr.ph.i25.epil ], [ true, %._crit_edge.i.loopexit.unr-lcssa ]
  %10 = phi double [ %7, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %6, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %7, %.lr.ph.i25.epil ], [ %7, %._crit_edge.i.loopexit.unr-lcssa ] ; 6 uses
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.cc, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cg, %.lr.ph.i25.epil ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.027 ; 3 uses
  %i.cj = call double @llvm.fmuladd.f64(double %10, double %10, double %.0.lcssa.i)
  %i.ck = call double @sqrt(double noundef %i.cj) #26 ; 3 uses
  %i.cl = fcmp oeq double %.0.lcssa.i, 0.000000e+00
  br i1 %i.cl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.cm = fcmp olt double %10, 0.000000e+00
  %i.cn = select i1 %i.cm, double 2.000000e+00, double 0.000000e+00
  store double %i.cn, ptr %i.ci, align 8, !tbaa !145
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !145
  br label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.co = fcmp ugt double %10, 0.000000e+00
  %i.cp = fsub double %10, %i.ck
  %i.cq = fneg double %.0.lcssa.i
  %i.cr = fadd double %10, %i.ck
  %i.cs = fdiv double %i.cq, %i.cr
  %.035.i = select i1 %i.co, double %i.cs, double %i.cp ; 4 uses
  %i.ct = fmul double %.035.i, %.035.i            ; 2 uses
  %i.cu = fmul double %i.ct, 2.000000e+00
  %i.cv = fadd double %.0.lcssa.i, %i.ct
  %i.cw = fdiv double %i.cu, %i.cv
  store double %i.cw, ptr %i.ci, align 8, !tbaa !145
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !145
  br i1 %9, label %.lr.ph44.i.preheader, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit

.lr.ph44.i.preheader:                             ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.r, 2
  br i1 %min.iters.check, label %.lr.ph44.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.r, -2                       ; 2 uses
  %i.cx = or i64 %i.r, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.035.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cz, align 8, !tbaa !145
  %i.da = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.da, ptr %i.cz, align 8, !tbaa !145
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !968

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i.preheader46

.lr.ph44.i.preheader46:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.142.i.ph = phi i64 [ 1, %.lr.ph44.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader46, %.lr.ph44.i
  %.142.i = phi i64 [ %i.df, %.lr.ph44.i ], [ %.142.i.ph, %.lr.ph44.i.preheader46 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.142.i ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !145
  %i.de = fdiv double %i.dd, %.035.i
  store double %i.de, ptr %i.dc, align 8, !tbaa !145
  %i.df = add nuw nsw i64 %.142.i, 1              ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.x
  br i1 %exitcond45.not.i, label %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, label %.lr.ph44.i, !llvm.loop !969

_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit:  ; preds = %.lr.ph44.i, %middle.block, %bb.c, %bb.d
  store double %i.ck, ptr %i.v, align 8, !tbaa !145
  %i.dg = load double, ptr %i.ci, align 8, !tbaa !145
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %1, i64 noundef %.027, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.z, double noundef %i.dg)
  %i.dh = add nuw nsw i64 %.027, 1
  %exitcond.not = icmp eq i64 %.027, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !970

._crit_edge:                                      ; preds = %_ZN6casadi16casadi_cvx_houseIdEET_PS1_S2_x.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi21casadi_cvx_symm_schurIdEEixPT_S2_S1_xPxS2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  store i64 0, ptr %5, align 8, !tbaa !177
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
  br i1 %brmerge, label %.lr.ph.preheader110, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %pred.store.continue108
  %index = phi i64 [ %index.next, %pred.store.continue108 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !145, !alias.scope !979, !noalias !980
  %i.h = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load105 = load <2 x double>, ptr %i.i, align 8, !tbaa !145, !alias.scope !980
  %i.j = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load105)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load106 = load <2 x double>, ptr %i.l, align 8, !tbaa !145, !alias.scope !980
  %i.m = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load106)
  %i.n = fadd <2 x double> %i.j, %i.m
  %i.o = fmul <2 x double> %broadcast.splat, %i.n
  %i.p = fcmp ole <2 x double> %i.h, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !145, !alias.scope !979, !noalias !980
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <2 x i1> %i.p, i64 1
  br i1 %i.r, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !145, !alias.scope !979, !noalias !980
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !976

middle.block:                                     ; preds = %pred.store.continue108
  br i1 %cmp.n, label %.lr.ph84.preheader, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06878.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %bb.c
  %.06878 = phi i64 [ %i.z, %bb.c ], [ %.06878.ph, %.lr.ph.preheader110 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06878 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !145
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06878
  %i.z = add nuw nsw i64 %.06878, 1               ; 2 uses
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !145
  %i.ab = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aa) ; 2 uses
  %shift = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ab, %shift
  %i.ac = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ad = fmul double %3, %i.ac
  %i.ae = fcmp ugt double %i.x, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %exitcond.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond.not, label %.lr.ph84.preheader, label %.lr.ph, !llvm.loop !977

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
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !145
  %i.aj = fcmp oeq double %i.ai, 0.000000e+00
  %or.cond = and i1 %.05983, %i.aj                ; 2 uses
  %i.ak = zext i1 %or.cond to i64
  %.2 = add nuw nsw i64 %.16481, %i.ak            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16979
  %i.am = load double, ptr %i.al, align 8, !tbaa !145
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond3 = and i1 %.06182, %i.an               ; 2 uses
  %i.ao = zext i1 %or.cond3 to i64
  %.166 = add nsw i64 %.06580, %i.ao
  %i.ap = icmp eq i64 %.2, %i.b                   ; 2 uses
  %.267 = select i1 %i.ap, i64 0, i64 %.166       ; 2 uses
  %.3 = select i1 %i.ap, i64 %0, i64 %.2          ; 2 uses
  %i.aq = add nuw nsw i64 %.16979, 1              ; 2 uses
  %exitcond96.not = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph84, !llvm.loop !978

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
  store i64 %i.as, ptr %.07187102, align 8, !tbaa !177
  %i.bc = getelementptr inbounds nuw i8, ptr %.07187102, i64 16
  store i64 %.065.lcssa, ptr %i.bb, align 8, !tbaa !177
  %i.bd = getelementptr inbounds nuw i8, ptr %.07187102, i64 24
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !177
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.172 = phi ptr [ %i.bd, %bb.e ], [ null, %bb.d ]
  %i.be = load i64, ptr %5, align 8, !tbaa !177
  %i.bf = add nsw i64 %i.be, 1                    ; 2 uses
  store i64 %i.bf, ptr %5, align 8, !tbaa !177
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %._crit_edge91, label %.preheader77

._crit_edge91:                                    ; preds = %bb.f, %._crit_edge, %.lr.ph90, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph90 ], [ 0, %._crit_edge ], [ 1, %bb.f ]
  ret i32 %.070
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #1 comdat {
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %3, i8 0, i64 %i.h, i1 false), !tbaa !145
  br label %.lr.ph88.preheader

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.a
  br i1 %i.g, label %.lr.ph88.preheader, label %._crit_edge100

.lr.ph88.preheader:                               ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread, %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %0 ; 2 uses
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %._crit_edge
  %.087 = phi ptr [ %i.ai, %._crit_edge ], [ %i.i, %.lr.ph88.preheader ] ; 3 uses
  %.07386 = phi i64 [ %i.q, %._crit_edge ], [ 0, %.lr.ph88.preheader ] ; 4 uses
  %i.j = load double, ptr %.087, align 8, !tbaa !145
  %i.k = fmul double %5, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07386 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !145
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07386 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !145
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.o)
  store double %i.p, ptr %i.n, align 8, !tbaa !145
  %i.q = add nuw nsw i64 %.07386, 1               ; 4 uses
  %i.r = icmp slt i64 %i.q, %i.f
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph88, %.lr.ph
  %.185.pn = phi ptr [ %.185, %.lr.ph ], [ %.087, %.lr.ph88 ]
  %.07184 = phi i64 [ %i.ae, %.lr.ph ], [ %i.q, %.lr.ph88 ] ; 3 uses
  %.185 = getelementptr inbounds nuw i8, ptr %.185.pn, i64 8 ; 4 uses
  %i.s = load double, ptr %.185, align 8, !tbaa !145
  %i.t = fmul double %5, %i.s
  %i.u = load double, ptr %i.l, align 8, !tbaa !145
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07184 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !145
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !145
  %i.y = load double, ptr %.185, align 8, !tbaa !145
  %i.z = fmul double %5, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.07184
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !145
  %i.ac = load double, ptr %i.n, align 8, !tbaa !145
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.ac)
  store double %i.ad, ptr %i.n, align 8, !tbaa !145
  %i.ae = add nuw nsw i64 %.07184, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !981

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph88
  %i.af = phi ptr [ %.087, %.lr.ph88 ], [ %.185, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.07386
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %exitcond101.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond101.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !982

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
  %i.ao = load double, ptr %.089.i, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aq = load double, ptr %.0710.i, align 8, !tbaa !145
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.012.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.at = load double, ptr %i.an, align 8, !tbaa !145
  %i.au = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.av = load double, ptr %i.ap, align 8, !tbaa !145
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.ay = load double, ptr %i.as, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.ba = load double, ptr %i.au, align 8, !tbaa !145
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !145
  %i.be = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.az, align 8, !tbaa !145
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.0710.i.epil.init = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.be, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.089.i.epil.init = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.bc, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi double [ %i.bl, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.bj, %.lr.ph.i.epil ], [ %.0710.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.bh, %.lr.ph.i.epil ], [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.bi = load double, ptr %.089.i.epil, align 8, !tbaa !145
  %i.bj = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.bk = load double, ptr %.0710.i.epil, align 8, !tbaa !145
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !983

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit:       ; preds = %.lr.ph.i.epil, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa
  %.lcssa = phi double [ %i.bg, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ], [ %i.bl, %.lr.ph.i.epil ]
  %i.bm = fmul double %.lcssa, %i.aj
  %i.bn = fmul double %i.bm, 5.000000e-01         ; 2 uses
  br i1 %.not.i, label %.lr.ph.i78.preheader, label %.lr.ph99.preheader

.lr.ph.i78.preheader:                             ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i78.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i78.preheader
  %i.bo = shl i64 %0, 3
  %i.bp = add i64 %i.bo, -8
  %i.bq = shl i64 %1, 3
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.br
  %scevgep111 = getelementptr i8, ptr %4, i64 %i.br
  %bound0 = icmp ult ptr %3, %scevgep111
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i78.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 4 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %3, i64 %i.bs
  %i.bu = getelementptr i8, ptr %4, i64 %i.bs
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.bv ; 3 uses
  %next.gep112 = getelementptr i8, ptr %4, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <2 x double>, ptr %next.gep112, align 8, !tbaa !145, !alias.scope !998
  %wide.load113 = load <2 x double>, ptr %i.bw, align 8, !tbaa !145, !alias.scope !998
  %i.bx = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load114 = load <2 x double>, ptr %next.gep, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  %wide.load115 = load <2 x double>, ptr %i.bx, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load114)
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load113, <2 x double> %wide.load115)
  store <2 x double> %i.by, ptr %next.gep, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  store <2 x double> %i.bz, ptr %i.bx, align 8, !tbaa !145, !alias.scope !999, !noalias !998
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !987

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph99.preheader, label %.lr.ph.i78.preheader162

.lr.ph.i78.preheader162:                          ; preds = %vector.memcheck, %.lr.ph.i78.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec, %middle.block ]
  %.0813.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i78.preheader ], [ %i.bt, %middle.block ]
  %.0912.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i78.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader162, %.lr.ph.i78
  %.014.i = phi i64 [ %i.cg, %.lr.ph.i78 ], [ %.014.i.ph, %.lr.ph.i78.preheader162 ]
  %.0813.i = phi ptr [ %i.cd, %.lr.ph.i78 ], [ %.0813.i.ph, %.lr.ph.i78.preheader162 ] ; 3 uses
  %.0912.i = phi ptr [ %i.cb, %.lr.ph.i78 ], [ %.0912.i.ph, %.lr.ph.i78.preheader162 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.cc = load double, ptr %.0912.i, align 8, !tbaa !145
  %i.cd = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.ce = load double, ptr %.0813.i, align 8, !tbaa !145
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.cc, double %i.ce)
  store double %i.cf, ptr %.0813.i, align 8, !tbaa !145
  %i.cg = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.cg, %i.f
  br i1 %exitcond.not.i79, label %.lr.ph99.preheader, label %.lr.ph.i78, !llvm.loop !988

.lr.ph99.preheader:                               ; preds = %.lr.ph.i78, %middle.block, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %i.ch = shl i64 %0, 3
  %i.ci = add i64 %i.ch, -8
  %i.cj = shl i64 %1, 3
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %scevgep122 = getelementptr i8, ptr %4, i64 %i.ck ; 2 uses
  %scevgep123 = getelementptr i8, ptr %3, i64 %i.ck ; 2 uses
  %i.cl = add i64 %0, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %._crit_edge95
  %.298 = phi ptr [ %i.ej, %._crit_edge95 ], [ %i.i, %.lr.ph99.preheader ] ; 9 uses
  %.17497 = phi i64 [ %i.cz, %._crit_edge95 ], [ 0, %.lr.ph99.preheader ] ; 7 uses
  %i.cm = add i64 %1, %.17497
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = shl i64 %.17497, 3
  %i.cp = sub i64 %i.ck, %i.co
  %i.cq = shl i64 %.17497, 3
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %scevgep121 = getelementptr i8, ptr %4, i64 %i.cr
  %scevgep124 = getelementptr i8, ptr %3, i64 %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17497 ; 3 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !145
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17497 ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !145
  %i.cw = load double, ptr %.298, align 8, !tbaa !145
  %i.cx = fmul double %i.ct, -2.000000e+00
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cv, double %i.cw)
  store double %i.cy, ptr %.298, align 8, !tbaa !145
  %i.cz = add nuw nsw i64 %.17497, 1              ; 7 uses
  %i.da = icmp slt i64 %i.cz, %i.f
  br i1 %i.da, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %.lr.ph99
  %min.iters.check140 = icmp ult i64 %i.cn, 6
  br i1 %min.iters.check140, label %.lr.ph94.preheader161, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph94.preheader
  %scevgep119 = getelementptr i8, ptr %.298, i64 8 ; 4 uses
  %scevgep120 = getelementptr i8, ptr %.298, i64 %i.cp ; 4 uses
  %bound0125 = icmp ult ptr %scevgep119, %scevgep122
  %bound1126 = icmp ult ptr %scevgep121, %scevgep120
  %found.conflict127 = and i1 %bound0125, %bound1126
  %bound0128 = icmp ult ptr %scevgep119, %scevgep122
  %bound1129 = icmp ult ptr %4, %scevgep120
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict127, %found.conflict130
  %bound0131 = icmp ult ptr %scevgep119, %scevgep123
  %bound1132 = icmp ult ptr %3, %scevgep120
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep119, %scevgep123
  %bound1136 = icmp ult ptr %scevgep124, %scevgep120
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  br i1 %conflict.rdx138, label %.lr.ph94.preheader161, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck118
  %n.vec142 = and i64 %i.cn, -4                   ; 4 uses
  %i.db = shl i64 %n.vec142, 3
  %i.dc = getelementptr i8, ptr %.298, i64 %i.db  ; 2 uses
  %i.dd = add i64 %i.cz, %n.vec142
  %i.de = load double, ptr %i.cs, align 8, !tbaa !145, !alias.scope !1000
  %broadcast.splatinsert152 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat153 = shufflevector <2 x double> %broadcast.splatinsert152, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = load double, ptr %i.cu, align 8, !tbaa !145, !alias.scope !1001
  %broadcast.splatinsert150 = insertelement <2 x double> poison, double %i.df, i64 0
  %broadcast.splat151 = shufflevector <2 x double> %broadcast.splatinsert150, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next156, %vector.body143 ] ; 3 uses
  %i.dg = shl i64 %index144, 3
  %next.gep145 = getelementptr i8, ptr %.298, i64 %i.dg ; 2 uses
  %i.dh = add nuw i64 %i.cz, %index144            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep145, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dh ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load146 = load <2 x double>, ptr %i.dj, align 8, !tbaa !145, !alias.scope !1002
  %wide.load147 = load <2 x double>, ptr %i.dk, align 8, !tbaa !145, !alias.scope !1002
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dh ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load148 = load <2 x double>, ptr %i.dl, align 8, !tbaa !145, !alias.scope !1003
  %wide.load149 = load <2 x double>, ptr %i.dm, align 8, !tbaa !145, !alias.scope !1003
  %i.dn = fmul <2 x double> %wide.load148, %broadcast.splat151
  %i.do = fmul <2 x double> %wide.load149, %broadcast.splat151
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat153, <2 x double> %wide.load146, <2 x double> %i.dn)
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat153, <2 x double> %wide.load147, <2 x double> %i.do)
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep145, i64 24 ; 2 uses
  %wide.load154 = load <2 x double>, ptr %i.di, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  %wide.load155 = load <2 x double>, ptr %i.dr, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  %i.ds = fsub <2 x double> %wide.load154, %i.dp
  %i.dt = fsub <2 x double> %wide.load155, %i.dq
  store <2 x double> %i.ds, ptr %i.di, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !145, !alias.scope !1004, !noalias !1005
  %index.next156 = add nuw i64 %index144, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next156, %n.vec142
  br i1 %i.du, label %middle.block157, label %vector.body143, !llvm.loop !995

middle.block157:                                  ; preds = %vector.body143
  %cmp.n158 = icmp eq i64 %i.cn, %n.vec142
  br i1 %cmp.n158, label %._crit_edge95, label %.lr.ph94.preheader161

.lr.ph94.preheader161:                            ; preds = %vector.memcheck118, %.lr.ph94.preheader, %middle.block157
  %.392.pn.ph = phi ptr [ %.298, %vector.memcheck118 ], [ %.298, %.lr.ph94.preheader ], [ %i.dc, %middle.block157 ]
  %.17291.ph = phi i64 [ %i.cz, %vector.memcheck118 ], [ %i.cz, %.lr.ph94.preheader ], [ %i.dd, %middle.block157 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader161, %.lr.ph94
  %.392.pn = phi ptr [ %.392, %.lr.ph94 ], [ %.392.pn.ph, %.lr.ph94.preheader161 ]
  %.17291 = phi i64 [ %i.ef, %.lr.ph94 ], [ %.17291.ph, %.lr.ph94.preheader161 ] ; 3 uses
  %.392 = getelementptr inbounds nuw i8, ptr %.392.pn, i64 8 ; 4 uses
  %i.dv = load double, ptr %i.cs, align 8, !tbaa !145
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.17291
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !145
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.17291
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !145
  %i.ea = load double, ptr %i.cu, align 8, !tbaa !145
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dx, double %i.eb)
  %i.ed = load double, ptr %.392, align 8, !tbaa !145
  %i.ee = fsub double %i.ed, %i.ec
  store double %i.ee, ptr %.392, align 8, !tbaa !145
  %i.ef = add nuw nsw i64 %.17291, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ef, %i.f
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !996

._crit_edge95:                                    ; preds = %.lr.ph94, %middle.block157, %.lr.ph99
  %i.eg = phi ptr [ %.298, %.lr.ph99 ], [ %i.dc, %middle.block157 ], [ %.392, %.lr.ph94 ]
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %i.a
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %.17497
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %exitcond103.not = icmp eq i64 %i.cz, %i.f
  br i1 %exitcond103.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !997

._crit_edge100:                                   ; preds = %._crit_edge95, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %._crit_edge89
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi22casadi_cvx_implicit_qrIdEEvxPT_S2_S2_(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %0, -2                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !145
  %i.d = add nsw i64 %0, -1                       ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !145 ; 2 uses
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 5.000000e-01           ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.j = load double, ptr %i.i, align 8, !tbaa !145 ; 2 uses
  %i.k = fmul double %i.j, %i.j                   ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00
  %spec.store.select = select i1 %i.l, double -1.000000e+00, double 1.000000e+00
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.k)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.m)
  %i.n = tail call double @llvm.fmuladd.f64(double %spec.store.select, double %sqrt, double %i.h)
  %i.o = fdiv double %i.k, %i.n
  %i.p = fsub double %i.f, %i.o
  %i.q = load double, ptr %1, align 8, !tbaa !145 ; 3 uses
  %i.r = fsub double %i.q, %i.p                   ; 3 uses
  %i.s = load double, ptr %2, align 8, !tbaa !145 ; 7 uses
  %i.t = icmp sgt i64 %0, 1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.u = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.u, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.v = tail call double @llvm.fabs.f64(double %i.s)
  %i.w = tail call double @llvm.fabs.f64(double %i.r)
  %i.x = fcmp ogt double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = fneg double %i.s
  %i.z = fdiv double %i.y, %i.r                   ; 3 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 1.000000e+00)
  %sqrt21.i.peel = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.ab = fdiv double 1.000000e+00, %sqrt21.i.peel ; 2 uses
  %i.ac = fmul double %i.z, %i.ab
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = fneg double %i.r
  %i.ae = fdiv double %i.ad, %i.s                 ; 3 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 1.000000e+00)
  %sqrt.i.peel = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.peel  ; 2 uses
  %i.ah = fmul double %i.ae, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader, %bb.c, %bb.d
  %.077.peel = phi double [ %i.ab, %bb.c ], [ %i.ah, %bb.d ], [ 1.000000e+00, %.lr.ph.preheader ] ; 7 uses
  %.076.peel = phi double [ %i.ac, %bb.c ], [ %i.ag, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !145 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !145
  %i.am = fneg double %.076.peel                  ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.aj, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.q, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.s, i64 1
  %i.au = insertelement <2 x double> poison, double %.077.peel, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.av, <2 x double> %i.ar) ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %.076.peel, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %.077.peel, i64 1 ; 2 uses
  %i.az = fneg <2 x double> %i.aw
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bd, <2 x double> %i.bc) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1
  store double %i.bf, ptr %1, align 8, !tbaa !145
  %i.bg = extractelement <2 x double> %i.be, i64 0
  store double %i.bg, ptr %2, align 8, !tbaa !145
  %i.bh = fmul double %.076.peel, %i.q
  %i.bi = fmul double %.076.peel, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.s
  %i.bk = fmul double %.077.peel, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %.076.peel, double %i.bk)
  %i.bm = fmul double %.077.peel, %i.aj
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %.077.peel, double %i.bl)
  store double %i.bn, ptr %i.ai, align 8, !tbaa !145
  %i.bo = load double, ptr %i.ak, align 8, !tbaa !145
  %i.bp = fmul double %.077.peel, %i.bo
  store double %i.bp, ptr %i.ak, align 8, !tbaa !145
  %i.bq = load double, ptr %2, align 8, !tbaa !145
  %i.br = fmul double %i.al, %i.am
  %.not66.peel = icmp eq ptr %3, null
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.077.peel, ptr %3, align 8, !tbaa !145
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.076.peel, ptr %i.bs, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.peel = phi ptr [ %i.bt, %bb.f ], [ null, %bb.e ]
  %exitcond.peel.not = icmp eq i64 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %.081 = phi i64 [ %i.cj, %bb.m ], [ 1, %bb.g ]  ; 3 uses
  %.06380 = phi double [ %i.dz, %bb.m ], [ %i.br, %bb.g ] ; 5 uses
  %.06479 = phi double [ %i.dy, %bb.m ], [ %i.bq, %bb.g ] ; 3 uses
  %.06578 = phi ptr [ %.1, %bb.m ], [ %.1.peel, %bb.g ] ; 4 uses
  %i.bu = fcmp oeq double %.06380, 0.000000e+00
  br i1 %i.bu, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bv = tail call double @llvm.fabs.f64(double %.06380)
  %i.bw = tail call double @llvm.fabs.f64(double %.06479)
  %i.bx = fcmp ogt double %i.bv, %i.bw
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.by = fneg double %.06479
  %i.bz = fdiv double %i.by, %.06380              ; 3 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ca)
  %i.cb = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.cc = fmul double %i.bz, %i.cb
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cd = fneg double %.06380
  %i.ce = fdiv double %i.cd, %.06479              ; 3 uses
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double 1.000000e+00)
  %sqrt21.i = tail call double @llvm.sqrt.f64(double %i.cf)
  %i.cg = fdiv double 1.000000e+00, %sqrt21.i     ; 2 uses
  %i.ch = fmul double %i.ce, %i.cg
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.i, %bb.j
  %.077 = phi double [ %i.cg, %bb.j ], [ %i.cc, %bb.i ], [ 1.000000e+00, %.lr.ph ] ; 8 uses
  %.076 = phi double [ %i.ch, %bb.j ], [ %i.cb, %bb.i ], [ 0.000000e+00, %.lr.ph ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.081 ; 2 uses
  %i.cj = add nuw nsw i64 %.081, 1                ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.081 ; 4 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !145 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cj ; 3 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !145
  %i.cp = fneg double %.076                       ; 3 uses
  %i.cq = load <2 x double>, ptr %i.ci, align 8, !tbaa !145 ; 3 uses
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !145
  %i.cs = insertelement <2 x double> %i.cq, double %i.cm, i64 0
  %i.ct = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.cs, %i.cu
  %i.cw = insertelement <2 x double> %i.cq, double %i.cm, i64 1
  %i.cx = insertelement <2 x double> poison, double %.077, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cy, <2 x double> %i.cv) ; 3 uses
  %i.da = insertelement <2 x double> poison, double %.076, i64 0
  %i.db = insertelement <2 x double> %i.da, double %.077, i64 1 ; 2 uses
  %i.dc = fneg <2 x double> %i.cz
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.de = shufflevector <2 x double> %i.cz, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.df = fmul <2 x double> %i.dd, %i.de
  %i.dg = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dg, <2 x double> %i.df) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  store double %i.di, ptr %i.ci, align 8, !tbaa !145
  %i.dj = extractelement <2 x double> %i.dh, i64 0
  store double %i.dj, ptr %i.cl, align 8, !tbaa !145
  %i.dk = extractelement <2 x double> %i.cq, i64 0
  %i.dl = fmul double %.076, %i.dk
  %i.dm = fmul double %.076, 2.000000e+00
  %i.dn = fmul double %i.dm, %i.cm
  %i.do = fmul double %.077, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dl, double %.076, double %i.do)
  %i.dq = fmul double %.077, %i.cr
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %.077, double %i.dp)
  store double %i.dr, ptr %i.ck, align 8, !tbaa !145
  %i.ds = load double, ptr %i.cn, align 8, !tbaa !145
  %i.dt = fmul double %.077, %i.ds
  store double %i.dt, ptr %i.cn, align 8, !tbaa !145
  %i.du = getelementptr i8, ptr %i.cl, i64 -8     ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !145
  %i.dw = fmul double %.06380, %i.cp
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dv, double %.077, double %i.dw)
  store double %i.dx, ptr %i.du, align 8, !tbaa !145
  %i.dy = load double, ptr %i.cl, align 8, !tbaa !145
  %i.dz = fmul double %i.co, %i.cp
  %.not66 = icmp eq ptr %.06578, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %.06578, i64 8
  store double %.077, ptr %.06578, align 8, !tbaa !145
  %i.eb = getelementptr inbounds nuw i8, ptr %.06578, i64 16
  store double %.076, ptr %i.ea, align 8, !tbaa !145
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi ptr [ %i.eb, %bb.l ], [ null, %bb.k ]
  %exitcond.not = icmp eq i64 %i.cj, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1006

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare void @_ZN6casadi19DeserializingStream6unpackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.458) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !25
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !25
  %i.q = load i64, ptr %i.k, align 8, !tbaa !26
  store i64 %i.q, ptr %i.i, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !27
  store ptr %i.k, ptr %i.h, align 8, !tbaa !25
  store i64 0, ptr %i.s, align 8, !tbaa !27
  store i8 0, ptr %i.k, align 8, !tbaa !26
  ret void
}

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !127    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128
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
  store i64 0, ptr %i.b, align 8, !tbaa !177
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !177
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !260
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.473) #25
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !177
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !177
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !260
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !128
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
define internal void @_GLOBAL__sub_I_sqpmethod.cpp() #16 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_sqpmethod.cpp:bb.a
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %58, i64 64
  store ptr %i.am, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 16), align 8, !tbaa !33
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %58, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, align 8, !tbaa !30 ; 3 uses
  %.not.i.i5.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i5.i.i, label %.body.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 16), align 8, !tbaa !33
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #27
  br label %.body.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 8), align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aj
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = load ptr, ptr %58, align 8, !tbaa !25   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #27
  br label %__cxx_global_var_init.exit

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aj
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %.body.i
  %i.bg = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  %i.bi = load ptr, ptr %58, align 8, !tbaa !25   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.af
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %i.bk = load i64, ptr %i.af, align 8, !tbaa !26
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i

common.resume:                                    ; preds = %bb.h, %bb.i, %.loopexit.i, %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6 ], [ %i.cw, %bb.h ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ct ], [ %i.cw, %bb.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.loopexit.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  br label %common.resume

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  %i.bm = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL9NL_INPUTSB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 6 uses
  store ptr %i.bn, ptr %57, align 8, !tbaa !21
  store i8 102, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 1, ptr %i.bo, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %57, i64 17
  store i8 0, ptr %i.bp, align 1, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 6 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !21
  store i8 103, ptr %i.br, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %57, i64 40
  store i64 1, ptr %i.bs, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %57, i64 49
  store i8 0, ptr %i.bt, align 1, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i8 0, i64 24, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9 unwind label %bb.e ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9: ; preds = %__cxx_global_var_init.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %57, i64 64
  store ptr %i.bu, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store ptr %i.bw, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !33
  %i.bx = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %57, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bu)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9, %__cxx_global_var_init.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !30 ; 3 uses
  %.not.i.i5.i.i1 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i5.i.i1, label %.body.i2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !33
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #27
  br label %.body.i2

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9
  store ptr %i.bx, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 8), align 8, !tbaa !31
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.br
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.g
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !26
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.ci = load ptr, ptr %57, align 8, !tbaa !25   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bn
  br i1 %i.cj, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11
  %i.ck = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #27
  br label %__cxx_global_var_init.2.exit

.body.i2:                                         ; preds = %bb.f, %bb.e
  %i.cm = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.br
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3: ; preds = %.body.i2
  %i.co = load i64, ptr %i.br, align 8, !tbaa !26
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4: ; preds = %.body.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3
  %i.cq = load ptr, ptr %57, align 8, !tbaa !25   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bn
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4
  %i.cs = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  br label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  %i.cu = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL10NL_OUTPUTSB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6casadi9Sqpmethod8options_E, i8 0, i64 24, i1 false)
  %i.cv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28
          to label %._crit_edge.i.i.i unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %__cxx_global_var_init.2.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr @_ZN6casadi9Sqpmethod8options_E, align 8, !tbaa !140 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i4.i.i, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9Sqpmethod8options_E, i64 16), align 8, !tbaa !141
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #27
  br label %common.resume

._crit_edge.i.i.i:                                ; preds = %__cxx_global_var_init.2.exit
  store ptr %i.cv, ptr @_ZN6casadi9Sqpmethod8options_E, align 8, !tbaa !140
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  store ptr %i.dc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9Sqpmethod8options_E, i64 16), align 8, !tbaa !141
  store ptr @_ZN6casadi6Nlpsol8options_E, ptr %i.cv, align 8, !tbaa !279
  store ptr %i.dc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi9Sqpmethod8options_E, i64 8), align 8, !tbaa !1008
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.dd, ptr %1, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dd, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 5, ptr %i.de, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 0, ptr %i.df, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 4, ptr %2, align 8, !tbaa !131
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #26
  store i64 52, ptr %i.ae, align 8, !tbaa !23
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0)
          to label %.noexc334.i unwind label %bb.n ; 3 uses

.noexc334.i:                                      ; preds = %._crit_edge.i.i.i
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !25
  %i.dj = load i64, ptr %i.ae, align 8, !tbaa !23 ; 3 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.di, ptr noundef nonnull align 1 dereferenceable(52) @.str.8, i64 52, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  store i8 0, ptr %i.dl, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #26
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2IS6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISD_SE_EEEbE4typeELb1EEERS6_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %._crit_edge.i.i336.i unwind label %bb.o

._crit_edge.i.i336.i:                             ; preds = %.noexc334.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.dn, ptr %3, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.dn, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.do, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.dp, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 11, ptr %4, align 8, !tbaa !131
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #26
  store i64 37, ptr %i.ad, align 8, !tbaa !23
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0)
          to label %.noexc342.i unwind label %bb.p ; 2 uses

.noexc342.i:                                      ; preds = %._crit_edge.i.i336.i
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !25
  %i.dt = load i64, ptr %i.ad, align 8, !tbaa !23 ; 3 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.ds, ptr noundef nonnull align 1 dereferenceable(37) @.str.10, i64 37, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !27
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2IS6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISD_SE_EEEbE4typeELb1EEERS6_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc.i345.i unwind label %bb.q

.noexc.i345.i:                                    ; preds = %.noexc342.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.dy, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #26
  store i64 21, ptr %i.ac, align 8, !tbaa !23
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 0)
          to label %.noexc346.i unwind label %bb.r ; 2 uses

.noexc346.i:                                      ; preds = %.noexc.i345.i
  store ptr %i.dz, ptr %5, align 8, !tbaa !25
  %i.ea = load i64, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.dz, ptr noundef nonnull align 1 dereferenceable(21) @.str.11, i64 21, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !27
  %i.ec = load ptr, ptr %5, align 8, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 4, ptr %6, align 8, !tbaa !131
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i64 20, ptr %i.ab, align 8, !tbaa !23
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0)
          to label %.noexc350.i unwind label %bb.s ; 2 uses

.noexc350.i:                                      ; preds = %.noexc346.i
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !25
  %i.eh = load i64, ptr %i.ab, align 8, !tbaa !23 ; 3 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.eg, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i64 20, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !27
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2IS6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISD_SE_EEEbE4typeELb1EEERS6_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %._crit_edge.i.i352.i unwind label %bb.t

._crit_edge.i.i352.i:                             ; preds = %.noexc350.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.em, ptr %7, align 8, !tbaa !21
  store i64 8243122688893673837, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8, ptr %i.en, align 8, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.eo, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 2, ptr %8, align 8, !tbaa !131
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  store i64 32, ptr %i.aa, align 8, !tbaa !23
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc358.i unwind label %bb.u ; 2 uses

.noexc358.i:                                      ; preds = %._crit_edge.i.i352.i
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !25
  %i.es = load i64, ptr %i.aa, align 8, !tbaa !23 ; 3 uses
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.er, ptr noundef nonnull align 1 dereferenceable(32) @.str.14, i64 32, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.es, ptr %i.et, align 8, !tbaa !27
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es
  store i8 0, ptr %i.ev, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2IS6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISD_SE_EEEbE4typeELb1EEERS6_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %._crit_edge.i.i360.i unwind label %bb.v

._crit_edge.i.i360.i:                             ; preds = %.noexc358.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ex, ptr %9, align 8, !tbaa !21
  store i64 8243122688893020525, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.ey, align 8, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.ez, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 2, ptr %10, align 8, !tbaa !131
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 6 uses
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  store i64 32, ptr %i.z, align 8, !tbaa !23
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 0)
          to label %.noexc366.i unwind label %bb.w ; 2 uses

.noexc366.i:                                      ; preds = %._crit_edge.i.i360.i
  store ptr %i.fc, ptr %i.fa, align 8, !tbaa !25
  %i.fd = load i64, ptr %i.z, align 8, !tbaa !23  ; 3 uses
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fc, ptr noundef nonnull align 1 dereferenceable(32) @.str.16, i64 32, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !27
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 0, ptr %i.fg, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2IS6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISD_SE_EEEbE4typeELb1EEERS6_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %._crit_edge.i.i368.i unwind label %bb.x

._crit_edge.i.i368.i:                             ; preds = %.noexc366.i
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fi, ptr %11, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fi, ptr noundef nonnull align 1 dereferenceable(11) @.str.17, i64 11, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 11, ptr %i.fj, align 8, !tbaa !27
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 27
  store i8 0, ptr %i.fk, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i32 2, ptr %12, align 8, !tbaa !131
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  store i64 39, ptr %i.y, align 8, !tbaa !23
  %i.fn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 0)
          to label %.noexc374.i unwind label %bb.y ; 2 uses

.noexc374.i:                                      ; preds = %._crit_edge.i.i368.i
end_hunk_1
begin_hunk_2_@llvm.fabs.v2f64
!752 = !{!706}
!753 = !{!708}
!754 = !{!710}
!755 = !{!712}
!756 = !{!714}
!757 = !{!716}
!758 = !{!718}
!759 = !{!720}
!760 = !{!722}
!761 = !{!724}
!762 = !{!726}
!763 = !{!728}
!764 = !{!730}
!765 = !{!732}
!766 = !{!734}
!767 = !{!736}
!768 = distinct !{!768, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!769 = distinct !{!769, !768, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!770 = distinct !{!770, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!771 = distinct !{!771, !770, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!772 = !{!769}
!773 = !{!771}
!774 = !{!771, !769}
!775 = distinct !{!775, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!776 = distinct !{!776, !775, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!777 = distinct !{!777, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!778 = distinct !{!778, !777, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!779 = !{!776}
!780 = !{!778}
!781 = !{!778, !776}
!782 = distinct !{!782, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!783 = distinct !{!783, !782, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!784 = distinct !{!784, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!785 = distinct !{!785, !784, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!786 = !{!783}
!787 = !{!785}
!788 = !{!785, !783}
!789 = distinct !{!789, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!790 = distinct !{!790, !789, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!791 = distinct !{!791, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!792 = distinct !{!792, !791, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!793 = !{!790}
!794 = !{!792}
!795 = !{!792, !790}
!796 = distinct !{!796, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!797 = distinct !{!797, !796, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!798 = !{!797}
!799 = distinct !{!799, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!800 = distinct !{!800, !799, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!801 = distinct !{!801, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!802 = distinct !{!802, !801, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!803 = !{!800}
!804 = !{!802}
!805 = !{!802, !800}
!806 = distinct !{!806, !32}
!807 = distinct !{!807, !32}
!808 = distinct !{!808, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!809 = distinct !{!809, !808, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!810 = distinct !{!810, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!811 = distinct !{!811, !810, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!812 = !{!809}
!813 = !{!811}
!814 = !{!811, !809}
!815 = distinct !{!815, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!816 = distinct !{!816, !815, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!817 = distinct !{!817, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!818 = distinct !{!818, !817, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!819 = !{!816}
!820 = !{!818}
!821 = !{!818, !816}
!822 = distinct !{!822, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!823 = distinct !{!823, !822, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!824 = distinct !{!824, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!825 = distinct !{!825, !824, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!826 = distinct !{!826, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!827 = distinct !{!827, !826, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!828 = distinct !{!828, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!829 = distinct !{!829, !828, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!830 = !{!823}
!831 = !{!825}
!832 = !{!827}
!833 = !{!829}
!834 = distinct !{!834, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!835 = distinct !{!835, !834, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!836 = distinct !{!836, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!837 = distinct !{!837, !836, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!838 = !{!835}
!839 = !{!837}
!840 = !{!837, !835}
!841 = distinct !{!841, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!842 = distinct !{!842, !841, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!843 = distinct !{!843, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!844 = distinct !{!844, !843, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!845 = !{!842}
!846 = !{!844}
!847 = !{!844, !842}
!848 = distinct !{!848, !32}
!849 = distinct !{!849, !32}
!850 = distinct !{!850, !"_ZN6casadi6strvecB5cxx11Ev"}
!851 = distinct !{!851, !850, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!852 = !{!851}
!853 = distinct !{!853, !"_ZN6casadi6strvecB5cxx11Ev"}
!854 = distinct !{!854, !853, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!855 = !{!854}
!856 = distinct !{!856, !"_ZN6casadi6strvecB5cxx11Ev"}
!857 = distinct !{!857, !856, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!858 = !{!857}
!859 = distinct !{!859, !"_ZN6casadi6strvecB5cxx11Ev"}
!860 = distinct !{!860, !859, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!861 = !{!860}
!862 = distinct !{!862, !"_ZN6casadi6strvecB5cxx11Ev"}
!863 = distinct !{!863, !862, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!864 = !{!863}
!865 = distinct !{!865, !"_ZN6casadi6strvecB5cxx11Ev"}
!866 = distinct !{!866, !865, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!867 = !{!866}
!868 = distinct !{!868, !"_ZN6casadi6strvecB5cxx11Ev"}
!869 = distinct !{!869, !868, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!870 = !{!869}
!871 = distinct !{!871, !"_ZN6casadi6strvecB5cxx11Ev"}
!872 = distinct !{!872, !871, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!873 = !{!872}
!874 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !83, i64 0, !22, i64 8, !85, i64 16, !22, i64 24, !87, i64 32, !84, i64 48}
!875 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !874, i64 0}
!876 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !18, i64 0}
!877 = !{!"p1 _ZTSSo", !18, i64 0}
!878 = !{!"_ZTSN6casadi17SerializingStreamE", !875, i64 0, !876, i64 56, !877, i64 64, !44, i64 72}
!879 = !{!878, !44, i64 72}
!880 = !{!44, !44, i64 0}
!881 = !{!187, !44, i64 56}
!882 = distinct !{!882, !32, !224, !225}
!883 = distinct !{!883, !32, !225, !224}
!884 = distinct !{!884, !32, !224, !225}
!885 = distinct !{!885, !32, !225, !224}
!886 = distinct !{!886, !32}
!887 = distinct !{!887, !32}
!888 = distinct !{!888, !32}
!889 = distinct !{!889, !32}
!890 = !{ptr @_ZN6casadi15CasadiExceptionD2Ev}
!891 = distinct !{!891, !32}
!892 = distinct !{!892, !32}
!893 = distinct !{!893, !32}
!894 = distinct !{!894, !32}
!895 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !169, i64 0}
!896 = !{!895, !169, i64 0}
!897 = !{!274, !274, i64 0}
!898 = distinct !{!898, !32}
!899 = distinct !{!899, !32}
!900 = distinct !{!900, !"_ZN6casadi6strvecB5cxx11Ev"}
!901 = distinct !{!901, !900, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!902 = !{!901}
!903 = !{!18, !18, i64 0}
!904 = !{!15, !15, i64 0}
!905 = !{i64 0, i64 8, !903, i64 8, i64 8, !278, i64 16, i64 8, !278, i64 24, i64 4, !904, i64 32, i64 8, !279, i64 40, i64 8, !903}
!906 = distinct !{!906, !"_ZN6casadi6strvecB5cxx11Ev"}
!907 = distinct !{!907, !906, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!908 = !{!907}
!909 = distinct !{!909, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!910 = distinct !{!910, !909, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!911 = distinct !{!911, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!912 = distinct !{!912, !911, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!913 = !{!910}
!914 = !{!912}
!915 = !{!912, !910}
!916 = distinct !{!916, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!917 = distinct !{!917, !916, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!918 = !{!917}
!919 = !{!280, !280, i64 0}
!920 = distinct !{!920, !32}
!921 = distinct !{!921, !32}
!922 = distinct !{!922, !32}
!923 = distinct !{!923, !32}
!924 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_Alloc_nodeE", !167, i64 0}
!925 = !{!924, !167, i64 0}
!926 = distinct !{!926, !32}
!927 = distinct !{!927, !32}
!928 = distinct !{!928, !32}
!929 = distinct !{!929, !32}
!930 = distinct !{!930, !226}
!931 = distinct !{!931, !32}
!932 = distinct !{!932, !226}
!933 = distinct !{!933, !32}
!934 = distinct !{!934, !32}
!935 = distinct !{!935, !32}
!936 = distinct !{!936, !"LVerDomain"}
!937 = distinct !{!937, !936}
!938 = distinct !{!938, !936}
!939 = distinct !{!939, !32, !224, !225}
!940 = distinct !{!940, !32, !224}
!941 = distinct !{!941, !32}
!942 = distinct !{!942, !32}
!943 = distinct !{!943, !32}
!944 = distinct !{!944, !32}
!945 = distinct !{!945, !"LVerDomain"}
!946 = distinct !{!946, !945}
!947 = distinct !{!947, !945}
!948 = distinct !{!948, !945}
!949 = distinct !{!949, !32, !224, !225}
!950 = distinct !{!950, !32, !224}
!951 = distinct !{!951, !32}
!952 = distinct !{!952, !226}
!953 = distinct !{!953, !32}
!954 = !{!937}
!955 = !{!938}
!956 = !{!946}
!957 = !{!947}
!958 = !{!948}
!959 = !{!947, !946}
!960 = distinct !{!960, !"LVerDomain"}
!961 = distinct !{!961, !960}
!962 = distinct !{!962, !960}
!963 = distinct !{!963, !32, !224, !225}
!964 = distinct !{!964, !226}
!965 = distinct !{!965, !32, !224}
!966 = distinct !{!966, !32}
!967 = distinct !{!967, !226}
!968 = distinct !{!968, !32, !224, !225}
!969 = distinct !{!969, !32, !225, !224}
!970 = distinct !{!970, !32}
!971 = !{!961}
!972 = !{!962}
!973 = distinct !{!973, !"LVerDomain"}
!974 = distinct !{!974, !973}
!975 = distinct !{!975, !973}
!976 = distinct !{!976, !32, !224, !225}
!977 = distinct !{!977, !32, !224}
!978 = distinct !{!978, !32}
!979 = !{!974}
!980 = !{!975}
!981 = distinct !{!981, !32}
!982 = distinct !{!982, !32}
!983 = distinct !{!983, !226}
!984 = distinct !{!984, !"LVerDomain"}
!985 = distinct !{!985, !984}
!986 = distinct !{!986, !984}
!987 = distinct !{!987, !32, !224, !225}
!988 = distinct !{!988, !32, !224}
!989 = distinct !{!989, !"LVerDomain"}
!990 = distinct !{!990, !989}
!991 = distinct !{!991, !989}
!992 = distinct !{!992, !989}
!993 = distinct !{!993, !989}
!994 = distinct !{!994, !989}
!995 = distinct !{!995, !32, !224, !225}
!996 = distinct !{!996, !32, !224}
!997 = distinct !{!997, !32}
!998 = !{!985}
!999 = !{!986}
!1000 = !{!990}
!1001 = !{!991}
!1002 = !{!992}
!1003 = !{!993}
!1004 = !{!994}
!1005 = !{!993, !990, !991, !992}
!1006 = distinct !{!1006, !32, !1007}
!1007 = !{!"llvm.loop.peeled.count", i32 1}
!1008 = !{!139, !138, i64 8}
end_hunk_2
