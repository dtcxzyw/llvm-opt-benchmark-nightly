Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasyf_rk?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dlasyf_rk_:bb.a
  br i1 %i.fk, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.jj = mul nsw i32 %i.ji, %i.m
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr [8 x i8], ptr %i.o, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  call void @dcopy_(ptr noundef nonnull %i.g, ptr noundef %i.aq, ptr noundef nonnull @c__1, ptr noundef %i.jm, ptr noundef nonnull @c__1) #5
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !30  ; 13 uses
  %i.jo = icmp sgt i32 %i.jn, 1
  br i1 %i.jo, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.jp = mul i32 %i.jn, %i.x
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !32 ; 3 uses
  %i.jt = call double @llvm.fabs.f64(double %i.js)
  %i.ju = fcmp ult double %i.jt, %i.u
  br i1 %i.ju, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jv = fdiv double 1.000000e+00, %i.js
  store double %i.jv, ptr %i.i, align 8, !tbaa !32
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.a, align 4, !tbaa !30
  %i.jx = mul nsw i32 %i.jn, %i.m
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr [8 x i8], ptr %i.o, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef %i.ka, ptr noundef nonnull @c__1) #5
  %.pre882 = load i32, ptr %i.g, align 4, !tbaa !30
  br label %.loopexit774

bb.aj:                                            ; preds = %bb.ah
  %i.kb = fcmp une double %i.js, 0.000000e+00
  br i1 %i.kb, label %.lr.ph797, label %.loopexit774

.lr.ph797:                                        ; preds = %bb.aj
  %i.kc = add nsw i32 %i.jn, -1
  store i32 %i.kc, ptr %i.a, align 4, !tbaa !30
  %i.kd = mul nsw i32 %i.jn, %i.m                 ; 2 uses
  %i.ke = add nsw i32 %i.kd, %i.jn
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.kf ; 9 uses
  %i.kh = sext i32 %i.kd to i64
  %wide.trip.count863 = zext nneg i32 %i.jn to i64
  %invariant.gep1020 = getelementptr [8 x i8], ptr %i.o, i64 %i.kh ; 9 uses
  %i.ki = add nsw i64 %wide.trip.count863, -1     ; 2 uses
  %xtraiter1231 = and i64 %i.ki, 7                ; 3 uses
  %i.kj = add nsw i32 %i.jn, -2
  %i.kk = icmp ult i32 %i.kj, 7
  br i1 %i.kk, label %.epil.preheader, label %.lr.ph797.new

.lr.ph797.new:                                    ; preds = %.lr.ph797
  %unroll_iter = and i64 %i.ki, -8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph797.new
  %indvars.iv860 = phi i64 [ 1, %.lr.ph797.new ], [ %indvars.iv.next861.7, %bb.ak ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph797.new ], [ %niter.next.7, %bb.ak ]
  %i.kl = load double, ptr %i.kg, align 8, !tbaa !32
  %gep1021 = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860 ; 2 uses
  %i.km = load double, ptr %gep1021, align 8, !tbaa !32
  %i.kn = fdiv double %i.km, %i.kl
  store double %i.kn, ptr %gep1021, align 8, !tbaa !32
  %i.ko = load double, ptr %i.kg, align 8, !tbaa !32
  %i.kp = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.1 = getelementptr i8, ptr %i.kp, i64 8 ; 2 uses
  %i.kq = load double, ptr %gep1021.1, align 8, !tbaa !32
  %i.kr = fdiv double %i.kq, %i.ko
  store double %i.kr, ptr %gep1021.1, align 8, !tbaa !32
  %i.ks = load double, ptr %i.kg, align 8, !tbaa !32
  %i.kt = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.2 = getelementptr i8, ptr %i.kt, i64 16 ; 2 uses
  %i.ku = load double, ptr %gep1021.2, align 8, !tbaa !32
  %i.kv = fdiv double %i.ku, %i.ks
  store double %i.kv, ptr %gep1021.2, align 8, !tbaa !32
  %i.kw = load double, ptr %i.kg, align 8, !tbaa !32
  %i.kx = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.3 = getelementptr i8, ptr %i.kx, i64 24 ; 2 uses
  %i.ky = load double, ptr %gep1021.3, align 8, !tbaa !32
  %i.kz = fdiv double %i.ky, %i.kw
  store double %i.kz, ptr %gep1021.3, align 8, !tbaa !32
  %i.la = load double, ptr %i.kg, align 8, !tbaa !32
  %i.lb = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.4 = getelementptr i8, ptr %i.lb, i64 32 ; 2 uses
  %i.lc = load double, ptr %gep1021.4, align 8, !tbaa !32
  %i.ld = fdiv double %i.lc, %i.la
  store double %i.ld, ptr %gep1021.4, align 8, !tbaa !32
  %i.le = load double, ptr %i.kg, align 8, !tbaa !32
  %i.lf = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.5 = getelementptr i8, ptr %i.lf, i64 40 ; 2 uses
  %i.lg = load double, ptr %gep1021.5, align 8, !tbaa !32
  %i.lh = fdiv double %i.lg, %i.le
  store double %i.lh, ptr %gep1021.5, align 8, !tbaa !32
  %i.li = load double, ptr %i.kg, align 8, !tbaa !32
  %i.lj = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.6 = getelementptr i8, ptr %i.lj, i64 48 ; 2 uses
  %i.lk = load double, ptr %gep1021.6, align 8, !tbaa !32
  %i.ll = fdiv double %i.lk, %i.li
  store double %i.ll, ptr %gep1021.6, align 8, !tbaa !32
  %i.lm = load double, ptr %i.kg, align 8, !tbaa !32
  %i.ln = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860
  %gep1021.7 = getelementptr i8, ptr %i.ln, i64 56 ; 2 uses
  %i.lo = load double, ptr %gep1021.7, align 8, !tbaa !32
  %i.lp = fdiv double %i.lo, %i.lm
  store double %i.lp, ptr %gep1021.7, align 8, !tbaa !32
  %indvars.iv.next861.7 = add nuw nsw i64 %indvars.iv860, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit774.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !8

.loopexit774.loopexit.unr-lcssa:                  ; preds = %bb.ak
  %lcmp.mod1232.not = icmp eq i64 %xtraiter1231, 0
  br i1 %lcmp.mod1232.not, label %.loopexit774, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit774.loopexit.unr-lcssa, %.lr.ph797
  %indvars.iv860.epil.init = phi i64 [ 1, %.lr.ph797 ], [ %indvars.iv.next861.7, %.loopexit774.loopexit.unr-lcssa ]
  %lcmp.mod1233 = icmp ne i64 %xtraiter1231, 0
  call void @llvm.assume(i1 %lcmp.mod1233)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader
  %indvars.iv860.epil = phi i64 [ %indvars.iv860.epil.init, %.epil.preheader ], [ %indvars.iv.next861.epil, %bb.al ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.al ]
  %i.lq = load double, ptr %i.kg, align 8, !tbaa !32
  %gep1021.epil = getelementptr [8 x i8], ptr %invariant.gep1020, i64 %indvars.iv860.epil ; 2 uses
  %i.lr = load double, ptr %gep1021.epil, align 8, !tbaa !32
  %i.ls = fdiv double %i.lr, %i.lq
  store double %i.ls, ptr %gep1021.epil, align 8, !tbaa !32
  %indvars.iv.next861.epil = add nuw nsw i64 %indvars.iv860.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1231
  br i1 %epil.iter.cmp.not, label %.loopexit774, label %bb.al, !llvm.loop !9

