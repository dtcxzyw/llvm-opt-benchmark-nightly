inline.NumInlined: 720
inline.NumDeleted: 168
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo:bb.a
  %i.xj = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xi, <2 x float> %i.xk, <2 x float> %i.xg) ; 2 uses
  %i.xm = fmul float %i.vy, %i.wy
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.wx, float %i.xm)
  %i.xo = tail call noundef float @llvm.fmuladd.f32(float %i.wf, float %i.wk, float %i.xn) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xo, i64 0
  store <2 x float> %i.xl, ptr %i.vf, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit: ; preds = %bb.av, %bb.au
  %i.xp = phi float [ %i.xo, %bb.av ], [ %i.vu, %bb.au ] ; 3 uses
  %i.xq = phi <2 x float> [ %i.xl, %bb.av ], [ %i.vt, %bb.au ] ; 2 uses
  %i.xr = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.xs = trunc nuw i8 %i.xr to i1
  br i1 %i.xs, label %bb.aw, label %.thread619

bb.aw:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
  %i.xt = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.xu = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.xv = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.xw = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %i.xx = extractelement <2 x float> %i.xq, i64 1 ; 3 uses
  %i.xy = fmul float %i.xx, %i.xw
  %i.xz = extractelement <2 x float> %i.xq, i64 0 ; 3 uses
  %i.ya = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.xz, float %i.xy)
  %i.yb = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.yc = tail call noundef float @llvm.fmuladd.f32(float %i.yb, float %i.xp, float %i.ya)
  %i.yd = load float, ptr %i.cp, align 8, !tbaa !51
  %i.ye = load float, ptr %i.cq, align 4, !tbaa !51
  %i.yf = load float, ptr %i.cr, align 8, !tbaa !51
  %i.yg = fmul float %i.yc, %i.yf                 ; 2 uses
  %i.yh = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.yi = load float, ptr %i.ck, align 4, !tbaa !51
  %i.yj = extractelement <2 x float> %i.yh, i64 0
  %i.yk = fmul float %i.yj, %i.xx
  %i.yl = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.ym = load float, ptr %i.cj, align 4, !tbaa !51
  %i.yn = extractelement <2 x float> %i.yl, i64 0
  %i.yo = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.xz, float %i.yk)
  %i.yp = tail call noundef float @llvm.fmuladd.f32(float %i.xt, float %i.xp, float %i.yo)
  %i.yq = fmul float %i.xx, %i.yi
  %i.yr = tail call float @llvm.fmuladd.f32(float %i.ym, float %i.xz, float %i.yq)
  %i.ys = tail call noundef float @llvm.fmuladd.f32(float %i.xu, float %i.xp, float %i.yr)
  %i.yt = fmul float %i.yp, %i.yd                 ; 2 uses
  %i.yu = fmul float %i.ys, %i.ye                 ; 2 uses
  %i.yv = shufflevector <2 x float> %i.yl, <2 x float> %i.yh, <2 x i32> <i32 1, i32 3>
  %i.yw = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yy = fmul <2 x float> %i.yv, %i.yx
  %i.yz = shufflevector <2 x float> %i.yl, <2 x float> %i.yh, <2 x i32> <i32 0, i32 2>
  %i.za = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.zb = shufflevector <2 x float> %i.za, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yz, <2 x float> %i.zb, <2 x float> %i.yy)
  %i.zd = insertelement <2 x float> poison, float %i.xv, i64 0
  %i.ze = insertelement <2 x float> %i.zd, float %i.xw, i64 1
  %i.zf = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ze, <2 x float> %i.zg, <2 x float> %i.zc)
  %i.zi = fmul float %i.xu, %i.yu
  %i.zj = tail call float @llvm.fmuladd.f32(float %i.xt, float %i.yt, float %i.zi)
  %i.zk = tail call noundef float @llvm.fmuladd.f32(float %i.yb, float %i.yg, float %i.zj)
  %.sroa.3.12.vec.insert.i10.i430 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zk, i64 0
  store <2 x float> %i.zh, ptr %i.vf, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i430, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  br label %.thread619

.thread619:                                       ; preds = %bb.aw, %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
  %i.zl = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.vf, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %.thread619
  %i.zm = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.zn = trunc nuw i8 %i.zm to i1
  br i1 %i.zn, label %bb.ay, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436

