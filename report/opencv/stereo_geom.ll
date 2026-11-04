Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_geom?download=true
inline.NumInlined: 988
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2cv7fisheye13stereoRectifyERKNS_11_InputArrayES3_S3_S3_RKNS_5Size_IiEES3_S3_RKNS_12_OutputArrayESA_SA_SA_SA_iS7_dd:bb.a
  %i.ju = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.jv = load <2 x double>, ptr %i.fy, align 16, !tbaa !29, !noalias !283 ; 5 uses
  %i.jw = shufflevector <2 x double> %i.jr, <2 x double> %i.jv, <2 x i32> <i32 1, i32 2>
  %i.jx = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jp, i64 1 ; 2 uses
  %i.jz = load double, ptr %i.ge, align 16, !tbaa !29, !noalias !283 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %53, i64 40
  %i.kc = load <2 x double>, ptr %i.gg, align 8, !tbaa !29, !noalias !283 ; 4 uses
  %i.kd = load <2 x double>, ptr %i.dc, align 8, !tbaa !29, !noalias !283 ; 4 uses
  %i.ke = load <2 x double>, ptr %i.df, align 16, !tbaa !29, !noalias !283 ; 4 uses
  %i.kf = insertelement <2 x double> %i.ke, double %i.js, i64 0
  %i.kg = shufflevector <2 x double> %i.jr, <2 x double> %i.jv, <2 x i32> <i32 0, i32 3>
  %i.kh = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.kl = load <2 x double>, ptr %i.cy, align 8, !tbaa !29, !noalias !283 ; 4 uses
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> %i.kd, <2 x i32> <i32 1, i32 3>
  %i.kn = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.kn, <2 x double> zeroinitializer) ; 2 uses
  %i.kp = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ko, <2 x i32> <i32 0, i32 2>
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.km, <2 x double> %i.kp)
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.kf, <2 x double> %i.kq) ; 2 uses
  %i.ks = insertelement <2 x double> %i.kr, double 0.000000e+00, i64 1
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jy, <2 x double> %i.ks) ; 2 uses
  %i.ku = shufflevector <2 x double> %i.kr, <2 x double> %i.kt, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ku, ptr %i.jq, align 8, !tbaa !29, !alias.scope !283
  %i.kv = shufflevector <2 x double> %i.kt, <2 x double> %i.ko, <2 x i32> <i32 1, i32 3>
  %i.kw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.kd, <2 x double> %i.kv)
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.ke, <2 x double> %i.kw)
  store <2 x double> %i.kx, ptr %i.ka, align 8, !tbaa !29, !alias.scope !283
  %i.ky = shufflevector <2 x double> %i.kc, <2 x double> %i.jv, <2 x i32> <i32 1, i32 3>
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> %i.kl, <2 x double> zeroinitializer) ; 2 uses
  %i.la = extractelement <2 x double> %i.kz, i64 1
  %i.lb = call double @llvm.fmuladd.f64(double %i.jz, double %i.js, double %i.la)
  %i.lc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.lb, i64 0
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.jy, <2 x double> %i.lc) ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  store double %i.le, ptr %i.kb, align 8, !tbaa !29, !alias.scope !283
  %i.lf = shufflevector <2 x double> %i.ld, <2 x double> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.lg = load <2 x double>, ptr %i.gn, align 8, !tbaa !29, !noalias !283 ; 4 uses
  %i.lh = shufflevector <2 x double> %i.jr, <2 x double> %i.kc, <2 x i32> <i32 0, i32 3>
  %i.li = insertelement <2 x double> %i.kl, double %i.jp, i64 0
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.li, <2 x double> zeroinitializer)
  %i.lk = shufflevector <2 x double> %i.jr, <2 x double> %i.lg, <2 x i32> <i32 1, i32 2>
  %i.ll = insertelement <2 x double> %i.kd, double %i.js, i64 1
  %i.lm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.ll, <2 x double> %i.lj)
  %i.ln = shufflevector <2 x double> %i.jv, <2 x double> %i.lg, <2 x i32> <i32 0, i32 3>
  %i.lo = insertelement <2 x double> %i.ke, double %i.jt, i64 1
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.lo, <2 x double> %i.lm) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  store double %i.lq, ptr %53, align 8, !tbaa !29, !alias.scope !283
  %i.lr = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.kd, <2 x double> %i.lf)
  %i.lt = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.ke, <2 x double> %i.ls)
  store <2 x double> %i.lu, ptr %i.kk, align 8, !tbaa !29, !alias.scope !283
  %i.lv = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.lw = extractelement <2 x double> %i.lp, i64 1
  store double %i.lw, ptr %i.lv, align 8, !tbaa !29, !alias.scope !283
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.lx = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %54, align 16, !tbaa !27
  %i.ly = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 153, ptr %i.ly, align 16, !tbaa !279
  %i.lz = getelementptr inbounds nuw i8, ptr %54, i64 24 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %54, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %54, i64 48
  %i.md = getelementptr inbounds nuw i8, ptr %54, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lz, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.md, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc188 unwind label %bb.co

