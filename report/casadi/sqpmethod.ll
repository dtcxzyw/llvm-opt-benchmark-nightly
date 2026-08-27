Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sqpmethod?download=true
inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  %i.gg = fmul <2 x double> %i.fu, %i.gf
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.gd, <2 x double> %i.gg)
  store <2 x double> %i.gh, ptr %i.gc, align 8, !tbaa !144
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %0 ; 3 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !935

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod246.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod246.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.080.i.epil.init = phi ptr [ %i.fm, %.lr.ph.i.preheader ], [ %i.gi, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod248 = trunc i64 %i.fk to i1
  call void @llvm.assume(i1 %lcmp.mod248)
  %i.gj = load <2 x double>, ptr %.080.i.epil.init, align 8, !tbaa !144 ; 3 uses
  %i.gk = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fneg <2 x double> %i.gj
  %i.gn = shufflevector <2 x double> %i.gj, <2 x double> %i.gm, <2 x i32> <i32 1, i32 2>
  %i.go = fmul <2 x double> %i.gl, %i.gn
  %i.gp = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gj, <2 x double> %i.go)
  store <2 x double> %i.gr, ptr %.080.i.epil.init, align 8, !tbaa !144
  %i.gs = getelementptr inbounds [8 x i8], ptr %.080.i.epil.init, i64 %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi ptr [ %i.fm, %bb.l ], [ %i.gi, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.gs, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.gt = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %0
  %i.gu = getelementptr i8, ptr %i.gt, i64 8      ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.gw = load <2 x double>, ptr %.0.lcssa.i, align 8, !tbaa !144 ; 3 uses
  %i.gx = fmul double %i.fh, %i.gv
  %i.gy = extractelement <2 x double> %i.gw, i64 1 ; 2 uses
  %i.gz = fmul double %i.fh, %i.gy                ; 2 uses
  %i.ha = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hc = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.gx, i64 1
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.gw, <2 x double> %i.hd) ; 3 uses
  %i.hf = extractelement <2 x double> %i.gw, i64 0
  %i.hg = fneg double %i.hf
  %i.hh = fmul double %i.fh, %i.hg
  %i.hi = call double @llvm.fmuladd.f64(double %i.fj, double %i.gy, double %i.hh)
  %i.hj = fneg double %i.gz
  %i.hk = call double @llvm.fmuladd.f64(double %i.fj, double %i.gv, double %i.hj)
  %i.hl = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fneg <2 x double> %i.he
  %i.ho = shufflevector <2 x double> %i.he, <2 x double> %i.hn, <2 x i32> <i32 1, i32 2>
  %i.hp = fmul <2 x double> %i.hm, %i.ho
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.he, <2 x double> %i.hp)
  store <2 x double> %i.hq, ptr %.0.lcssa.i, align 8, !tbaa !144
  %i.hr = fneg double %i.hi
  %i.hs = fmul double %i.fh, %i.hr
  %i.ht = call double @llvm.fmuladd.f64(double %i.fj, double %i.hk, double %i.hs)
  store double %i.ht, ptr %i.gu, align 8, !tbaa !144
  %i.hu = sub i64 %0, %i.fk                       ; 2 uses
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph84.preheader.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge.i
  %i.hw = mul i64 %i.fl, %0
  %i.hx = getelementptr [8 x i8], ptr %1, i64 %i.hw
  %i.hy = getelementptr [8 x i8], ptr %i.hx, i64 %i.fl
  %i.hz = getelementptr i8, ptr %i.hy, i64 16     ; 5 uses
  %min.iters.check = icmp ult i64 %i.fd, 2
  br i1 %min.iters.check, label %.lr.ph84.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph84.preheader.i
  %bound0 = icmp ult ptr %i.hz, %scevgep190
  %bound1 = icmp ult ptr %scevgep189, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph84.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fd, -2                      ; 4 uses
  %i.ia = shl i64 %n.vec, 3
  %i.ib = getelementptr i8, ptr %i.hz, i64 %i.ia
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hz, i64 %i.ic ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !936, !noalias !939 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.id, align 8, !tbaa !144, !alias.scope !939 ; 2 uses
  %i.ie = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.ie)
  store <2 x double> %i.if, ptr %next.gep, align 8, !tbaa !144, !alias.scope !936, !noalias !939
  %i.ig = fneg <2 x double> %wide.load
  %i.ih = fmul <2 x double> %broadcast.splat, %i.ig
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ih)
  store <2 x double> %i.ii, ptr %i.id, align 8, !tbaa !144, !alias.scope !939
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !941

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fd, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph84.preheader.i, %middle.block
  %.182.i.ph = phi ptr [ %i.hz, %vector.memcheck ], [ %i.hz, %.lr.ph84.preheader.i ], [ %i.ib, %middle.block ]
  %.17781.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph84.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %.182.i = phi ptr [ %i.iw, %.lr.ph84.i ], [ %.182.i.ph, %.lr.ph84.i.preheader ] ; 4 uses
  %.17781.i = phi i64 [ %i.ix, %.lr.ph84.i ], [ %.17781.i.ph, %.lr.ph84.i.preheader ]
  %i.ik = load double, ptr %.182.i, align 8, !tbaa !144 ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !144 ; 2 uses
  %i.in = fneg double %i.ik
  %i.io = insertelement <2 x double> poison, double %i.im, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1
  %i.iq = fmul <2 x double> %i.hm, %i.ip
  %i.ir = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.im, i64 1
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.is, <2 x double> %i.iq) ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  store double %i.iu, ptr %.182.i, align 8, !tbaa !144
  %i.iv = extractelement <2 x double> %i.it, i64 1
  store double %i.iv, ptr %i.il, align 8, !tbaa !144
  %i.iw = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.ix = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ix, %i.hu
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !942

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.iy = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.ek
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !943

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.iz = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.iz, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !944

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
  %i.jh = add i64 %i.jb, 8
  %i.ji = add i64 %0, -2
  %i.jj = getelementptr i8, ptr %1, i64 %i.jb
  %i.jk = getelementptr i8, ptr %i.jj, i64 -8
  %i.jl = getelementptr i8, ptr %1, i64 %i.jd
  %i.jm = getelementptr i8, ptr %1, i64 %i.jf
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = getelementptr i8, ptr %1, i64 %i.jf
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %i.jq = getelementptr i8, ptr %6, i64 %i.jc
  %stride.check207 = icmp slt i64 %0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph164, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit
  %indvar = phi i64 [ 0, %.lr.ph164 ], [ %indvar.next, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 10 uses
  %.0123162 = phi i64 [ %i.ja, %.lr.ph164 ], [ %i.pc, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
  %i.jr = add i64 %indvar, 1                      ; 3 uses
  %i.js = sub i64 %i.ji, %indvar                  ; 5 uses
  %i.jt = add i64 %indvar, 1                      ; 3 uses
  %i.ju = mul i64 %indvar, -8                     ; 2 uses
  %scevgep196 = getelementptr i8, ptr %i.jk, i64 %i.ju ; 2 uses
  %i.jv = mul i64 %i.je, %indvar
  %scevgep197 = getelementptr i8, ptr %i.jl, i64 %i.jv ; 2 uses
  %i.jw = mul i64 %i.jg, %indvar
  %scevgep198 = getelementptr i8, ptr %i.jn, i64 %i.jw
  %i.jx = mul i64 %i.jh, %indvar
  %scevgep199 = getelementptr i8, ptr %i.jp, i64 %i.jx
  %scevgep200 = getelementptr i8, ptr %i.jq, i64 %i.ju
  %i.jy = xor i64 %.0123162, -1
  %i.jz = add i64 %0, %i.jy                       ; 3 uses
  %i.ka = mul nsw i64 %i.jz, %0
  %i.kb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ka ; 8 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0123162 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !144
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.kb, double noundef %i.kd)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 6 uses
  %i.kg = load double, ptr %i.kc, align 8, !tbaa !144 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.kh = shl i64 %.0123162, 3
  %i.ki = add i64 %i.kh, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.ki, i1 false), !tbaa !144
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m, %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i
  %i.kj = icmp sgt i64 %i.jz, 1
  br i1 %i.kj, label %.lr.ph.us.i.preheader, label %.lr.ph47.split.i.preheader

