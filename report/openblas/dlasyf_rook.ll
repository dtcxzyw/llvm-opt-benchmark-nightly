Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasyf_rook?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dlasyf_rook_:bb.a
  %i.iv = sub i32 %i.iu, %i.fs
  store i32 %i.iv, ptr %i.a, align 4, !tbaa !30
  %i.iw = add nsw i32 %i.id, %i.fs
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ix
  %i.iz = load i32, ptr %i.m, align 4, !tbaa !30
  %i.ja = add nsw i32 %i.iz, %i.id
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.jb
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.iy, ptr noundef nonnull %5, ptr noundef %i.jc, ptr noundef nonnull %5) #5
  %i.jd = load i32, ptr %1, align 4, !tbaa !30
  %i.je = add i32 %i.jd, 1
  %i.jf = sub i32 %i.je, %i.fs
  store i32 %i.jf, ptr %i.a, align 4, !tbaa !30
  %i.jg = mul nsw i32 %i.fw, %i.r                 ; 2 uses
  %i.jh = add nsw i32 %i.fs, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ji
  %i.jk = load i32, ptr %i.m, align 4, !tbaa !30
  %i.jl = add nsw i32 %i.jk, %i.jg
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jm
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.jj, ptr noundef nonnull %8, ptr noundef %i.jn, ptr noundef nonnull %8) #5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jo = load i32, ptr %i.h, align 4, !tbaa !30  ; 12 uses
  br i1 %i.fq, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.jp = mul nsw i32 %i.jo, %i.n
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr [8 x i8], ptr %i.p, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  call void @dcopy_(ptr noundef nonnull %i.h, ptr noundef %i.az, ptr noundef nonnull @c__1, ptr noundef %i.js, ptr noundef nonnull @c__1) #5
  %i.jt = load i32, ptr %i.h, align 4, !tbaa !30  ; 9 uses
  %i.ju = icmp sgt i32 %i.jt, 1
  br i1 %i.ju, label %bb.ag, label %.loopexit810

bb.ag:                                            ; preds = %bb.af
  %i.jv = mul i32 %i.jt, %i.ag
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !32 ; 3 uses
  %i.jz = call double @llvm.fabs.f64(double %i.jy)
  %i.ka = fcmp ult double %i.jz, %i.u
  br i1 %i.ka, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kb = fdiv double 1.000000e+00, %i.jy
  store double %i.kb, ptr %i.j, align 8, !tbaa !32
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.a, align 4, !tbaa !30
  %i.kd = mul nsw i32 %i.jt, %i.n
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr [8 x i8], ptr %i.p, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, ptr noundef %i.kg, ptr noundef nonnull @c__1) #5
  br label %.loopexit810

bb.ai:                                            ; preds = %bb.ag
  %i.kh = fcmp une double %i.jy, 0.000000e+00
  br i1 %i.kh, label %.lr.ph834, label %.loopexit810

.lr.ph834:                                        ; preds = %bb.ai
  %i.ki = add nsw i32 %i.jt, -1
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !30
  %i.kj = mul nsw i32 %i.jt, %i.n                 ; 2 uses
  %i.kk = add nsw i32 %i.kj, %i.jt
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.kl ; 9 uses
  %i.kn = sext i32 %i.kj to i64
  %wide.trip.count915 = zext nneg i32 %i.jt to i64
  %invariant.gep1080 = getelementptr [8 x i8], ptr %i.p, i64 %i.kn ; 9 uses
  %i.ko = add nsw i64 %wide.trip.count915, -1     ; 2 uses
  %xtraiter1288 = and i64 %i.ko, 7                ; 3 uses
  %i.kp = add nsw i32 %i.jt, -2
  %i.kq = icmp ult i32 %i.kp, 7
  br i1 %i.kq, label %.epil.preheader, label %.lr.ph834.new

.lr.ph834.new:                                    ; preds = %.lr.ph834
  %unroll_iter = and i64 %i.ko, -8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph834.new
  %indvars.iv912 = phi i64 [ 1, %.lr.ph834.new ], [ %indvars.iv.next913.7, %bb.aj ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph834.new ], [ %niter.next.7, %bb.aj ]
  %i.kr = load double, ptr %i.km, align 8, !tbaa !32
  %gep1081 = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912 ; 2 uses
  %i.ks = load double, ptr %gep1081, align 8, !tbaa !32
  %i.kt = fdiv double %i.ks, %i.kr
  store double %i.kt, ptr %gep1081, align 8, !tbaa !32
  %i.ku = load double, ptr %i.km, align 8, !tbaa !32
  %i.kv = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.1 = getelementptr i8, ptr %i.kv, i64 8 ; 2 uses
  %i.kw = load double, ptr %gep1081.1, align 8, !tbaa !32
  %i.kx = fdiv double %i.kw, %i.ku
  store double %i.kx, ptr %gep1081.1, align 8, !tbaa !32
  %i.ky = load double, ptr %i.km, align 8, !tbaa !32
  %i.kz = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.2 = getelementptr i8, ptr %i.kz, i64 16 ; 2 uses
  %i.la = load double, ptr %gep1081.2, align 8, !tbaa !32
  %i.lb = fdiv double %i.la, %i.ky
  store double %i.lb, ptr %gep1081.2, align 8, !tbaa !32
  %i.lc = load double, ptr %i.km, align 8, !tbaa !32
  %i.ld = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.3 = getelementptr i8, ptr %i.ld, i64 24 ; 2 uses
  %i.le = load double, ptr %gep1081.3, align 8, !tbaa !32
  %i.lf = fdiv double %i.le, %i.lc
  store double %i.lf, ptr %gep1081.3, align 8, !tbaa !32
  %i.lg = load double, ptr %i.km, align 8, !tbaa !32
  %i.lh = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.4 = getelementptr i8, ptr %i.lh, i64 32 ; 2 uses
  %i.li = load double, ptr %gep1081.4, align 8, !tbaa !32
  %i.lj = fdiv double %i.li, %i.lg
  store double %i.lj, ptr %gep1081.4, align 8, !tbaa !32
  %i.lk = load double, ptr %i.km, align 8, !tbaa !32
  %i.ll = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.5 = getelementptr i8, ptr %i.ll, i64 40 ; 2 uses
  %i.lm = load double, ptr %gep1081.5, align 8, !tbaa !32
  %i.ln = fdiv double %i.lm, %i.lk
  store double %i.ln, ptr %gep1081.5, align 8, !tbaa !32
  %i.lo = load double, ptr %i.km, align 8, !tbaa !32
  %i.lp = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.6 = getelementptr i8, ptr %i.lp, i64 48 ; 2 uses
  %i.lq = load double, ptr %gep1081.6, align 8, !tbaa !32
  %i.lr = fdiv double %i.lq, %i.lo
  store double %i.lr, ptr %gep1081.6, align 8, !tbaa !32
  %i.ls = load double, ptr %i.km, align 8, !tbaa !32
  %i.lt = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912
  %gep1081.7 = getelementptr i8, ptr %i.lt, i64 56 ; 2 uses
  %i.lu = load double, ptr %gep1081.7, align 8, !tbaa !32
  %i.lv = fdiv double %i.lu, %i.ls
  store double %i.lv, ptr %gep1081.7, align 8, !tbaa !32
  %indvars.iv.next913.7 = add nuw nsw i64 %indvars.iv912, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit810.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !8

