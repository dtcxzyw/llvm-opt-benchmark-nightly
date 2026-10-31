Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_utils_dcrdefs?download=true
inline.NumInlined: 72
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw14convert_to_rgbEv:bb.a
  %wide.load184 = load <8 x i32>, ptr %i.jn, align 4, !tbaa !80
  %i.jo = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load)
  %i.jp = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182)
  %i.jq = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183)
  %i.jr = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184)
  store <8 x i32> %i.jo, ptr %i.jk, align 4, !tbaa !80
  store <8 x i32> %i.jp, ptr %i.jl, align 4, !tbaa !80
  store <8 x i32> %i.jq, ptr %i.jm, align 4, !tbaa !80
  store <8 x i32> %i.jr, ptr %i.jn, align 4, !tbaa !80
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 128 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jk, i64 160 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jk, i64 192 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 224 ; 2 uses
  %wide.load.1 = load <8 x i32>, ptr %i.js, align 4, !tbaa !80
  %wide.load182.1 = load <8 x i32>, ptr %i.jt, align 4, !tbaa !80
  %wide.load183.1 = load <8 x i32>, ptr %i.ju, align 4, !tbaa !80
  %wide.load184.1 = load <8 x i32>, ptr %i.jv, align 4, !tbaa !80
  %i.jw = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.1)
  %i.jx = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.1)
  %i.jy = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.1)
  %i.jz = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.1)
  store <8 x i32> %i.jw, ptr %i.js, align 4, !tbaa !80
  store <8 x i32> %i.jx, ptr %i.jt, align 4, !tbaa !80
  store <8 x i32> %i.jy, ptr %i.ju, align 4, !tbaa !80
  store <8 x i32> %i.jz, ptr %i.jv, align 4, !tbaa !80
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 256 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jk, i64 288 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jk, i64 320 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jk, i64 352 ; 2 uses
  %wide.load.2 = load <8 x i32>, ptr %i.ka, align 4, !tbaa !80
  %wide.load182.2 = load <8 x i32>, ptr %i.kb, align 4, !tbaa !80
  %wide.load183.2 = load <8 x i32>, ptr %i.kc, align 4, !tbaa !80
  %wide.load184.2 = load <8 x i32>, ptr %i.kd, align 4, !tbaa !80
  %i.ke = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.2)
  %i.kf = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.2)
  %i.kg = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.2)
  %i.kh = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.2)
  store <8 x i32> %i.ke, ptr %i.ka, align 4, !tbaa !80
  store <8 x i32> %i.kf, ptr %i.kb, align 4, !tbaa !80
  store <8 x i32> %i.kg, ptr %i.kc, align 4, !tbaa !80
  store <8 x i32> %i.kh, ptr %i.kd, align 4, !tbaa !80
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jk, i64 384 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jk, i64 416 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jk, i64 448 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jk, i64 480 ; 2 uses
  %wide.load.3 = load <8 x i32>, ptr %i.ki, align 4, !tbaa !80
  %wide.load182.3 = load <8 x i32>, ptr %i.kj, align 4, !tbaa !80
  %wide.load183.3 = load <8 x i32>, ptr %i.kk, align 4, !tbaa !80
  %wide.load184.3 = load <8 x i32>, ptr %i.kl, align 4, !tbaa !80
  %i.km = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.3)
  %i.kn = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.3)
  %i.ko = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.3)
  %i.kp = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.3)
  store <8 x i32> %i.km, ptr %i.ki, align 4, !tbaa !80
  store <8 x i32> %i.kn, ptr %i.kj, align 4, !tbaa !80
  store <8 x i32> %i.ko, ptr %i.kk, align 4, !tbaa !80
  store <8 x i32> %i.kp, ptr %i.kl, align 4, !tbaa !80
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jk, i64 512 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jk, i64 544 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jk, i64 576 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jk, i64 608 ; 2 uses
  %wide.load.4 = load <8 x i32>, ptr %i.kq, align 4, !tbaa !80
  %wide.load182.4 = load <8 x i32>, ptr %i.kr, align 4, !tbaa !80
  %wide.load183.4 = load <8 x i32>, ptr %i.ks, align 4, !tbaa !80
  %wide.load184.4 = load <8 x i32>, ptr %i.kt, align 4, !tbaa !80
  %i.ku = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.4)
  %i.kv = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.4)
  %i.kw = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.4)
  %i.kx = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.4)
  store <8 x i32> %i.ku, ptr %i.kq, align 4, !tbaa !80
  store <8 x i32> %i.kv, ptr %i.kr, align 4, !tbaa !80
  store <8 x i32> %i.kw, ptr %i.ks, align 4, !tbaa !80
  store <8 x i32> %i.kx, ptr %i.kt, align 4, !tbaa !80
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jk, i64 640 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jk, i64 672 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.jk, i64 704 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jk, i64 736 ; 2 uses
  %wide.load.5 = load <8 x i32>, ptr %i.ky, align 4, !tbaa !80
  %wide.load182.5 = load <8 x i32>, ptr %i.kz, align 4, !tbaa !80
  %wide.load183.5 = load <8 x i32>, ptr %i.la, align 4, !tbaa !80
  %wide.load184.5 = load <8 x i32>, ptr %i.lb, align 4, !tbaa !80
  %i.lc = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.5)
  %i.ld = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.5)
  %i.le = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.5)
  %i.lf = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.5)
  store <8 x i32> %i.lc, ptr %i.ky, align 4, !tbaa !80
  store <8 x i32> %i.ld, ptr %i.kz, align 4, !tbaa !80
  store <8 x i32> %i.le, ptr %i.la, align 4, !tbaa !80
  store <8 x i32> %i.lf, ptr %i.lb, align 4, !tbaa !80
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jk, i64 768 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jk, i64 800 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.jk, i64 832 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jk, i64 864 ; 2 uses
  %wide.load.6 = load <8 x i32>, ptr %i.lg, align 4, !tbaa !80
  %wide.load182.6 = load <8 x i32>, ptr %i.lh, align 4, !tbaa !80
  %wide.load183.6 = load <8 x i32>, ptr %i.li, align 4, !tbaa !80
  %wide.load184.6 = load <8 x i32>, ptr %i.lj, align 4, !tbaa !80
  %i.lk = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.6)
  %i.ll = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.6)
  %i.lm = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.6)
  %i.ln = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.6)
  store <8 x i32> %i.lk, ptr %i.lg, align 4, !tbaa !80
  store <8 x i32> %i.ll, ptr %i.lh, align 4, !tbaa !80
  store <8 x i32> %i.lm, ptr %i.li, align 4, !tbaa !80
  store <8 x i32> %i.ln, ptr %i.lj, align 4, !tbaa !80
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jk, i64 896 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jk, i64 928 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jk, i64 960 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jk, i64 992 ; 2 uses
  %wide.load.7 = load <8 x i32>, ptr %i.lo, align 4, !tbaa !80
  %wide.load182.7 = load <8 x i32>, ptr %i.lp, align 4, !tbaa !80
  %wide.load183.7 = load <8 x i32>, ptr %i.lq, align 4, !tbaa !80
  %wide.load184.7 = load <8 x i32>, ptr %i.lr, align 4, !tbaa !80
  %i.ls = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.7)
  %i.lt = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load182.7)
  %i.lu = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load183.7)
  %i.lv = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load184.7)
  store <8 x i32> %i.ls, ptr %i.lo, align 4, !tbaa !80
  store <8 x i32> %i.lt, ptr %i.lp, align 4, !tbaa !80
  store <8 x i32> %i.lu, ptr %i.lq, align 4, !tbaa !80
  store <8 x i32> %i.lv, ptr %i.lr, align 4, !tbaa !80
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jk, i64 260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.lw, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 24, i1 false) #13
  %i.lx = icmp ult i32 %i.ap, 724
  br i1 %i.lx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader89
  %i.ly = load ptr, ptr %i.bn, align 8, !tbaa !106
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 300
  %i.ma = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.lz, ptr noundef nonnull dereferenceable(1) %i.at) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader89
  %i.mb = load i32, ptr %i.n, align 4, !tbaa !79  ; 5 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.split, label %_ZNSt6vectorIcSaIcEED2Ev.exit63.split

