inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  br i1 %i.fs, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter250 = and i64 %i.fg, -2
  %i.ft = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.080.i = phi ptr [ %i.fq, %.lr.ph.i.preheader.new ], [ %i.gm, %.lr.ph.i ] ; 3 uses
  %niter251 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter251.next.1, %.lr.ph.i ]
  %i.gb = load <2 x double>, ptr %.080.i, align 8, !tbaa !144 ; 3 uses
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = shufflevector <2 x double> %i.gb, <2 x double> %i.gc, <2 x i32> <i32 1, i32 2>
  %i.ge = fmul <2 x double> %i.fu, %i.gd
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.gb, <2 x double> %i.ge)
  store <2 x double> %i.gf, ptr %.080.i, align 8, !tbaa !144
  %i.gg = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %0 ; 3 uses
  %i.gh = load <2 x double>, ptr %i.gg, align 8, !tbaa !144 ; 3 uses
  %i.gi = fneg <2 x double> %i.gh
  %i.gj = shufflevector <2 x double> %i.gh, <2 x double> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gk = fmul <2 x double> %i.fy, %i.gj
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.gh, <2 x double> %i.gk)
  store <2 x double> %i.gl, ptr %i.gg, align 8, !tbaa !144
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %0 ; 3 uses
  %niter251.next.1 = add i64 %niter251, 2         ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !935

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod247.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod247.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fq, %.lr.ph.i.preheader ], [ %i.gm, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod249 = trunc i64 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod249)
  %i.gn = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !144 ; 3 uses
  %i.go = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = fneg <2 x double> %i.gn
  %i.gr = shufflevector <2 x double> %i.gn, <2 x double> %i.gq, <2 x i32> <i32 1, i32 2>
  %i.gs = fmul <2 x double> %i.gp, %i.gr
  %i.gt = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gn, <2 x double> %i.gs)
  store <2 x double> %i.gv, ptr %.080.i.epil.init, align 8, !tbaa !144
  %i.gw = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fq, %bb.l ], [ %i.gm, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gw, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gx = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gy = getelementptr i8, ptr %i.gx, i64 8      ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !144 ; 2 uses
  %i.ha = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !144 ; 3 uses
  %i.hb = fmul double %i.fl, %i.gz
  %i.hc = extractelement <2 x double> %i.ha, i64 1 ; 2 uses
  %i.hd = fmul double %i.fl, %i.hc                ; 2 uses
  %i.he = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hg = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.hb, i64 1
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.ha, <2 x double> %i.hh) ; 3 uses
  %i.hj = extractelement <2 x double> %i.ha, i64 0
  %i.hk = fneg double %i.hj
  %i.hl = fmul double %i.fl, %i.hk
  %i.hm = call double @llvm.fmuladd.f64(double %i.fn, double %i.hc, double %i.hl)
  %i.hn = fneg double %i.hd
  %i.ho = call double @llvm.fmuladd.f64(double %i.fn, double %i.gz, double %i.hn)
  %i.hp = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = fneg <2 x double> %i.hi
  %i.hs = shufflevector <2 x double> %i.hi, <2 x double> %i.hr, <2 x i32> <i32 1, i32 2>
  %i.ht = fmul <2 x double> %i.hq, %i.hs
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hi, <2 x double> %i.ht)
  store <2 x double> %i.hu, ptr %.0.lcssa.i, align 8, !tbaa !144
  %i.hv = fneg double %i.hm
  %i.hw = fmul double %i.fl, %i.hv
  %i.hx = call double @llvm.fmuladd.f64(double %i.fn, double %i.ho, double %i.hw)
  store double %i.hx, ptr %i.gy, align 8, !tbaa !144
  %i.hy = sub i64 %0, %i.fo                       ; 2 uses
  %i.hz = icmp sgt i64 %i.hy, 0
  br i1 %i.hz, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.ia = mul nsw i64 %i.fp, %0
  %i.ib = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ia
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.fp
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 4 uses
  %min.iters.check = icmp ult i64 %i.fh, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %scevgep188, %scevgep191
  %bound1 = icmp ult ptr %scevgep190, %scevgep189
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fh, -2                      ; 4 uses
  %i.ie = shl i64 %n.vec, 3
  %i.if = getelementptr i8, ptr %i.id, i64 %i.ie
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert192 = insertelement <2 x double> poison, double %i.fn, i64 0
  %broadcast.splat193 = shufflevector <2 x double> %broadcast.splatinsert192, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.id, i64 %i.ig ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !936, !noalias !939 ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load194 = load <2 x double>, ptr %i.ih, align 8, !tbaa !144, !alias.scope !939 ; 2 uses
  %i.ii = fmul <2 x double> %broadcast.splat, %wide.load194
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat193, <2 x double> %wide.load, <2 x double> %i.ii)
  store <2 x double> %i.ij, ptr %next.gep, align 8, !tbaa !144, !alias.scope !936, !noalias !939
  %i.ik = fneg <2 x double> %wide.load
  %i.il = fmul <2 x double> %broadcast.splat, %i.ik
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat193, <2 x double> %wide.load194, <2 x double> %i.il)
  store <2 x double> %i.im, ptr %i.ih, align 8, !tbaa !144, !alias.scope !939
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !941

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.id, %vector.memcheck ], [ %i.id, %.lr.ph84.preheader.i ], [ %i.if, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.ja, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.jb, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.io = load double, ptr %.182.i, align 8, !tbaa !144 ; 2 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !144 ; 2 uses
  %i.ir = fneg double %i.io
  %i.is = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.ir, i64 1
  %i.iu = fmul <2 x double> %i.hq, %i.it
  %i.iv = insertelement <2 x double> poison, double %i.io, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.iq, i64 1
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.iw, <2 x double> %i.iu) ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 0
  store double %i.iy, ptr %.182.i, align 8, !tbaa !144
  %i.iz = extractelement <2 x double> %i.ix, i64 1
  store double %i.iz, ptr %i.ip, align 8, !tbaa !144
  %i.ja = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.jb = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.jb, %i.hy
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !942

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.jc = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.el
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !943

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.jd = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.jd, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !944