bb.ay:                                            ; preds = %bb.ax
  %i.zo = load float, ptr %i.uj, align 4, !tbaa !51 ; 3 uses
  %i.zp = load float, ptr %i.uk, align 8, !tbaa !51 ; 3 uses
  %i.zq = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.zr = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.zs = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.zt = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.zu = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.zv = fmul float %i.zp, %i.zu
  %i.zw = tail call float @llvm.fmuladd.f32(float %i.zt, float %i.zo, float %i.zv)
  %i.zx = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.zy = tail call noundef float @llvm.fmuladd.f32(float %i.zx, float %i.zr, float %i.zw)
  %i.zz = load float, ptr %i.cd, align 8, !tbaa !51
  %i.aaa = load float, ptr %i.ce, align 4, !tbaa !51
  %i.aab = load float, ptr %i.cf, align 8, !tbaa !51
  %i.aac = fmul float %i.zy, %i.aab               ; 2 uses
  %i.aad = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.aae = load float, ptr %i.by, align 4, !tbaa !51
  %i.aaf = extractelement <2 x float> %i.aad, i64 0
  %i.aag = fmul float %i.aaf, %i.zp
  %i.aah = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.aai = load float, ptr %i.bx, align 4, !tbaa !51
  %i.aaj = extractelement <2 x float> %i.aah, i64 0
  %i.aak = tail call float @llvm.fmuladd.f32(float %i.aaj, float %i.zo, float %i.aag)
  %i.aal = tail call noundef float @llvm.fmuladd.f32(float %i.zq, float %i.zr, float %i.aak)
  %i.aam = fmul float %i.zp, %i.aae
  %i.aan = tail call float @llvm.fmuladd.f32(float %i.aai, float %i.zo, float %i.aam)
  %i.aao = tail call noundef float @llvm.fmuladd.f32(float %i.zs, float %i.zr, float %i.aan)
  %i.aap = fmul float %i.aal, %i.zz               ; 2 uses
  %i.aaq = fmul float %i.aao, %i.aaa              ; 2 uses
  %i.aar = shufflevector <2 x float> %i.aah, <2 x float> %i.aad, <2 x i32> <i32 1, i32 3>
  %i.aas = insertelement <2 x float> poison, float %i.aaq, i64 0
  %i.aat = shufflevector <2 x float> %i.aas, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aau = fmul <2 x float> %i.aar, %i.aat
  %i.aav = shufflevector <2 x float> %i.aah, <2 x float> %i.aad, <2 x i32> <i32 0, i32 2>
  %i.aaw = insertelement <2 x float> poison, float %i.aap, i64 0
  %i.aax = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aav, <2 x float> %i.aax, <2 x float> %i.aau)
  %i.aaz = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.aba = insertelement <2 x float> %i.aaz, float %i.zu, i64 1
  %i.abb = insertelement <2 x float> poison, float %i.aac, i64 0
  %i.abc = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.abc, <2 x float> %i.aay)
  %i.abe = fmul float %i.zs, %i.aaq
  %i.abf = tail call float @llvm.fmuladd.f32(float %i.zq, float %i.aap, float %i.abe)
  %i.abg = tail call noundef float @llvm.fmuladd.f32(float %i.zx, float %i.aac, float %i.abf)
  %.sroa.3.12.vec.insert.i10.i435 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.abg, i64 0
  store <2 x float> %i.abd, ptr %i.uj, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i435, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436: ; preds = %bb.ay, %bb.ax
  %i.abh = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %bb.az, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441