bb.ak:                                            ; preds = %bb.ae
  %i.lw = icmp sgt i32 %i.jo, 2
  %i.lx = add nsw i32 %i.jo, -1                   ; 8 uses
  br i1 %i.lw, label %.lr.ph, label %..loopexit811_crit_edge948

..loopexit811_crit_edge948:                       ; preds = %bb.ak
  %.pre967 = add nsw i32 %i.ao, -1
  %.pre969 = mul nsw i32 %.pre967, %i.r
  %.pre971 = add nsw i32 %i.lx, %.pre969
  %.pre973 = sext i32 %.pre971 to i64
  %.pre975 = add nsw i32 %i.lx, %i.aw
  %.pre977 = sext i32 %.pre975 to i64
  %.pre979 = add nsw i32 %i.jo, %i.aw
  %.pre981 = sext i32 %.pre979 to i64
  br label %.loopexit811

.lr.ph:                                           ; preds = %bb.ak
  %i.ly = add nsw i32 %i.lx, %i.aw
  %i.lz = sext i32 %i.ly to i64                   ; 4 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.lz
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !32 ; 9 uses
  %i.mc = add nsw i32 %i.jo, %i.aw
  %i.md = sext i32 %i.mc to i64                   ; 4 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !32
  %i.mg = fdiv double %i.mf, %i.mb                ; 5 uses
  %i.mh = add nsw i32 %i.ao, -1
  %i.mi = mul nsw i32 %i.mh, %i.r                 ; 2 uses
  %i.mj = add nsw i32 %i.lx, %i.mi
  %i.mk = sext i32 %i.mj to i64                   ; 4 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mk
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !32
  %i.mn = fdiv double %i.mm, %i.mb                ; 5 uses
  %i.mo = call double @llvm.fmuladd.f64(double %i.mg, double %i.mn, double -1.000000e+00)
  %i.mp = fdiv double 1.000000e+00, %i.mo         ; 7 uses
  %i.mq = add nsw i32 %i.jo, -2
  store i32 %i.mq, ptr %i.a, align 4, !tbaa !30
  %i.mr = mul nsw i32 %i.lx, %i.n
  %i.ms = mul nsw i32 %i.jo, %i.n
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  %i.mu = sext i32 %i.mr to i64                   ; 2 uses
  %i.mv = sext i32 %i.mi to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.lx to i64   ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.mv ; 4 uses
  %invariant.gep1074 = getelementptr [8 x i8], ptr %i.t, i64 %i.ax ; 4 uses
  %invariant.gep1076 = getelementptr [8 x i8], ptr %i.p, i64 %i.mu ; 4 uses
  %invariant.gep1078 = getelementptr [8 x i8], ptr %i.p, i64 %i.mt ; 4 uses
  %i.mw = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.mw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.mx = shl nsw i64 %i.mu, 3                    ; 2 uses
  %i.my = getelementptr i8, ptr %scevgep1163, i64 %i.mx ; 3 uses
  %i.mz = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.na = getelementptr i8, ptr %i.p, i64 %i.mx
  %i.nb = getelementptr i8, ptr %i.na, i64 %i.mz  ; 3 uses
  %i.nc = shl nsw i64 %i.mt, 3                    ; 2 uses
  %i.nd = getelementptr i8, ptr %scevgep1163, i64 %i.nc ; 3 uses
  %i.ne = getelementptr i8, ptr %i.p, i64 %i.nc
  %i.nf = getelementptr i8, ptr %i.ne, i64 %i.mz  ; 3 uses
  %i.ng = shl nsw i64 %i.mv, 3                    ; 2 uses
  %i.nh = getelementptr i8, ptr %scevgep, i64 %i.ng ; 2 uses
  %i.ni = getelementptr i8, ptr %i.t, i64 %i.ng
  %i.nj = getelementptr i8, ptr %i.ni, i64 %i.mz  ; 2 uses
  %i.nk = shl nsw i64 %i.ax, 3                    ; 2 uses
  %i.nl = getelementptr i8, ptr %scevgep, i64 %i.nk ; 2 uses
  %i.nm = getelementptr i8, ptr %i.t, i64 %i.nk
  %i.nn = getelementptr i8, ptr %i.nm, i64 %i.mz  ; 2 uses
  %bound0 = icmp ult ptr %i.my, %i.nf
  %bound1 = icmp ult ptr %i.nd, %i.nb
  %found.conflict = and i1 %bound0, %bound1
  %bound01164 = icmp ult ptr %i.my, %i.nj
  %bound11165 = icmp ult ptr %i.nh, %i.nb
  %found.conflict1166 = and i1 %bound01164, %bound11165
  %conflict.rdx = or i1 %found.conflict, %found.conflict1166
  %bound01167 = icmp ult ptr %i.my, %i.nn
  %bound11168 = icmp ult ptr %i.nl, %i.nb
  %found.conflict1169 = and i1 %bound01167, %bound11168
  %conflict.rdx1170 = or i1 %conflict.rdx, %found.conflict1169
  %bound01171 = icmp ult ptr %i.nd, %i.nj
  %bound11172 = icmp ult ptr %i.nh, %i.nf
  %found.conflict1173 = and i1 %bound01171, %bound11172
  %conflict.rdx1174 = or i1 %conflict.rdx1170, %found.conflict1173
  %bound01175 = icmp ult ptr %i.nd, %i.nn
  %bound11176 = icmp ult ptr %i.nl, %i.nf
  %found.conflict1177 = and i1 %bound01175, %bound11176
  %conflict.rdx1178 = or i1 %conflict.rdx1174, %found.conflict1177
  br i1 %conflict.rdx1178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mw, -4                      ; 3 uses
  %i.no = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.mb, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1179 = insertelement <4 x double> poison, double %i.mg, i64 0
  %broadcast.splat1180 = shufflevector <4 x double> %broadcast.splatinsert1179, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1181 = insertelement <4 x double> poison, double %i.mn, i64 0
  %broadcast.splat1182 = shufflevector <4 x double> %broadcast.splatinsert1181, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1183 = insertelement <4 x double> poison, double %i.mp, i64 0
  %broadcast.splat1184 = shufflevector <4 x double> %broadcast.splatinsert1183, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.np = or disjoint i64 %index, 1               ; 4 uses
  %i.nq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.np ; 2 uses
  %wide.load = load <4 x double>, ptr %i.nq, align 8, !tbaa !32, !alias.scope !34
  %i.nr = getelementptr [8 x i8], ptr %invariant.gep1074, i64 %i.np ; 2 uses
  %wide.load1185 = load <4 x double>, ptr %i.nr, align 8, !tbaa !32, !alias.scope !35
  %i.ns = fneg <4 x double> %wide.load1185
  %i.nt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1180, <4 x double> %wide.load, <4 x double> %i.ns)
  %i.nu = fdiv <4 x double> %i.nt, %broadcast.splat
  %i.nv = fmul <4 x double> %broadcast.splat1184, %i.nu
  %i.nw = getelementptr [8 x i8], ptr %invariant.gep1076, i64 %i.np
  store <4 x double> %i.nv, ptr %i.nw, align 8, !tbaa !32, !alias.scope !36, !noalias !37
  %wide.load1186 = load <4 x double>, ptr %i.nr, align 8, !tbaa !32, !alias.scope !35
  %wide.load1187 = load <4 x double>, ptr %i.nq, align 8, !tbaa !32, !alias.scope !34
  %i.nx = fneg <4 x double> %wide.load1187
  %i.ny = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1182, <4 x double> %wide.load1186, <4 x double> %i.nx)
  %i.nz = fdiv <4 x double> %i.ny, %broadcast.splat
  %i.oa = fmul <4 x double> %broadcast.splat1184, %i.nz
  %i.ob = getelementptr [8 x i8], ptr %invariant.gep1078, i64 %i.np
  store <4 x double> %i.oa, ptr %i.ob, align 8, !tbaa !32, !alias.scope !38, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oc = icmp eq i64 %index.next, %n.vec
  br i1 %i.oc, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mw, %n.vec
  br i1 %cmp.n, label %.loopexit811, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.no, %middle.block ] ; 7 uses
  %i.od = and i32 %i.jo, 1
  %lcmp.mod.not = icmp eq i32 %i.od, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.oe = load double, ptr %gep.prol, align 8, !tbaa !32
  %gep1075.prol = getelementptr [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv.ph ; 2 uses
  %i.of = load double, ptr %gep1075.prol, align 8, !tbaa !32
  %i.og = fneg double %i.of
  %i.oh = call double @llvm.fmuladd.f64(double %i.mg, double %i.oe, double %i.og)
  %i.oi = fdiv double %i.oh, %i.mb
  %i.oj = fmul double %i.mp, %i.oi
  %gep1077.prol = getelementptr [8 x i8], ptr %invariant.gep1076, i64 %indvars.iv.ph
  store double %i.oj, ptr %gep1077.prol, align 8, !tbaa !32
  %i.ok = load double, ptr %gep1075.prol, align 8, !tbaa !32
  %i.ol = load double, ptr %gep.prol, align 8, !tbaa !32
  %i.om = fneg double %i.ol
  %i.on = call double @llvm.fmuladd.f64(double %i.mn, double %i.ok, double %i.om)
  %i.oo = fdiv double %i.on, %i.mb
  %i.op = fmul double %i.mp, %i.oo
  %gep1079.prol = getelementptr [8 x i8], ptr %invariant.gep1078, i64 %indvars.iv.ph
  store double %i.op, ptr %gep1079.prol, align 8, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.oq = add nsw i64 %wide.trip.count, -1
  %i.or = icmp eq i64 %indvars.iv.ph, %i.oq
  br i1 %i.or, label %.loopexit811, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.os = load double, ptr %gep, align 8, !tbaa !32
  %gep1075 = getelementptr [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv ; 2 uses
  %i.ot = load double, ptr %gep1075, align 8, !tbaa !32
  %i.ou = fneg double %i.ot
  %i.ov = call double @llvm.fmuladd.f64(double %i.mg, double %i.os, double %i.ou)
  %i.ow = fdiv double %i.ov, %i.mb
  %i.ox = fmul double %i.mp, %i.ow
  %gep1077 = getelementptr [8 x i8], ptr %invariant.gep1076, i64 %indvars.iv
  store double %i.ox, ptr %gep1077, align 8, !tbaa !32
  %i.oy = load double, ptr %gep1075, align 8, !tbaa !32
  %i.oz = load double, ptr %gep, align 8, !tbaa !32
  %i.pa = fneg double %i.oz
  %i.pb = call double @llvm.fmuladd.f64(double %i.mn, double %i.oy, double %i.pa)
  %i.pc = fdiv double %i.pb, %i.mb
  %i.pd = fmul double %i.mp, %i.pc
  %gep1079 = getelementptr [8 x i8], ptr %invariant.gep1078, i64 %indvars.iv
  store double %i.pd, ptr %gep1079, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.pe = load double, ptr %gep.1, align 8, !tbaa !32
  %gep1075.1 = getelementptr [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv.next ; 2 uses
  %i.pf = load double, ptr %gep1075.1, align 8, !tbaa !32
  %i.pg = fneg double %i.pf
  %i.ph = call double @llvm.fmuladd.f64(double %i.mg, double %i.pe, double %i.pg)
  %i.pi = fdiv double %i.ph, %i.mb
  %i.pj = fmul double %i.mp, %i.pi
  %gep1077.1 = getelementptr [8 x i8], ptr %invariant.gep1076, i64 %indvars.iv.next
  store double %i.pj, ptr %gep1077.1, align 8, !tbaa !32
  %i.pk = load double, ptr %gep1075.1, align 8, !tbaa !32
  %i.pl = load double, ptr %gep.1, align 8, !tbaa !32
  %i.pm = fneg double %i.pl
  %i.pn = call double @llvm.fmuladd.f64(double %i.mn, double %i.pk, double %i.pm)
  %i.po = fdiv double %i.pn, %i.mb
  %i.pp = fmul double %i.mp, %i.po
  %gep1079.1 = getelementptr [8 x i8], ptr %invariant.gep1078, i64 %indvars.iv.next
  store double %i.pp, ptr %gep1079.1, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit811, label %scalar.ph, !llvm.loop !15

.loopexit810.loopexit.unr-lcssa:                  ; preds = %bb.aj
  %lcmp.mod1289.not = icmp eq i64 %xtraiter1288, 0
  br i1 %lcmp.mod1289.not, label %.loopexit810, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit810.loopexit.unr-lcssa, %.lr.ph834
  %indvars.iv912.epil.init = phi i64 [ 1, %.lr.ph834 ], [ %indvars.iv.next913.7, %.loopexit810.loopexit.unr-lcssa ]
  %lcmp.mod1290 = icmp ne i64 %xtraiter1288, 0
  call void @llvm.assume(i1 %lcmp.mod1290)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader
  %indvars.iv912.epil = phi i64 [ %indvars.iv912.epil.init, %.epil.preheader ], [ %indvars.iv.next913.epil, %bb.al ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.al ]
  %i.pq = load double, ptr %i.km, align 8, !tbaa !32
  %gep1081.epil = getelementptr [8 x i8], ptr %invariant.gep1080, i64 %indvars.iv912.epil ; 2 uses
  %i.pr = load double, ptr %gep1081.epil, align 8, !tbaa !32
  %i.ps = fdiv double %i.pr, %i.pq
  store double %i.ps, ptr %gep1081.epil, align 8, !tbaa !32
  %indvars.iv.next913.epil = add nuw nsw i64 %indvars.iv912.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1288
  br i1 %epil.iter.cmp.not, label %.loopexit810, label %bb.al, !llvm.loop !16

.loopexit810:                                     ; preds = %.loopexit810.loopexit.unr-lcssa, %bb.al, %bb.m, %bb.ah, %bb.ai, %bb.af
  %.5659.ph = phi i32 [ %.4658, %bb.af ], [ %.4658, %bb.ai ], [ %.0654, %bb.m ], [ %.4658, %bb.ah ], [ %.4658, %bb.al ], [ %.4658, %.loopexit810.loopexit.unr-lcssa ]
  %i.pt = load i32, ptr %i.m, align 4, !tbaa !30
  %i.pu = load i32, ptr %i.h, align 4, !tbaa !30  ; 2 uses
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.pv
  store i32 %i.pt, ptr %i.pw, align 4, !tbaa !30
  br label %bb.am

.loopexit811:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %..loopexit811_crit_edge948
  %.pre-phi982 = phi i64 [ %.pre981, %..loopexit811_crit_edge948 ], [ %i.md, %middle.block ], [ %i.md, %scalar.ph ], [ %i.md, %scalar.ph.prol.loopexit ]
  %.pre-phi978 = phi i64 [ %.pre977, %..loopexit811_crit_edge948 ], [ %i.lz, %middle.block ], [ %i.lz, %scalar.ph ], [ %i.lz, %scalar.ph.prol.loopexit ]
  %.pre-phi974 = phi i64 [ %.pre973, %..loopexit811_crit_edge948 ], [ %i.mk, %middle.block ], [ %i.mk, %scalar.ph ], [ %i.mk, %scalar.ph.prol.loopexit ]
  %i.px = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi974
  %i.py = load double, ptr %i.px, align 8, !tbaa !32
  %i.pz = mul i32 %i.lx, %i.ag
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qa
  store double %i.py, ptr %i.qb, align 8, !tbaa !32
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi978
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !32
  %i.qe = mul nsw i32 %i.jo, %i.n
  %i.qf = add nsw i32 %i.lx, %i.qe
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qg
  store double %i.qd, ptr %i.qh, align 8, !tbaa !32
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi982
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !32
  %i.qk = mul i32 %i.jo, %i.ag
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ql
  store double %i.qj, ptr %i.qm, align 8, !tbaa !32
  %i.qn = load i32, ptr %i.i, align 4, !tbaa !30
  %i.qo = sub nsw i32 0, %i.qn
end_hunk_0
begin_hunk_1_@dlasyf_rook_:bb.a
  %.1077410431048 = phi i32 [ %.66601127, %.thread1044 ], [ %.9663, %bb.bu ], [ %.9663, %.split1050 ] ; 5 uses
  %i.ady = load i32, ptr %1, align 4, !tbaa !30
  %i.adz = load i32, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.aea = add i32 %i.ady, 1
  %i.aeb = sub i32 %i.aea, %i.adz
  store i32 %i.aeb, ptr %i.a, align 4, !tbaa !30
  %i.aec = mul i32 %i.adz, %i.x
  %i.aed = sext i32 %i.aec to i64
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aed
  %i.aef = mul i32 %i.adz, %i.w
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aeg
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.aee, ptr noundef nonnull @c__1, ptr noundef %i.aeh, ptr noundef nonnull @c__1) #5
  %i.aei = load i32, ptr %i.h, align 4, !tbaa !30 ; 8 uses
  %i.aej = load i32, ptr %1, align 4, !tbaa !30   ; 4 uses
  %i.aek = icmp slt i32 %i.aei, %i.aej
  br i1 %i.aek, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.ael = mul i32 %i.aei, %i.w
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aem
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !32 ; 3 uses
  %i.aep = call double @llvm.fabs.f64(double %i.aeo)
  %i.aeq = fcmp ult double %i.aep, %i.u
  br i1 %i.aeq, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aer = fdiv double 1.000000e+00, %i.aeo
  store double %i.aer, ptr %i.j, align 8, !tbaa !32
  %i.aes = sub nsw i32 %i.aej, %i.aei
  store i32 %i.aes, ptr %i.a, align 4, !tbaa !30
  %i.aet = add nsw i32 %i.aei, 1
  %i.aeu = mul nsw i32 %i.aei, %i.n
  %i.aev = add nsw i32 %i.aet, %i.aeu
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aew
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, ptr noundef %i.aex, ptr noundef nonnull @c__1) #5
  br label %.loopexit

bb.by:                                            ; preds = %bb.bw
  %i.aey = fcmp une double %i.aeo, 0.000000e+00
  br i1 %i.aey, label %.lr.ph862, label %.loopexit

.lr.ph862:                                        ; preds = %bb.by
  store i32 %i.aej, ptr %i.a, align 4, !tbaa !30
  %i.aez = mul nsw i32 %i.aei, %i.n               ; 2 uses
  %i.afa = add nsw i32 %i.aez, %i.aei
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.afb ; 9 uses
  %i.afd = sext i32 %i.aei to i64                 ; 4 uses
  %i.afe = sext i32 %i.aez to i64
  %wide.trip.count927 = sext i32 %i.aej to i64    ; 3 uses
  %invariant.gep1095 = getelementptr [8 x i8], ptr %i.p, i64 %i.afe ; 9 uses
  %i.aff = sub nsw i64 %wide.trip.count927, %i.afd
  %xtraiter1293 = and i64 %i.aff, 7               ; 2 uses
  %lcmp.mod1294.not = icmp eq i64 %xtraiter1293, 0
  br i1 %lcmp.mod1294.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph862, %.prol.preheader
  %indvars.iv924.prol = phi i64 [ %indvars.iv.next925.prol, %.prol.preheader ], [ %i.afd, %.lr.ph862 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph862 ]
  %indvars.iv.next925.prol = add nsw i64 %indvars.iv924.prol, 1 ; 3 uses
  %i.afg = load double, ptr %i.afc, align 8, !tbaa !32
  %gep1096.prol = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv.next925.prol ; 2 uses
  %i.afh = load double, ptr %gep1096.prol, align 8, !tbaa !32
  %i.afi = fdiv double %i.afh, %i.afg
  store double %i.afi, ptr %gep1096.prol, align 8, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1293
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph862
  %indvars.iv924.unr = phi i64 [ %i.afd, %.lr.ph862 ], [ %indvars.iv.next925.prol, %.prol.preheader ]
  %i.afj = sub nsw i64 %i.afd, %wide.trip.count927
  %i.afk = icmp ugt i64 %i.afj, -8
  br i1 %i.afk, label %.loopexit, label %.lr.ph862.new

.lr.ph862.new:                                    ; preds = %.prol.loopexit, %.lr.ph862.new
  %indvars.iv924 = phi i64 [ %indvars.iv.next925.7, %.lr.ph862.new ], [ %indvars.iv924.unr, %.prol.loopexit ] ; 8 uses
  %i.afl = load double, ptr %i.afc, align 8, !tbaa !32
  %i.afm = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096 = getelementptr i8, ptr %i.afm, i64 8  ; 2 uses
  %i.afn = load double, ptr %gep1096, align 8, !tbaa !32
  %i.afo = fdiv double %i.afn, %i.afl
  store double %i.afo, ptr %gep1096, align 8, !tbaa !32
  %i.afp = load double, ptr %i.afc, align 8, !tbaa !32
  %i.afq = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096.1 = getelementptr i8, ptr %i.afq, i64 16 ; 2 uses
  %i.afr = load double, ptr %gep1096.1, align 8, !tbaa !32
  %i.afs = fdiv double %i.afr, %i.afp
  store double %i.afs, ptr %gep1096.1, align 8, !tbaa !32
  %i.aft = load double, ptr %i.afc, align 8, !tbaa !32
  %i.afu = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096.2 = getelementptr i8, ptr %i.afu, i64 24 ; 2 uses
  %i.afv = load double, ptr %gep1096.2, align 8, !tbaa !32
  %i.afw = fdiv double %i.afv, %i.aft
  store double %i.afw, ptr %gep1096.2, align 8, !tbaa !32
  %i.afx = load double, ptr %i.afc, align 8, !tbaa !32
  %i.afy = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096.3 = getelementptr i8, ptr %i.afy, i64 32 ; 2 uses
  %i.afz = load double, ptr %gep1096.3, align 8, !tbaa !32
  %i.aga = fdiv double %i.afz, %i.afx
  store double %i.aga, ptr %gep1096.3, align 8, !tbaa !32
  %i.agb = load double, ptr %i.afc, align 8, !tbaa !32
  %i.agc = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096.4 = getelementptr i8, ptr %i.agc, i64 40 ; 2 uses
  %i.agd = load double, ptr %gep1096.4, align 8, !tbaa !32
  %i.age = fdiv double %i.agd, %i.agb
  store double %i.age, ptr %gep1096.4, align 8, !tbaa !32
  %i.agf = load double, ptr %i.afc, align 8, !tbaa !32
  %i.agg = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096.5 = getelementptr i8, ptr %i.agg, i64 48 ; 2 uses
  %i.agh = load double, ptr %gep1096.5, align 8, !tbaa !32
  %i.agi = fdiv double %i.agh, %i.agf
  store double %i.agi, ptr %gep1096.5, align 8, !tbaa !32
  %i.agj = load double, ptr %i.afc, align 8, !tbaa !32
  %i.agk = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv924
  %gep1096.6 = getelementptr i8, ptr %i.agk, i64 56 ; 2 uses
  %i.agl = load double, ptr %gep1096.6, align 8, !tbaa !32
  %i.agm = fdiv double %i.agl, %i.agj
  store double %i.agm, ptr %gep1096.6, align 8, !tbaa !32
  %indvars.iv.next925.7 = add nsw i64 %indvars.iv924, 8 ; 3 uses
  %i.agn = load double, ptr %i.afc, align 8, !tbaa !32
  %gep1096.7 = getelementptr [8 x i8], ptr %invariant.gep1095, i64 %indvars.iv.next925.7 ; 2 uses
  %i.ago = load double, ptr %gep1096.7, align 8, !tbaa !32
  %i.agp = fdiv double %i.ago, %i.agn
  store double %i.agp, ptr %gep1096.7, align 8, !tbaa !32
  %exitcond928.not.7 = icmp eq i64 %indvars.iv.next925.7, %wide.trip.count927
  br i1 %exitcond928.not.7, label %.loopexit, label %.lr.ph862.new, !llvm.loop !20

bb.bz:                                            ; preds = %.split1050, %bb.bu
  %i.agq = load i32, ptr %i.h, align 4, !tbaa !30 ; 12 uses
  %i.agr = load i32, ptr %1, align 4, !tbaa !30   ; 7 uses
  %i.ags = add nsw i32 %i.agr, -1
  %i.agt = icmp slt i32 %i.agq, %i.ags
  %i.agu = add nsw i32 %i.agq, 1                  ; 7 uses
  %i.agv = mul nsw i32 %i.agq, %i.r               ; 3 uses
  %i.agw = add nsw i32 %i.agu, %i.agv
  %i.agx = sext i32 %i.agw to i64                 ; 2 uses
  br i1 %i.agt, label %bb.ca, label %..loopexit808_crit_edge

..loopexit808_crit_edge:                          ; preds = %bb.bz
  %.pre961 = mul i32 %i.agu, %i.x
  %.pre963 = sext i32 %.pre961 to i64
  br label %.loopexit808

bb.ca:                                            ; preds = %bb.bz
  %i.agy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.agx
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !32 ; 9 uses
  %i.aha = mul i32 %i.agu, %i.x
  %i.ahb = sext i32 %i.aha to i64                 ; 5 uses
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ahb
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !32
  %i.ahe = fdiv double %i.ahd, %i.agz             ; 5 uses
  %i.ahf = add nsw i32 %i.agv, %i.agq
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ahg
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !32
  %i.ahj = fdiv double %i.ahi, %i.agz             ; 5 uses
  %i.ahk = call double @llvm.fmuladd.f64(double %i.ahe, double %i.ahj, double -1.000000e+00)
  %i.ahl = fdiv double 1.000000e+00, %i.ahk       ; 7 uses
  store i32 %i.agr, ptr %i.a, align 4, !tbaa !30
  %i.ahm = add nsw i32 %i.agq, 2                  ; 2 uses
  %.not725854 = icmp sgt i32 %i.ahm, %i.agr
  br i1 %.not725854, label %.loopexit808, label %.lr.ph857

.lr.ph857:                                        ; preds = %bb.ca
  %i.ahn = mul nsw i32 %i.agu, %i.r
  %i.aho = mul nsw i32 %i.agq, %i.n
  %i.ahp = mul nsw i32 %i.agu, %i.n
  %i.ahq = sext i32 %i.ahm to i64                 ; 8 uses
  %i.ahr = sext i32 %i.ahp to i64                 ; 2 uses
  %i.ahs = sext i32 %i.aho to i64                 ; 2 uses
  %i.aht = sext i32 %i.ahn to i64                 ; 2 uses
  %i.ahu = sext i32 %i.agv to i64                 ; 2 uses
  %i.ahv = add i32 %i.agr, 1
  %invariant.gep1087 = getelementptr [8 x i8], ptr %i.t, i64 %i.ahu ; 4 uses
  %invariant.gep1089 = getelementptr [8 x i8], ptr %i.t, i64 %i.aht ; 4 uses
  %invariant.gep1091 = getelementptr [8 x i8], ptr %i.p, i64 %i.ahs ; 4 uses
  %invariant.gep1093 = getelementptr [8 x i8], ptr %i.p, i64 %i.ahr ; 4 uses
  %i.ahw = add i32 %i.agr, -2
  %i.ahx = sub i32 %i.ahw, %i.agq                 ; 2 uses
  %i.ahy = zext i32 %i.ahx to i64                 ; 2 uses
  %i.ahz = add nuw nsw i64 %i.ahy, 1              ; 2 uses
  %min.iters.check1227 = icmp ult i32 %i.ahx, 7
  br i1 %min.iters.check1227, label %scalar.ph1226.preheader, label %vector.memcheck1228

vector.memcheck1228:                              ; preds = %.lr.ph857
  %i.aia = add nsw i64 %i.ahs, %i.ahq
  %i.aib = shl nsw i64 %i.aia, 3                  ; 2 uses
  %i.aic = getelementptr i8, ptr %i.p, i64 %i.aib ; 3 uses
  %i.aid = shl nuw nsw i64 %i.ahy, 3              ; 4 uses
  %i.aie = getelementptr i8, ptr %scevgep1225, i64 %i.aib
  %i.aif = getelementptr i8, ptr %i.aie, i64 %i.aid ; 3 uses
  %i.aig = add nsw i64 %i.ahr, %i.ahq
  %i.aih = shl nsw i64 %i.aig, 3                  ; 2 uses
  %i.aii = getelementptr i8, ptr %i.p, i64 %i.aih ; 3 uses
  %i.aij = getelementptr i8, ptr %scevgep1225, i64 %i.aih
  %i.aik = getelementptr i8, ptr %i.aij, i64 %i.aid ; 3 uses
  %i.ail = add nsw i64 %i.ahu, %i.ahq
  %i.aim = shl nsw i64 %i.ail, 3                  ; 2 uses
  %i.ain = getelementptr i8, ptr %i.t, i64 %i.aim ; 2 uses
  %i.aio = getelementptr i8, ptr %scevgep1224, i64 %i.aim
  %i.aip = getelementptr i8, ptr %i.aio, i64 %i.aid ; 2 uses
  %i.aiq = add nsw i64 %i.aht, %i.ahq
  %i.air = shl nsw i64 %i.aiq, 3                  ; 2 uses
  %i.ais = getelementptr i8, ptr %i.t, i64 %i.air ; 2 uses
  %i.ait = getelementptr i8, ptr %scevgep1224, i64 %i.air
  %i.aiu = getelementptr i8, ptr %i.ait, i64 %i.aid ; 2 uses
  %bound01229 = icmp ult ptr %i.aic, %i.aik
  %bound11230 = icmp ult ptr %i.aii, %i.aif
  %found.conflict1231 = and i1 %bound01229, %bound11230
  %bound01232 = icmp ult ptr %i.aic, %i.aip
  %bound11233 = icmp ult ptr %i.ain, %i.aif
  %found.conflict1234 = and i1 %bound01232, %bound11233
  %conflict.rdx1235 = or i1 %found.conflict1231, %found.conflict1234
  %bound01236 = icmp ult ptr %i.aic, %i.aiu
  %bound11237 = icmp ult ptr %i.ais, %i.aif
  %found.conflict1238 = and i1 %bound01236, %bound11237
  %conflict.rdx1239 = or i1 %conflict.rdx1235, %found.conflict1238
  %bound01240 = icmp ult ptr %i.aii, %i.aip
  %bound11241 = icmp ult ptr %i.ain, %i.aik
  %found.conflict1242 = and i1 %bound01240, %bound11241
  %conflict.rdx1243 = or i1 %conflict.rdx1239, %found.conflict1242
  %bound01244 = icmp ult ptr %i.aii, %i.aiu
  %bound11245 = icmp ult ptr %i.ais, %i.aik
  %found.conflict1246 = and i1 %bound01244, %bound11245
  %conflict.rdx1247 = or i1 %conflict.rdx1243, %found.conflict1246
  br i1 %conflict.rdx1247, label %scalar.ph1226.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %vector.memcheck1228
  %n.vec1249 = and i64 %i.ahz, 8589934588         ; 3 uses
  %i.aiv = add nsw i64 %n.vec1249, %i.ahq
  %broadcast.splatinsert1250 = insertelement <4 x double> poison, double %i.ahe, i64 0
  %broadcast.splat1251 = shufflevector <4 x double> %broadcast.splatinsert1250, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1252 = insertelement <4 x double> poison, double %i.agz, i64 0
  %broadcast.splat1253 = shufflevector <4 x double> %broadcast.splatinsert1252, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1254 = insertelement <4 x double> poison, double %i.ahl, i64 0
  %broadcast.splat1255 = shufflevector <4 x double> %broadcast.splatinsert1254, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %i.ahj, i64 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1248
  %index1259 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1264, %vector.body1258 ] ; 2 uses
  %i.aiw = add i64 %index1259, %i.ahq             ; 4 uses
  %i.aix = getelementptr [8 x i8], ptr %invariant.gep1087, i64 %i.aiw ; 2 uses
  %wide.load1260 = load <4 x double>, ptr %i.aix, align 8, !tbaa !32, !alias.scope !43
  %i.aiy = getelementptr [8 x i8], ptr %invariant.gep1089, i64 %i.aiw ; 2 uses
  %wide.load1261 = load <4 x double>, ptr %i.aiy, align 8, !tbaa !32, !alias.scope !44
  %i.aiz = fneg <4 x double> %wide.load1261
  %i.aja = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1251, <4 x double> %wide.load1260, <4 x double> %i.aiz)
  %i.ajb = fdiv <4 x double> %i.aja, %broadcast.splat1253
  %i.ajc = fmul <4 x double> %broadcast.splat1255, %i.ajb
  %i.ajd = getelementptr [8 x i8], ptr %invariant.gep1091, i64 %i.aiw
  store <4 x double> %i.ajc, ptr %i.ajd, align 8, !tbaa !32, !alias.scope !45, !noalias !46
  %wide.load1262 = load <4 x double>, ptr %i.aiy, align 8, !tbaa !32, !alias.scope !44
  %wide.load1263 = load <4 x double>, ptr %i.aix, align 8, !tbaa !32, !alias.scope !43
  %i.aje = fneg <4 x double> %wide.load1263
  %i.ajf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1257, <4 x double> %wide.load1262, <4 x double> %i.aje)
  %i.ajg = fdiv <4 x double> %i.ajf, %broadcast.splat1253
  %i.ajh = fmul <4 x double> %broadcast.splat1255, %i.ajg
  %i.aji = getelementptr [8 x i8], ptr %invariant.gep1093, i64 %i.aiw
  store <4 x double> %i.ajh, ptr %i.aji, align 8, !tbaa !32, !alias.scope !47, !noalias !48
  %index.next1264 = add nuw i64 %index1259, 4     ; 2 uses
  %i.ajj = icmp eq i64 %index.next1264, %n.vec1249
  br i1 %i.ajj, label %middle.block1265, label %vector.body1258, !llvm.loop !26