.noexc188:                                        ; preds = %bb.ca
  %i.me = getelementptr inbounds nuw i8, ptr %54, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.me, i8 0, i64 80, i1 false)
  %i.mf = load i32, ptr %i.md, align 8, !tbaa !26
  %i.mg = icmp sgt i32 %i.mf, 1
  br i1 %i.mg, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.noexc188
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc189 unwind label %bb.co

.noexc189:                                        ; preds = %bb.cb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #20
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc189
  unreachable

bb.cd:                                            ; preds = %.noexc189
  %i.mh = landingpad { ptr, i32 }
          cleanup
  %i.mi = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i185: ; preds = %bb.cd
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !25
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i186: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.body190

bb.ce:                                            ; preds = %.noexc188
  %i.mn = getelementptr inbounds nuw i8, ptr %54, i64 136
  %i.mo = getelementptr inbounds nuw i8, ptr %54, i64 84
  %i.mp = load <2 x i32>, ptr %i.lx, align 8, !tbaa !27
  %i.mq = load i32, ptr %i.lx, align 8, !tbaa !36
  store <2 x i32> %i.mp, ptr %i.mo, align 4, !tbaa !27
  store i64 8, ptr %i.mn, align 8, !tbaa !41
  store i64 24, ptr %i.me, align 16, !tbaa !41
  store ptr %53, ptr %i.lz, align 8, !tbaa !40
  store ptr %53, ptr %i.ma, align 16, !tbaa !280
  %i.mr = sext i32 %i.mq to i64
  %i.ms = mul nsw i64 %i.mr, 24
  %i.mt = getelementptr inbounds nuw i8, ptr %53, i64 %i.ms ; 2 uses
  store ptr %i.mt, ptr %i.mb, align 8, !tbaa !281
  store ptr %i.mt, ptr %i.mc, align 16, !tbaa !282
  %i.mu = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.cf unwind label %bb.cp

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.mu, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mv = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
          to label %bb.ch unwind label %bb.cp

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.mw = phi i32 [ 6, %bb.cf ], [ %i.mv, %bb.cg ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %i.mw, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ci unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  %i.mx = load double, ptr %53, align 8, !tbaa !29, !noalias !284
  %i.my = load double, ptr %41, align 8, !tbaa !29, !noalias !284
  %i.mz = call double @llvm.fmuladd.f64(double %i.mx, double %i.my, double 0.000000e+00)
  %i.na = load double, ptr %i.jq, align 8, !tbaa !29, !noalias !284
  %i.nb = load double, ptr %i.cz, align 8, !tbaa !29, !noalias !284
  %i.nc = call double @llvm.fmuladd.f64(double %i.na, double %i.nb, double %i.mz)
  %i.nd = load double, ptr %i.ju, align 8, !tbaa !29, !noalias !284
  %i.ne = load double, ptr %i.db, align 8, !tbaa !29, !noalias !284
  %i.nf = call double @llvm.fmuladd.f64(double %i.nd, double %i.ne, double %i.nc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %55, i8 0, i64 72, i1 false), !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %56, i8 0, i64 72, i1 false), !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  %i.ng = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 -1040056314, ptr %57, align 8, !tbaa !30
  store ptr %55, ptr %i.ng, align 8, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 12884901891, ptr %i.nh, align 8, !tbaa !27
  invoke void @_ZN2cv7fisheye42estimateNewCameraMatrixForUndistortRectifyERKNS_11_InputArrayES3_RKNS_5Size_IiEES3_RKNS_12_OutputArrayEdS7_d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %57, double noundef %14, ptr noundef nonnull align 4 dereferenceable(8) %13, double noundef %15)
          to label %bb.cj unwind label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  %i.ni = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i32 -1040056314, ptr %58, align 8, !tbaa !30
  store ptr %56, ptr %i.ni, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw i8, ptr %58, i64 16
  store i64 12884901891, ptr %i.nj, align 8, !tbaa !27
  invoke void @_ZN2cv7fisheye42estimateNewCameraMatrixForUndistortRectifyERKNS_11_InputArrayES3_RKNS_5Size_IiEES3_RKNS_12_OutputArrayEdS7_d(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %58, double noundef %14, ptr noundef nonnull align 4 dereferenceable(8) %13, double noundef %15)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  %i.nk = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !29 ; 2 uses
  %i.nn = load double, ptr %i.nk, align 8, !tbaa !29 ; 2 uses
  %i.no = fcmp olt double %i.nm, %i.nn
  %i.np = select i1 %i.no, double %i.nm, double %i.nn ; 6 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !29 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %55, i64 40
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !29
  %i.nu = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !29 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %56, i64 40
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !29
  %i.ny = and i32 %12, 1024
  %.not = icmp eq i32 %i.ny, 0                    ; 2 uses
  %i.nz = fadd double %i.nr, %i.nv
  %i.oa = fmul double %i.nz, 5.000000e-01         ; 2 uses
  %.sroa.0221.sroa.0.0 = select i1 %.not, double %i.nv, double %i.oa ; 2 uses
  %.sroa.15.sroa.0.0 = select i1 %.not, double %i.nr, double %i.oa ; 3 uses
  %.sroa.0221.sroa.9.0.in = fadd double %i.nt, %i.nx
  %.sroa.0221.sroa.9.0 = fmul double %.sroa.0221.sroa.9.0.in, 5.000000e-01 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #19
  store double %i.np, ptr %60, align 8, !tbaa !29
  %i.ob = getelementptr inbounds nuw i8, ptr %60, i64 8
  store double 0.000000e+00, ptr %i.ob, align 8, !tbaa !29
  %i.oc = getelementptr inbounds nuw i8, ptr %60, i64 16
  store double %.sroa.15.sroa.0.0, ptr %i.oc, align 8, !tbaa !29
  %i.od = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.oe = getelementptr inbounds nuw i8, ptr %60, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.od, i8 0, i64 16, i1 false)
  store double %i.np, ptr %i.oe, align 8, !tbaa !29
  %i.of = getelementptr inbounds nuw i8, ptr %60, i64 48
  store double %.sroa.0221.sroa.9.0, ptr %i.of, align 8, !tbaa !29
  %i.og = getelementptr inbounds nuw i8, ptr %60, i64 56
  %i.oh = getelementptr inbounds nuw i8, ptr %60, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.og, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.oh, align 8, !tbaa !29
  %i.oi = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 4>, ptr %59, align 16, !tbaa !27
  %i.oj = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i32 153, ptr %i.oj, align 16, !tbaa !279
  %i.ok = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %59, i64 32
  %i.om = getelementptr inbounds nuw i8, ptr %59, i64 40
  %i.on = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.oo = getelementptr inbounds nuw i8, ptr %59, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ok, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.oo, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc198 unwind label %bb.ds