.loopexit774:                                     ; preds = %.loopexit774.loopexit.unr-lcssa, %bb.al, %bb.aj, %bb.ai
  %i.lt = phi i32 [ %.pre882, %bb.ai ], [ %i.jn, %bb.aj ], [ %i.jn, %bb.al ], [ %i.jn, %.loopexit774.loopexit.unr-lcssa ] ; 2 uses
  %i.lu = sext i32 %i.lt to i64
  br label %.sink.split

bb.am:                                            ; preds = %bb.af
  %i.lv = icmp sgt i32 %i.ji, 2
  %i.lw = add nsw i32 %i.ji, -1                   ; 8 uses
  %i.lx = add nsw i32 %i.ji, %i.an
  %i.ly = sext i32 %i.lx to i64                   ; 2 uses
  br i1 %i.lv, label %.lr.ph, label %..loopexit775_crit_edge896

..loopexit775_crit_edge896:                       ; preds = %bb.am
  %.pre915 = add nsw i32 %i.af, -1
  %.pre917 = mul nsw i32 %.pre915, %i.r
  %.pre919 = add nsw i32 %i.lw, %.pre917
  %.pre921 = sext i32 %.pre919 to i64
  %.pre927 = add nsw i32 %i.lw, %i.an
  %.pre929 = sext i32 %.pre927 to i64
  br label %.loopexit775

.lr.ph:                                           ; preds = %bb.am
  %i.lz = add nsw i32 %i.lw, %i.an
  %i.ma = sext i32 %i.lz to i64                   ; 4 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ma
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !32 ; 9 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ly
  %i.me = load double, ptr %i.md, align 8, !tbaa !32
  %i.mf = fdiv double %i.me, %i.mc                ; 5 uses
  %i.mg = add nsw i32 %i.af, -1
  %i.mh = mul nsw i32 %i.mg, %i.r                 ; 2 uses
  %i.mi = add nsw i32 %i.lw, %i.mh
  %i.mj = sext i32 %i.mi to i64                   ; 4 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !32
  %i.mm = fdiv double %i.ml, %i.mc                ; 5 uses
  %i.mn = call double @llvm.fmuladd.f64(double %i.mf, double %i.mm, double -1.000000e+00)
  %i.mo = fdiv double 1.000000e+00, %i.mn         ; 7 uses
  %i.mp = add nsw i32 %i.ji, -2
  store i32 %i.mp, ptr %i.a, align 4, !tbaa !30
  %i.mq = mul nsw i32 %i.lw, %i.m
  %i.mr = mul nsw i32 %i.ji, %i.m
  %i.ms = sext i32 %i.mh to i64                   ; 2 uses
  %i.mt = sext i32 %i.mq to i64                   ; 2 uses
  %i.mu = sext i32 %i.mr to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.lw to i64   ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.ms ; 4 uses
  %invariant.gep1014 = getelementptr [8 x i8], ptr %i.t, i64 %i.ao ; 4 uses
  %invariant.gep1016 = getelementptr [8 x i8], ptr %i.o, i64 %i.mt ; 4 uses
  %invariant.gep1018 = getelementptr [8 x i8], ptr %i.o, i64 %i.mu ; 4 uses
  %i.mv = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.mv, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.mw = shl nsw i64 %i.mt, 3                    ; 2 uses
  %i.mx = getelementptr i8, ptr %scevgep1107, i64 %i.mw ; 3 uses
  %i.my = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.mz = getelementptr i8, ptr %i.o, i64 %i.mw
  %i.na = getelementptr i8, ptr %i.mz, i64 %i.my  ; 3 uses
  %i.nb = shl nsw i64 %i.mu, 3                    ; 2 uses
  %i.nc = getelementptr i8, ptr %scevgep1107, i64 %i.nb ; 3 uses
  %i.nd = getelementptr i8, ptr %i.o, i64 %i.nb
  %i.ne = getelementptr i8, ptr %i.nd, i64 %i.my  ; 3 uses
  %i.nf = shl nsw i64 %i.ao, 3                    ; 2 uses
  %i.ng = getelementptr i8, ptr %scevgep, i64 %i.nf ; 2 uses
  %i.nh = getelementptr i8, ptr %i.t, i64 %i.nf
  %i.ni = getelementptr i8, ptr %i.nh, i64 %i.my  ; 2 uses
  %i.nj = shl nsw i64 %i.ms, 3                    ; 2 uses
  %i.nk = getelementptr i8, ptr %scevgep, i64 %i.nj ; 2 uses
  %i.nl = getelementptr i8, ptr %i.t, i64 %i.nj
  %i.nm = getelementptr i8, ptr %i.nl, i64 %i.my  ; 2 uses
  %bound0 = icmp ult ptr %i.mx, %i.ne
  %bound1 = icmp ult ptr %i.nc, %i.na
  %found.conflict = and i1 %bound0, %bound1
  %bound01108 = icmp ult ptr %i.mx, %i.ni
  %bound11109 = icmp ult ptr %i.ng, %i.na
  %found.conflict1110 = and i1 %bound01108, %bound11109
  %conflict.rdx = or i1 %found.conflict, %found.conflict1110
  %bound01111 = icmp ult ptr %i.mx, %i.nm
  %bound11112 = icmp ult ptr %i.nk, %i.na
  %found.conflict1113 = and i1 %bound01111, %bound11112
  %conflict.rdx1114 = or i1 %conflict.rdx, %found.conflict1113
  %bound01115 = icmp ult ptr %i.nc, %i.ni
  %bound11116 = icmp ult ptr %i.ng, %i.ne
  %found.conflict1117 = and i1 %bound01115, %bound11116
  %conflict.rdx1118 = or i1 %conflict.rdx1114, %found.conflict1117
  %bound01119 = icmp ult ptr %i.nc, %i.nm
  %bound11120 = icmp ult ptr %i.nk, %i.ne
  %found.conflict1121 = and i1 %bound01119, %bound11120
  %conflict.rdx1122 = or i1 %conflict.rdx1118, %found.conflict1121
  br i1 %conflict.rdx1122, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mv, -4                      ; 3 uses
  %i.nn = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.mc, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1123 = insertelement <4 x double> poison, double %i.mf, i64 0
  %broadcast.splat1124 = shufflevector <4 x double> %broadcast.splatinsert1123, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1125 = insertelement <4 x double> poison, double %i.mm, i64 0
  %broadcast.splat1126 = shufflevector <4 x double> %broadcast.splatinsert1125, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1127 = insertelement <4 x double> poison, double %i.mo, i64 0
  %broadcast.splat1128 = shufflevector <4 x double> %broadcast.splatinsert1127, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.no = or disjoint i64 %index, 1               ; 4 uses
  %i.np = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.no ; 2 uses
  %wide.load = load <4 x double>, ptr %i.np, align 8, !tbaa !32, !alias.scope !35
  %i.nq = getelementptr [8 x i8], ptr %invariant.gep1014, i64 %i.no ; 2 uses
  %wide.load1129 = load <4 x double>, ptr %i.nq, align 8, !tbaa !32, !alias.scope !36
  %i.nr = fneg <4 x double> %wide.load1129
  %i.ns = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1124, <4 x double> %wide.load, <4 x double> %i.nr)
  %i.nt = fdiv <4 x double> %i.ns, %broadcast.splat
  %i.nu = fmul <4 x double> %broadcast.splat1128, %i.nt
  %i.nv = getelementptr [8 x i8], ptr %invariant.gep1016, i64 %i.no
  store <4 x double> %i.nu, ptr %i.nv, align 8, !tbaa !32, !alias.scope !37, !noalias !38
  %wide.load1130 = load <4 x double>, ptr %i.nq, align 8, !tbaa !32, !alias.scope !36
  %wide.load1131 = load <4 x double>, ptr %i.np, align 8, !tbaa !32, !alias.scope !35
  %i.nw = fneg <4 x double> %wide.load1131
  %i.nx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1126, <4 x double> %wide.load1130, <4 x double> %i.nw)
  %i.ny = fdiv <4 x double> %i.nx, %broadcast.splat
  %i.nz = fmul <4 x double> %broadcast.splat1128, %i.ny
  %i.oa = getelementptr [8 x i8], ptr %invariant.gep1018, i64 %i.no
  store <4 x double> %i.nz, ptr %i.oa, align 8, !tbaa !32, !alias.scope !39, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ob = icmp eq i64 %index.next, %n.vec
  br i1 %i.ob, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mv, %n.vec
  br i1 %cmp.n, label %.loopexit775, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.nn, %middle.block ] ; 7 uses
  %i.oc = and i32 %i.ji, 1
  %lcmp.mod.not = icmp eq i32 %i.oc, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.od = load double, ptr %gep.prol, align 8, !tbaa !32
  %gep1015.prol = getelementptr [8 x i8], ptr %invariant.gep1014, i64 %indvars.iv.ph ; 2 uses
  %i.oe = load double, ptr %gep1015.prol, align 8, !tbaa !32
  %i.of = fneg double %i.oe
  %i.og = call double @llvm.fmuladd.f64(double %i.mf, double %i.od, double %i.of)
  %i.oh = fdiv double %i.og, %i.mc
  %i.oi = fmul double %i.mo, %i.oh
  %gep1017.prol = getelementptr [8 x i8], ptr %invariant.gep1016, i64 %indvars.iv.ph
  store double %i.oi, ptr %gep1017.prol, align 8, !tbaa !32
  %i.oj = load double, ptr %gep1015.prol, align 8, !tbaa !32
  %i.ok = load double, ptr %gep.prol, align 8, !tbaa !32
  %i.ol = fneg double %i.ok
  %i.om = call double @llvm.fmuladd.f64(double %i.mm, double %i.oj, double %i.ol)
  %i.on = fdiv double %i.om, %i.mc
  %i.oo = fmul double %i.mo, %i.on
  %gep1019.prol = getelementptr [8 x i8], ptr %invariant.gep1018, i64 %indvars.iv.ph
  store double %i.oo, ptr %gep1019.prol, align 8, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.op = add nsw i64 %wide.trip.count, -1
  %i.oq = icmp eq i64 %indvars.iv.ph, %i.op
  br i1 %i.oq, label %.loopexit775, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.or = load double, ptr %gep, align 8, !tbaa !32
  %gep1015 = getelementptr [8 x i8], ptr %invariant.gep1014, i64 %indvars.iv ; 2 uses
  %i.os = load double, ptr %gep1015, align 8, !tbaa !32
  %i.ot = fneg double %i.os
  %i.ou = call double @llvm.fmuladd.f64(double %i.mf, double %i.or, double %i.ot)
  %i.ov = fdiv double %i.ou, %i.mc
  %i.ow = fmul double %i.mo, %i.ov
  %gep1017 = getelementptr [8 x i8], ptr %invariant.gep1016, i64 %indvars.iv
  store double %i.ow, ptr %gep1017, align 8, !tbaa !32
  %i.ox = load double, ptr %gep1015, align 8, !tbaa !32
  %i.oy = load double, ptr %gep, align 8, !tbaa !32
  %i.oz = fneg double %i.oy
  %i.pa = call double @llvm.fmuladd.f64(double %i.mm, double %i.ox, double %i.oz)
  %i.pb = fdiv double %i.pa, %i.mc
  %i.pc = fmul double %i.mo, %i.pb
  %gep1019 = getelementptr [8 x i8], ptr %invariant.gep1018, i64 %indvars.iv
  store double %i.pc, ptr %gep1019, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.pd = load double, ptr %gep.1, align 8, !tbaa !32
  %gep1015.1 = getelementptr [8 x i8], ptr %invariant.gep1014, i64 %indvars.iv.next ; 2 uses
  %i.pe = load double, ptr %gep1015.1, align 8, !tbaa !32
  %i.pf = fneg double %i.pe
  %i.pg = call double @llvm.fmuladd.f64(double %i.mf, double %i.pd, double %i.pf)
  %i.ph = fdiv double %i.pg, %i.mc
  %i.pi = fmul double %i.mo, %i.ph
  %gep1017.1 = getelementptr [8 x i8], ptr %invariant.gep1016, i64 %indvars.iv.next
  store double %i.pi, ptr %gep1017.1, align 8, !tbaa !32
  %i.pj = load double, ptr %gep1015.1, align 8, !tbaa !32
  %i.pk = load double, ptr %gep.1, align 8, !tbaa !32
  %i.pl = fneg double %i.pk
  %i.pm = call double @llvm.fmuladd.f64(double %i.mm, double %i.pj, double %i.pl)
  %i.pn = fdiv double %i.pm, %i.mc
  %i.po = fmul double %i.mo, %i.pn
  %gep1019.1 = getelementptr [8 x i8], ptr %invariant.gep1018, i64 %indvars.iv.next
  store double %i.po, ptr %gep1019.1, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit775, label %scalar.ph, !llvm.loop !16

