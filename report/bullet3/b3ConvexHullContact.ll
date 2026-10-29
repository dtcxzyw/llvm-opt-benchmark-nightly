Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z23findCompoundPairsKerneliiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ERKS8_I6b3AabbESG_PK15b3GpuChildShapeP6b3Int4PiiRS8_I18b3QuantizedBvhNodeERS8_I16b3BvhSubtreeInfoERS8_I9b3BvhInfoE:bb.a
  %i.xo = fadd <2 x float> %i.wz, %i.wu
  %i.xp = fsub <2 x float> %i.wz, %i.wu
  %i.xq = shufflevector <2 x float> %i.xo, <2 x float> %i.xp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xr = shufflevector <2 x float> %foldExtExtBinop920, <2 x float> <float 1.000000e+00, float poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.xs = fsub <2 x float> %i.xr, %i.xj
  %i.xt = fadd <2 x float> %i.xr, %i.xj
  %i.xu = shufflevector <2 x float> %i.xs, <2 x float> %i.xt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xv = call noundef float @llvm.fabs.f32(float %i.xc)
  %i.xw = call noundef float @llvm.fabs.f32(float %i.xe)
  %i.xx = call noundef float @llvm.fabs.f32(float %i.xf)
  %i.xy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xn)
  %i.xz = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xq)
  %i.ya = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xu)
  %i.yb = load <3 x float>, ptr %i.ax, align 16
  %i.yc = shufflevector <3 x float> %i.yb, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.yd = extractelement <3 x float> %i.wm, i64 1
  %i.ye = fmul float %i.yd, %i.xe
  %i.yf = extractelement <3 x float> %i.wm, i64 0
  %i.yg = call float @llvm.fmuladd.f32(float %i.yf, float %i.xc, float %i.ye)
  %i.yh = extractelement <3 x float> %i.wm, i64 2
  %i.yi = call noundef float @llvm.fmuladd.f32(float %i.yh, float %i.xf, float %i.yg)
  %i.yj = shufflevector <3 x float> %i.wm, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yk = fmul <2 x float> %i.yj, %i.xq
  %i.yl = shufflevector <3 x float> %i.wm, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ym = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yl, <2 x float> %i.xn, <2 x float> %i.yk)
  %i.yn = shufflevector <3 x float> %i.wm, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.yo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yn, <2 x float> %i.xu, <2 x float> %i.ym)
  %i.yp = fadd float %.sroa.25.48.copyload.i.i409, %i.yi ; 2 uses
  %i.yq = fadd <2 x float> %i.yc, %i.yo           ; 2 uses
  %i.yr = extractelement <3 x float> %i.wl, i64 1
  %i.ys = fmul float %i.yr, %i.xw
  %i.yt = extractelement <3 x float> %i.wl, i64 0
  %i.yu = call float @llvm.fmuladd.f32(float %i.yt, float %i.xv, float %i.ys)
  %i.yv = extractelement <3 x float> %i.wl, i64 2
  %i.yw = call noundef float @llvm.fmuladd.f32(float %i.yv, float %i.xx, float %i.yu) ; 2 uses
  %i.yx = shufflevector <3 x float> %i.wl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yy = fmul <2 x float> %i.yx, %i.xz
  %i.yz = shufflevector <3 x float> %i.wl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.za = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yz, <2 x float> %i.xy, <2 x float> %i.yy)
  %i.zb = shufflevector <3 x float> %i.wl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zb, <2 x float> %i.ya, <2 x float> %i.za) ; 2 uses
  %i.zd = fsub float %i.yp, %i.yw
  %i.ze = fsub <2 x float> %i.yq, %i.zc
  %i.zf = fadd float %i.yp, %i.yw
  %i.zg = fadd <2 x float> %i.yq, %i.zc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br i1 %i.ei, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.zh = call noundef float @sqrtf(float noundef %i.fn) #28 ; 2 uses
  %i.zi = fdiv float 5.000000e-01, %i.zh
  %i.zj = insertelement <4 x float> %i.gj, float %i.zh, i64 1
  %i.zk = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float poison>, float %i.zi, i64 0
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.zm = fmul <4 x float> %i.zl, %i.zj
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.zn = load float, ptr %i.ew, align 4, !tbaa !44
  %i.zo = load float, ptr %i.ez, align 4, !tbaa !44
  %i.zp = fsub float %i.zn, %i.zo
  %i.zq = load float, ptr %i.fc, align 4, !tbaa !44
  %i.zr = fsub float %i.zp, %i.zq
  %i.zs = fadd float %i.zr, 1.000000e+00
  %i.zt = call noundef float @sqrtf(float noundef %i.zs) #28 ; 2 uses
  %i.zu = fmul float %i.zt, 5.000000e-01
  store float %i.zu, ptr %i.fx, align 4, !tbaa !44
  %i.zv = fdiv float 5.000000e-01, %i.zt          ; 3 uses
  %i.zw = load float, ptr %i.fe, align 4, !tbaa !44
  %i.zx = load float, ptr %i.ff, align 4, !tbaa !44
  %i.zy = fsub float %i.zw, %i.zx
  %i.zz = fmul float %i.zv, %i.zy
  store float %i.zz, ptr %i.fy, align 4, !tbaa !44
  %i.aaa = load float, ptr %i.fh, align 4, !tbaa !44
  %i.aab = load float, ptr %i.fi, align 4, !tbaa !44
  %i.aac = fadd float %i.aaa, %i.aab
  %i.aad = fmul float %i.zv, %i.aac
  store float %i.aad, ptr %i.fz, align 4, !tbaa !44
  %i.aae = load float, ptr %i.fk, align 4, !tbaa !44
  %i.aaf = load float, ptr %i.fl, align 4, !tbaa !44
  %i.aag = fadd float %i.aae, %i.aaf
  %i.aah = fmul float %i.zv, %i.aag
  store float %i.aah, ptr %i.ga, align 4, !tbaa !44
  %i.aai = load <4 x float>, ptr %i.a, align 16, !tbaa !44
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aak = phi <4 x float> [ %i.aaj, %bb.q ], [ %i.zm, %bb.p ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.aal = extractelement <4 x float> %i.aak, i64 2 ; 4 uses
  %i.aam = fmul float %i.aal, %i.aal
  %i.aan = extractelement <4 x float> %i.aak, i64 3 ; 5 uses
  %i.aao = call float @llvm.fmuladd.f32(float %i.aan, float %i.aan, float %i.aam)
  %i.aap = extractelement <4 x float> %i.aak, i64 0 ; 4 uses
  %i.aaq = call float @llvm.fmuladd.f32(float %i.aap, float %i.aap, float %i.aao)
  %i.aar = extractelement <4 x float> %i.aak, i64 1 ; 4 uses
  %i.aas = call noundef float @llvm.fmuladd.f32(float %i.aar, float %i.aar, float %i.aaq)
  %i.aat = fdiv float 2.000000e+00, %i.aas        ; 3 uses
  %i.aau = load i32, ptr @numAabbChecks, align 4, !tbaa !38
  %i.aav = add nsw i32 %i.aau, 1
  store i32 %i.aav, ptr @numAabbChecks, align 4, !tbaa !38
  %i.aaw = fsub float %i.st, %i.si
  %i.aax = fsub float %i.sv, %i.sk
  %i.aay = fsub float %i.sx, %i.sm
  %i.aaz = fmul float %i.aaw, 5.000000e-01
  %i.aba = fmul float %i.aax, 5.000000e-01
  %i.abb = fmul float %i.aay, 5.000000e-01
  %i.abc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aaz, i64 0
  %i.abd = fadd <4 x float> %i.abc, <float 0.000000e+00, float poison, float poison, float 0.000000e+00>
  %i.abe = shufflevector <4 x float> %i.abd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.abf = fadd float %i.aba, 0.000000e+00        ; 3 uses
  %i.abg = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.abb, i64 0
  %i.abh = fadd <4 x float> %i.abg, <float 0.000000e+00, float poison, float poison, float 0.000000e+00>
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.abj = fmul float %i.aal, %i.aat              ; 3 uses
  %i.abk = fmul float %i.aap, %i.aat              ; 4 uses
  %i.abl = fmul float %i.aar, %i.abj              ; 2 uses
  %i.abm = fmul float %i.aar, %i.abk              ; 2 uses
  %i.abn = fmul float %i.aan, %i.abj              ; 2 uses
  %i.abo = fmul float %i.aan, %i.abk              ; 2 uses
  %i.abp = fmul float %i.aal, %i.abk              ; 2 uses
  %i.abq = fmul float %i.aap, %i.abk              ; 2 uses
  %i.abr = fsub float %i.abn, %i.abm              ; 2 uses
  %i.abs = fadd float %i.abn, %i.abm              ; 2 uses
  %i.abt = fsub float %i.abo, %i.abl              ; 2 uses
  %i.abu = call noundef float @llvm.fabs.f32(float %i.abr)
  %i.abv = insertelement <4 x float> poison, float %i.abs, i64 0
  %i.abw = insertelement <4 x float> %i.abv, float %i.abt, i64 1
  %i.abx = shufflevector <4 x float> %i.aak, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aby = insertelement <2 x float> poison, float %i.abj, i64 0
  %i.abz = insertelement <2 x float> %i.aby, float %i.aat, i64 1
  %i.aca = fmul <2 x float> %i.abx, %i.abz        ; 4 uses
  %i.acb = extractelement <2 x float> %i.aca, i64 1
  %i.acc = fmul float %i.aan, %i.acb              ; 2 uses
  %i.acd = extractelement <2 x float> %i.aca, i64 0
  %i.ace = fadd float %i.acd, %i.abq
  %i.acf = fsub float 1.000000e+00, %i.ace        ; 2 uses
  %i.acg = fadd float %i.acc, %i.abq
  %i.ach = fsub float 1.000000e+00, %i.acg        ; 2 uses
  %i.aci = shufflevector <4 x float> %i.aak, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.acj = insertelement <2 x float> %i.aci, float %i.acc, i64 0 ; 2 uses
  %i.ack = fmul <2 x float> %i.acj, %i.aca        ; 2 uses
  %i.acl = fadd <2 x float> %i.acj, %i.aca
  %i.acm = shufflevector <2 x float> %i.ack, <2 x float> %i.acl, <2 x i32> <i32 1, i32 2>
  %i.acn = extractelement <2 x float> %i.ack, i64 1
  %i.aco = fadd float %i.abp, %i.acn              ; 2 uses
  %i.acp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.abp, i64 0
  %i.acq = fsub <2 x float> %i.acp, %i.acm        ; 2 uses
  %i.acr = call noundef float @llvm.fabs.f32(float %i.acf)
  %i.acs = call noundef float @llvm.fabs.f32(float %i.ach)
  %i.act = call noundef float @llvm.fabs.f32(float %i.aco)
  %i.acu = fadd float %i.si, %i.st
  %i.acv = fadd float %i.sk, %i.sv
  %i.acw = fadd float %i.sm, %i.sx
  %i.acx = fmul float %i.acu, 5.000000e-01
  %i.acy = fmul float %i.acv, 5.000000e-01        ; 3 uses
  %i.acz = fmul float %i.acw, 5.000000e-01
  %i.ada = fadd float %i.abo, %i.abl              ; 2 uses
  %i.adb = call noundef float @llvm.fabs.f32(float %i.ada)
  %i.adc = fmul float %i.acy, %i.abr
  %i.add = fmul float %i.acy, %i.ach
  %i.ade = fmul float %i.acy, %i.aco
  %i.adf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.acx, i64 0
  %i.adg = shufflevector <4 x float> %i.adf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.adh = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.abs, i64 0
  %i.adi = insertelement <4 x float> %i.adh, float %i.abt, i64 1
  %i.adj = insertelement <4 x float> %i.adi, float %i.acf, i64 2
  %i.adk = insertelement <4 x float> poison, float %i.add, i64 0
  %i.adl = insertelement <4 x float> %i.adk, float %i.ade, i64 1
  %i.adm = insertelement <4 x float> %i.adl, float %i.adc, i64 2
  %i.adn = insertelement <4 x float> %i.adm, float %i.zd, i64 3
  %i.ado = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adg, <4 x float> %i.adj, <4 x float> %i.adn)
  %i.adp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.acz, i64 0
  %i.adq = shufflevector <4 x float> %i.adp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.adr = shufflevector <2 x float> %i.acq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ads = insertelement <4 x float> %i.adr, float -0.000000e+00, i64 3
  %i.adt = insertelement <4 x float> %i.ads, float %i.ada, i64 2
  %i.adu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adq, <4 x float> %i.adt, <4 x float> %i.ado)
  %i.adv = fadd <4 x float> %i.adu, %i.gh         ; 3 uses
  %i.adw = fmul float %i.abf, %i.abu
  %i.adx = fmul float %i.abf, %i.acs
  %i.ady = fmul float %i.abf, %i.act
  %i.adz = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.acr, i64 2
  %i.aea = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.abw)
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> %i.adz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aec = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.adx, i64 0
  %i.aed = insertelement <4 x float> %i.aec, float %i.ady, i64 1
  %i.aee = insertelement <4 x float> %i.aed, float %i.adw, i64 2
  %i.aef = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abe, <4 x float> %i.aeb, <4 x float> %i.aee)
  %i.aeg = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.acq)
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aei = insertelement <4 x float> %i.aeh, float -0.000000e+00, i64 3
  %i.aej = insertelement <4 x float> %i.aei, float %i.adb, i64 2
  %i.aek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abi, <4 x float> %i.aej, <4 x float> %i.aef) ; 3 uses
  %i.ael = fsub <4 x float> %i.adv, %i.aek
  %foldExtExtBinop932 = fadd <4 x float> %i.adv, %i.aek
  %i.aem = shufflevector <4 x float> %i.adv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aen = shufflevector <4 x float> %i.aek, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aeo = fadd <2 x float> %i.aem, %i.aen
  %i.aep = fcmp ule <2 x float> %i.ze, %i.aeo     ; 2 uses
  %i.aeq = insertelement <4 x float> poison, float %i.zf, i64 0
  %i.aer = shufflevector <2 x float> %i.zg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aes = shufflevector <4 x float> %i.aeq, <4 x float> %i.aer, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aet = shufflevector <4 x float> %i.aes, <4 x float> %foldExtExtBinop932, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aeu = fcmp uge <4 x float> %i.aet, %i.ael
  %i.aev = freeze <4 x i1> %i.aeu
  %i.aew = bitcast <4 x i1> %i.aev to i4
  %i.aex = icmp eq i4 %i.aew, -1
  %i.aey = extractelement <2 x i1> %i.aep, i64 0
  %op.rdx = select i1 %i.aex, i1 %i.aey, i1 false
  %i.aez = extractelement <2 x i1> %i.aep, i64 1
  %op.rdx890 = select i1 %op.rdx, i1 %i.aez, i1 false
  br i1 %op.rdx890, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.afa = getelementptr inbounds nuw i8, ptr %i.re, i64 12 ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !326 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ru, i64 12 ; 2 uses
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !326 ; 2 uses
  %i.afe = icmp sgt i32 %i.afd, -1                ; 2 uses
  %i.aff = icmp slt i32 %.0337, 1022
  %i.afg = or i32 %i.afd, %i.afb
  %or.cond = icmp sgt i32 %i.afg, -1
  %or.cond349 = or i1 %i.aff, %or.cond
  br i1 %or.cond349, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1554)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.t, %bb.i, %.split7.i.i, %.noexc382
  %lpad.loopexit.split-lp950 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20b3AlignedObjectArrayI6b3Int2ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp950