.lr.ph47.split.i.preheader:                       ; preds = %.lr.ph47.i
  %xtraiter251 = and i64 %i.js, 1
  %i.kk = icmp eq i64 %.0123162, 0
  br i1 %i.kk, label %.lr.ph47.split.i.epil.preheader, label %.lr.ph47.split.i.preheader.new

.lr.ph47.split.i.preheader.new:                   ; preds = %.lr.ph47.split.i.preheader
  %unroll_iter255 = and i64 %i.js, -2
  br label %.lr.ph47.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph47.i
  %i.kl = icmp eq i64 %indvar, 0
  %unroll_iter268 = and i64 %i.jr, -2
  %i.km = and i64 %indvar, 1
  %lcmp.mod266.not.not = icmp eq i64 %i.km, 0
  %lcmp.mod267 = trunc i64 %i.jr to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.046.us.i = phi ptr [ %i.lm, %._crit_edge.us.i ], [ %i.kf, %.lr.ph.us.i.preheader ] ; 5 uses
  %.04145.us.i = phi i64 [ %i.ln, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.kn = load double, ptr %.046.us.i, align 8, !tbaa !144
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !144
  %i.kq = call double @llvm.fmuladd.f64(double %i.kg, double %i.kn, double %i.kp) ; 3 uses
  store double %i.kq, ptr %i.ko, align 8, !tbaa !144
  br i1 %i.kl, label %.epil.preheader263, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kr = phi double [ %i.le, %.lr.ph.us.i.new ], [ %i.kq, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.lf, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter269 = phi i64 [ %niter269.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !144
  %i.ku = fmul double %i.kg, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.03944.us.i
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !144
  %i.kx = call double @llvm.fmuladd.f64(double %i.ku, double %i.kw, double %i.kr) ; 2 uses
  store double %i.kx, ptr %i.ko, align 8, !tbaa !144
  %i.ky = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !144
  %i.lb = fmul double %i.kg, %i.la
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ky
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !144
  %i.le = call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %i.kx) ; 3 uses
  store double %i.le, ptr %i.ko, align 8, !tbaa !144
  %i.lf = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter269.next.1 = add nuw i64 %niter269, 2     ; 2 uses
  %niter269.ncmp.1 = icmp eq i64 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !945

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod266.not.not, label %.epil.preheader263, label %._crit_edge.us.i

.epil.preheader263:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kq, %.lr.ph.us.i ], [ %i.le, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.lf, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !144
  %i.li = fmul double %i.kg, %i.lh
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.03944.us.i.epil.init
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !144
  %i.ll = call double @llvm.fmuladd.f64(double %i.li, double %i.lk, double %.epil.init)
  store double %i.ll, ptr %i.ko, align 8, !tbaa !144
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader263
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.ln = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !946

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %min.iters.check209 = icmp ult i64 %i.jt, 6
  %bound0201 = icmp ult ptr %scevgep196, %scevgep199
  %bound1202 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0204 = icmp ult ptr %scevgep196, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197
  %found.conflict206 = and i1 %bound0204, %bound1205
  %i.lo = or i1 %found.conflict206, %stride.check207
  %conflict.rdx = or i1 %found.conflict203, %i.lo
  %n.vec211 = and i64 %i.jt, -4                   ; 3 uses
  %i.lp = or disjoint i64 %n.vec211, 1
  %cmp.n222 = icmp eq i64 %i.jt, %n.vec211
  %i.lq = sub i64 %0, %.0123162
  %xtraiter270 = and i64 %i.lq, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %i.nf, %._crit_edge.us54.i ], [ %i.kf, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %i.ng, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !144
  %i.lt = load double, ptr %.150.us.i, align 8, !tbaa !144
  %i.lu = fsub double %i.lt, %i.ls
  store double %i.lu, ptr %.150.us.i, align 8, !tbaa !144
  %brmerge = select i1 %min.iters.check209, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.us53.i
  %i.lv = load double, ptr %i.lr, align 8, !tbaa !144, !alias.scope !947
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %i.lv, i64 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body212 ] ; 2 uses
  %i.lw = or disjoint i64 %index213, 1            ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %wide.load214 = load <2 x double>, ptr %i.lx, align 8, !tbaa !144, !alias.scope !950
  %wide.load215 = load <2 x double>, ptr %i.ly, align 8, !tbaa !144, !alias.scope !950
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lw ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %wide.load216 = load <2 x double>, ptr %i.lz, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  %wide.load217 = load <2 x double>, ptr %i.ma, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  %i.mb = fneg <2 x double> %wide.load214
  %i.mc = fneg <2 x double> %wide.load215
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %broadcast.splat219, <2 x double> %wide.load216)
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %broadcast.splat219, <2 x double> %wide.load217)
  store <2 x double> %i.md, ptr %i.lz, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  store <2 x double> %i.me, ptr %i.ma, align 8, !tbaa !144, !alias.scope !952, !noalias !954
  %index.next220 = add nuw i64 %index213, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.mf, label %middle.block221, label %vector.body212, !llvm.loop !955