.split:                                           ; preds = %bb.m
  %i.md = load i32, ptr %i.z, align 8, !tbaa !102
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr [8 x i8], ptr @_ZZN6LibRaw14convert_to_rgbEvE7out_rgb, i64 %i.me
  %i.mg = getelementptr i8, ptr %i.mf, i64 -8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !108 ; 6 uses
  %wide.trip.count139 = zext nneg i32 %i.mb to i64 ; 9 uses
  %i.mi = load <2 x double>, ptr %i.mh, align 8, !tbaa !78 ; 3 uses
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %.pre161 = load double, ptr %.phi.trans.insert160, align 8, !tbaa !78 ; 2 uses
  %min.iters.check = icmp ult i32 %i.mb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.split
  %n.vec = and i64 %wide.trip.count139, 2147483640 ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.mi, <2 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splat187 = shufflevector <2 x double> %i.mi, <2 x double> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert188 = insertelement <8 x double> poison, double %.pre161, i64 0
  %broadcast.splat189 = shufflevector <8 x double> %broadcast.splatinsert188, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph185
  %index191 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body190 ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index191
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index191 ; 3 uses
  %wide.load192 = load <8 x float>, ptr %i.mk, align 4, !tbaa !81
  %i.ml = fpext reassoc nsz arcp contract afn <8 x float> %wide.load192 to <8 x double>
  %i.mm = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat, %i.ml
  %i.mn = fptrunc reassoc nsz arcp contract afn <8 x double> %i.mm to <8 x float>
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load193 = load <8 x float>, ptr %i.mo, align 4, !tbaa !81
  %i.mp = fpext reassoc nsz arcp contract afn <8 x float> %wide.load193 to <8 x double>
  %i.mq = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat187, %i.mp
  %i.mr = fptrunc reassoc nsz arcp contract afn <8 x double> %i.mq to <8 x float>
  %i.ms = fadd reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %wide.load194 = load <8 x float>, ptr %i.mt, align 4, !tbaa !81
  %i.mu = fpext reassoc nsz arcp contract afn <8 x float> %wide.load194 to <8 x double>
  %i.mv = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat189, %i.mu
  %i.mw = fptrunc reassoc nsz arcp contract afn <8 x double> %i.mv to <8 x float>
  %i.mx = fadd reassoc nsz arcp contract afn <8 x float> %i.ms, %i.mw
  store <8 x float> %i.mx, ptr %i.mj, align 16, !tbaa !81
  %index.next195 = add nuw i64 %index191, 8       ; 2 uses
  %i.my = icmp eq i64 %index.next195, %n.vec
  br i1 %i.my, label %middle.block196, label %vector.body190, !llvm.loop !96

middle.block196:                                  ; preds = %vector.body190
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count139
  br i1 %cmp.n, label %._crit_edge100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split, %middle.block196
  %indvars.iv136.ph = phi i64 [ 0, %.split ], [ %n.vec, %middle.block196 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %scalar.ph ], [ %indvars.iv136.ph, %scalar.ph.preheader ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv136
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv136 ; 3 uses
  %i.na = load float, ptr %invariant.gep, align 4, !tbaa !81
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.nb = load float, ptr %gep.1, align 4, !tbaa !81
  %i.nc = insertelement <2 x float> poison, float %i.na, i64 0
  %i.nd = insertelement <2 x float> %i.nc, float %i.nb, i64 1
  %i.ne = fpext <2 x float> %i.nd to <2 x double>
  %i.nf = fmul reassoc nsz arcp contract afn <2 x double> %i.mi, %i.ne
  %i.ng = fptrunc <2 x double> %i.nf to <2 x float>
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.nh = load float, ptr %gep.2, align 4, !tbaa !81
  %i.ni = fpext reassoc nsz arcp contract afn float %i.nh to double
  %i.nj = fmul reassoc nsz arcp contract afn double %.pre161, %i.ni
  %i.nk = fptrunc reassoc nsz arcp contract afn double %i.nj to float
  %i.nl = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.nk, <2 x float> %i.ng)
  store float %i.nl, ptr %i.mz, align 4, !tbaa !81
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %._crit_edge100, label %scalar.ph, !llvm.loop !97