.sink.split:                                      ; preds = %.loopexit774, %bb.n
  %.sink1041 = phi i64 [ %i.ci, %bb.n ], [ %i.lu, %.loopexit774 ]
  %.ph = phi i32 [ %i.cg, %bb.n ], [ %i.lt, %.loopexit774 ]
  %.5651.ph.ph = phi i32 [ %.0646, %bb.n ], [ %.4650, %.loopexit774 ]
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sink1041
  store double 0.000000e+00, ptr %i.pp, align 8, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.m, %bb.ag
  %i.pq = phi i32 [ %i.jn, %bb.ag ], [ %i.cg, %bb.m ], [ %.ph, %.sink.split ] ; 2 uses
  %.5651.ph = phi i32 [ %.4650, %bb.ag ], [ %.0646, %bb.m ], [ %.5651.ph.ph, %.sink.split ]
  %i.pr = load i32, ptr %i.l, align 4, !tbaa !30
  %i.ps = sext i32 %i.pq to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ps
  store i32 %i.pr, ptr %i.pt, align 4, !tbaa !30
  br label %bb.ao

.loopexit775:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %..loopexit775_crit_edge896
  %.pre-phi930 = phi i64 [ %.pre929, %..loopexit775_crit_edge896 ], [ %i.ma, %middle.block ], [ %i.ma, %scalar.ph ], [ %i.ma, %scalar.ph.prol.loopexit ]
  %.pre-phi922 = phi i64 [ %.pre921, %..loopexit775_crit_edge896 ], [ %i.mj, %middle.block ], [ %i.mj, %scalar.ph ], [ %i.mj, %scalar.ph.prol.loopexit ]
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi922
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !32
  %i.pw = mul i32 %i.lw, %i.x
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.px
  store double %i.pv, ptr %i.py, align 8, !tbaa !32
  %i.pz = mul nsw i32 %i.ji, %i.m
  %i.qa = add nsw i32 %i.lw, %i.pz
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qb
  store double 0.000000e+00, ptr %i.qc, align 8, !tbaa !32
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ly
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !32
  %i.qf = mul i32 %i.ji, %i.x
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qg
  store double %i.qe, ptr %i.qh, align 8, !tbaa !32
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi930
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !32
  %i.qk = sext i32 %i.ji to i64                   ; 2 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qk
  %i.qm = getelementptr i8, ptr %i.ql, i64 -8
  %i.qn = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.qj, i64 1
  store <2 x double> %i.qn, ptr %i.qm, align 8, !tbaa !32
  %i.qo = load i32, ptr %i.h, align 4, !tbaa !30
  %i.qp = sub nsw i32 0, %i.qo
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.qk ; 2 uses
  store i32 %i.qp, ptr %i.qq, align 4, !tbaa !30
  %i.qr = load i32, ptr %i.l, align 4, !tbaa !30
  %i.qs = sub nsw i32 0, %i.qr
  %i.qt = getelementptr i8, ptr %i.qq, i64 -4
  store i32 %i.qs, ptr %i.qt, align 4, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit775, %bb.an
  %i.qu = phi i32 [ %i.ji, %.loopexit775 ], [ %i.pq, %bb.an ]
  %.3639.neg735 = phi i32 [ -2, %.loopexit775 ], [ -1, %bb.an ]