middle.block1265:                                 ; preds = %vector.body1258
  %cmp.n1266 = icmp eq i64 %i.ahz, %n.vec1249
  br i1 %cmp.n1266, label %.loopexit808, label %scalar.ph1226.preheader

scalar.ph1226.preheader:                          ; preds = %vector.memcheck1228, %.lr.ph857, %middle.block1265
  %indvars.iv920.ph = phi i64 [ %i.ahq, %vector.memcheck1228 ], [ %i.ahq, %.lr.ph857 ], [ %i.aiv, %middle.block1265 ] ; 7 uses
  %i.ajk = trunc i64 %indvars.iv920.ph to i32     ; 2 uses
  %i.ajl = add i32 %i.agr, %i.ajk
  %i.ajm = and i32 %i.ajl, 1
  %lcmp.mod1292.not.not = icmp eq i32 %i.ajm, 0
  br i1 %lcmp.mod1292.not.not, label %scalar.ph1226.prol, label %scalar.ph1226.prol.loopexit

scalar.ph1226.prol:                               ; preds = %scalar.ph1226.preheader
  %gep1088.prol = getelementptr [8 x i8], ptr %invariant.gep1087, i64 %indvars.iv920.ph ; 2 uses
  %i.ajn = load double, ptr %gep1088.prol, align 8, !tbaa !32
  %gep1090.prol = getelementptr [8 x i8], ptr %invariant.gep1089, i64 %indvars.iv920.ph ; 2 uses
  %i.ajo = load double, ptr %gep1090.prol, align 8, !tbaa !32
  %i.ajp = fneg double %i.ajo
  %i.ajq = call double @llvm.fmuladd.f64(double %i.ahe, double %i.ajn, double %i.ajp)
  %i.ajr = fdiv double %i.ajq, %i.agz
  %i.ajs = fmul double %i.ahl, %i.ajr
  %gep1092.prol = getelementptr [8 x i8], ptr %invariant.gep1091, i64 %indvars.iv920.ph
  store double %i.ajs, ptr %gep1092.prol, align 8, !tbaa !32
  %i.ajt = load double, ptr %gep1090.prol, align 8, !tbaa !32
  %i.aju = load double, ptr %gep1088.prol, align 8, !tbaa !32
  %i.ajv = fneg double %i.aju
  %i.ajw = call double @llvm.fmuladd.f64(double %i.ahj, double %i.ajt, double %i.ajv)
  %i.ajx = fdiv double %i.ajw, %i.agz
  %i.ajy = fmul double %i.ahl, %i.ajx
  %gep1094.prol = getelementptr [8 x i8], ptr %invariant.gep1093, i64 %indvars.iv920.ph
  store double %i.ajy, ptr %gep1094.prol, align 8, !tbaa !32
  %indvars.iv.next921.prol = add nsw i64 %indvars.iv920.ph, 1
  br label %scalar.ph1226.prol.loopexit