bb.cl:                                            ; preds = %bb.br, %bb.bq
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %bb.ef

bb.cm:                                            ; preds = %bb.bt, %bb.bs
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cn:                                            ; preds = %bb.bz, %bb.by, %bb.bw
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #19
  br label %.body

.body:                                            ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.cn
  %.pn119 = phi { ptr, i32 } [ %i.or, %bb.cn ], [ %i.oq, %bb.cm ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  br label %bb.ee

bb.co:                                            ; preds = %bb.cb, %bb.ca
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.cp:                                            ; preds = %bb.ch, %bb.cg, %bb.ce
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #19
  br label %.body190

.body190:                                         ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i186, %bb.cp
  %.pn121 = phi { ptr, i32 } [ %i.ot, %bb.cp ], [ %i.os, %bb.co ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.ed

bb.cq:                                            ; preds = %bb.ci
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  br label %bb.ec

bb.cr:                                            ; preds = %bb.cj
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %bb.ec

.noexc198:                                        ; preds = %bb.ck
  %i.ow = getelementptr inbounds nuw i8, ptr %59, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ow, i8 0, i64 80, i1 false)
  %i.ox = load i32, ptr %i.oo, align 8, !tbaa !26
  %i.oy = icmp sgt i32 %i.ox, 1
  br i1 %i.oy, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %.noexc198
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc199 unwind label %bb.ds

.noexc199:                                        ; preds = %bb.cs
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #20
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %.noexc199
  unreachable

bb.cu:                                            ; preds = %.noexc199
  %i.oz = landingpad { ptr, i32 }
          cleanup
  %i.pa = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195: ; preds = %bb.cu
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !25
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i196: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.body200

bb.cv:                                            ; preds = %.noexc198
  %i.pf = getelementptr inbounds nuw i8, ptr %59, i64 136
  %i.pg = getelementptr inbounds nuw i8, ptr %59, i64 84
  %i.ph = load <2 x i32>, ptr %i.oi, align 8, !tbaa !27
  %i.pi = load i32, ptr %i.oi, align 8, !tbaa !36
  store <2 x i32> %i.ph, ptr %i.pg, align 4, !tbaa !27
  store i64 8, ptr %i.pf, align 8, !tbaa !41
  store i64 32, ptr %i.ow, align 16, !tbaa !41
  store ptr %60, ptr %i.ok, align 8, !tbaa !40
  store ptr %60, ptr %i.ol, align 16, !tbaa !280
  %i.pj = sext i32 %i.pi to i64
  %i.pk = shl nsw i64 %i.pj, 5
  %i.pl = getelementptr inbounds nuw i8, ptr %60, i64 %i.pk ; 2 uses
  store ptr %i.pl, ptr %i.om, align 8, !tbaa !281
  store ptr %i.pl, ptr %i.on, align 16, !tbaa !282
  %i.pm = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.cw unwind label %bb.dt

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.pm, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pn = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef -1)
          to label %bb.cy unwind label %bb.dt

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.po = phi i32 [ 6, %bb.cw ], [ %i.pn, %bb.cx ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %59, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.po, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.cz unwind label %bb.dt

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  %i.pp = fmul double %i.nf, %i.np
  store double %i.np, ptr %62, align 8, !tbaa !29
  %i.pq = getelementptr inbounds nuw i8, ptr %62, i64 8
  store double 0.000000e+00, ptr %i.pq, align 8, !tbaa !29
  %i.pr = getelementptr inbounds nuw i8, ptr %62, i64 16
  store double %.sroa.0221.sroa.0.0, ptr %i.pr, align 8, !tbaa !29
  %i.ps = getelementptr inbounds nuw i8, ptr %62, i64 24
  store double %i.pp, ptr %i.ps, align 8, !tbaa !29
  %i.pt = getelementptr inbounds nuw i8, ptr %62, i64 32
  store double 0.000000e+00, ptr %i.pt, align 8, !tbaa !29
  %i.pu = getelementptr inbounds nuw i8, ptr %62, i64 40
  store double %i.np, ptr %i.pu, align 8, !tbaa !29
  %i.pv = getelementptr inbounds nuw i8, ptr %62, i64 48
  store double %.sroa.0221.sroa.9.0, ptr %i.pv, align 8, !tbaa !29
  %i.pw = getelementptr inbounds nuw i8, ptr %62, i64 56
  %i.px = getelementptr inbounds nuw i8, ptr %62, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pw, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.px, align 8, !tbaa !29
  %i.py = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 4>, ptr %61, align 16, !tbaa !27
  %i.pz = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i32 153, ptr %i.pz, align 16, !tbaa !279
  %i.qa = getelementptr inbounds nuw i8, ptr %61, i64 24 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.qc = getelementptr inbounds nuw i8, ptr %61, i64 40
  %i.qd = getelementptr inbounds nuw i8, ptr %61, i64 48
  %i.qe = getelementptr inbounds nuw i8, ptr %61, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qa, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.qe, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc205 unwind label %bb.du

.noexc205:                                        ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %61, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.qf, i8 0, i64 80, i1 false)
  %i.qg = load i32, ptr %i.qe, align 8, !tbaa !26
  %i.qh = icmp sgt i32 %i.qg, 1
  br i1 %i.qh, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %.noexc205
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %.noexc206 unwind label %bb.du