._crit_edge161:                                   ; preds = %._crit_edge156, %._crit_edge151
  br i1 %i.ck, label %.lr.ph164, label %.loopexit

.lr.ph164:                                        ; preds = %._crit_edge161
  %i.je = add nsw i64 %0, -3
  %.not.i.i.not = icmp eq ptr %6, null
  %i.jf = shl nsw i64 %0, 3                       ; 3 uses
  %i.jg = add i64 %i.jf, -16                      ; 2 uses
  %i.jh = mul i64 %0, %i.jg
  %i.ji = mul i64 %0, -8
  %i.jj = shl i64 %0, 4                           ; 2 uses
  %i.jk = shl i64 %0, 3
  %i.jl = add i64 %i.jf, 8
  %i.jm = add i64 %0, -2                          ; 2 uses
  %i.jn = getelementptr i8, ptr %1, i64 %i.jf
  %i.jo = getelementptr i8, ptr %i.jn, i64 -8
  %i.jp = getelementptr i8, ptr %1, i64 %i.jh
  %i.jq = getelementptr i8, ptr %1, i64 %i.jj
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %i.js = getelementptr i8, ptr %1, i64 %i.jj
  %i.jt = getelementptr i8, ptr %i.js, i64 16
  %i.ju = getelementptr i8, ptr %6, i64 %i.jg
  %stride.check208 = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 13 uses
  %.0123162 = phi i64 [ %i.je, %.lr.ph164 ], [ %i.pi, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 11 uses
  %i.jv = add i64 %indvar, 1
  %i.jw = add i64 %indvar, 1                      ; 2 uses
  %i.jx = sub i64 %i.jm, %indvar                  ; 2 uses
  %i.jy = sub i64 %i.jm, %indvar                  ; 3 uses
  %i.jz = add i64 %indvar, 1                      ; 3 uses
  %i.ka = mul i64 %indvar, -8                     ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.jo, i64 %i.ka ; 2 uses
  %i.kb = mul i64 %i.ji, %indvar
  %scevgep198 = getelementptr i8, ptr %i.jp, i64 %i.kb ; 2 uses
  %i.kc = mul i64 %i.jk, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jr, i64 %i.kc
  %i.kd = mul i64 %i.jl, %indvar
  %scevgep200 = getelementptr i8, ptr %i.jt, i64 %i.kd
  %scevgep201 = getelementptr i8, ptr %i.ju, i64 %i.ka
  %i.ke = xor i64 %.0123162, -1
  %i.kf = add i64 %0, %i.ke                       ; 3 uses
  %i.kg = mul nsw i64 %i.kf, %0
  %i.kh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kg ; 8 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !144
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.kh, double noundef %i.kj)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 6 uses
  %i.km = load double, ptr %i.ki, align 8, !tbaa !144 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.kn = shl i64 %.0123162, 3
  %i.ko = add i64 %i.kn, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.ko, i1 false), !tbaa !144
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %i.kp = icmp sgt i64 %i.kf, 1
  br i1 %i.kp, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter252 = and i64 %i.jy, 1
  %i.kq = icmp eq i64 %.0123162, 0
  br i1 %i.kq, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter256 = and i64 %i.jy, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.kr = icmp eq i64 %indvar, 0
  %unroll_iter269 = and i64 %i.jw, -2
  %i.ks = and i64 %indvar, 1
  %lcmp.mod267.not.not = icmp eq i64 %i.ks, 0
  %lcmp.mod268 = trunc i64 %i.jw to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.ls, %._crit_edge.us.i ], [ %i.kl, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.lt, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.kt = load double, ptr %.046.us.i, align 8, !tbaa !144
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !144
  %i.kw = call double @llvm.fmuladd.f64(double %i.km, double %i.kt, double %i.kv) ; 3 uses
  store double %i.kw, ptr %i.ku, align 8, !tbaa !144
  br i1 %i.kr, label %.epil.preheader264, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kx = phi double [ %i.lk, %.lr.ph.us.i.new ], [ %i.kw, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.ll, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter270 = phi i64 [ %niter270.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !144
  %i.la = fmul double %i.km, %i.kz
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.03944.us.i
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !144
  %i.ld = call double @llvm.fmuladd.f64(double %i.la, double %i.lc, double %i.kx) ; 2 uses
  store double %i.ld, ptr %i.ku, align 8, !tbaa !144
  %i.le = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !144
  %i.lh = fmul double %i.km, %i.lg
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.le
  %i.lj = load double, ptr %i.li, align 8, !tbaa !144
  %i.lk = call double @llvm.fmuladd.f64(double %i.lh, double %i.lj, double %i.ld) ; 3 uses
  store double %i.lk, ptr %i.ku, align 8, !tbaa !144
  %i.ll = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter270.next.1 = add nuw i64 %niter270, 2     ; 2 uses
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !945

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod267.not.not, label %.epil.preheader264, label %._crit_edge.us.i

.epil.preheader264:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kw, %.lr.ph.us.i ], [ %i.lk, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.ll, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod268)
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !144
  %i.lo = fmul double %i.km, %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.03944.us.i.epil.init
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !144
  %i.lr = call double @llvm.fmuladd.f64(double %i.lo, double %i.lq, double %.epil.init)
  store double %i.lr, ptr %i.ku, align 8, !tbaa !144
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader264
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.lt = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !946

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %min.iters.check210 = icmp ult i64 %i.jz, 6
  %bound0202 = icmp ult ptr %scevgep197, %scevgep200
  %bound1203 = icmp ult ptr %scevgep199, %scevgep198
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult ptr %scevgep197, %scevgep201
  %bound1206 = icmp ult ptr %6, %scevgep198
  %found.conflict207 = and i1 %bound0205, %bound1206
  %i.lu = or i1 %found.conflict207, %stride.check208
  %conflict.rdx = or i1 %found.conflict204, %i.lu
  %n.vec212 = and i64 %i.jz, -4                   ; 3 uses
  %i.lv = or disjoint i64 %n.vec212, 1
  %cmp.n223 = icmp eq i64 %i.jz, %n.vec212
  %i.lw = and i64 %indvar, 1
  %lcmp.mod272.not.not = icmp eq i64 %i.lw, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %i.nl, %._crit_edge.us54.i ], [ %i.kl, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %i.nm, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !144
  %i.lz = load double, ptr %.150.us.i, align 8, !tbaa !144
  %i.ma = fsub double %i.lz, %i.ly
  store double %i.ma, ptr %.150.us.i, align 8, !tbaa !144
  %brmerge = select i1 %min.iters.check210, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph209.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph.us53.i
  %i.mb = load double, ptr %i.lx, align 8, !tbaa !144, !alias.scope !947
  %broadcast.splatinsert219 = insertelement <2 x double> poison, double %i.mb, i64 0
  %broadcast.splat220 = shufflevector <2 x double> %broadcast.splatinsert219, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next221, %vector.body213 ] ; 2 uses
  %i.mc = or disjoint i64 %index214, 1            ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %wide.load215 = load <2 x double>, ptr %i.md, align 8, !tbaa !144, !alias.scope !950
  %wide.load216 = load <2 x double>, ptr %i.me, align 8, !tbaa !144, !alias.scope !950
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.mc ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %wide.load217 = load <2 x double>, ptr %i.mf, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  %wide.load218 = load <2 x double>, ptr %i.mg, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  %i.mh = fneg <2 x double> %wide.load215
  %i.mi = fneg <2 x double> %wide.load216
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %broadcast.splat220, <2 x double> %wide.load217)
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %broadcast.splat220, <2 x double> %wide.load218)
  store <2 x double> %i.mj, ptr %i.mf, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  store <2 x double> %i.mk, ptr %i.mg, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  %index.next221 = add nuw i64 %index214, 4       ; 2 uses
  %i.ml = icmp eq i64 %index.next221, %n.vec212
  br i1 %i.ml, label %middle.block222, label %vector.body213, !llvm.loop !955