scalar.ph1226.prol.loopexit:                      ; preds = %scalar.ph1226.prol, %scalar.ph1226.preheader
  %indvars.iv920.unr = phi i64 [ %indvars.iv920.ph, %scalar.ph1226.preheader ], [ %indvars.iv.next921.prol, %scalar.ph1226.prol ]
  %i.ajz = icmp eq i32 %i.agr, %i.ajk
  br i1 %i.ajz, label %.loopexit808, label %scalar.ph1226

scalar.ph1226:                                    ; preds = %scalar.ph1226.prol.loopexit, %scalar.ph1226
  %indvars.iv920 = phi i64 [ %indvars.iv.next921.1, %scalar.ph1226 ], [ %indvars.iv920.unr, %scalar.ph1226.prol.loopexit ] ; 6 uses
  %gep1088 = getelementptr [8 x i8], ptr %invariant.gep1087, i64 %indvars.iv920 ; 2 uses
  %i.aka = load double, ptr %gep1088, align 8, !tbaa !32
  %gep1090 = getelementptr [8 x i8], ptr %invariant.gep1089, i64 %indvars.iv920 ; 2 uses
  %i.akb = load double, ptr %gep1090, align 8, !tbaa !32
  %i.akc = fneg double %i.akb
  %i.akd = call double @llvm.fmuladd.f64(double %i.ahe, double %i.aka, double %i.akc)
  %i.ake = fdiv double %i.akd, %i.agz
  %i.akf = fmul double %i.ahl, %i.ake
  %gep1092 = getelementptr [8 x i8], ptr %invariant.gep1091, i64 %indvars.iv920
  store double %i.akf, ptr %gep1092, align 8, !tbaa !32
  %i.akg = load double, ptr %gep1090, align 8, !tbaa !32
  %i.akh = load double, ptr %gep1088, align 8, !tbaa !32
  %i.aki = fneg double %i.akh
  %i.akj = call double @llvm.fmuladd.f64(double %i.ahj, double %i.akg, double %i.aki)
  %i.akk = fdiv double %i.akj, %i.agz
  %i.akl = fmul double %i.ahl, %i.akk
  %gep1094 = getelementptr [8 x i8], ptr %invariant.gep1093, i64 %indvars.iv920
  store double %i.akl, ptr %gep1094, align 8, !tbaa !32
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, 1 ; 4 uses
  %gep1088.1 = getelementptr [8 x i8], ptr %invariant.gep1087, i64 %indvars.iv.next921 ; 2 uses
  %i.akm = load double, ptr %gep1088.1, align 8, !tbaa !32
  %gep1090.1 = getelementptr [8 x i8], ptr %invariant.gep1089, i64 %indvars.iv.next921 ; 2 uses
  %i.akn = load double, ptr %gep1090.1, align 8, !tbaa !32
  %i.ako = fneg double %i.akn
  %i.akp = call double @llvm.fmuladd.f64(double %i.ahe, double %i.akm, double %i.ako)
  %i.akq = fdiv double %i.akp, %i.agz
  %i.akr = fmul double %i.ahl, %i.akq
  %gep1092.1 = getelementptr [8 x i8], ptr %invariant.gep1091, i64 %indvars.iv.next921
  store double %i.akr, ptr %gep1092.1, align 8, !tbaa !32
  %i.aks = load double, ptr %gep1090.1, align 8, !tbaa !32
  %i.akt = load double, ptr %gep1088.1, align 8, !tbaa !32
  %i.aku = fneg double %i.akt
  %i.akv = call double @llvm.fmuladd.f64(double %i.ahj, double %i.aks, double %i.aku)
  %i.akw = fdiv double %i.akv, %i.agz
  %i.akx = fmul double %i.ahl, %i.akw
  %gep1094.1 = getelementptr [8 x i8], ptr %invariant.gep1093, i64 %indvars.iv.next921
  store double %i.akx, ptr %gep1094.1, align 8, !tbaa !32
  %indvars.iv.next921.1 = add nsw i64 %indvars.iv920, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next921.1 to i32
  %exitcond923.not.1 = icmp eq i32 %i.ahv, %lftr.wideiv.1
  br i1 %exitcond923.not.1, label %.loopexit808, label %scalar.ph1226, !llvm.loop !27

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph862.new, %bb.bh, %bb.bx, %bb.by, %bb.bv
  %.promoted8508701316 = phi i32 [ %.promoted8508701317, %bb.bv ], [ %.promoted8508701317, %bb.by ], [ %storemerge1126, %bb.bh ], [ %.promoted8508701317, %bb.bx ], [ %.promoted8508701317, %.lr.ph862.new ], [ %.promoted8508701317, %.prol.loopexit ]
  %i.aky = phi i32 [ %i.adx, %bb.bv ], [ %i.adx, %bb.by ], [ %i.wb, %bb.bh ], [ %i.adx, %bb.bx ], [ %i.adx, %.lr.ph862.new ], [ %i.adx, %.prol.loopexit ]
  %.promoted850868 = phi i32 [ %.promoted85086910411049, %bb.bv ], [ %.promoted85086910411049, %bb.by ], [ %.promoted850871, %bb.bh ], [ %.promoted85086910411049, %bb.bx ], [ %.promoted85086910411049, %.lr.ph862.new ], [ %.promoted85086910411049, %.prol.loopexit ]
  %.11.ph = phi i32 [ %.1077410431048, %bb.bv ], [ %.1077410431048, %bb.by ], [ %.66601127, %bb.bh ], [ %.1077410431048, %bb.bx ], [ %.1077410431048, %.lr.ph862.new ], [ %.1077410431048, %.prol.loopexit ]
  %i.akz = load i32, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ala
  store i32 %i.aky, ptr %i.alb, align 4, !tbaa !30
  br label %bb.cb