end_hunk_0
begin_hunk_1_@dlasyf_rk_:bb.a
  %i.adk = sub i32 %i.adj, %i.adi
  store i32 %i.adk, ptr %i.a, align 4, !tbaa !30
  %i.adl = mul i32 %i.adi, %i.td
  %i.adm = sext i32 %i.adl to i64
  %i.adn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.adm
  %i.ado = mul i32 %i.adi, %i.tc
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.adp
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.adn, ptr noundef nonnull @c__1, ptr noundef %i.adq, ptr noundef nonnull @c__1) #5
  %i.adr = load i32, ptr %i.g, align 4, !tbaa !30 ; 12 uses
  %i.ads = load i32, ptr %1, align 4, !tbaa !30   ; 4 uses
  %i.adt = icmp slt i32 %i.adr, %i.ads
  br i1 %i.adt, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.adu = mul i32 %i.adr, %i.tc
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.adv
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !32 ; 3 uses
  %i.ady = call double @llvm.fabs.f64(double %i.adx)
  %i.adz = fcmp ult double %i.ady, %i.u
  br i1 %i.adz, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aea = fdiv double 1.000000e+00, %i.adx
  store double %i.aea, ptr %i.i, align 8, !tbaa !32
  %i.aeb = sub nsw i32 %i.ads, %i.adr
  store i32 %i.aeb, ptr %i.a, align 4, !tbaa !30
  %i.aec = add nsw i32 %i.adr, 1
  %i.aed = mul nsw i32 %i.adr, %i.m
  %i.aee = add nsw i32 %i.aec, %i.aed
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aef
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef %i.aeg, ptr noundef nonnull @c__1) #5
  %.pre891 = load i32, ptr %i.g, align 4, !tbaa !30
  br label %.sink.split1042

bb.bt:                                            ; preds = %bb.br
  %i.aeh = fcmp une double %i.adx, 0.000000e+00
  br i1 %i.aeh, label %.lr.ph816, label %.sink.split1042

.lr.ph816:                                        ; preds = %bb.bt
  store i32 %i.ads, ptr %i.a, align 4, !tbaa !30
  %i.aei = mul nsw i32 %i.adr, %i.m               ; 2 uses
  %i.aej = add nsw i32 %i.aei, %i.adr
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aek ; 9 uses
  %i.aem = sext i32 %i.adr to i64                 ; 4 uses
  %i.aen = sext i32 %i.aei to i64
  %wide.trip.count875 = sext i32 %i.ads to i64    ; 3 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %i.o, i64 %i.aen ; 9 uses
  %i.aeo = sub nsw i64 %wide.trip.count875, %i.aem
  %xtraiter1236 = and i64 %i.aeo, 7               ; 2 uses
  %lcmp.mod1237.not = icmp eq i64 %xtraiter1236, 0
  br i1 %lcmp.mod1237.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph816, %.prol.preheader
  %indvars.iv872.prol = phi i64 [ %indvars.iv.next873.prol, %.prol.preheader ], [ %i.aem, %.lr.ph816 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph816 ]
  %indvars.iv.next873.prol = add nsw i64 %indvars.iv872.prol, 1 ; 3 uses
  %i.aep = load double, ptr %i.ael, align 8, !tbaa !32
  %gep1036.prol = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv.next873.prol ; 2 uses
  %i.aeq = load double, ptr %gep1036.prol, align 8, !tbaa !32
  %i.aer = fdiv double %i.aeq, %i.aep
  store double %i.aer, ptr %gep1036.prol, align 8, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1236
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph816
  %indvars.iv872.unr = phi i64 [ %i.aem, %.lr.ph816 ], [ %indvars.iv.next873.prol, %.prol.preheader ]
  %i.aes = sub nsw i64 %i.aem, %wide.trip.count875
  %i.aet = icmp ugt i64 %i.aes, -8
  br i1 %i.aet, label %.sink.split1042, label %.lr.ph816.new

.lr.ph816.new:                                    ; preds = %.prol.loopexit, %.lr.ph816.new
  %indvars.iv872 = phi i64 [ %indvars.iv.next873.7, %.lr.ph816.new ], [ %indvars.iv872.unr, %.prol.loopexit ] ; 8 uses
  %i.aeu = load double, ptr %i.ael, align 8, !tbaa !32
  %i.aev = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036 = getelementptr i8, ptr %i.aev, i64 8  ; 2 uses
  %i.aew = load double, ptr %gep1036, align 8, !tbaa !32
  %i.aex = fdiv double %i.aew, %i.aeu
  store double %i.aex, ptr %gep1036, align 8, !tbaa !32
  %i.aey = load double, ptr %i.ael, align 8, !tbaa !32
  %i.aez = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036.1 = getelementptr i8, ptr %i.aez, i64 16 ; 2 uses
  %i.afa = load double, ptr %gep1036.1, align 8, !tbaa !32
  %i.afb = fdiv double %i.afa, %i.aey
  store double %i.afb, ptr %gep1036.1, align 8, !tbaa !32
  %i.afc = load double, ptr %i.ael, align 8, !tbaa !32
  %i.afd = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036.2 = getelementptr i8, ptr %i.afd, i64 24 ; 2 uses
  %i.afe = load double, ptr %gep1036.2, align 8, !tbaa !32
  %i.aff = fdiv double %i.afe, %i.afc
  store double %i.aff, ptr %gep1036.2, align 8, !tbaa !32
  %i.afg = load double, ptr %i.ael, align 8, !tbaa !32
  %i.afh = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036.3 = getelementptr i8, ptr %i.afh, i64 32 ; 2 uses
  %i.afi = load double, ptr %gep1036.3, align 8, !tbaa !32
  %i.afj = fdiv double %i.afi, %i.afg
  store double %i.afj, ptr %gep1036.3, align 8, !tbaa !32
  %i.afk = load double, ptr %i.ael, align 8, !tbaa !32
  %i.afl = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036.4 = getelementptr i8, ptr %i.afl, i64 40 ; 2 uses
  %i.afm = load double, ptr %gep1036.4, align 8, !tbaa !32
  %i.afn = fdiv double %i.afm, %i.afk
  store double %i.afn, ptr %gep1036.4, align 8, !tbaa !32
  %i.afo = load double, ptr %i.ael, align 8, !tbaa !32
  %i.afp = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036.5 = getelementptr i8, ptr %i.afp, i64 48 ; 2 uses
  %i.afq = load double, ptr %gep1036.5, align 8, !tbaa !32
  %i.afr = fdiv double %i.afq, %i.afo
  store double %i.afr, ptr %gep1036.5, align 8, !tbaa !32
  %i.afs = load double, ptr %i.ael, align 8, !tbaa !32
  %i.aft = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv872
  %gep1036.6 = getelementptr i8, ptr %i.aft, i64 56 ; 2 uses
  %i.afu = load double, ptr %gep1036.6, align 8, !tbaa !32
  %i.afv = fdiv double %i.afu, %i.afs
  store double %i.afv, ptr %gep1036.6, align 8, !tbaa !32
  %indvars.iv.next873.7 = add nsw i64 %indvars.iv872, 8 ; 3 uses
  %i.afw = load double, ptr %i.ael, align 8, !tbaa !32
  %gep1036.7 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv.next873.7 ; 2 uses
  %i.afx = load double, ptr %gep1036.7, align 8, !tbaa !32
  %i.afy = fdiv double %i.afx, %i.afw
  store double %i.afy, ptr %gep1036.7, align 8, !tbaa !32
  %exitcond876.not.7 = icmp eq i64 %indvars.iv.next873.7, %wide.trip.count875
  br i1 %exitcond876.not.7, label %.sink.split1042, label %.lr.ph816.new, !llvm.loop !20