.noexc206:                                        ; preds = %bb.da
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #20
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %.noexc206
  unreachable

bb.dc:                                            ; preds = %.noexc206
  %i.qi = landingpad { ptr, i32 }
          cleanup
  %i.qj = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202: ; preds = %bb.dc
  %i.qm = load i64, ptr %i.qk, align 8, !tbaa !25
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i203: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %.body207

bb.dd:                                            ; preds = %.noexc205
  %i.qo = getelementptr inbounds nuw i8, ptr %61, i64 136
  %i.qp = getelementptr inbounds nuw i8, ptr %61, i64 84
  %i.qq = load <2 x i32>, ptr %i.py, align 8, !tbaa !27
  %i.qr = load i32, ptr %i.py, align 8, !tbaa !36
  store <2 x i32> %i.qq, ptr %i.qp, align 4, !tbaa !27
  store i64 8, ptr %i.qo, align 8, !tbaa !41
  store i64 32, ptr %i.qf, align 16, !tbaa !41
  store ptr %62, ptr %i.qa, align 8, !tbaa !40
  store ptr %62, ptr %i.qb, align 16, !tbaa !280
  %i.qs = sext i32 %i.qr to i64
  %i.qt = shl nsw i64 %i.qs, 5
  %i.qu = getelementptr inbounds nuw i8, ptr %62, i64 %i.qt ; 2 uses
  store ptr %i.qu, ptr %i.qc, align 8, !tbaa !281
  store ptr %i.qu, ptr %i.qd, align 16, !tbaa !282
  %i.qv = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.de unwind label %bb.dv