.loopexit808:                                     ; preds = %scalar.ph1226.prol.loopexit, %scalar.ph1226, %middle.block1265, %..loopexit808_crit_edge, %bb.ca
  %.pre-phi964 = phi i64 [ %.pre963, %..loopexit808_crit_edge ], [ %i.ahb, %bb.ca ], [ %i.ahb, %middle.block1265 ], [ %i.ahb, %scalar.ph1226 ], [ %i.ahb, %scalar.ph1226.prol.loopexit ]
  %i.alc = mul i32 %i.agq, %i.x
  %i.ald = sext i32 %i.alc to i64
  %i.ale = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ald
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !32
  %i.alg = mul i32 %i.agq, %i.w
  %i.alh = sext i32 %i.alg to i64
  %i.ali = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.alh
  store double %i.alf, ptr %i.ali, align 8, !tbaa !32
  %i.alj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.agx
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !32
  %i.all = mul nsw i32 %i.agq, %i.n
  %i.alm = add nsw i32 %i.agu, %i.all
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aln
  store double %i.alk, ptr %i.alo, align 8, !tbaa !32
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi964
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !32
  %i.alr = mul i32 %i.agu, %i.w
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.als
  store double %i.alq, ptr %i.alt, align 8, !tbaa !32
  %i.alu = sub nsw i32 0, %.9663851853
  %i.alv = sext i32 %i.agq to i64
  %i.alw = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.alv ; 2 uses
  store i32 %i.alu, ptr %i.alw, align 4, !tbaa !30
  %i.alx = sub nsw i32 0, %.promoted850870
  %i.aly = getelementptr i8, ptr %i.alw, i64 4
  store i32 %i.alx, ptr %i.aly, align 4, !tbaa !30
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit808, %.loopexit
  %.promoted8508701315 = phi i32 [ %.9663851853, %.loopexit808 ], [ %.promoted8508701316, %.loopexit ]
  %i.alz = phi i32 [ %i.agq, %.loopexit808 ], [ %i.akz, %.loopexit ]
  %.promoted850867 = phi i32 [ %.promoted850870, %.loopexit808 ], [ %.promoted850868, %.loopexit ]
  %.8785 = phi i32 [ 2, %.loopexit808 ], [ 1, %.loopexit ]
  %.11783 = phi i32 [ %.9663, %.loopexit808 ], [ %.11.ph, %.loopexit ]
  %i.ama = add nsw i32 %i.alz, %.8785             ; 5 uses
  store i32 %i.ama, ptr %i.h, align 4, !tbaa !30
  %i.amb = load i32, ptr %2, align 4, !tbaa !30   ; 3 uses
  %.not719 = icmp sge i32 %i.ama, %i.amb
  %.pre938 = load i32, ptr %1, align 4, !tbaa !30 ; 4 uses