bb.bu:                                            ; preds = %.split, %bb.bp
  %i.afz = load i32, ptr %i.g, align 4, !tbaa !30 ; 13 uses
  %i.aga = load i32, ptr %1, align 4, !tbaa !30   ; 7 uses
  %i.agb = add nsw i32 %i.aga, -1
  %i.agc = icmp slt i32 %i.afz, %i.agb
  %i.agd = add nsw i32 %i.afz, 1                  ; 8 uses
  br i1 %i.agc, label %bb.bv, label %..loopexit773_crit_edge

..loopexit773_crit_edge:                          ; preds = %bb.bu
  %.pre903 = mul i32 %i.agd, %i.td
  %.pre905 = sext i32 %.pre903 to i64
  %.pre907 = mul nsw i32 %i.afz, %i.r
  %.pre909 = add nsw i32 %i.agd, %.pre907
  %.pre911 = sext i32 %.pre909 to i64
  br label %.loopexit773

bb.bv:                                            ; preds = %bb.bu
  %i.age = mul nsw i32 %i.afz, %i.r               ; 3 uses
  %i.agf = add nsw i32 %i.agd, %i.age
  %i.agg = sext i32 %i.agf to i64                 ; 5 uses
  %i.agh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.agg
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !32 ; 9 uses
  %i.agj = mul i32 %i.agd, %i.td
  %i.agk = sext i32 %i.agj to i64                 ; 5 uses
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.agk
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !32
  %i.agn = fdiv double %i.agm, %i.agi             ; 5 uses
  %i.ago = add nsw i32 %i.age, %i.afz
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.agp
  %i.agr = load double, ptr %i.agq, align 8, !tbaa !32
  %i.ags = fdiv double %i.agr, %i.agi             ; 5 uses
  %i.agt = call double @llvm.fmuladd.f64(double %i.agn, double %i.ags, double -1.000000e+00)
  %i.agu = fdiv double 1.000000e+00, %i.agt       ; 7 uses
  store i32 %i.aga, ptr %i.a, align 4, !tbaa !30
  %i.agv = add nsw i32 %i.afz, 2                  ; 2 uses
  %.not702809 = icmp sgt i32 %i.agv, %i.aga
  br i1 %.not702809, label %.loopexit773, label %.lr.ph812

.lr.ph812:                                        ; preds = %bb.bv
  %i.agw = mul nsw i32 %i.agd, %i.r
  %i.agx = mul nsw i32 %i.afz, %i.m
  %i.agy = mul nsw i32 %i.agd, %i.m
  %i.agz = sext i32 %i.agv to i64                 ; 8 uses
  %i.aha = sext i32 %i.age to i64                 ; 2 uses
  %i.ahb = sext i32 %i.agw to i64                 ; 2 uses
  %i.ahc = sext i32 %i.agx to i64                 ; 2 uses
  %i.ahd = sext i32 %i.agy to i64                 ; 2 uses
  %i.ahe = add i32 %i.aga, 1
  %invariant.gep1027 = getelementptr [8 x i8], ptr %i.t, i64 %i.aha ; 4 uses
  %invariant.gep1029 = getelementptr [8 x i8], ptr %i.t, i64 %i.ahb ; 4 uses
  %invariant.gep1031 = getelementptr [8 x i8], ptr %i.o, i64 %i.ahc ; 4 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %i.o, i64 %i.ahd ; 4 uses
  %i.ahf = add i32 %i.aga, -2
  %i.ahg = sub i32 %i.ahf, %i.afz                 ; 2 uses
  %i.ahh = zext i32 %i.ahg to i64                 ; 2 uses
  %i.ahi = add nuw nsw i64 %i.ahh, 1              ; 2 uses
  %min.iters.check1171 = icmp ult i32 %i.ahg, 7
  br i1 %min.iters.check1171, label %scalar.ph1170.preheader, label %vector.memcheck1172

vector.memcheck1172:                              ; preds = %.lr.ph812
  %i.ahj = add nsw i64 %i.ahc, %i.agz
  %i.ahk = shl nsw i64 %i.ahj, 3                  ; 2 uses
  %i.ahl = getelementptr i8, ptr %i.o, i64 %i.ahk ; 3 uses
  %i.ahm = shl nuw nsw i64 %i.ahh, 3              ; 4 uses
  %i.ahn = getelementptr i8, ptr %scevgep1169, i64 %i.ahk
  %i.aho = getelementptr i8, ptr %i.ahn, i64 %i.ahm ; 3 uses
  %i.ahp = add nsw i64 %i.ahd, %i.agz
  %i.ahq = shl nsw i64 %i.ahp, 3                  ; 2 uses
  %i.ahr = getelementptr i8, ptr %i.o, i64 %i.ahq ; 3 uses
  %i.ahs = getelementptr i8, ptr %scevgep1169, i64 %i.ahq
  %i.aht = getelementptr i8, ptr %i.ahs, i64 %i.ahm ; 3 uses
  %i.ahu = add nsw i64 %i.ahb, %i.agz
  %i.ahv = shl nsw i64 %i.ahu, 3                  ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.t, i64 %i.ahv ; 2 uses
  %i.ahx = getelementptr i8, ptr %scevgep1168, i64 %i.ahv
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 %i.ahm ; 2 uses
  %i.ahz = add nsw i64 %i.aha, %i.agz
  %i.aia = shl nsw i64 %i.ahz, 3                  ; 2 uses
  %i.aib = getelementptr i8, ptr %i.t, i64 %i.aia ; 2 uses
  %i.aic = getelementptr i8, ptr %scevgep1168, i64 %i.aia
  %i.aid = getelementptr i8, ptr %i.aic, i64 %i.ahm ; 2 uses
  %bound01173 = icmp ult ptr %i.ahl, %i.aht
  %bound11174 = icmp ult ptr %i.ahr, %i.aho
  %found.conflict1175 = and i1 %bound01173, %bound11174
  %bound01176 = icmp ult ptr %i.ahl, %i.ahy
  %bound11177 = icmp ult ptr %i.ahw, %i.aho
  %found.conflict1178 = and i1 %bound01176, %bound11177
  %conflict.rdx1179 = or i1 %found.conflict1175, %found.conflict1178
  %bound01180 = icmp ult ptr %i.ahl, %i.aid
  %bound11181 = icmp ult ptr %i.aib, %i.aho
  %found.conflict1182 = and i1 %bound01180, %bound11181
  %conflict.rdx1183 = or i1 %conflict.rdx1179, %found.conflict1182
  %bound01184 = icmp ult ptr %i.ahr, %i.ahy
  %bound11185 = icmp ult ptr %i.ahw, %i.aht
  %found.conflict1186 = and i1 %bound01184, %bound11185
  %conflict.rdx1187 = or i1 %conflict.rdx1183, %found.conflict1186
  %bound01188 = icmp ult ptr %i.ahr, %i.aid
  %bound11189 = icmp ult ptr %i.aib, %i.aht
  %found.conflict1190 = and i1 %bound01188, %bound11189
  %conflict.rdx1191 = or i1 %conflict.rdx1187, %found.conflict1190
  br i1 %conflict.rdx1191, label %scalar.ph1170.preheader, label %vector.ph1192