bb.v:                                             ; preds = %bb.s
  %i.afh = icmp sgt i32 %i.afb, -1
  br i1 %i.afh, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.afi = add nsw i32 %.sroa.0100.0.copyload, 1  ; 4 uses
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [16 x i8], ptr %i.rc, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 12
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !326 ; 2 uses
  %i.afn = add nsw i32 %.sroa.0100.0.copyload, 2
  %i.afo = sub nsw i32 %i.afi, %i.afm
  %i.afp = icmp slt i32 %i.afm, 0
  %i.afq = select i1 %i.afp, i32 %i.afo, i32 %i.afn ; 2 uses
  br i1 %i.afe, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.afr = add nsw i32 %.sroa.15.0.copyload, 1    ; 3 uses
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [16 x i8], ptr %i.rc, i64 %i.afs
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 12
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !326 ; 2 uses
  %i.afw = add nsw i32 %.sroa.15.0.copyload, 2
  %i.afx = sub nsw i32 %i.afr, %i.afv
  %i.afy = icmp slt i32 %i.afv, 0
  %i.afz = select i1 %i.afy, i32 %i.afx, i32 %i.afw
  %.sroa.2.0.insert.ext.i = zext i32 %i.afr to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.afi to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.rb, align 4, !tbaa !37
  %.sroa.0.0.insert.ext.i442 = zext i32 %i.afq to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i443 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i442
  %i.aga = load ptr, ptr %i.fs, align 8, !tbaa !167
  %i.agb = sext i32 %.0337 to i64
  %i.agc = getelementptr [8 x i8], ptr %i.aga, i64 %i.agb ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i443, ptr %i.agc, align 4, !tbaa !37
  %.sroa.2.0.insert.ext.i444 = zext i32 %i.afz to i64
  %.sroa.2.0.insert.shift.i445 = shl nuw i64 %.sroa.2.0.insert.ext.i444, 32 ; 2 uses
  %.sroa.0.0.insert.insert.i447 = or disjoint i64 %.sroa.2.0.insert.shift.i445, %.sroa.0.0.insert.ext.i
  %i.agd = getelementptr i8, ptr %i.agc, i64 8
  store i64 %.sroa.0.0.insert.insert.i447, ptr %i.agd, align 4, !tbaa !37
  %.sroa.0.0.insert.insert.i451 = or disjoint i64 %.sroa.2.0.insert.shift.i445, %.sroa.0.0.insert.ext.i442
  %i.age = add nsw i32 %.0337, 3
  %i.agf = getelementptr i8, ptr %i.agc, i64 16
  store i64 %.sroa.0.0.insert.insert.i451, ptr %i.agf, align 4, !tbaa !37
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %.sroa.2.0.insert.ext.i452 = zext i32 %.sroa.15.0.copyload to i64
  %.sroa.2.0.insert.shift.i453 = shl nuw i64 %.sroa.2.0.insert.ext.i452, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i454 = zext i32 %i.afi to i64
  %.sroa.0.0.insert.insert.i455 = or disjoint i64 %.sroa.2.0.insert.shift.i453, %.sroa.0.0.insert.ext.i454
  store i64 %.sroa.0.0.insert.insert.i455, ptr %i.rb, align 4, !tbaa !37
  %.sroa.0.0.insert.ext.i458 = zext i32 %i.afq to i64
  %.sroa.0.0.insert.insert.i459 = or disjoint i64 %.sroa.2.0.insert.shift.i453, %.sroa.0.0.insert.ext.i458
  %i.agg = add nsw i32 %.0337, 1
  %i.agh = load ptr, ptr %i.fs, align 8, !tbaa !167
  %i.agi = sext i32 %.0337 to i64
  %i.agj = getelementptr inbounds [8 x i8], ptr %i.agh, i64 %i.agi
  store i64 %.sroa.0.0.insert.insert.i459, ptr %i.agj, align 4, !tbaa !37
  br label %bb.ad