end_hunk_1
begin_hunk_2_@dlasyf_rook_:bb.a
  %reass.sub892 = sub i32 %i.anc, %i.ane
  %i.anf = add i32 %reass.sub892, 1
  store i32 %i.anf, ptr %i.c, align 4, !tbaa !30
  %i.ang = load i32, ptr %i.h, align 4, !tbaa !30
  %i.anh = add nsw i32 %i.ang, -1
  store i32 %i.anh, ptr %i.d, align 4, !tbaa !30
  %i.ani = add nsw i32 %i.ane, %i.n
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.anj
  %i.anl = add nsw i32 %storemerge727, %i.r
  %i.anm = sext i32 %i.anl to i64
  %i.ann = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.anm
  %i.ano = mul nsw i32 %storemerge727, %i.n
  %i.anp = add nsw i32 %i.ane, %i.ano
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.anq
  call void @dgemm_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b9, ptr noundef %i.ank, ptr noundef nonnull %5, ptr noundef %i.ann, ptr noundef nonnull %8, ptr noundef nonnull @c_b10, ptr noundef %i.anr, ptr noundef nonnull %5) #5
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge883, %bb.cf
  %i.ans = load i32, ptr %i.b, align 4, !tbaa !30 ; 2 uses
  %i.ant = add nsw i32 %storemerge727, %i.ans
  br label %bb.cc, !llvm.loop !29