._crit_edge100:                                   ; preds = %scalar.ph, %middle.block196
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.no = load <2 x double>, ptr %i.nn, align 8, !tbaa !78 ; 3 uses
  %.phi.trans.insert165 = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %.pre166 = load double, ptr %.phi.trans.insert165, align 8, !tbaa !78 ; 2 uses
  %min.iters.check198 = icmp ult i32 %i.mb, 8
  br i1 %min.iters.check198, label %scalar.ph197.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %._crit_edge100
  %n.vec200 = and i64 %wide.trip.count139, 2147483640 ; 3 uses
  %broadcast.splat202 = shufflevector <2 x double> %i.no, <2 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splat204 = shufflevector <2 x double> %i.no, <2 x double> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert205 = insertelement <8 x double> poison, double %.pre166, i64 0
  %broadcast.splat206 = shufflevector <8 x double> %broadcast.splatinsert205, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph199
  %index208 = phi i64 [ 0, %vector.ph199 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %index208
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index208 ; 3 uses
  %wide.load209 = load <8 x float>, ptr %i.nq, align 4, !tbaa !81
  %i.nr = fpext reassoc nsz arcp contract afn <8 x float> %wide.load209 to <8 x double>
  %i.ns = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat202, %i.nr
  %i.nt = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ns to <8 x float>
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %wide.load210 = load <8 x float>, ptr %i.nu, align 4, !tbaa !81
  %i.nv = fpext reassoc nsz arcp contract afn <8 x float> %wide.load210 to <8 x double>
  %i.nw = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat204, %i.nv
  %i.nx = fptrunc reassoc nsz arcp contract afn <8 x double> %i.nw to <8 x float>
  %i.ny = fadd reassoc nsz arcp contract afn <8 x float> %i.nt, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %wide.load211 = load <8 x float>, ptr %i.nz, align 4, !tbaa !81
  %i.oa = fpext reassoc nsz arcp contract afn <8 x float> %wide.load211 to <8 x double>
  %i.ob = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat206, %i.oa
  %i.oc = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ob to <8 x float>
  %i.od = fadd reassoc nsz arcp contract afn <8 x float> %i.ny, %i.oc
  store <8 x float> %i.od, ptr %i.np, align 16, !tbaa !81
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.oe = icmp eq i64 %index.next212, %n.vec200
  br i1 %i.oe, label %middle.block213, label %vector.body207, !llvm.loop !98

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %n.vec200, %wide.trip.count139
  br i1 %cmp.n214, label %._crit_edge100.1, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %._crit_edge100, %middle.block213
  %indvars.iv136.1.ph = phi i64 [ 0, %._crit_edge100 ], [ %n.vec200, %middle.block213 ]
  br label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.preheader, %scalar.ph197
  %indvars.iv136.1 = phi i64 [ %indvars.iv.next137.1, %scalar.ph197 ], [ %indvars.iv136.1.ph, %scalar.ph197.preheader ] ; 3 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv136.1
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv136.1 ; 3 uses
  %i.og = load float, ptr %invariant.gep.1, align 4, !tbaa !81
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 16
  %i.oh = load float, ptr %gep.1.1, align 4, !tbaa !81
  %i.oi = insertelement <2 x float> poison, float %i.og, i64 0
  %i.oj = insertelement <2 x float> %i.oi, float %i.oh, i64 1
  %i.ok = fpext <2 x float> %i.oj to <2 x double>
  %i.ol = fmul reassoc nsz arcp contract afn <2 x double> %i.no, %i.ok
  %i.om = fptrunc <2 x double> %i.ol to <2 x float>
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 32
  %i.on = load float, ptr %gep.2.1, align 4, !tbaa !81
  %i.oo = fpext reassoc nsz arcp contract afn float %i.on to double
  %i.op = fmul reassoc nsz arcp contract afn double %.pre166, %i.oo
  %i.oq = fptrunc reassoc nsz arcp contract afn double %i.op to float
  %i.or = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.oq, <2 x float> %i.om)
  store float %i.or, ptr %i.of, align 4, !tbaa !81
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136.1, 1 ; 2 uses
  %exitcond140.1.not = icmp eq i64 %indvars.iv.next137.1, %wide.trip.count139
  br i1 %exitcond140.1.not, label %._crit_edge100.1, label %scalar.ph197, !llvm.loop !99

._crit_edge100.1:                                 ; preds = %scalar.ph197, %middle.block213
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  %i.ou = load <2 x double>, ptr %i.ot, align 8, !tbaa !78 ; 3 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  %.pre171 = load double, ptr %.phi.trans.insert170, align 8, !tbaa !78 ; 2 uses
  %min.iters.check217 = icmp ult i32 %i.mb, 8
  br i1 %min.iters.check217, label %scalar.ph216.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %._crit_edge100.1
  %n.vec219 = and i64 %wide.trip.count139, 2147483640 ; 3 uses
  %broadcast.splat221 = shufflevector <2 x double> %i.ou, <2 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splat223 = shufflevector <2 x double> %i.ou, <2 x double> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert224 = insertelement <8 x double> poison, double %.pre171, i64 0
  %broadcast.splat225 = shufflevector <8 x double> %broadcast.splatinsert224, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph218
  %index227 = phi i64 [ 0, %vector.ph218 ], [ %index.next231, %vector.body226 ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %index227
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index227 ; 3 uses
  %wide.load228 = load <8 x float>, ptr %i.ow, align 4, !tbaa !81
  %i.ox = fpext reassoc nsz arcp contract afn <8 x float> %wide.load228 to <8 x double>
  %i.oy = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat221, %i.ox
  %i.oz = fptrunc reassoc nsz arcp contract afn <8 x double> %i.oy to <8 x float>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load229 = load <8 x float>, ptr %i.pa, align 4, !tbaa !81
  %i.pb = fpext reassoc nsz arcp contract afn <8 x float> %wide.load229 to <8 x double>
  %i.pc = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat223, %i.pb
  %i.pd = fptrunc reassoc nsz arcp contract afn <8 x double> %i.pc to <8 x float>
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %wide.load230 = load <8 x float>, ptr %i.pf, align 4, !tbaa !81
  %i.pg = fpext reassoc nsz arcp contract afn <8 x float> %wide.load230 to <8 x double>
  %i.ph = fmul reassoc nsz arcp contract afn <8 x double> %broadcast.splat225, %i.pg
  %i.pi = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ph to <8 x float>
  %i.pj = fadd reassoc nsz arcp contract afn <8 x float> %i.pe, %i.pi
  store <8 x float> %i.pj, ptr %i.ov, align 16, !tbaa !81
  %index.next231 = add nuw i64 %index227, 8       ; 2 uses
  %i.pk = icmp eq i64 %index.next231, %n.vec219
  br i1 %i.pk, label %middle.block232, label %vector.body226, !llvm.loop !100

middle.block232:                                  ; preds = %vector.body226
  %cmp.n233 = icmp eq i64 %n.vec219, %wide.trip.count139
  br i1 %cmp.n233, label %_ZNSt6vectorIcSaIcEED2Ev.exit63.split, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %._crit_edge100.1, %middle.block232
  %indvars.iv136.2.ph = phi i64 [ 0, %._crit_edge100.1 ], [ %n.vec219, %middle.block232 ]
  br label %scalar.ph216

scalar.ph216:                                     ; preds = %scalar.ph216.preheader, %scalar.ph216
  %indvars.iv136.2 = phi i64 [ %indvars.iv.next137.2, %scalar.ph216 ], [ %indvars.iv136.2.ph, %scalar.ph216.preheader ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv136.2
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv136.2 ; 3 uses
  %i.pm = load float, ptr %invariant.gep.2, align 4, !tbaa !81
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 16
  %i.pn = load float, ptr %gep.1.2, align 4, !tbaa !81
  %i.po = insertelement <2 x float> poison, float %i.pm, i64 0
  %i.pp = insertelement <2 x float> %i.po, float %i.pn, i64 1
  %i.pq = fpext <2 x float> %i.pp to <2 x double>
  %i.pr = fmul reassoc nsz arcp contract afn <2 x double> %i.ou, %i.pq
  %i.ps = fptrunc <2 x double> %i.pr to <2 x float>
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 32
  %i.pt = load float, ptr %gep.2.2, align 4, !tbaa !81
  %i.pu = fpext reassoc nsz arcp contract afn float %i.pt to double
  %i.pv = fmul reassoc nsz arcp contract afn double %.pre171, %i.pu
  %i.pw = fptrunc reassoc nsz arcp contract afn double %i.pv to float
  %i.px = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.pw, <2 x float> %i.ps)
  store float %i.px, ptr %i.pl, align 4, !tbaa !81
  %indvars.iv.next137.2 = add nuw nsw i64 %indvars.iv136.2, 1 ; 2 uses
  %exitcond140.2.not = icmp eq i64 %indvars.iv.next137.2, %wide.trip.count139
  br i1 %exitcond140.2.not, label %_ZNSt6vectorIcSaIcEED2Ev.exit63.split, label %scalar.ph216, !llvm.loop !101

_ZNSt6vectorIcSaIcEED2Ev.exit63.split:            ; preds = %scalar.ph216, %middle.block232, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aq) #16
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit63.split, %bb.g
  %i.py = load ptr, ptr %0, align 8, !tbaa !86
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 120
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a), !call_target !115
  %i.qb = load i32, ptr %i.n, align 4, !tbaa !79
  %i.qc = icmp eq i32 %i.qb, 4
  br i1 %i.qc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 5400
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !102
  %.not59 = icmp eq i32 %i.qe, 0
  br i1 %.not59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 3, ptr %i.n, align 4, !tbaa !79
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.qf = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %.not60 = icmp eq ptr %i.qf, null
  br i1 %.not60, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !75
  %i.qi = call noundef i32 %i.qf(ptr noundef %i.qh, i32 noundef 262144, i32 noundef 1, i32 noundef 2)
  %.not61 = icmp eq i32 %i.qi, 0
  br i1 %.not61, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.qj = call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 6, ptr %i.qj, align 16, !tbaa !77
  call void @__cxa_throw(ptr nonnull %i.qj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12scale_colorsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 34 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = tail call noundef i32 %i.d(ptr noundef %i.f, i32 noundef 512, i32 noundef 0, i32 noundef 2)
  %.not175 = icmp eq i32 %i.g, 0
  br i1 %.not175, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 6, ptr %i.h, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !81
  %i.m = fcmp reassoc nsz arcp contract afn une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 153268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5388 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !139
  %.not176 = icmp eq i32 %i.p, 0
  br i1 %.not176, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5392
  %i.r = load i32, ptr %i.q, align 8, !tbaa !140
  %.not177 = icmp eq i32 %i.r, 0
  br i1 %.not177, label %.thread194, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.t = load float, ptr %i.s, align 4, !tbaa !81 ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.t, -5.000000e-01
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = fcmp reassoc nsz arcp contract afn ugt float %i.t, f0x3727C5AC
  br i1 %i.v, label %.loopexit210.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.x = load i32, ptr %i.w, align 8, !tbaa !141
  %i.y = and i32 %i.x, 131072
  %.not178 = icmp eq i32 %i.y, 0
  br i1 %.not178, label %bb.k, label %.loopexit210.thread

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5244
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5252
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !90
  %i.ag = zext i16 %i.af to i32
  %. = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.ag) ; 3 uses
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !80  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5248
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !80
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !91
  %i.an = zext i16 %i.am to i32
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.an) ; 4 uses
  %i.ap = icmp ult i32 %i.aa, %.
  br i1 %i.ap, label %.lr.ph250, label %.loopexit210