bb.z:                                             ; preds = %bb.v
  br i1 %i.afe, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.agk = add nsw i32 %.sroa.15.0.copyload, 1    ; 3 uses
  %i.agl = sext i32 %i.agk to i64
  %i.agm = getelementptr inbounds [16 x i8], ptr %i.rc, i64 %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 12
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !326 ; 2 uses
  %i.agp = add nsw i32 %.sroa.15.0.copyload, 2
  %i.agq = sub nsw i32 %i.agk, %i.ago
  %i.agr = icmp slt i32 %i.ago, 0
  %i.ags = select i1 %i.agr, i32 %i.agq, i32 %i.agp
  %.sroa.2.0.insert.ext.i460 = zext i32 %i.agk to i64
  %.sroa.2.0.insert.shift.i461 = shl nuw i64 %.sroa.2.0.insert.ext.i460, 32
  %.sroa.0.0.insert.ext.i462 = zext i32 %.sroa.0100.0.copyload to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i463 = or disjoint i64 %.sroa.2.0.insert.shift.i461, %.sroa.0.0.insert.ext.i462
  store i64 %.sroa.0.0.insert.insert.i463, ptr %i.rb, align 4, !tbaa !37
  %.sroa.2.0.insert.ext.i464 = zext i32 %i.ags to i64
  %.sroa.2.0.insert.shift.i465 = shl nuw i64 %.sroa.2.0.insert.ext.i464, 32
  %.sroa.0.0.insert.insert.i467 = or disjoint i64 %.sroa.2.0.insert.shift.i465, %.sroa.0.0.insert.ext.i462
  %i.agt = add nsw i32 %.0337, 1
  %i.agu = load ptr, ptr %i.fs, align 8, !tbaa !167
  %i.agv = sext i32 %.0337 to i64
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.agu, i64 %i.agv
  store i64 %.sroa.0.0.insert.insert.i467, ptr %i.agw, align 4, !tbaa !37
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.agx = load i32, ptr %13, align 4, !tbaa !38  ; 3 uses
  %i.agy = add nsw i32 %i.agx, 1
  store i32 %i.agy, ptr %13, align 4, !tbaa !38
  %i.agz = icmp slt i32 %i.agx, %14
  br i1 %i.agz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aha = load i32, ptr %i.afa, align 4, !tbaa !326
  %i.ahb = and i32 %i.aha, 2097151
  %i.ahc = load i32, ptr %i.afc, align 4, !tbaa !326
  %i.ahd = and i32 %i.ahc, 2097151
  %.sroa.5.8.insert.ext.i = zext nneg i32 %i.ahd to i64
  %.sroa.5.8.insert.shift.i = shl nuw nsw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext nneg i32 %i.ahb to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  %i.ahe = sext i32 %i.agx to i64
  %i.ahf = getelementptr inbounds [16 x i8], ptr %12, i64 %i.ahe ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i471, ptr %i.ahf, align 16
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !37
  br label %bb.ad

