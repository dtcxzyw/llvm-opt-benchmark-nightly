Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px:bb.a
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat192 = shufflevector <2 x double> %broadcast.splatinsert191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hz, i64 %i.ic ; 3 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %next.gep, i64 %0 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.id, align 8, !tbaa !155, !alias.scope !1325 ; 2 uses
  %i.ie = fmul <2 x double> %broadcast.splat, %wide.load193
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load, <2 x double> %i.ie)
  store <2 x double> %i.if, ptr %next.gep, align 8, !tbaa !155, !alias.scope !1324, !noalias !1325
  %i.ig = fneg <2 x double> %wide.load
  %i.ih = fmul <2 x double> %broadcast.splat, %i.ig
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat192, <2 x double> %wide.load193, <2 x double> %i.ih)
  store <2 x double> %i.ii, ptr %i.id, align 8, !tbaa !155, !alias.scope !1325
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !1309

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
  %i.ik = load double, ptr %.182.i, align 8, !tbaa !155 ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.182.i, i64 %0 ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !155 ; 2 uses
  %i.in = fneg double %i.ik
  %i.io = insertelement <2 x double> poison, double %i.im, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1
  %i.iq = fmul <2 x double> %i.gy, %i.ip
  %i.ir = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.im, i64 1
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.is, <2 x double> %i.iq) ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  store double %i.iu, ptr %.182.i, align 8, !tbaa !155
  %i.iv = extractelement <2 x double> %i.it, i64 1
  store double %i.iv, ptr %i.il, align 8, !tbaa !155
  %i.iw = getelementptr inbounds nuw i8, ptr %.182.i, i64 8
  %i.ix = add nuw nsw i64 %.17781.i, 1            ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ix, %i.hu
  br i1 %exitcond86.not.i, label %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, label %.lr.ph84.i, !llvm.loop !1310

_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit: ; preds = %.lr.ph84.i, %middle.block, %._crit_edge.i
  %i.iy = add nuw nsw i64 %.2126152, 1
  %exitcond171.not = icmp eq i64 %.2126152, %i.ek
  br i1 %exitcond171.not, label %._crit_edge156, label %bb.l, !llvm.loop !1311

._crit_edge156:                                   ; preds = %_ZN6casadi23casadi_cvx_givens_applyIdEEvxPT_S1_S1_x.exit, %.lr.ph160
  %i.iz = add nuw nsw i64 %.5158, 1               ; 2 uses
  %exitcond172.not = icmp eq i64 %i.iz, %i.ds
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !1312

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
  %.0123162 = phi i64 [ %i.ja, %.lr.ph164 ], [ %i.pb, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit ] ; 12 uses
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
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !155
  call void @_ZN6casadi27casadi_cvx_house_apply_symmIdEEvxxPT_S2_S2_S1_(i64 noundef %0, i64 noundef %.0123162, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %i.kb, double noundef %i.kd)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0123162
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 6 uses
  %i.kg = load double, ptr %i.kc, align 8, !tbaa !155 ; 7 uses
  br i1 %.not.i.i.not, label %.lr.ph47.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i