middle.block222:                                  ; preds = %vector.body213
  br i1 %cmp.n223, label %._crit_edge.us54.i, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block222
  %.14048.us.i.ph = phi i64 [ %i.lv, %middle.block222 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod272.not.not, label %scalar.ph209.prol, label %scalar.ph209.prol.loopexit

scalar.ph209.prol:                                ; preds = %scalar.ph209.preheader
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.14048.us.i.ph
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !144
  %i.mo = load double, ptr %i.lx, align 8, !tbaa !144
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !144
  %i.mr = fneg double %i.mn
  %i.ms = call double @llvm.fmuladd.f64(double %i.mr, double %i.mo, double %i.mq)
  store double %i.ms, ptr %i.mp, align 8, !tbaa !144
  %i.mt = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph209.prol.loopexit

scalar.ph209.prol.loopexit:                       ; preds = %scalar.ph209.prol, %scalar.ph209.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph209.preheader ], [ %i.mt, %scalar.ph209.prol ]
  %i.mu = icmp eq i64 %i.jv, %.14048.us.i.ph
  br i1 %i.mu, label %._crit_edge.us54.i, label %scalar.ph209

scalar.ph209:                                     ; preds = %scalar.ph209.prol.loopexit, %scalar.ph209
  %.14048.us.i = phi i64 [ %i.nk, %scalar.ph209 ], [ %.14048.us.i.unr, %scalar.ph209.prol.loopexit ] ; 4 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.14048.us.i
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !144
  %i.mx = load double, ptr %i.lx, align 8, !tbaa !144
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !144
  %i.na = fneg double %i.mw
  %i.nb = call double @llvm.fmuladd.f64(double %i.na, double %i.mx, double %i.mz)
  store double %i.nb, ptr %i.my, align 8, !tbaa !144
  %i.nc = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !144
  %i.nf = load double, ptr %i.lx, align 8, !tbaa !144
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.nc ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !144
  %i.ni = fneg double %i.ne
  %i.nj = call double @llvm.fmuladd.f64(double %i.ni, double %i.nf, double %i.nh)
  store double %i.nj, ptr %i.ng, align 8, !tbaa !144
  %i.nk = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.nk, %i.kf
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph209, !llvm.loop !956