middle.block221:                                  ; preds = %vector.body212
  br i1 %cmp.n222, label %._crit_edge.us54.i, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block221
  %.14048.us.i.ph = phi i64 [ %i.lp, %middle.block221 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod271.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.14048.us.i.ph
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !144
  %i.mi = load double, ptr %i.lr, align 8, !tbaa !144
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !144
  %i.ml = fneg double %i.mh
  %i.mm = call double @llvm.fmuladd.f64(double %i.ml, double %i.mi, double %i.mk)
  store double %i.mm, ptr %i.mj, align 8, !tbaa !144
  %i.mn = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph208.prol.loopexit

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph208.preheader ], [ %i.mn, %scalar.ph208.prol ]
  %i.mo = icmp eq i64 %i.jr, %.14048.us.i.ph
  br i1 %i.mo, label %._crit_edge.us54.i, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %.14048.us.i = phi i64 [ %i.ne, %scalar.ph208 ], [ %.14048.us.i.unr, %scalar.ph208.prol.loopexit ] ; 4 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.14048.us.i
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !144
  %i.mr = load double, ptr %i.lr, align 8, !tbaa !144
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !144
  %i.mu = fneg double %i.mq
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double %i.mr, double %i.mt)
  store double %i.mv, ptr %i.ms, align 8, !tbaa !144
  %i.mw = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !144
  %i.mz = load double, ptr %i.lr, align 8, !tbaa !144
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.mw ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !144
  %i.nc = fneg double %i.my
  %i.nd = call double @llvm.fmuladd.f64(double %i.nc, double %i.mz, double %i.nb)
  store double %i.nd, ptr %i.na, align 8, !tbaa !144
  %i.ne = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.ne, %i.jz
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph208, !llvm.loop !956

._crit_edge.us54.i:                               ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block221
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %i.ng = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !957

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.kf, %.lr.ph47.split.i.preheader.new ], [ %i.nr, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %i.ns, %.lr.ph47.split.i ] ; 3 uses
  %niter256 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter256.next.1, %.lr.ph47.split.i ]
  %i.nh = load double, ptr %.046.i, align 8, !tbaa !144
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !144
  %i.nk = call double @llvm.fmuladd.f64(double %i.kg, double %i.nh, double %i.nj)
  store double %i.nk, ptr %i.ni, align 8, !tbaa !144
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !144
end_hunk_0