.lr.ph250:                                        ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.av = icmp ult i32 %i.ah, %i.ao
  br i1 %i.av, label %.lr.ph250.split.preheader, label %.loopexit210

.lr.ph250.split.preheader:                        ; preds = %.lr.ph250
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw12scale_colorsEv:bb.a
  %i.ez = add i32 %spec.store.select.us.us242, %i.ey
  store i32 %i.ez, ptr %i.a, align 16, !tbaa !80
  %i.fa = load i32, ptr %i.aw, align 16, !tbaa !80
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.aw, align 16, !tbaa !80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %.0146.in.us.us240.1 = load i16, ptr %i.fc, align 2, !tbaa !94
  %.0146.us.us241.1 = zext i16 %.0146.in.us.us240.1 to i32 ; 2 uses
  %i.fd = icmp slt i32 %i.eu, %.0146.us.us241.1
  br i1 %i.fd, label %.loopexit215.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fe = load i32, ptr %i.ax, align 4, !tbaa !80
  %i.ff = sub i32 %.0146.us.us241.1, %i.fe
  %spec.store.select.us.us242.1 = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %i.fg = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.fh = add i32 %spec.store.select.us.us242.1, %i.fg
  store i32 %i.fh, ptr %i.ay, align 4, !tbaa !80
  %i.fi = load i32, ptr %i.az, align 4, !tbaa !80
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.az, align 4, !tbaa !80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.0146.in.us.us240.2 = load i16, ptr %i.fk, align 2, !tbaa !94
  %.0146.us.us241.2 = zext i16 %.0146.in.us.us240.2 to i32 ; 2 uses
  %i.fl = icmp slt i32 %i.eu, %.0146.us.us241.2
  br i1 %i.fl, label %.loopexit215.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = load i32, ptr %i.ba, align 8, !tbaa !80
  %i.fn = sub i32 %.0146.us.us241.2, %i.fm
  %spec.store.select.us.us242.2 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %i.fo = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.fp = add i32 %spec.store.select.us.us242.2, %i.fo
  store i32 %i.fp, ptr %i.bb, align 8, !tbaa !80
  %i.fq = load i32, ptr %i.bc, align 8, !tbaa !80
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.bc, align 8, !tbaa !80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %.0146.in.us.us240.3 = load i16, ptr %i.fs, align 2, !tbaa !94
  %.0146.us.us241.3 = zext i16 %.0146.in.us.us240.3 to i32 ; 2 uses
  %i.ft = icmp slt i32 %i.eu, %.0146.us.us241.3
  br i1 %i.ft, label %.loopexit215.us, label %.split.us238.loopexit

.split.us238.loopexit:                            ; preds = %bb.p
  %i.fu = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.fv = sub i32 %.0146.us.us241.3, %i.fu
  %spec.store.select.us.us242.3 = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %i.fw = load i32, ptr %i.be, align 4, !tbaa !80
  %i.fx = add i32 %spec.store.select.us.us242.3, %i.fw
  store i32 %i.fx, ptr %i.be, align 4, !tbaa !80
  %i.fy = load i32, ptr %i.bf, align 4, !tbaa !80
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.bf, align 4, !tbaa !80
  br label %.split.us238

.split.us238:                                     ; preds = %bb.l, %bb.m, %.split.us238.loopexit
  %i.ga = phi i32 [ %i.cd, %.split.us238.loopexit ], [ %i.dk, %bb.l ], [ %i.ek, %bb.m ] ; 2 uses
  %i.gb = phi i32 [ 0, %.split.us238.loopexit ], [ %i.dk, %bb.l ], [ %i.ek, %bb.m ] ; 2 uses
  %i.gc = add nuw nsw i32 %.0151217.us231, 1      ; 2 uses
  %i.gd = icmp ult i32 %i.gc, %invariant.umin.us
  br i1 %i.gd, label %.preheader211.us230, label %._crit_edge.us, !llvm.loop !117

.preheader211.lr.ph.split.us.us:                  ; preds = %.preheader213.us
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.gf = load i16, ptr %i.al, align 2, !tbaa !91
  %i.gg = zext i16 %i.gf to i32
  %i.gh = mul nuw i32 %.0150220.us, %i.gg
  %i.gi = load i32, ptr %i.at, align 8, !tbaa !95
  %i.gj = add nsw i32 %i.gi, -25                  ; 4 uses
  %i.gk = zext i32 %i.gh to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gk
  %.not190.us.us.us = icmp eq i32 %i.ca, 0
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted564 = load i32, ptr %i.bg, align 16
  %.promoted567 = load i32, ptr %i.bi, align 4
  %.promoted570 = load i32, ptr %i.bj, align 4
  %.promoted573 = load i32, ptr %i.bl, align 8
  %.promoted576 = load i32, ptr %i.bm, align 8
  %.promoted579 = load i32, ptr %i.bo, align 4
  %.promoted583 = load i32, ptr %i.bp, align 4
  br label %.preheader211.us.us