bb.ad:                                            ; preds = %bb.u, %bb.ab, %bb.ac, %bb.x, %bb.y, %bb.aa, %bb.r
  %.5 = phi i32 [ %i.qy, %bb.r ], [ %i.qy, %bb.u ], [ %i.agg, %bb.y ], [ %i.agt, %bb.aa ], [ %i.age, %bb.x ], [ %i.qy, %bb.ac ], [ %i.qy, %bb.ab ] ; 2 uses
  %.not348 = icmp eq i32 %.5, 0
  br i1 %.not348, label %bb.ae, label %bb.j, !llvm.loop !312

bb.ae:                                            ; preds = %bb.ad
  %i.ahg = load i32, ptr @numAabbChecks, align 4, !tbaa !38
  %i.ahh = load i32, ptr @maxNumAabbChecks, align 4, !tbaa !38
  %i.ahi = call i32 @llvm.smax.i32(i32 %i.ahg, i32 %i.ahh)
  store i32 %i.ahi, ptr @maxNumAabbChecks, align 4, !tbaa !38
  %i.ahj = load ptr, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.ahj, null
  %i.ahk = load i8, ptr %i.fr, align 8, !range !91
  %i.ahl = trunc nuw i8 %i.ahk to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.ahl, i1 false
  br i1 %or.cond.i.i, label %bb.af, label %_ZN20b3AlignedObjectArrayI6b3Int2ED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ahj)
          to label %_ZN20b3AlignedObjectArrayI6b3Int2ED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ahm = landingpad { ptr, i32 }
          catch ptr null
  %i.ahn = extractvalue { ptr, i32 } %i.ahm, 0
  call void @__clang_call_terminate(ptr %i.ahn) #29
  unreachable

_ZN20b3AlignedObjectArrayI6b3Int2ED2Ev.exit:      ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int2ED2Ev.exit, %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond866.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond866.not, label %._crit_edge, label %.lr.ph856, !llvm.loop !313

bb.ai:                                            ; preds = %bb.c
  %i.aho = icmp ne i32 %i.x, 6
  %cond = icmp eq i32 %i.u, 5
  %or.cond846 = or i1 %cond, %i.aho
  br i1 %or.cond846, label %.loopexit848, label %bb.ar

.thread843:                                       ; preds = %bb.d
  %i.ahp = load i32, ptr %i.e, align 4, !tbaa !37 ; 2 uses
  %i.ahq = icmp sgt i32 %i.ahp, 0
  br i1 %i.ahq, label %.lr.ph854, label %.loopexit848

.lr.ph854:                                        ; preds = %.thread843
  %.sroa.5764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.9760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ahs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %24, i64 20
end_hunk_0