bb.az:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436
  %i.abj = load float, ptr %i.uj, align 4, !tbaa !51 ; 3 uses
  %i.abk = load float, ptr %i.uk, align 8, !tbaa !51 ; 3 uses
  %i.abl = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.abm = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.abn = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.abo = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.abp = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %i.abq = fmul float %i.abk, %i.abp
  %i.abr = tail call float @llvm.fmuladd.f32(float %i.abo, float %i.abj, float %i.abq)
  %i.abs = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.abt = tail call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.abm, float %i.abr)
  %i.abu = load float, ptr %i.cp, align 8, !tbaa !51
  %i.abv = load float, ptr %i.cq, align 4, !tbaa !51
  %i.abw = load float, ptr %i.cr, align 8, !tbaa !51
  %i.abx = fmul float %i.abt, %i.abw              ; 2 uses
  %i.aby = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.abz = load float, ptr %i.ck, align 4, !tbaa !51
  %i.aca = extractelement <2 x float> %i.aby, i64 0
  %i.acb = fmul float %i.aca, %i.abk
  %i.acc = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.acd = load float, ptr %i.cj, align 4, !tbaa !51
  %i.ace = extractelement <2 x float> %i.acc, i64 0
  %i.acf = tail call float @llvm.fmuladd.f32(float %i.ace, float %i.abj, float %i.acb)
  %i.acg = tail call noundef float @llvm.fmuladd.f32(float %i.abl, float %i.abm, float %i.acf)
  %i.ach = fmul float %i.abk, %i.abz
  %i.aci = tail call float @llvm.fmuladd.f32(float %i.acd, float %i.abj, float %i.ach)
  %i.acj = tail call noundef float @llvm.fmuladd.f32(float %i.abn, float %i.abm, float %i.aci)
  %i.ack = fmul float %i.acg, %i.abu              ; 2 uses
  %i.acl = fmul float %i.acj, %i.abv              ; 2 uses
  %i.acm = shufflevector <2 x float> %i.acc, <2 x float> %i.aby, <2 x i32> <i32 1, i32 3>
  %i.acn = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.aco = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acp = fmul <2 x float> %i.acm, %i.aco
  %i.acq = shufflevector <2 x float> %i.acc, <2 x float> %i.aby, <2 x i32> <i32 0, i32 2>
  %i.acr = insertelement <2 x float> poison, float %i.ack, i64 0
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.act = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acq, <2 x float> %i.acs, <2 x float> %i.acp)
  %i.acu = insertelement <2 x float> poison, float %i.abo, i64 0
  %i.acv = insertelement <2 x float> %i.acu, float %i.abp, i64 1
  %i.acw = insertelement <2 x float> poison, float %i.abx, i64 0
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acv, <2 x float> %i.acx, <2 x float> %i.act)
  %i.acz = fmul float %i.abn, %i.acl
  %i.ada = tail call float @llvm.fmuladd.f32(float %i.abl, float %i.ack, float %i.acz)
  %i.adb = tail call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.abx, float %i.ada)
  %.sroa.3.12.vec.insert.i10.i440 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adb, i64 0
  store <2 x float> %i.acy, ptr %i.uj, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i440, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441: ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436, %bb.az
  %i.adc = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.uj, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.ct, i64 124
  store i8 1, ptr %i.add, align 4, !tbaa !103
  br label %bb.bl

bb.ba:                                            ; preds = %bb.as
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ct, i64 156 ; 4 uses
  %i.adf = extractelement <2 x float> %i.ua, i64 1 ; 5 uses
  %i.adg = tail call noundef float @llvm.fabs.f32(float %i.adf)
  %i.adh = fcmp ogt float %i.adg, f0x3F3504F3
  br i1 %i.adh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.adi = fmul nnan float %i.adf, %i.adf
  %i.adj = extractelement <2 x float> %i.ua, i64 0 ; 3 uses
  %5 = fneg float %i.adf
  %6 = fneg float %i.tz
  %7 = tail call float @llvm.fmuladd.f32(float %i.adj, float %i.adj, float %i.adi) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %7)
  %8 = fdiv float 1.000000e+00, %sqrt.i           ; 3 uses
  %i.adk = fmul float %8, %5                      ; 2 uses
  %9 = fmul float %i.adj, %8                      ; 2 uses
  %i.adl = insertelement <2 x float> poison, float %8, i64 0
  %i.adm = insertelement <2 x float> %i.adl, float %9, i64 1
  %i.adn = insertelement <2 x float> poison, float %7, i64 0
  %i.ado = insertelement <2 x float> %i.adn, float %6, i64 1
  %i.adp = fmul <2 x float> %i.adm, %i.ado
  %i.adq = fmul float %i.tz, %i.adk
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.bc:                                            ; preds = %bb.ba
  %10 = extractelement <2 x float> %i.ua, i64 0
  %foldExtExtBinop662 = fmul <2 x float> %i.ua, %i.ua
  %i.adr = extractelement <2 x float> %foldExtExtBinop662, i64 0
  %i.ads = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.tz, float %i.adr) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ads)
  %i.adt = fdiv float 1.000000e+00, %sqrt46.i     ; 3 uses
  %11 = fneg float %10
  %12 = fmul float %i.tz, %i.adt                  ; 2 uses
  %13 = fmul float %i.adt, %11                    ; 2 uses
  %i.adu = fneg float %i.adf
  %i.adv = insertelement <2 x float> %i.ua, float %i.adu, i64 0
  %14 = insertelement <2 x float> poison, float %12, i64 0
  %15 = insertelement <2 x float> %14, float %13, i64 1
  %16 = fmul <2 x float> %i.adv, %15
  %17 = fmul float %i.ads, %i.adt
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.bb, %bb.bc
  %.sink631 = phi float [ 0.000000e+00, %bb.bb ], [ %13, %bb.bc ]
  %.sink630 = phi float [ %i.adk, %bb.bb ], [ %12, %bb.bc ]
  %.sink = phi float [ %9, %bb.bb ], [ 0.000000e+00, %bb.bc ]
  %.sink.i = phi float [ %i.adq, %bb.bb ], [ %17, %bb.bc ] ; 5 uses
  %i.adw = phi <2 x float> [ %i.adp, %bb.bb ], [ %16, %bb.bc ] ; 4 uses
  store float %.sink631, ptr %i.uj, align 4, !tbaa !51
  store float %.sink630, ptr %i.uk, align 8, !tbaa !51
  store float %.sink, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ct, i64 152
  store float 0.000000e+00, ptr %i.adx, align 8, !tbaa !51
  store <2 x float> %i.adw, ptr %i.ade, align 4, !tbaa !51
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ct, i64 164 ; 3 uses
  store float %.sink.i, ptr %i.ady, align 4, !tbaa !51
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ct, i64 168
  store float 0.000000e+00, ptr %i.adz, align 8, !tbaa !51
  %i.aea = and i32 %i.up, 16
  %.not298 = icmp eq i32 %i.aea, 0
  br i1 %.not298, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.aeb = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.aec = trunc nuw i8 %i.aeb to i1
  br i1 %i.aec, label %bb.be, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446