.preheader211.us.us:                              ; preds = %.split.us.us.us, %.preheader211.lr.ph.split.us.us
  %i.gl = phi i32 [ %i.hq, %.split.us.us.us ], [ %.promoted583, %.preheader211.lr.ph.split.us.us ] ; 3 uses
  %i.gm = phi i32 [ %i.hr, %.split.us.us.us ], [ %.promoted579, %.preheader211.lr.ph.split.us.us ] ; 3 uses
  %i.gn = phi i32 [ %i.hs, %.split.us.us.us ], [ %.promoted576, %.preheader211.lr.ph.split.us.us ] ; 5 uses
  %i.go = phi i32 [ %i.ht, %.split.us.us.us ], [ %.promoted573, %.preheader211.lr.ph.split.us.us ] ; 5 uses
  %i.gp = phi i32 [ %i.hu, %.split.us.us.us ], [ %.promoted570, %.preheader211.lr.ph.split.us.us ] ; 4 uses
  %i.gq = phi i32 [ %i.hv, %.split.us.us.us ], [ %.promoted567, %.preheader211.lr.ph.split.us.us ] ; 4 uses
  %i.gr = phi i32 [ %i.gx, %.split.us.us.us ], [ %.promoted564, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %i.gs = phi i32 [ %i.gw, %.split.us.us.us ], [ %.promoted, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %.split.us.us.us ], [ %indvars.iv289, %.preheader211.lr.ph.split.us.us ] ; 2 uses
  %gep481 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv291 ; 4 uses
  %.0146.in.us.us.us = load i16, ptr %gep481, align 2, !tbaa !94
  %.0146.us.us.us = zext i16 %.0146.in.us.us.us to i32 ; 2 uses
  %i.gt = icmp slt i32 %i.gj, %.0146.us.us.us
  br i1 %i.gt, label %.loopexit215.us.loopexit, label %bb.q

bb.q:                                             ; preds = %.preheader211.us.us
  %i.gu = load i32, ptr %i.au, align 8, !tbaa !80
  %i.gv = sub i32 %.0146.us.us.us, %i.gu
  %spec.store.select.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 0)
  %i.gw = add i32 %spec.store.select.us.us.us, %i.gs ; 5 uses
  %i.gx = add i32 %i.gr, 1                        ; 5 uses
  br i1 %.not190.us.us.us, label %bb.r, label %.split.us.us.us

bb.r:                                             ; preds = %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %gep481, i64 2
  %.0146.in.us.us.us.1 = load i16, ptr %i.gy, align 2, !tbaa !94
  %.0146.us.us.us.1 = zext i16 %.0146.in.us.us.us.1 to i32 ; 2 uses
  %i.gz = icmp slt i32 %i.gj, %.0146.us.us.us.1
  br i1 %i.gz, label %.loopexit215.us.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ha = load i32, ptr %i.bh, align 4, !tbaa !80
  %i.hb = sub i32 %.0146.us.us.us.1, %i.ha
  %spec.store.select.us.us.us.1 = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hc = add i32 %spec.store.select.us.us.us.1, %i.gq ; 3 uses
  %i.hd = add i32 %i.gp, 1                        ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %gep481, i64 4
  %.0146.in.us.us.us.2 = load i16, ptr %i.he, align 2, !tbaa !94
  %.0146.us.us.us.2 = zext i16 %.0146.in.us.us.us.2 to i32 ; 2 uses
  %i.hf = icmp slt i32 %i.gj, %.0146.us.us.us.2
  br i1 %i.hf, label %.loopexit215.us.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hg = load i32, ptr %i.bk, align 8, !tbaa !80
  %i.hh = sub i32 %.0146.us.us.us.2, %i.hg
  %spec.store.select.us.us.us.2 = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 0)
  %i.hi = add i32 %spec.store.select.us.us.us.2, %i.go ; 2 uses
  %i.hj = add i32 %i.gn, 1                        ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %gep481, i64 6
  %.0146.in.us.us.us.3 = load i16, ptr %i.hk, align 2, !tbaa !94
  %.0146.us.us.us.3 = zext i16 %.0146.in.us.us.us.3 to i32 ; 2 uses
  %i.hl = icmp slt i32 %i.gj, %.0146.us.us.us.3
  br i1 %i.hl, label %.loopexit215.us.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hm = load i32, ptr %i.bn, align 4, !tbaa !80
  %i.hn = sub i32 %.0146.us.us.us.3, %i.hm
  %spec.store.select.us.us.us.3 = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %i.ho = add i32 %spec.store.select.us.us.us.3, %i.gm
  %i.hp = add i32 %i.gl, 1
  br label %.split.us.us.us

.split.us.us.us:                                  ; preds = %bb.u, %bb.q
  %i.hq = phi i32 [ %i.hp, %bb.u ], [ %i.gl, %bb.q ] ; 2 uses
  %i.hr = phi i32 [ %i.ho, %bb.u ], [ %i.gm, %bb.q ] ; 2 uses
  %i.hs = phi i32 [ %i.hj, %bb.u ], [ %i.gn, %bb.q ] ; 2 uses
  %i.ht = phi i32 [ %i.hi, %bb.u ], [ %i.go, %bb.q ] ; 2 uses
  %i.hu = phi i32 [ %i.hd, %bb.u ], [ %i.gp, %bb.q ] ; 2 uses
  %i.hv = phi i32 [ %i.hc, %bb.u ], [ %i.gq, %bb.q ] ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.hw = icmp samesign ult i64 %indvars.iv.next292, %i.bz
  br i1 %i.hw, label %.preheader211.us.us, label %._crit_edge.us.loopexit, !llvm.loop !118

._crit_edge.us.loopexit:                          ; preds = %.split.us.us.us
  store i32 %i.gw, ptr %i.a, align 16
  store i32 %i.gx, ptr %i.bg, align 16
  store i32 %i.hv, ptr %i.bi, align 4
  store i32 %i.hu, ptr %i.bj, align 4
  store i32 %i.ht, ptr %i.bl, align 8
  store i32 %i.hs, ptr %i.bm, align 8
  store i32 %i.hr, ptr %i.bo, align 4
  store i32 %i.hq, ptr %i.bp, align 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.split.us238, %._crit_edge.us.loopexit
  %i.hx = phi i32 [ %i.ca, %._crit_edge.us.loopexit ], [ %i.ga, %.split.us238 ]
  %i.hy = phi i32 [ %i.ca, %._crit_edge.us.loopexit ], [ %i.gb, %.split.us238 ]
  %i.hz = add nuw nsw i32 %.0150220.us, 1         ; 2 uses
  %i.ia = icmp ult i32 %i.hz, %invariant.umin219
  br i1 %i.ia, label %.preheader213.us, label %..preheader214_crit_edge.split.us, !llvm.loop !119