._crit_edge.us54.i:                               ; preds = %scalar.ph209.prol.loopexit, %scalar.ph209, %middle.block222
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %i.nm = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !957

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.kl, %.lr.ph47.split.i.preheader.new ], [ %i.nx, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %i.ny, %.lr.ph47.split.i ] ; 3 uses
  %niter257 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter257.next.1, %.lr.ph47.split.i ]
  %i.nn = load double, ptr %.046.i, align 8, !tbaa !144
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !144
  %i.nq = call double @llvm.fmuladd.f64(double %i.km, double %i.nn, double %i.np)
  store double %i.nq, ptr %i.no, align 8, !tbaa !144
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !144
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !144
  %i.nw = call double @llvm.fmuladd.f64(double %i.km, double %i.ns, double %i.nv)
  store double %i.nw, ptr %i.nu, align 8, !tbaa !144
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %0 ; 2 uses
  %i.ny = add nuw nsw i64 %.04145.i, 2            ; 2 uses
  %niter257.next.1 = add i64 %niter257, 2         ; 2 uses
  %niter257.ncmp.1 = icmp eq i64 %niter257.next.1, %unroll_iter256
  br i1 %niter257.ncmp.1, label %.lr.ph51.split.i.preheader.unr-lcssa, label %.lr.ph47.split.i, !llvm.loop !946