bb.ch:                                            ; preds = %.split, %bb.cd
  %i.anu = load i32, ptr %i.h, align 4, !tbaa !30
  %i.anv = add nsw i32 %i.anu, -1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.co, %bb.ch
  %i.anw = phi i32 [ %i.apa, %bb.co ], [ %i.anv, %bb.ch ] ; 5 uses
  %i.anx = sext i32 %i.anw to i64
  %i.any = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.anx
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !30 ; 3 uses
  %i.aoa = icmp slt i32 %i.anz, 0                 ; 2 uses
  br i1 %i.aoa, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aob = sub nsw i32 0, %i.anz
  %i.aoc = add nsw i32 %i.anw, -1                 ; 2 uses
  %i.aod = sext i32 %i.aoc to i64
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aod
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !30
  %i.aog = sub nsw i32 0, %i.aof
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.aoh = phi i32 [ %i.aoc, %bb.cj ], [ %i.anw, %bb.ci ] ; 2 uses
  %.1639 = phi i32 [ %i.aog, %bb.cj ], [ 1, %bb.ci ] ; 2 uses
  %.1637 = phi i32 [ %i.aob, %bb.cj ], [ %i.anz, %bb.ci ] ; 2 uses
  %i.aoi = add nsw i32 %i.aoh, -1                 ; 2 uses
  store i32 %i.aoi, ptr %i.g, align 4, !tbaa !30
  %i.aoj = icmp ne i32 %.1637, %i.anw
  %i.aok = icmp sgt i32 %i.aoh, 1
  %or.cond7 = and i1 %i.aoj, %i.aok
  br i1 %or.cond7, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.aol = add nsw i32 %.1637, %i.n
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aom
  %i.aoo = add nsw i32 %i.anw, %i.n
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aop
  call void @dswap_(ptr noundef nonnull %i.g, ptr noundef %i.aon, ptr noundef nonnull %5, ptr noundef %i.aoq, ptr noundef nonnull %5) #5
  %.pre945 = load i32, ptr %i.g, align 4, !tbaa !30
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.aor = phi i32 [ %.pre945, %bb.cl ], [ %i.aoi, %bb.ck ] ; 2 uses
  %i.aos = add nsw i32 %i.aor, 1                  ; 2 uses
  %i.aot = icmp ne i32 %.1639, %i.aos
  %or.cond10 = and i1 %i.aoa, %i.aot
  br i1 %or.cond10, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.aou = add nsw i32 %.1639, %i.n
  %i.aov = sext i32 %i.aou to i64
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aov
  %i.aox = add nsw i32 %i.aos, %i.n
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aoy
  call void @dswap_(ptr noundef nonnull %i.g, ptr noundef %i.aow, ptr noundef nonnull %5, ptr noundef %i.aoz, ptr noundef nonnull %5) #5
  %.pr787 = load i32, ptr %i.g, align 4, !tbaa !30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.apa = phi i32 [ %.pr787, %bb.cn ], [ %i.aor, %bb.cm ] ; 2 uses
  %i.apb = icmp sgt i32 %i.apa, 0
  br i1 %i.apb, label %bb.ci, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.apc = load i32, ptr %i.h, align 4, !tbaa !30
  %i.apd = add nsw i32 %i.apc, -1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.az
  %storemerge728 = phi i32 [ %i.apd, %bb.cp ], [ %i.ue, %bb.az ]
  store i32 %storemerge728, ptr %3, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
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
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !33, !40, !41}
!15 = distinct !{!15, !33, !40}
!16 = distinct !{!16, !42}
!17 = distinct !{!17, !33}
!18 = distinct !{!18, !33}
!19 = distinct !{!19, !42}
!20 = distinct !{!20, !33}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !33, !40, !41}
!27 = distinct !{!27, !33, !40}
!28 = distinct !{!28, !33}
!29 = distinct !{!29, !33}
!30 = !{!5, !5, i64 0}
!31 = !{!"double", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!10}
!35 = !{!11}
!36 = !{!12}
!37 = !{!13, !10, !11}
!38 = !{!13}
!39 = !{!10, !11}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!22}
!44 = !{!23}
!45 = !{!24}
!46 = !{!25, !22, !23}
!47 = !{!25}
!48 = !{!22, !23}
end_hunk_2