_ZN6casadi12casadi_clearIdEEvPT_x.exit.thread.i:  ; preds = %bb.m
  %i.kh = shl nuw nsw i64 %.0123162, 3
  %i.ki = add nuw nsw i64 %i.kh, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, i8 0, i64 %i.ki, i1 false), !tbaa !155
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
  %i.kn = load double, ptr %.046.us.i, align 8, !tbaa !155
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.us.i ; 5 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !155
  %i.kq = call double @llvm.fmuladd.f64(double %i.kg, double %i.kn, double %i.kp) ; 3 uses
  store double %i.kq, ptr %i.ko, align 8, !tbaa !155
  br i1 %i.kl, label %.epil.preheader263, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %i.kr = phi double [ %i.le, %.lr.ph.us.i.new ], [ %i.kq, %.lr.ph.us.i ]
  %.03944.us.i = phi i64 [ %i.lf, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 4 uses
  %niter269 = phi i64 [ %niter269.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !155
  %i.ku = fmul double %i.kg, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.03944.us.i
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !155
  %i.kx = call double @llvm.fmuladd.f64(double %i.ku, double %i.kw, double %i.kr) ; 2 uses
  store double %i.kx, ptr %i.ko, align 8, !tbaa !155
  %i.ky = add nuw nsw i64 %.03944.us.i, 1         ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !155
  %i.lb = fmul double %i.kg, %i.la
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ky
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !155
  %i.le = call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %i.kx) ; 3 uses
  store double %i.le, ptr %i.ko, align 8, !tbaa !155
  %i.lf = add nuw nsw i64 %.03944.us.i, 2         ; 2 uses
  %niter269.next.1 = add nuw i64 %niter269, 2     ; 2 uses
  %niter269.ncmp.1 = icmp eq i64 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !1313

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod266.not.not, label %.epil.preheader263, label %._crit_edge.us.i

.epil.preheader263:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.epil.init = phi double [ %i.kq, %.lr.ph.us.i ], [ %i.le, %._crit_edge.us.i.unr-lcssa ]
  %.03944.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %i.lf, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %.03944.us.i.epil.init
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !155
  %i.li = fmul double %i.kg, %i.lh
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.03944.us.i.epil.init
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !155
  %i.ll = call double @llvm.fmuladd.f64(double %i.li, double %i.lk, double %.epil.init)
  store double %i.ll, ptr %i.ko, align 8, !tbaa !155
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader263
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.046.us.i, i64 %0
  %i.ln = add nuw nsw i64 %.04145.us.i, 1
  %exitcond58.not.i = icmp eq i64 %.04145.us.i, %.0123162
  br i1 %exitcond58.not.i, label %.lr.ph.us53.i.preheader, label %.lr.ph.us.i, !llvm.loop !1314

.lr.ph.us53.i.preheader:                          ; preds = %._crit_edge.us.i
  %min.iters.check209 = icmp ult i64 %i.jt, 4
  %bound0201 = icmp ult ptr %scevgep196, %scevgep199
  %bound1202 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict203 = and i1 %bound0201, %bound1202
  %8 = or i1 %found.conflict203, %stride.check207
  %bound0204 = icmp ult ptr %scevgep196, %scevgep200
  %bound1205 = icmp ult ptr %6, %scevgep197
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx = or i1 %8, %found.conflict206
  %n.vec211 = and i64 %i.jt, -4                   ; 3 uses
  %i.lo = or disjoint i64 %n.vec211, 1
  %cmp.n222 = icmp eq i64 %i.jt, %n.vec211
  %i.lp = sub i64 %0, %.0123162
  %xtraiter270 = and i64 %i.lp, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br label %.lr.ph.us53.i

.lr.ph.us53.i:                                    ; preds = %.lr.ph.us53.i.preheader, %._crit_edge.us54.i
  %.150.us.i = phi ptr [ %i.ne, %._crit_edge.us54.i ], [ %i.kf, %.lr.ph.us53.i.preheader ] ; 7 uses
  %.14249.us.i = phi i64 [ %i.nf, %._crit_edge.us54.i ], [ 0, %.lr.ph.us53.i.preheader ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.us.i ; 5 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !155
  %i.ls = load double, ptr %.150.us.i, align 8, !tbaa !155
  %i.lt = fsub double %i.ls, %i.lr
  store double %i.lt, ptr %.150.us.i, align 8, !tbaa !155
  %brmerge = select i1 %min.iters.check209, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.us53.i
  %i.lu = load double, ptr %i.lq, align 8, !tbaa !155, !alias.scope !1326
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %i.lu, i64 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body212 ] ; 2 uses
  %i.lv = or disjoint i64 %index213, 1            ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load214.a = load <2 x double>, ptr %i.lw, align 8, !tbaa !155, !alias.scope !1327
  %wide.load215.a = load <2 x double>, ptr %i.lx, align 8, !tbaa !155, !alias.scope !1327
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.lv ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 2 uses
  %wide.load216.a = load <2 x double>, ptr %i.ly, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %wide.load217 = load <2 x double>, ptr %i.lz, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %i.ma = fneg <2 x double> %wide.load214.a
  %i.mb = fneg <2 x double> %wide.load215.a
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %broadcast.splat219, <2 x double> %wide.load216.a)
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> %broadcast.splat219, <2 x double> %wide.load217)
  store <2 x double> %i.mc, ptr %i.ly, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  store <2 x double> %i.md, ptr %i.lz, align 8, !tbaa !155, !alias.scope !1328, !noalias !1329
  %index.next220 = add nuw i64 %index213, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.me, label %middle.block221, label %vector.body212, !llvm.loop !1319