vector.ph1192:                                    ; preds = %vector.memcheck1172
  %n.vec1193 = and i64 %i.ahi, 8589934588         ; 3 uses
  %i.aie = add nsw i64 %n.vec1193, %i.agz
  %broadcast.splatinsert1194 = insertelement <4 x double> poison, double %i.agn, i64 0
  %broadcast.splat1195 = shufflevector <4 x double> %broadcast.splatinsert1194, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1196 = insertelement <4 x double> poison, double %i.agi, i64 0
  %broadcast.splat1197 = shufflevector <4 x double> %broadcast.splatinsert1196, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1198 = insertelement <4 x double> poison, double %i.agu, i64 0
  %broadcast.splat1199 = shufflevector <4 x double> %broadcast.splatinsert1198, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1200 = insertelement <4 x double> poison, double %i.ags, i64 0
  %broadcast.splat1201 = shufflevector <4 x double> %broadcast.splatinsert1200, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1192
  %index1203 = phi i64 [ 0, %vector.ph1192 ], [ %index.next1208, %vector.body1202 ] ; 2 uses
  %i.aif = add i64 %index1203, %i.agz             ; 4 uses
  %i.aig = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aif ; 2 uses
  %wide.load1204 = load <4 x double>, ptr %i.aig, align 8, !tbaa !32, !alias.scope !43
  %i.aih = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %i.aif ; 2 uses
  %wide.load1205 = load <4 x double>, ptr %i.aih, align 8, !tbaa !32, !alias.scope !44
  %i.aii = fneg <4 x double> %wide.load1205
  %i.aij = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1195, <4 x double> %wide.load1204, <4 x double> %i.aii)
  %i.aik = fdiv <4 x double> %i.aij, %broadcast.splat1197
  %i.ail = fmul <4 x double> %broadcast.splat1199, %i.aik
  %i.aim = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.aif
  store <4 x double> %i.ail, ptr %i.aim, align 8, !tbaa !32, !alias.scope !45, !noalias !46
  %wide.load1206 = load <4 x double>, ptr %i.aih, align 8, !tbaa !32, !alias.scope !44
  %wide.load1207 = load <4 x double>, ptr %i.aig, align 8, !tbaa !32, !alias.scope !43
  %i.ain = fneg <4 x double> %wide.load1207
  %i.aio = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1201, <4 x double> %wide.load1206, <4 x double> %i.ain)
  %i.aip = fdiv <4 x double> %i.aio, %broadcast.splat1197
  %i.aiq = fmul <4 x double> %broadcast.splat1199, %i.aip
  %i.air = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.aif
  store <4 x double> %i.aiq, ptr %i.air, align 8, !tbaa !32, !alias.scope !47, !noalias !48
  %index.next1208 = add nuw i64 %index1203, 4     ; 2 uses
  %i.ais = icmp eq i64 %index.next1208, %n.vec1193
  br i1 %i.ais, label %middle.block1209, label %vector.body1202, !llvm.loop !26

middle.block1209:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %i.ahi, %n.vec1193
  br i1 %cmp.n1210, label %.loopexit773, label %scalar.ph1170.preheader

scalar.ph1170.preheader:                          ; preds = %vector.memcheck1172, %.lr.ph812, %middle.block1209
  %indvars.iv868.ph = phi i64 [ %i.agz, %vector.memcheck1172 ], [ %i.agz, %.lr.ph812 ], [ %i.aie, %middle.block1209 ] ; 7 uses
  %i.ait = trunc i64 %indvars.iv868.ph to i32     ; 2 uses
  %i.aiu = add i32 %i.aga, %i.ait
  %i.aiv = and i32 %i.aiu, 1
  %lcmp.mod1235.not.not = icmp eq i32 %i.aiv, 0
  br i1 %lcmp.mod1235.not.not, label %scalar.ph1170.prol, label %scalar.ph1170.prol.loopexit

scalar.ph1170.prol:                               ; preds = %scalar.ph1170.preheader
  %gep1028.prol = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %indvars.iv868.ph ; 2 uses
  %i.aiw = load double, ptr %gep1028.prol, align 8, !tbaa !32
  %gep1030.prol = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv868.ph ; 2 uses
  %i.aix = load double, ptr %gep1030.prol, align 8, !tbaa !32
  %i.aiy = fneg double %i.aix
  %i.aiz = call double @llvm.fmuladd.f64(double %i.agn, double %i.aiw, double %i.aiy)
  %i.aja = fdiv double %i.aiz, %i.agi
  %i.ajb = fmul double %i.agu, %i.aja
  %gep1032.prol = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %indvars.iv868.ph
  store double %i.ajb, ptr %gep1032.prol, align 8, !tbaa !32
  %i.ajc = load double, ptr %gep1030.prol, align 8, !tbaa !32
  %i.ajd = load double, ptr %gep1028.prol, align 8, !tbaa !32
  %i.aje = fneg double %i.ajd
  %i.ajf = call double @llvm.fmuladd.f64(double %i.ags, double %i.ajc, double %i.aje)
  %i.ajg = fdiv double %i.ajf, %i.agi
  %i.ajh = fmul double %i.agu, %i.ajg
  %gep1034.prol = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv868.ph
  store double %i.ajh, ptr %gep1034.prol, align 8, !tbaa !32
  %indvars.iv.next869.prol = add nsw i64 %indvars.iv868.ph, 1
  br label %scalar.ph1170.prol.loopexit

scalar.ph1170.prol.loopexit:                      ; preds = %scalar.ph1170.prol, %scalar.ph1170.preheader
  %indvars.iv868.unr = phi i64 [ %indvars.iv868.ph, %scalar.ph1170.preheader ], [ %indvars.iv.next869.prol, %scalar.ph1170.prol ]
  %i.aji = icmp eq i32 %i.aga, %i.ait
  br i1 %i.aji, label %.loopexit773, label %scalar.ph1170