bb.be:                                            ; preds = %bb.bd
  %i.aed = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.aee = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.aef = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.aeg = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.aeh = extractelement <2 x float> %i.adw, i64 1 ; 3 uses
  %i.aei = fmul float %i.aeh, %i.aeg
  %i.aej = extractelement <2 x float> %i.adw, i64 0 ; 3 uses
  %i.aek = tail call float @llvm.fmuladd.f32(float %i.aef, float %i.aej, float %i.aei)
  %i.ael = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.aem = tail call noundef float @llvm.fmuladd.f32(float %i.ael, float %.sink.i, float %i.aek)
  %i.aen = load float, ptr %i.cd, align 8, !tbaa !51
  %i.aeo = load float, ptr %i.ce, align 4, !tbaa !51
  %i.aep = load float, ptr %i.cf, align 8, !tbaa !51
  %i.aeq = fmul float %i.aem, %i.aep              ; 2 uses
  %i.aer = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.aes = load float, ptr %i.by, align 4, !tbaa !51
  %i.aet = extractelement <2 x float> %i.aer, i64 0
  %i.aeu = fmul float %i.aeh, %i.aet
  %i.aev = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.aew = load float, ptr %i.bx, align 4, !tbaa !51
  %i.aex = extractelement <2 x float> %i.aev, i64 0
  %i.aey = tail call float @llvm.fmuladd.f32(float %i.aex, float %i.aej, float %i.aeu)
  %i.aez = tail call noundef float @llvm.fmuladd.f32(float %i.aed, float %.sink.i, float %i.aey)
  %i.afa = fmul float %i.aeh, %i.aes
  %i.afb = tail call float @llvm.fmuladd.f32(float %i.aew, float %i.aej, float %i.afa)
  %i.afc = tail call noundef float @llvm.fmuladd.f32(float %i.aee, float %.sink.i, float %i.afb)
  %i.afd = fmul float %i.aez, %i.aen              ; 2 uses
  %i.afe = fmul float %i.afc, %i.aeo              ; 2 uses
  %i.aff = shufflevector <2 x float> %i.aev, <2 x float> %i.aer, <2 x i32> <i32 1, i32 3>
  %i.afg = insertelement <2 x float> poison, float %i.afe, i64 0
  %i.afh = shufflevector <2 x float> %i.afg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afi = fmul <2 x float> %i.aff, %i.afh
  %i.afj = shufflevector <2 x float> %i.aev, <2 x float> %i.aer, <2 x i32> <i32 0, i32 2>
  %i.afk = insertelement <2 x float> poison, float %i.afd, i64 0
  %i.afl = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afj, <2 x float> %i.afl, <2 x float> %i.afi)
  %i.afn = insertelement <2 x float> poison, float %i.aef, i64 0
  %i.afo = insertelement <2 x float> %i.afn, float %i.aeg, i64 1
  %i.afp = insertelement <2 x float> poison, float %i.aeq, i64 0
  %i.afq = shufflevector <2 x float> %i.afp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afo, <2 x float> %i.afq, <2 x float> %i.afm) ; 2 uses
  %i.afs = fmul float %i.aee, %i.afe
  %i.aft = tail call float @llvm.fmuladd.f32(float %i.aed, float %i.afd, float %i.afs)
  %i.afu = tail call noundef float @llvm.fmuladd.f32(float %i.ael, float %i.aeq, float %i.aft) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i445 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afu, i64 0
  store <2 x float> %i.afr, ptr %i.ade, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i445, ptr %i.ady, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446: ; preds = %bb.be, %bb.bd
  %i.afv = phi float [ %i.afu, %bb.be ], [ %.sink.i, %bb.bd ] ; 3 uses
  %i.afw = phi <2 x float> [ %i.afr, %bb.be ], [ %i.adw, %bb.bd ] ; 2 uses
  %i.afx = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.afy = trunc nuw i8 %i.afx to i1
  br i1 %i.afy, label %bb.bf, label %.thread621