bb.de:                                            ; preds = %bb.dd
  br i1 %i.qv, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qw = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef -1)
          to label %bb.dg unwind label %bb.dv

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.qx = phi i32 [ 6, %bb.de ], [ %i.qw, %bb.df ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.qx, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dh unwind label %bb.dv

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  %i.qy = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.di unwind label %bb.dw

bb.di:                                            ; preds = %bb.dh
  br i1 %i.qy, label %bb.dj, label %bb.dz

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  %i.qz = fneg double %.sroa.15.sroa.0.0
  %i.ra = fneg double %.sroa.0221.sroa.9.0
  %i.rb = fsub double %.sroa.15.sroa.0.0, %.sroa.0221.sroa.0.0
  store double 1.000000e+00, ptr %64, align 8, !tbaa !29
  %i.rc = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %64, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rc, i8 0, i64 16, i1 false)
  store double %i.qz, ptr %i.rd, align 8, !tbaa !29
  %i.re = getelementptr inbounds nuw i8, ptr %64, i64 32
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.re, align 8, !tbaa !29
  %i.rf = getelementptr inbounds nuw i8, ptr %64, i64 48
  store double 0.000000e+00, ptr %i.rf, align 8, !tbaa !29
  %i.rg = getelementptr inbounds nuw i8, ptr %64, i64 56
  store double %i.ra, ptr %i.rg, align 8, !tbaa !29
  %i.rh = getelementptr inbounds nuw i8, ptr %64, i64 64
  %i.ri = getelementptr inbounds nuw i8, ptr %64, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i8 0, i64 24, i1 false)
  store double %i.np, ptr %i.ri, align 8, !tbaa !29
  %i.rj = getelementptr inbounds nuw i8, ptr %64, i64 96
  %i.rk = getelementptr inbounds nuw i8, ptr %64, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rj, i8 0, i64 16, i1 false)
  %i.rl = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.rb, i64 1
  %i.rm = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = fdiv <2 x double> %i.rl, %i.rn
  store <2 x double> %i.ro, ptr %i.rk, align 8, !tbaa !29
  %i.rp = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  store <4 x i32> <i32 1124024326, i32 2, i32 4, i32 4>, ptr %63, align 16, !tbaa !27
  %i.rq = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i32 153, ptr %i.rq, align 16, !tbaa !279
  %i.rr = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.ru = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.rv = getelementptr inbounds nuw i8, ptr %63, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rr, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.rv, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc213 unwind label %bb.dx