middle.block221:                                  ; preds = %vector.body212
  br i1 %cmp.n222, label %._crit_edge.us54.i, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %.lr.ph.us53.i, %middle.block221
  %.14048.us.i.ph = phi i64 [ %i.lo, %middle.block221 ], [ 1, %.lr.ph.us53.i ] ; 5 uses
  br i1 %lcmp.mod271.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.14048.us.i.ph
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !155
  %i.mh = load double, ptr %i.lq, align 8, !tbaa !155
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i.ph ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !155
  %i.mk = fneg double %i.mg
  %i.ml = call double @llvm.fmuladd.f64(double %i.mk, double %i.mh, double %i.mj)
  store double %i.ml, ptr %i.mi, align 8, !tbaa !155
  %i.mm = add nuw nsw i64 %.14048.us.i.ph, 1
  br label %scalar.ph208.prol.loopexit

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %.14048.us.i.unr = phi i64 [ %.14048.us.i.ph, %scalar.ph208.preheader ], [ %i.mm, %scalar.ph208.prol ]
  %i.mn = icmp eq i64 %i.jr, %.14048.us.i.ph
  br i1 %i.mn, label %._crit_edge.us54.i, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %.14048.us.i = phi i64 [ %i.nd, %scalar.ph208 ], [ %.14048.us.i.unr, %scalar.ph208.prol.loopexit ] ; 4 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.14048.us.i
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !155
  %i.mq = load double, ptr %i.lq, align 8, !tbaa !155
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %.14048.us.i ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !155
  %i.mt = fneg double %i.mp
  %i.mu = call double @llvm.fmuladd.f64(double %i.mt, double %i.mq, double %i.ms)
  store double %i.mu, ptr %i.mr, align 8, !tbaa !155
  %i.mv = add nuw nsw i64 %.14048.us.i, 1         ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !155
  %i.my = load double, ptr %i.lq, align 8, !tbaa !155
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %i.mv ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !155
  %i.nb = fneg double %i.mx
  %i.nc = call double @llvm.fmuladd.f64(double %i.nb, double %i.my, double %i.na)
  store double %i.nc, ptr %i.mz, align 8, !tbaa !155
  %i.nd = add nuw nsw i64 %.14048.us.i, 2         ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %i.nd, %i.jz
  br i1 %exitcond60.not.i.1, label %._crit_edge.us54.i, label %scalar.ph208, !llvm.loop !1320

._crit_edge.us54.i:                               ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block221
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %.150.us.i, i64 %0
  %i.nf = add nuw nsw i64 %.14249.us.i, 1
  %exitcond61.not.i = icmp eq i64 %.14249.us.i, %.0123162
  br i1 %exitcond61.not.i, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph.us53.i, !llvm.loop !1321

.lr.ph47.split.i:                                 ; preds = %.lr.ph47.split.i, %.lr.ph47.split.i.preheader.new
  %.046.i = phi ptr [ %i.kf, %.lr.ph47.split.i.preheader.new ], [ %i.nq, %.lr.ph47.split.i ] ; 2 uses
  %.04145.i = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %i.nr, %.lr.ph47.split.i ] ; 3 uses
  %niter256 = phi i64 [ 0, %.lr.ph47.split.i.preheader.new ], [ %niter256.next.1, %.lr.ph47.split.i ]
  %i.ng = load double, ptr %.046.i, align 8, !tbaa !155
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !155
  %i.nj = call double @llvm.fmuladd.f64(double %i.kg, double %i.ng, double %i.ni)
  store double %i.nj, ptr %i.nh, align 8, !tbaa !155
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %0 ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !155
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !155
  %i.np = call double @llvm.fmuladd.f64(double %i.kg, double %i.nl, double %i.no)
  store double %i.np, ptr %i.nn, align 8, !tbaa !155
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %0 ; 2 uses
  %i.nr = add nuw nsw i64 %.04145.i, 2            ; 2 uses
  %niter256.next.1 = add i64 %niter256, 2         ; 2 uses
  %niter256.ncmp.1 = icmp eq i64 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1, label %.lr.ph51.split.i.preheader.unr-lcssa, label %.lr.ph47.split.i, !llvm.loop !1314

.lr.ph51.split.i.preheader.unr-lcssa:             ; preds = %.lr.ph47.split.i
  %lcmp.mod253.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod253.not, label %.lr.ph51.split.i.preheader, label %.lr.ph47.split.i.epil.preheader