.lr.ph51.split.i.preheader.unr-lcssa:             ; preds = %.lr.ph47.split.i
  %lcmp.mod254.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod254.not, label %.lr.ph51.split.i.preheader, label %.lr.ph47.split.i.epil.preheader

.lr.ph47.split.i.epil.preheader:                  ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.preheader
  %.046.i.epil.init = phi ptr [ %i.kl, %.lr.ph47.split.i.preheader ], [ %i.nx, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %.04145.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.preheader ], [ %i.ny, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %lcmp.mod255 = trunc i64 %i.jy to i1
  call void @llvm.assume(i1 %lcmp.mod255)
  %i.nz = load double, ptr %.046.i.epil.init, align 8, !tbaa !144
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i.epil.init ; 2 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !144
  %i.oc = call double @llvm.fmuladd.f64(double %i.km, double %i.nz, double %i.ob)
  store double %i.oc, ptr %i.oa, align 8, !tbaa !144
  br label %.lr.ph51.split.i.preheader

.lr.ph51.split.i.preheader:                       ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.epil.preheader
  %xtraiter258 = and i64 %i.jx, 3                 ; 3 uses
  %i.od = icmp ult i64 %.0123162, 3
  br i1 %i.od, label %.lr.ph51.split.i.epil.preheader, label %.lr.ph51.split.i.preheader.new

.lr.ph51.split.i.preheader.new:                   ; preds = %.lr.ph51.split.i.preheader
  %unroll_iter262 = and i64 %i.jx, -4
  br label %.lr.ph51.split.i

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.split.i, %.lr.ph51.split.i.preheader.new
  %.150.i = phi ptr [ %i.kl, %.lr.ph51.split.i.preheader.new ], [ %i.pa, %.lr.ph51.split.i ] ; 3 uses
  %.14249.i = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %i.pb, %.lr.ph51.split.i ] ; 5 uses
  %niter263 = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %niter263.next.3, %.lr.ph51.split.i ]
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.of = load double, ptr %i.oe, align 8, !tbaa !144
  %i.og = load double, ptr %.150.i, align 8, !tbaa !144
  %i.oh = fsub double %i.og, %i.of
  store double %i.oh, ptr %.150.i, align 8, !tbaa !144
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %.150.i, i64 %0 ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !144
  %i.om = load double, ptr %i.oi, align 8, !tbaa !144
  %i.on = fsub double %i.om, %i.ol
  store double %i.on, ptr %i.oi, align 8, !tbaa !144
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %0 ; 3 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.or = load double, ptr %i.oq, align 8, !tbaa !144
  %i.os = load double, ptr %i.oo, align 8, !tbaa !144
  %i.ot = fsub double %i.os, %i.or
  store double %i.ot, ptr %i.oo, align 8, !tbaa !144
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %0 ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !144
  %i.oy = load double, ptr %i.ou, align 8, !tbaa !144
  %i.oz = fsub double %i.oy, %i.ox
  store double %i.oz, ptr %i.ou, align 8, !tbaa !144
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %0 ; 2 uses
  %i.pb = add nuw nsw i64 %.14249.i, 4            ; 2 uses
  %niter263.next.3 = add i64 %niter263, 4         ; 2 uses
  %niter263.ncmp.3 = icmp eq i64 %niter263.next.3, %unroll_iter262
  br i1 %niter263.ncmp.3, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit225.unr-lcssa, label %.lr.ph51.split.i, !llvm.loop !957

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit225.unr-lcssa: ; preds = %.lr.ph51.split.i
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod260.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil.preheader

.lr.ph51.split.i.epil.preheader:                  ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit225.unr-lcssa, %.lr.ph51.split.i.preheader
  %.150.i.epil.init = phi ptr [ %i.kl, %.lr.ph51.split.i.preheader ], [ %i.pa, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit225.unr-lcssa ]
  %.14249.i.epil.init = phi i64 [ 0, %.lr.ph51.split.i.preheader ], [ %i.pb, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit225.unr-lcssa ]
  %lcmp.mod261 = icmp ne i64 %xtraiter258, 0
  call void @llvm.assume(i1 %lcmp.mod261)
  br label %.lr.ph51.split.i.epil

end_hunk_0