.noexc213:                                        ; preds = %bb.dj
  %i.rw = getelementptr inbounds nuw i8, ptr %63, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.rw, i8 0, i64 80, i1 false)
  %i.rx = load i32, ptr %i.rv, align 8, !tbaa !26
  %i.ry = icmp sgt i32 %i.rx, 1
  br i1 %i.ry, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %.noexc213
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc214 unwind label %bb.dx

.noexc214:                                        ; preds = %bb.dk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #20
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %.noexc214
  unreachable

bb.dm:                                            ; preds = %.noexc214
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210: ; preds = %bb.dm
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !25
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i211: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.body215

bb.dn:                                            ; preds = %.noexc213
  %i.sf = getelementptr inbounds nuw i8, ptr %63, i64 136
  %i.sg = getelementptr inbounds nuw i8, ptr %63, i64 84
  %i.sh = load <2 x i32>, ptr %i.rp, align 8, !tbaa !27
  %i.si = load i32, ptr %i.rp, align 8, !tbaa !36
  store <2 x i32> %i.sh, ptr %i.sg, align 4, !tbaa !27
  store i64 8, ptr %i.sf, align 8, !tbaa !41
  store i64 32, ptr %i.rw, align 16, !tbaa !41
  store ptr %64, ptr %i.rr, align 8, !tbaa !40
  store ptr %64, ptr %i.rs, align 16, !tbaa !280
  %i.sj = sext i32 %i.si to i64
  %i.sk = shl nsw i64 %i.sj, 5
  %i.sl = getelementptr inbounds nuw i8, ptr %64, i64 %i.sk ; 2 uses
  store ptr %i.sl, ptr %i.rt, align 8, !tbaa !281
  store ptr %i.sl, ptr %i.ru, align 16, !tbaa !282
  %i.sm = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.do unwind label %bb.dy

bb.do:                                            ; preds = %bb.dn
  br i1 %i.sm, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sn = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef -1)
          to label %bb.dq unwind label %bb.dy

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.so = phi i32 [ 6, %bb.do ], [ %i.sn, %bb.dp ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %63, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %i.so, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dr unwind label %bb.dy

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  br label %bb.dz

bb.ds:                                            ; preds = %bb.cs, %bb.ck
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body200

bb.dt:                                            ; preds = %bb.cy, %bb.cx, %bb.cv
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #19
  br label %.body200

.body200:                                         ; preds = %bb.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i196, %bb.dt
  %.pn129 = phi { ptr, i32 } [ %i.sq, %bb.dt ], [ %i.sp, %bb.ds ], [ %i.oz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i196 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %bb.ec

bb.du:                                            ; preds = %bb.da, %bb.cz
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body207

bb.dv:                                            ; preds = %bb.dg, %bb.df, %bb.dd
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #19
  br label %.body207

.body207:                                         ; preds = %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i203, %bb.dv
  %.pn131 = phi { ptr, i32 } [ %i.ss, %bb.dv ], [ %i.sr, %bb.du ], [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  br label %bb.ec

bb.dw:                                            ; preds = %bb.dh
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dx:                                            ; preds = %bb.dk, %bb.dj
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.body215

bb.dy:                                            ; preds = %bb.dq, %bb.dp, %bb.dn
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #19
  br label %.body215

.body215:                                         ; preds = %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i211, %bb.dy
  %.pn133 = phi { ptr, i32 } [ %i.sv, %bb.dy ], [ %i.su, %bb.dx ], [ %i.rz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  br label %bb.ec

bb.dz:                                            ; preds = %bb.dr, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.sw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.sx, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %26)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sy = landingpad { ptr, i32 }
          catch ptr null
  %i.sz = extractvalue { ptr, i32 } %i.sy, 0
  call void @__clang_call_terminate(ptr %i.sz) #23
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  ret void

bb.ec:                                            ; preds = %.body200, %.body207, %bb.dw, %.body215, %bb.cr, %bb.cq
end_hunk_0