.lr.ph47.split.i.epil.preheader:                  ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.preheader
  %.046.i.epil.init = phi ptr [ %i.kf, %.lr.ph47.split.i.preheader ], [ %i.nq, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %.04145.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.preheader ], [ %i.nr, %.lr.ph51.split.i.preheader.unr-lcssa ]
  %lcmp.mod254 = trunc i64 %i.js to i1
  call void @llvm.assume(i1 %lcmp.mod254)
  %i.ns = load double, ptr %.046.i.epil.init, align 8, !tbaa !155
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.04145.i.epil.init ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !155
  %i.nv = call double @llvm.fmuladd.f64(double %i.kg, double %i.ns, double %i.nu)
  store double %i.nv, ptr %i.nt, align 8, !tbaa !155
  br label %.lr.ph51.split.i.preheader

.lr.ph51.split.i.preheader:                       ; preds = %.lr.ph51.split.i.preheader.unr-lcssa, %.lr.ph47.split.i.epil.preheader
  %xtraiter257 = and i64 %i.js, 3                 ; 3 uses
  %i.nw = icmp ult i64 %.0123162, 3
  br i1 %i.nw, label %.lr.ph51.split.i.epil.preheader, label %.lr.ph51.split.i.preheader.new

.lr.ph51.split.i.preheader.new:                   ; preds = %.lr.ph51.split.i.preheader
  %unroll_iter261 = and i64 %i.js, -4
  br label %.lr.ph51.split.i

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.split.i, %.lr.ph51.split.i.preheader.new
  %.150.i = phi ptr [ %i.kf, %.lr.ph51.split.i.preheader.new ], [ %i.ot, %.lr.ph51.split.i ] ; 3 uses
  %.14249.i = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %i.ou, %.lr.ph51.split.i ] ; 5 uses
  %niter262 = phi i64 [ 0, %.lr.ph51.split.i.preheader.new ], [ %niter262.next.3, %.lr.ph51.split.i ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !155
  %i.nz = load double, ptr %.150.i, align 8, !tbaa !155
  %i.oa = fsub double %i.nz, %i.ny
  store double %i.oa, ptr %.150.i, align 8, !tbaa !155
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.150.i, i64 %0 ; 3 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load double, ptr %i.od, align 8, !tbaa !155
  %i.of = load double, ptr %i.ob, align 8, !tbaa !155
  %i.og = fsub double %i.of, %i.oe
  store double %i.og, ptr %i.ob, align 8, !tbaa !155
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %0 ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !155
  %i.ol = load double, ptr %i.oh, align 8, !tbaa !155
  %i.om = fsub double %i.ol, %i.ok
  store double %i.om, ptr %i.oh, align 8, !tbaa !155
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %0 ; 3 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load double, ptr %i.op, align 8, !tbaa !155
  %i.or = load double, ptr %i.on, align 8, !tbaa !155
  %i.os = fsub double %i.or, %i.oq
  store double %i.os, ptr %i.on, align 8, !tbaa !155
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %0 ; 2 uses
  %i.ou = add nuw nsw i64 %.14249.i, 4            ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, label %.lr.ph51.split.i, !llvm.loop !1321

_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa: ; preds = %.lr.ph51.split.i
  %lcmp.mod259.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod259.not, label %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit, label %.lr.ph51.split.i.epil.preheader

.lr.ph51.split.i.epil.preheader:                  ; preds = %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa, %.lr.ph51.split.i.preheader
  %.150.i.epil.init = phi ptr [ %i.kf, %.lr.ph51.split.i.preheader ], [ %i.ot, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa ]
  %.14249.i.epil.init = phi i64 [ 0, %.lr.ph51.split.i.preheader ], [ %i.ou, %_ZN6casadi22casadi_cvx_house_applyIdEEvxxxPT_S2_PKS1_S1_.exit.loopexit224.unr-lcssa ]
  %lcmp.mod260 = icmp ne i64 %xtraiter257, 0
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph51.split.i.epil

.lr.ph51.split.i.epil:                            ; preds = %.lr.ph51.split.i.epil, %.lr.ph51.split.i.epil.preheader
  %.150.i.epil = phi ptr [ %i.oz, %.lr.ph51.split.i.epil ], [ %.150.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 3 uses
  %.14249.i.epil = phi i64 [ %i.pa, %.lr.ph51.split.i.epil ], [ %.14249.i.epil.init, %.lr.ph51.split.i.epil.preheader ] ; 2 uses
  %epil.iter258 = phi i64 [ %epil.iter258.next, %.lr.ph51.split.i.epil ], [ 0, %.lr.ph51.split.i.epil.preheader ]
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.14249.i.epil
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !155
  %i.ox = load double, ptr %.150.i.epil, align 8, !tbaa !155
end_hunk_0