.loopexit215.us.loopexit:                         ; preds = %bb.t, %bb.s, %bb.r, %.preheader211.us.us
  %i.ib = phi i32 [ %i.hj, %bb.t ], [ %i.gn, %bb.s ], [ %i.gn, %bb.r ], [ %i.gn, %.preheader211.us.us ]
  %i.ic = phi i32 [ %i.hi, %bb.t ], [ %i.go, %bb.s ], [ %i.go, %bb.r ], [ %i.go, %.preheader211.us.us ]
  %i.id = phi i32 [ %i.hd, %bb.t ], [ %i.hd, %bb.s ], [ %i.gp, %bb.r ], [ %i.gp, %.preheader211.us.us ]
  %i.ie = phi i32 [ %i.hc, %bb.t ], [ %i.hc, %bb.s ], [ %i.gq, %bb.r ], [ %i.gq, %.preheader211.us.us ]
  %i.if = phi i32 [ %i.gx, %bb.t ], [ %i.gx, %bb.s ], [ %i.gx, %bb.r ], [ %i.gr, %.preheader211.us.us ]
  %i.ig = phi i32 [ %i.gw, %bb.t ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %i.gs, %.preheader211.us.us ]
  store i32 %i.ig, ptr %i.a, align 16
  store i32 %i.if, ptr %i.bg, align 16
  store i32 %i.ie, ptr %i.bi, align 4
  store i32 %i.id, ptr %i.bj, align 4
  store i32 %i.ic, ptr %i.bl, align 8
  store i32 %i.ib, ptr %i.bm, align 8
  store i32 %i.gm, ptr %i.bo, align 4
  store i32 %i.gl, ptr %i.bp, align 4
  br label %.loopexit215.us

.loopexit215.us:                                  ; preds = %.preheader211.split.us232, %.preheader211.split.us232.peel, %.preheader211.split.us.us, %bb.n, %bb.o, %bb.p, %.loopexit215.us.loopexit, %..preheader214_crit_edge.split.us
  %i.ih = phi <8 x double> [ %i.bx, %.loopexit215.us.loopexit ], [ %i.il, %..preheader214_crit_edge.split.us ], [ %i.bx, %.preheader211.split.us.us ], [ %i.bx, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ], [ %i.bx, %.preheader211.split.us232.peel ], [ %i.bx, %.preheader211.split.us232 ] ; 2 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 8 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next290 to i32
  %i.ii = icmp ugt i32 %i.ao, %indvars
  br i1 %i.ii, label %.preheader213.us.preheader, label %._crit_edge228, !llvm.loop !120

..preheader214_crit_edge.split.us:                ; preds = %._crit_edge.us
  %i.ij = load <8 x i32>, ptr %i.a, align 16, !tbaa !80
  %i.ik = uitofp <8 x i32> %i.ij to <8 x double>
  %i.il = fadd reassoc nsz arcp contract afn <8 x double> %i.bx, %i.ik
  br label %.loopexit215.us

._crit_edge228:                                   ; preds = %.loopexit215.us, %.lr.ph250.split
  %i.im = phi <8 x double> [ %i.bs, %.lr.ph250.split ], [ %i.ih, %.loopexit215.us ] ; 9 uses
  %i.in = icmp ult i32 %i.bv, %.
  br i1 %i.in, label %.lr.ph250.split, label %.preheader209, !llvm.loop !121

bb.v:                                             ; preds = %.preheader209
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.ip = extractelement <8 x double> %i.im, i64 4
  %i.iq = fdiv reassoc nsz arcp contract afn double %i.ip, %i.bq
  %i.ir = fptrunc reassoc nsz arcp contract afn double %i.iq to float
  store float %i.ir, ptr %i.io, align 4, !tbaa !81
  br label %bb.w

bb.w:                                             ; preds = %.preheader209, %bb.v
  %i.is = extractelement <8 x double> %i.im, i64 1 ; 2 uses
  %i.it = fcmp reassoc nsz arcp contract afn une double %i.is, 0.000000e+00
  br i1 %i.it, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.iu = extractelement <8 x double> %i.im, i64 5
  %i.iv = fdiv reassoc nsz arcp contract afn double %i.iu, %i.is
  %i.iw = fptrunc reassoc nsz arcp contract afn double %i.iv to float
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store float %i.iw, ptr %i.ix, align 8, !tbaa !81
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iy = extractelement <8 x double> %i.im, i64 2 ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn une double %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ja = extractelement <8 x double> %i.im, i64 6
  %i.jb = fdiv reassoc nsz arcp contract afn double %i.ja, %i.iy
  %i.jc = fptrunc reassoc nsz arcp contract afn double %i.jb to float
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 153276
  store float %i.jc, ptr %i.jd, align 4, !tbaa !81
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.je = extractelement <8 x double> %i.im, i64 3 ; 2 uses
  %i.jf = fcmp reassoc nsz arcp contract afn une double %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.ab, label %.loopexit210

bb.ab:                                            ; preds = %bb.aa
  %i.jg = extractelement <8 x double> %i.im, i64 7
  %i.jh = fdiv reassoc nsz arcp contract afn double %i.jg, %i.je
  %i.ji = fptrunc reassoc nsz arcp contract afn double %i.jh to float
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float %i.ji, ptr %i.jj, align 8, !tbaa !81
  br label %.loopexit210

.loopexit210:                                     ; preds = %.lr.ph250, %bb.k, %bb.aa, %bb.ab
  %.phi.trans.insert375 = getelementptr inbounds nuw i8, ptr %0, i64 5392
  %.pre376 = load i32, ptr %.phi.trans.insert375, align 8, !tbaa !140
  %i.jk = icmp eq i32 %.pre376, 0
  br i1 %i.jk, label %.thread194, label %.loopexit210.thread

.loopexit210.thread:                              ; preds = %bb.i, %bb.j, %.loopexit210
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !81
  %i.jn = fcmp reassoc nsz arcp contract afn ogt float %i.jm, f0x3727C5AC
  br i1 %i.jn, label %bb.ac, label %.thread193

bb.ac:                                            ; preds = %.loopexit210.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !92 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 153124
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  br label %.preheader208