scalar.ph1170:                                    ; preds = %scalar.ph1170.prol.loopexit, %scalar.ph1170
  %indvars.iv868 = phi i64 [ %indvars.iv.next869.1, %scalar.ph1170 ], [ %indvars.iv868.unr, %scalar.ph1170.prol.loopexit ] ; 6 uses
  %gep1028 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %indvars.iv868 ; 2 uses
  %i.ajj = load double, ptr %gep1028, align 8, !tbaa !32
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv868 ; 2 uses
  %i.ajk = load double, ptr %gep1030, align 8, !tbaa !32
  %i.ajl = fneg double %i.ajk
  %i.ajm = call double @llvm.fmuladd.f64(double %i.agn, double %i.ajj, double %i.ajl)
  %i.ajn = fdiv double %i.ajm, %i.agi
  %i.ajo = fmul double %i.agu, %i.ajn
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %indvars.iv868
  store double %i.ajo, ptr %gep1032, align 8, !tbaa !32
  %i.ajp = load double, ptr %gep1030, align 8, !tbaa !32
  %i.ajq = load double, ptr %gep1028, align 8, !tbaa !32
  %i.ajr = fneg double %i.ajq
  %i.ajs = call double @llvm.fmuladd.f64(double %i.ags, double %i.ajp, double %i.ajr)
  %i.ajt = fdiv double %i.ajs, %i.agi
  %i.aju = fmul double %i.agu, %i.ajt
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv868
  store double %i.aju, ptr %gep1034, align 8, !tbaa !32
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, 1 ; 4 uses
  %gep1028.1 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %indvars.iv.next869 ; 2 uses
  %i.ajv = load double, ptr %gep1028.1, align 8, !tbaa !32
  %gep1030.1 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv.next869 ; 2 uses
  %i.ajw = load double, ptr %gep1030.1, align 8, !tbaa !32
  %i.ajx = fneg double %i.ajw
  %i.ajy = call double @llvm.fmuladd.f64(double %i.agn, double %i.ajv, double %i.ajx)
  %i.ajz = fdiv double %i.ajy, %i.agi
  %i.aka = fmul double %i.agu, %i.ajz
  %gep1032.1 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %indvars.iv.next869
  store double %i.aka, ptr %gep1032.1, align 8, !tbaa !32
  %i.akb = load double, ptr %gep1030.1, align 8, !tbaa !32
  %i.akc = load double, ptr %gep1028.1, align 8, !tbaa !32
  %i.akd = fneg double %i.akc
  %i.ake = call double @llvm.fmuladd.f64(double %i.ags, double %i.akb, double %i.akd)
  %i.akf = fdiv double %i.ake, %i.agi
  %i.akg = fmul double %i.agu, %i.akf
  %gep1034.1 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv.next869
  store double %i.akg, ptr %gep1034.1, align 8, !tbaa !32
  %indvars.iv.next869.1 = add nsw i64 %indvars.iv868, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next869.1 to i32
  %exitcond871.not.1 = icmp eq i32 %i.ahe, %lftr.wideiv.1
  br i1 %exitcond871.not.1, label %.loopexit773, label %scalar.ph1170, !llvm.loop !27

.sink.split1042:                                  ; preds = %.prol.loopexit, %.lr.ph816.new, %bb.bs, %bb.bt, %bb.bc
  %.promoted8241259 = phi i32 [ %storemerge1070, %bb.bc ], [ %.promoted8241260, %bb.bs ], [ %.promoted8241260, %bb.bt ], [ %.promoted8241260, %.lr.ph816.new ], [ %.promoted8241260, %.prol.loopexit ]
  %.sink = phi i32 [ %i.vv, %bb.bc ], [ %.pre891, %bb.bs ], [ %i.adr, %bb.bt ], [ %i.adr, %.lr.ph816.new ], [ %i.adr, %.prol.loopexit ] ; 2 uses
  %.ph1044 = phi i32 [ %i.vh, %bb.bc ], [ %i.adg, %bb.bs ], [ %i.adg, %bb.bt ], [ %i.adg, %.lr.ph816.new ], [ %i.adg, %.prol.loopexit ]
  %.promoted822.ph = phi i32 [ %.promoted825, %bb.bc ], [ %.promoted823982990, %bb.bs ], [ %.promoted823982990, %bb.bt ], [ %.promoted823982990, %.lr.ph816.new ], [ %.promoted823982990, %.prol.loopexit ]
  %.11.ph.ph = phi i32 [ %.66521071, %bb.bc ], [ %.10745984989, %bb.bs ], [ %.10745984989, %bb.bt ], [ %.10745984989, %.lr.ph816.new ], [ %.10745984989, %.prol.loopexit ]
  %i.akh = sext i32 %.sink to i64
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.akh
  store double 0.000000e+00, ptr %i.aki, align 8, !tbaa !32
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split1042, %bb.bc, %bb.bq
  %.promoted8241258 = phi i32 [ %.promoted8241260, %bb.bq ], [ %storemerge1070, %bb.bc ], [ %.promoted8241259, %.sink.split1042 ]
  %i.akj = phi i32 [ %i.adr, %bb.bq ], [ %i.vv, %bb.bc ], [ %.sink, %.sink.split1042 ] ; 2 uses
  %i.akk = phi i32 [ %i.adg, %bb.bq ], [ %i.vh, %bb.bc ], [ %.ph1044, %.sink.split1042 ]
  %.promoted822 = phi i32 [ %.promoted823982990, %bb.bq ], [ %.promoted825, %bb.bc ], [ %.promoted822.ph, %.sink.split1042 ]
  %.11.ph = phi i32 [ %.10745984989, %bb.bq ], [ %.66521071, %bb.bc ], [ %.11.ph.ph, %.sink.split1042 ]
  %i.akl = sext i32 %i.akj to i64
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.akl
  store i32 %i.akk, ptr %i.akm, align 4, !tbaa !30
  br label %bb.bx

.loopexit773:                                     ; preds = %scalar.ph1170.prol.loopexit, %scalar.ph1170, %middle.block1209, %..loopexit773_crit_edge, %bb.bv
  %.pre-phi912 = phi i64 [ %.pre911, %..loopexit773_crit_edge ], [ %i.agg, %bb.bv ], [ %i.agg, %middle.block1209 ], [ %i.agg, %scalar.ph1170 ], [ %i.agg, %scalar.ph1170.prol.loopexit ]
  %.pre-phi906 = phi i64 [ %.pre905, %..loopexit773_crit_edge ], [ %i.agk, %bb.bv ], [ %i.agk, %middle.block1209 ], [ %i.agk, %scalar.ph1170 ], [ %i.agk, %scalar.ph1170.prol.loopexit ]
  %i.akn = mul i32 %i.afz, %i.td
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ako
  %i.akq = load double, ptr %i.akp, align 8, !tbaa !32
  %i.akr = mul i32 %i.afz, %i.tc
  %i.aks = sext i32 %i.akr to i64
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aks
  store double %i.akq, ptr %i.akt, align 8, !tbaa !32
  %i.aku = mul nsw i32 %i.afz, %i.m
  %i.akv = add nsw i32 %i.agd, %i.aku
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.akw
  store double 0.000000e+00, ptr %i.akx, align 8, !tbaa !32
  %i.aky = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi906
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !32
  %i.ala = mul i32 %i.agd, %i.tc
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.alb
  store double %i.akz, ptr %i.alc, align 8, !tbaa !32
  %i.ald = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi912
  %i.ale = load double, ptr %i.ald, align 8, !tbaa !32
  %i.alf = sext i32 %i.afz to i64                 ; 2 uses
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.alf
  %i.alh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ale, i64 0
  store <2 x double> %i.alh, ptr %i.alg, align 8, !tbaa !32
  %i.ali = sub nsw i32 0, %.9806808
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.alf ; 2 uses
  store i32 %i.ali, ptr %i.alj, align 4, !tbaa !30
  %i.alk = sub nsw i32 0, %.promoted824