bb.bf:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446
  %i.afz = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.aga = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.agb = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.agc = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %i.agd = extractelement <2 x float> %i.afw, i64 1 ; 3 uses
  %i.age = fmul float %i.agd, %i.agc
  %i.agf = extractelement <2 x float> %i.afw, i64 0 ; 3 uses
  %i.agg = tail call float @llvm.fmuladd.f32(float %i.agb, float %i.agf, float %i.age)
  %i.agh = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.agi = tail call noundef float @llvm.fmuladd.f32(float %i.agh, float %i.afv, float %i.agg)
  %i.agj = load float, ptr %i.cp, align 8, !tbaa !51
  %i.agk = load float, ptr %i.cq, align 4, !tbaa !51
  %i.agl = load float, ptr %i.cr, align 8, !tbaa !51
  %i.agm = fmul float %i.agi, %i.agl              ; 2 uses
  %i.agn = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.ago = load float, ptr %i.ck, align 4, !tbaa !51
  %i.agp = extractelement <2 x float> %i.agn, i64 0
  %i.agq = fmul float %i.agp, %i.agd
  %i.agr = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.ags = load float, ptr %i.cj, align 4, !tbaa !51
  %i.agt = extractelement <2 x float> %i.agr, i64 0
  %i.agu = tail call float @llvm.fmuladd.f32(float %i.agt, float %i.agf, float %i.agq)
  %i.agv = tail call noundef float @llvm.fmuladd.f32(float %i.afz, float %i.afv, float %i.agu)
  %i.agw = fmul float %i.agd, %i.ago
  %i.agx = tail call float @llvm.fmuladd.f32(float %i.ags, float %i.agf, float %i.agw)
  %i.agy = tail call noundef float @llvm.fmuladd.f32(float %i.aga, float %i.afv, float %i.agx)
  %i.agz = fmul float %i.agv, %i.agj              ; 2 uses
  %i.aha = fmul float %i.agy, %i.agk              ; 2 uses
  %i.ahb = shufflevector <2 x float> %i.agr, <2 x float> %i.agn, <2 x i32> <i32 1, i32 3>
  %i.ahc = insertelement <2 x float> poison, float %i.aha, i64 0
  %i.ahd = shufflevector <2 x float> %i.ahc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahe = fmul <2 x float> %i.ahb, %i.ahd
  %i.ahf = shufflevector <2 x float> %i.agr, <2 x float> %i.agn, <2 x i32> <i32 0, i32 2>
  %i.ahg = insertelement <2 x float> poison, float %i.agz, i64 0
  %i.ahh = shufflevector <2 x float> %i.ahg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahf, <2 x float> %i.ahh, <2 x float> %i.ahe)
  %i.ahj = insertelement <2 x float> poison, float %i.agb, i64 0
  %i.ahk = insertelement <2 x float> %i.ahj, float %i.agc, i64 1
  %i.ahl = insertelement <2 x float> poison, float %i.agm, i64 0
  %i.ahm = shufflevector <2 x float> %i.ahl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahk, <2 x float> %i.ahm, <2 x float> %i.ahi)
  %i.aho = fmul float %i.aga, %i.aha
  %i.ahp = tail call float @llvm.fmuladd.f32(float %i.afz, float %i.agz, float %i.aho)
  %i.ahq = tail call noundef float @llvm.fmuladd.f32(float %i.agh, float %i.agm, float %i.ahp)
  %.sroa.3.12.vec.insert.i10.i450 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ahq, i64 0
  store <2 x float> %i.ahn, ptr %i.ade, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i450, ptr %i.ady, align 4, !tbaa !73
  br label %.thread621