.preheader208:                                    ; preds = %bb.ac, %bb.as
  %indvars.iv306 = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next307, %bb.as ] ; 3 uses
  %i.js = shl nuw nsw i64 %indvars.iv306, 2       ; 2 uses
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %indvars.iv306 ; 8 uses
  %i.ju = trunc nuw nsw i64 %i.js to i32
  %i.jv = lshr i32 %i.jp, %i.ju
  %i.jw = and i32 %i.jv, 3
  %i.jx = load i16, ptr %i.jt, align 4, !tbaa !94
  %i.jy = zext i16 %i.jx to i32
  %i.jz = zext nneg i32 %i.jw to i64              ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !80 ; 4 uses
  %i.kc = sub i32 %i.jy, %i.kb                    ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader208
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !80
  %i.kg = add i32 %i.kf, %i.kc
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !80
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader208
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 8 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !80
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !80
  %i.kl = trunc i64 %i.js to i32
  %i.km = or disjoint i32 %i.kl, 2
  %i.kn = lshr i32 %i.jp, %i.km
  %i.ko = and i32 %i.kn, 3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !94
  %i.kr = zext i16 %i.kq to i32
  %i.ks = zext nneg i32 %i.ko to i64              ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !80 ; 4 uses
  %i.kv = sub i32 %i.kr, %i.ku                    ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ks ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !80
  %i.kz = add i32 %i.ky, %i.kv
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !80
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ks ; 7 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 8 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !80
  %i.ld = add i32 %i.lc, 1
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !80
  %i.le = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.lf = load i16, ptr %i.le, align 8, !tbaa !94
  %i.lg = zext i16 %i.lf to i32
  %i.lh = sub i32 %i.lg, %i.kb                    ; 2 uses
  %i.li = icmp sgt i32 %i.lh, 0
  br i1 %i.li, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lj = load i32, ptr %i.kh, align 4, !tbaa !80
  %i.lk = add i32 %i.lj, %i.lh
  store i32 %i.lk, ptr %i.kh, align 4, !tbaa !80
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ll = load i32, ptr %i.ki, align 4, !tbaa !80
  %i.lm = add i32 %i.ll, 1
  store i32 %i.lm, ptr %i.ki, align 4, !tbaa !80
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jt, i64 6
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !94
  %i.lp = zext i16 %i.lo to i32
  %i.lq = sub i32 %i.lp, %i.ku                    ; 2 uses
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ls = load i32, ptr %i.la, align 4, !tbaa !80
  %i.lt = add i32 %i.ls, %i.lq
  store i32 %i.lt, ptr %i.la, align 4, !tbaa !80
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.lu = load i32, ptr %i.lb, align 4, !tbaa !80
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.lb, align 4, !tbaa !80
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.lx = load i16, ptr %i.lw, align 4, !tbaa !94
  %i.ly = zext i16 %i.lx to i32
  %i.lz = sub i32 %i.ly, %i.kb                    ; 2 uses
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mb = load i32, ptr %i.kh, align 4, !tbaa !80
  %i.mc = add i32 %i.mb, %i.lz
  store i32 %i.mc, ptr %i.kh, align 4, !tbaa !80
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.md = load i32, ptr %i.ki, align 4, !tbaa !80
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr %i.ki, align 4, !tbaa !80
  %i.mf = getelementptr inbounds nuw i8, ptr %i.jt, i64 10
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !94
  %i.mh = zext i16 %i.mg to i32
  %i.mi = sub i32 %i.mh, %i.ku                    ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mk = load i32, ptr %i.la, align 4, !tbaa !80
  %i.ml = add i32 %i.mk, %i.mi
  store i32 %i.ml, ptr %i.la, align 4, !tbaa !80
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.mm = load i32, ptr %i.lb, align 4, !tbaa !80
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.lb, align 4, !tbaa !80
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.mp = load i16, ptr %i.mo, align 8, !tbaa !94
  %i.mq = zext i16 %i.mp to i32
  %i.mr = sub i32 %i.mq, %i.kb                    ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mt = load i32, ptr %i.kh, align 4, !tbaa !80
  %i.mu = add i32 %i.mt, %i.mr
  store i32 %i.mu, ptr %i.kh, align 4, !tbaa !80
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.mv = load i32, ptr %i.ki, align 4, !tbaa !80
  %i.mw = add i32 %i.mv, 1
  store i32 %i.mw, ptr %i.ki, align 4, !tbaa !80
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jt, i64 14
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !94
  %i.mz = zext i16 %i.my to i32
  %i.na = sub i32 %i.mz, %i.ku                    ; 2 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nc = load i32, ptr %i.la, align 4, !tbaa !80
  %i.nd = add i32 %i.nc, %i.na
  store i32 %i.nd, ptr %i.la, align 4, !tbaa !80
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ne = load i32, ptr %i.lb, align 4, !tbaa !80
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr %i.lb, align 4, !tbaa !80
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next307, 8
  br i1 %exitcond.not, label %bb.at, label %.preheader208, !llvm.loop !122

bb.at:                                            ; preds = %bb.as
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 192600
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !146
  %.not180 = icmp eq i32 %i.nh, 0
  br i1 %.not180, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 153268
  store <4 x float> splat (float 1.000000e+00), ptr %i.ni, align 4, !tbaa !81
  br label %.thread193

bb.av:                                            ; preds = %bb.at
  %i.nj = load <4 x i32>, ptr %i.a, align 16
  %.fr = freeze <4 x i32> %i.nj                   ; 2 uses
  %i.nk = icmp eq <4 x i32> %.fr, zeroinitializer
  %i.nl = bitcast <4 x i1> %i.nk to i4
  %i.nm = icmp eq i4 %i.nl, 0
  br i1 %i.nm, label %.preheader206, label %bb.aw

.preheader206:                                    ; preds = %bb.av
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.np = uitofp <4 x i32> %.fr to <4 x float>
  %i.nq = load <4 x i32>, ptr %i.no, align 16, !tbaa !80
  %i.nr = uitofp <4 x i32> %i.nq to <4 x float>
  %i.ns = fdiv reassoc nsz arcp contract afn <4 x float> %i.nr, %i.np
  store <4 x float> %i.ns, ptr %i.nn, align 4, !tbaa !81
  br label %.thread193

bb.aw:                                            ; preds = %bb.av
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !81
  %i.nv = fcmp reassoc nsz arcp contract afn ogt float %i.nu, f0x3727C5AC
  br i1 %i.nv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 153268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nw, ptr noundef nonnull align 4 dereferenceable(16) %i.jl, i64 16, i1 false)
  br label %.thread193

bb.ay:                                            ; preds = %bb.aw
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !147
  %i.nz = or i32 %i.ny, 4
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !147
  br label %.thread193

.thread194:                                       ; preds = %bb.g, %.loopexit210
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 192600
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !146
  %.not181195 = icmp eq i32 %i.ob, 0
  br i1 %.not181195, label %.thread193, label %.thread196

.thread196:                                       ; preds = %.thread194
  %i.oc = load i32, ptr %i.o, align 4, !tbaa !139
  %.not183 = icmp eq i32 %i.oc, 0
  br i1 %.not183, label %bb.az, label %.thread193

bb.az:                                            ; preds = %.thread196
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.oe = load float, ptr %i.od, align 4, !tbaa !81 ; 2 uses
  %i.of = fcmp reassoc nsz arcp contract afn ogt float %i.oe, f0x3727C5AC
  br i1 %i.of, label %bb.ba, label %.thread193

bb.ba:                                            ; preds = %bb.az
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.oh = load float, ptr %i.og, align 8, !tbaa !81 ; 2 uses
  %i.oi = fcmp reassoc nsz arcp contract afn ogt float %i.oh, f0x3727C5AC
  br i1 %i.oi, label %bb.bb, label %.thread193

bb.bb:                                            ; preds = %bb.ba
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !81 ; 2 uses
  %i.ol = fcmp reassoc nsz arcp contract afn ogt float %i.ok, f0x3727C5AC
  br i1 %i.ol, label %.preheader205, label %.thread193

.preheader205:                                    ; preds = %bb.bb
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 2 uses
  %i.on = load <2 x float>, ptr %i.om, align 4, !tbaa !81
  %i.oo = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.oh, i64 1
  %i.oq = fdiv reassoc nsz arcp contract afn <2 x float> %i.on, %i.op
  store <2 x float> %i.oq, ptr %i.om, align 4, !tbaa !81
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 153276 ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !81
  %i.ot = fdiv reassoc nsz arcp contract afn float %i.os, %i.ok
  store float %i.ot, ptr %i.or, align 4, !tbaa !81
  br label %.thread193