end_hunk_1
begin_hunk_2_@dlasyf_rk_:bb.a
  %i.alv = sext i32 %i.r to i64
  %invariant.gep1037 = getelementptr [8 x i8], ptr %i.o, i64 %i.alu
  %invariant.gep1039 = getelementptr [8 x i8], ptr %i.t, i64 %i.alv
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph836, %bb.ca
  %.3645834 = phi i32 [ %storemerge.lcssa, %.lr.ph836 ], [ %i.ang, %bb.ca ] ; 9 uses
  %i.alw = load i32, ptr %2, align 4, !tbaa !30
  %i.alx = load i32, ptr %1, align 4, !tbaa !30   ; 2 uses
  %i.aly = sub nsw i32 %i.alx, %.3645834
  %i.alz = add nsw i32 %i.aly, 1
  %i.ama = call i32 @llvm.smin.i32(i32 %i.alw, i32 %i.alz) ; 3 uses
  store i32 %i.ama, ptr %i.j, align 4, !tbaa !30
  %i.amb = add i32 %.3645834, -1
  %i.amc = add i32 %i.amb, %i.ama                 ; 2 uses
  store i32 %i.amc, ptr %i.c, align 4, !tbaa !30
  %.not706828 = icmp sgt i32 %.3645834, %i.amc
  br i1 %.not706828, label %._crit_edge832, label %.lr.ph831.preheader

.lr.ph831.preheader:                              ; preds = %bb.by
  %i.amd = sext i32 %.3645834 to i64
  br label %.lr.ph831

.lr.ph831:                                        ; preds = %.lr.ph831.preheader, %.lr.ph831
  %indvars.iv877 = phi i64 [ %i.amd, %.lr.ph831.preheader ], [ %indvars.iv.next878, %.lr.ph831 ] ; 5 uses
  %i.ame = load i32, ptr %i.j, align 4, !tbaa !30
  %i.amf = trunc nsw i64 %indvars.iv877 to i32    ; 2 uses
  %i.amg = sub i32 %.3645834, %i.amf
  %i.amh = add i32 %i.amg, %i.ame
  store i32 %i.amh, ptr %i.d, align 4, !tbaa !30
  %i.ami = load i32, ptr %i.g, align 4, !tbaa !30
  %i.amj = add nsw i32 %i.ami, -1
  store i32 %i.amj, ptr %i.e, align 4, !tbaa !30
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv877
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv877
  %i.amk = mul i32 %i.tc, %i.amf
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aml
  call void @dgemv_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b9, ptr noundef %gep1038, ptr noundef nonnull %5, ptr noundef %gep1040, ptr noundef nonnull %9, ptr noundef nonnull @c_b10, ptr noundef %i.amm, ptr noundef nonnull @c__1) #5
  %indvars.iv.next878 = add nsw i64 %indvars.iv877, 1
  %i.amn = load i32, ptr %i.c, align 4, !tbaa !30
  %i.amo = sext i32 %i.amn to i64
  %.not706.not = icmp slt i64 %indvars.iv877, %i.amo
  br i1 %.not706.not, label %.lr.ph831, label %._crit_edge832.loopexit, !llvm.loop !28

._crit_edge832.loopexit:                          ; preds = %.lr.ph831
  %.pre892 = load i32, ptr %i.j, align 4, !tbaa !30
  %.pre893 = load i32, ptr %1, align 4, !tbaa !30
  br label %._crit_edge832

._crit_edge832:                                   ; preds = %._crit_edge832.loopexit, %bb.by
  %i.amp = phi i32 [ %.pre893, %._crit_edge832.loopexit ], [ %i.alx, %bb.by ] ; 2 uses
  %i.amq = phi i32 [ %.pre892, %._crit_edge832.loopexit ], [ %i.ama, %bb.by ]
  %i.amr = add nsw i32 %i.amq, %.3645834          ; 4 uses
  %.not707 = icmp sgt i32 %i.amr, %i.amp
  br i1 %.not707, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge832
  %reass.sub845 = sub i32 %i.amp, %i.amr
  %i.ams = add i32 %reass.sub845, 1
  store i32 %i.ams, ptr %i.c, align 4, !tbaa !30
  %i.amt = load i32, ptr %i.g, align 4, !tbaa !30
  %i.amu = add nsw i32 %i.amt, -1
  store i32 %i.amu, ptr %i.d, align 4, !tbaa !30
  %i.amv = add nsw i32 %i.amr, %i.m
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.amw
  %i.amy = add nsw i32 %.3645834, %i.r
  %i.amz = sext i32 %i.amy to i64
  %i.ana = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.amz
  %i.anb = mul nsw i32 %.3645834, %i.m
  %i.anc = add nsw i32 %i.amr, %i.anb
  %i.and = sext i32 %i.anc to i64
  %i.ane = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.and
  call void @dgemm_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b9, ptr noundef %i.amx, ptr noundef nonnull %5, ptr noundef %i.ana, ptr noundef nonnull %9, ptr noundef nonnull @c_b10, ptr noundef %i.ane, ptr noundef nonnull %5) #5
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge832, %bb.bz
  %i.anf = load i32, ptr %i.b, align 4, !tbaa !30 ; 2 uses
  %i.ang = add nsw i32 %i.anf, %.3645834          ; 3 uses
  %i.anh = icmp slt i32 %i.anf, 0
  %i.ani = load i32, ptr %i.a, align 4            ; 2 uses
  %i.anj = icmp sge i32 %i.ang, %i.ani
  %i.ank = icmp sle i32 %i.ang, %i.ani
  %.in = select i1 %i.anh, i1 %i.anj, i1 %i.ank
  br i1 %.in, label %bb.by, label %._crit_edge837.loopexit, !llvm.loop !29

._crit_edge837.loopexit:                          ; preds = %bb.ca
  %.pre894 = load i32, ptr %i.g, align 4, !tbaa !30
  br label %._crit_edge837

._crit_edge837:                                   ; preds = %._crit_edge837.loopexit, %._crit_edge1074
  %i.anl = phi i32 [ %.pre894, %._crit_edge837.loopexit ], [ %storemerge.lcssa, %._crit_edge1074 ]
  %i.anm = add nsw i32 %i.anl, -1
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge837, %._crit_edge805
  %storemerge704 = phi i32 [ %i.anm, %._crit_edge837 ], [ %i.sy, %._crit_edge805 ]
  store i32 %storemerge704, ptr %3, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !33}
!9 = distinct !{!9, !34}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !33, !41, !42}
!16 = distinct !{!16, !33, !41}
!17 = distinct !{!17, !33}
!18 = distinct !{!18, !33}
!19 = distinct !{!19, !34}
!20 = distinct !{!20, !33}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !33, !41, !42}
!27 = distinct !{!27, !33, !41}
!28 = distinct !{!28, !33}
!29 = distinct !{!29, !33}
!30 = !{!5, !5, i64 0}
!31 = !{!"double", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!11}
!36 = !{!12}
!37 = !{!13}
!38 = !{!14, !12, !11}
!39 = !{!14}
!40 = !{!12, !11}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!22}
!44 = !{!23}
!45 = !{!24}
!46 = !{!25, !23, !22}
!47 = !{!25}
!48 = !{!23, !22}
end_hunk_2