.thread621:                                       ; preds = %bb.bf, %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446
  %i.ahr = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ade, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %.thread621
  %i.ahs = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.aht = trunc nuw i8 %i.ahs to i1
  br i1 %i.aht, label %bb.bh, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456

bb.bh:                                            ; preds = %bb.bg
  %i.ahu = load float, ptr %i.uj, align 4, !tbaa !51 ; 3 uses
  %i.ahv = load float, ptr %i.uk, align 8, !tbaa !51 ; 3 uses
  %i.ahw = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.ahx = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.ahy = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.ahz = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.aia = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.aib = fmul float %i.ahv, %i.aia
  %i.aic = tail call float @llvm.fmuladd.f32(float %i.ahz, float %i.ahu, float %i.aib)
  %i.aid = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.aie = tail call noundef float @llvm.fmuladd.f32(float %i.aid, float %i.ahx, float %i.aic)
  %i.aif = load float, ptr %i.cd, align 8, !tbaa !51
  %i.aig = load float, ptr %i.ce, align 4, !tbaa !51
  %i.aih = load float, ptr %i.cf, align 8, !tbaa !51
  %i.aii = fmul float %i.aie, %i.aih              ; 2 uses
  %i.aij = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.aik = load float, ptr %i.by, align 4, !tbaa !51
  %i.ail = extractelement <2 x float> %i.aij, i64 0
  %i.aim = fmul float %i.ail, %i.ahv
  %i.ain = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.aio = load float, ptr %i.bx, align 4, !tbaa !51
  %i.aip = extractelement <2 x float> %i.ain, i64 0
  %i.aiq = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.ahu, float %i.aim)
  %i.air = tail call noundef float @llvm.fmuladd.f32(float %i.ahw, float %i.ahx, float %i.aiq)
  %i.ais = fmul float %i.ahv, %i.aik
  %i.ait = tail call float @llvm.fmuladd.f32(float %i.aio, float %i.ahu, float %i.ais)
  %i.aiu = tail call noundef float @llvm.fmuladd.f32(float %i.ahy, float %i.ahx, float %i.ait)
  %i.aiv = fmul float %i.air, %i.aif              ; 2 uses
  %i.aiw = fmul float %i.aiu, %i.aig              ; 2 uses
  %i.aix = shufflevector <2 x float> %i.ain, <2 x float> %i.aij, <2 x i32> <i32 1, i32 3>
  %i.aiy = insertelement <2 x float> poison, float %i.aiw, i64 0
  %i.aiz = shufflevector <2 x float> %i.aiy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aja = fmul <2 x float> %i.aix, %i.aiz
  %i.ajb = shufflevector <2 x float> %i.ain, <2 x float> %i.aij, <2 x i32> <i32 0, i32 2>
  %i.ajc = insertelement <2 x float> poison, float %i.aiv, i64 0
  %i.ajd = shufflevector <2 x float> %i.ajc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aje = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajb, <2 x float> %i.ajd, <2 x float> %i.aja)
  %i.ajf = insertelement <2 x float> poison, float %i.ahz, i64 0
  %i.ajg = insertelement <2 x float> %i.ajf, float %i.aia, i64 1
  %i.ajh = insertelement <2 x float> poison, float %i.aii, i64 0
  %i.aji = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajg, <2 x float> %i.aji, <2 x float> %i.aje)
  %i.ajk = fmul float %i.ahy, %i.aiw
  %i.ajl = tail call float @llvm.fmuladd.f32(float %i.ahw, float %i.aiv, float %i.ajk)
  %i.ajm = tail call noundef float @llvm.fmuladd.f32(float %i.aid, float %i.aii, float %i.ajl)
  %.sroa.3.12.vec.insert.i10.i455 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ajm, i64 0
  store <2 x float> %i.ajj, ptr %i.uj, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i455, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456: ; preds = %bb.bh, %bb.bg
  %i.ajn = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.ajo = trunc nuw i8 %i.ajn to i1
  br i1 %i.ajo, label %bb.bi, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit461

bb.bi:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456
  %i.ajp = load float, ptr %i.uj, align 4, !tbaa !51 ; 3 uses
  %i.ajq = load float, ptr %i.uk, align 8, !tbaa !51 ; 3 uses
  %i.ajr = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.ajs = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.ajt = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.aju = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
end_hunk_0