.thread193:                                       ; preds = %.preheader206, %.preheader205, %bb.ay, %bb.ax, %bb.au, %.loopexit210.thread, %.thread194, %bb.bb, %bb.ba, %bb.az, %.thread196
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 153272 ; 2 uses
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !81 ; 2 uses
  %i.ox = fcmp reassoc nsz arcp contract afn oeq float %i.ow, 0.000000e+00
  br i1 %i.ox, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread193
  store float 1.000000e+00, ptr %i.ov, align 8, !tbaa !81
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread193
  %i.oy = phi float [ 1.000000e+00, %bb.bc ], [ %i.ow, %.thread193 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 153280 ; 2 uses
  %i.pa = load float, ptr %i.oz, align 8, !tbaa !81 ; 2 uses
  %i.pb = fcmp reassoc nsz arcp contract afn oeq float %i.pa, 0.000000e+00
  br i1 %i.pb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !79
  %i.pe = icmp slt i32 %i.pd, 4
  %spec.select482 = select reassoc nsz arcp contract afn i1 %i.pe, float %i.oy, float 1.000000e+00 ; 2 uses
  store float %spec.select482, ptr %i.oz, align 8, !tbaa !81
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.pf = phi float [ %spec.select482, %bb.be ], [ %i.pa, %bb.bd ]
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !148
  %i.pi = fcmp reassoc nsz arcp contract afn une float %i.ph, 0.000000e+00
  br i1 %i.pi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.phi.trans.insert377 = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %.pre378 = load float, ptr %.phi.trans.insert377, align 8, !tbaa !81
  %.phi.trans.insert379 = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %.pre380 = load float, ptr %.phi.trans.insert379, align 8, !tbaa !81
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pj = phi float [ %.pre380, %bb.bg ], [ %i.pf, %bb.bf ] ; 3 uses
  %i.pk = phi float [ %.pre378, %bb.bg ], [ %i.oy, %bb.bf ] ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !149 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !95 ; 2 uses
  %i.pp = sub i32 %i.po, %i.pm                    ; 2 uses
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !95
  %i.pq = load float, ptr %i.ou, align 4, !tbaa !81 ; 3 uses
  %i.pr = fpext reassoc nsz arcp contract afn float %i.pq to double ; 4 uses
  %i.ps = fcmp reassoc nsz arcp contract afn olt double %i.pr, f0x7FEFFFFFFFFFFFFF
  %spec.select = select nsz i1 %i.ps, double %i.pr, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.pt = fcmp reassoc nsz arcp contract afn ogt double %i.pr, 0.000000e+00
  %.1 = select nsz i1 %i.pt, double %i.pr, double 0.000000e+00 ; 2 uses
  %i.pu = fpext reassoc nsz arcp contract afn float %i.pk to double ; 4 uses
  %i.pv = fcmp reassoc nsz arcp contract afn ogt double %spec.select, %i.pu
  %spec.select.1 = select nsz i1 %i.pv, double %i.pu, double %spec.select ; 2 uses
  %i.pw = fcmp reassoc nsz arcp contract afn olt double %.1, %i.pu
  %.1.1 = select nsz i1 %i.pw, double %i.pu, double %.1 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.py = load float, ptr %i.px, align 4, !tbaa !81 ; 3 uses
  %i.pz = fpext reassoc nsz arcp contract afn float %i.py to double ; 4 uses
  %i.qa = fcmp reassoc nsz arcp contract afn ogt double %spec.select.1, %i.pz
  %spec.select.2 = select nsz i1 %i.qa, double %i.pz, double %spec.select.1 ; 2 uses
  %i.qb = fcmp reassoc nsz arcp contract afn olt double %.1.1, %i.pz
  %.1.2 = select nsz i1 %i.qb, double %i.pz, double %.1.1 ; 2 uses
  %i.qc = fpext reassoc nsz arcp contract afn float %i.pj to double ; 4 uses
  %i.qd = fcmp reassoc nsz arcp contract afn ogt double %spec.select.2, %i.qc
  %spec.select.3 = select nsz i1 %i.qd, double %i.qc, double %spec.select.2
  %i.qe = fcmp reassoc nsz arcp contract afn olt double %.1.2, %i.qc
  %.1.3 = select nsz i1 %i.qe, double %i.qc, double %.1.2
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !150
  %.not184 = icmp eq i32 %i.qg, 0
  %spec.select191 = select nsz i1 %.not184, double %spec.select.3, double %.1.3 ; 2 uses
  %i.qh = fcmp reassoc nsz arcp contract afn ule double %spec.select191, 1.000000e-05
  %.not185 = icmp eq i32 %i.po, %i.pm
  %or.cond197 = select i1 %i.qh, i1 true, i1 %.not185
  br i1 %or.cond197, label %.preheader201.preheader, label %.preheader203

.preheader201.preheader:                          ; preds = %bb.bh
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 16, !tbaa !81
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 1.000000e+00, ptr %i.qi, align 8, !tbaa !81
  br label %.loopexit202

.preheader203:                                    ; preds = %bb.bh
  %i.qj = fptrunc reassoc nsz arcp contract afn double %spec.select191 to float
  %i.qk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.qj ; 2 uses
  %invariant.op = fmul reassoc nnan nsz arcp contract afn float %i.qk, 6.553500e+04 ; 4 uses
  %i.ql = uitofp reassoc nsz arcp contract afn i32 %i.pp to float ; 4 uses
  %i.qm = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pq
  %.reass.reass = fdiv reassoc nsz arcp contract afn float %i.qm, %i.ql
  store float %.reass.reass, ptr %i.b, align 16, !tbaa !81
  %i.qn = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pk
  %.reass.reass.1 = fdiv reassoc nsz arcp contract afn float %i.qn, %i.ql
  %i.qo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %.reass.reass.1, ptr %i.qo, align 4, !tbaa !81
  %i.qp = fmul reassoc nsz arcp contract afn float %invariant.op, %i.py
  %.reass.reass.2 = fdiv reassoc nsz arcp contract afn float %i.qp, %i.ql
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.reass.reass.2, ptr %i.qq, align 8, !tbaa !81
  %i.qr = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.qs = insertelement <4 x float> %i.qr, float %i.pk, i64 1
  %i.qt = insertelement <4 x float> %i.qs, float %i.py, i64 2
  %i.qu = insertelement <4 x float> %i.qt, float %i.pj, i64 3
  %i.qv = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qx = fmul reassoc nsz arcp contract afn <4 x float> %i.qu, %i.qw
  store <4 x float> %i.qx, ptr %i.ou, align 4, !tbaa !81
  %i.qy = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pj
  %.reass.reass.3 = fdiv reassoc nsz arcp contract afn float %i.qy, %i.ql
  br label %.loopexit202

.loopexit202:                                     ; preds = %.preheader203, %.preheader201.preheader
  %.reass.reass.3.sink = phi float [ %.reass.reass.3, %.preheader203 ], [ 1.000000e+00, %.preheader201.preheader ]
  %i.qz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.reass.reass.3.sink, ptr %i.qz, align 4, !tbaa !81
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !92 ; 5 uses
  %i.rc = icmp ugt i32 %i.rb, 1000
  br i1 %i.rc, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.loopexit202
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !80 ; 2 uses
  %i.rg = add i32 %i.rf, 1
  %.mask = and i32 %i.rg, -2
  %i.rh = icmp eq i32 %.mask, 2
  br i1 %i.rh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
end_hunk_1
