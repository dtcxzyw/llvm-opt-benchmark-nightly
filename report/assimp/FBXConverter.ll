inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverterC2EP7aiSceneRKNS0_8DocumentEb:bb.a
  %i.bo = icmp eq ptr %i.bk, %i.bn
  br i1 %i.bo, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.preheader, !llvm.loop !5

bb.n:                                             ; preds = %bb.l
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = load i64, ptr %i.j, align 8             ; 2 uses
  %i.br = urem i64 %i.bp, %i.bq                   ; 2 uses
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %i.bk, %i.bx
  br i1 %i.by, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.bz = icmp eq ptr %i.bk, %i.cc
  br i1 %i.bz, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.ca, %bb.p ], [ %i.bv, %bb.o ]
  %i.ca = load ptr, ptr %.020.i.i.i.i, align 8    ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bq
  %.not19.i.i.i.i = icmp eq i64 %i.ce, %i.br
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !7

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.n
  %i.cf = invoke noundef i32 @_ZN6Assimp3FBX12FBXConverter15ConvertMaterialERKNS0_8MaterialEPKNS0_12MeshGeometryE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.bk, ptr noundef null)
          to label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %.loopexit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit: ; preds = %bb.p, %bb.m, %bb.k, %.loopexit, %bb.o, %bb.i
  %.sroa.036.0 = load ptr, ptr %.sroa.036.046, align 8 ; 2 uses
  %.not40 = icmp eq ptr %.sroa.036.0, null
  br i1 %.not40, label %.loopexit43, label %bb.h

.loopexit43:                                      ; preds = %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, %bb.g, %bb.f
  invoke void @_ZN6Assimp3FBX12FBXConverter21ConvertGlobalSettingsEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.s unwind label %bb.d

bb.s:                                             ; preds = %.loopexit43
  invoke void @_ZN6Assimp3FBX12FBXConverter19TransferDataToSceneEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = load i32, ptr %1, align 8
  %i.cl = or i32 %i.ck, 1
  store i32 %i.cl, ptr %1, align 8
  br label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit

bb.v:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %2, align 8, !nonnull !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = load i8, ptr %i.cn, align 1, !range !4, !noundef !3
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.ct = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.cv = load i32, ptr %i.ct, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %_ZN10aiVector3tIfEixEj.exit35.thread.i, label %.lr.ph.i

_ZN10aiVector3tIfEixEj.exit35.thread.i:           ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.067.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869.i)
  store float 0.000000e+00, ptr %.sroa.067.i, align 4
  store float 0.000000e+00, ptr %.sroa.869.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.866.i)
  store float 0.000000e+00, ptr %.sroa.064.i, align 4
  store float 0.000000e+00, ptr %.sroa.565.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.863.i)
  store float 0.000000e+00, ptr %.sroa.062.i, align 4
  store float 0.000000e+00, ptr %.sroa.5.i, align 4
  store float 0.000000e+00, ptr %.sroa.863.i, align 4
  store float 1.000000e+00, ptr %.sroa.568.i, align 4
  store float 1.000000e+00, ptr %.sroa.866.i, align 4
  br label %_ZN10aiVector3tIfEixEj.exit37.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 7 uses
  %wide.trip.count.i = zext i32 %i.cv to i64
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i
  %i.cz = sitofp i32 %.179.i to float
  %i.da = fptrunc double %.194.i to float         ; 3 uses
  %i.db = fmul float %i.cz, %i.da
  %i.dc = sitofp i32 %.185.i to float
  %i.dd = fmul float %i.dc, %i.da
  %i.de = sitofp i32 %.191.i to float
  %i.df = fmul float %i.de, %i.da                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.067.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869.i)
  store float 0.000000e+00, ptr %.sroa.067.i, align 4
  store float 0.000000e+00, ptr %.sroa.568.i, align 4
  store float 0.000000e+00, ptr %.sroa.869.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.866.i)
  store float 0.000000e+00, ptr %.sroa.064.i, align 4
  store float 0.000000e+00, ptr %.sroa.565.i, align 4
  store float 0.000000e+00, ptr %.sroa.866.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.863.i)
  store float 0.000000e+00, ptr %.sroa.062.i, align 4
  store float 0.000000e+00, ptr %.sroa.5.i, align 4
  store float 0.000000e+00, ptr %.sroa.863.i, align 4
  switch i32 %.1.i, label %_ZN10aiVector3tIfEixEj.exit.i [
    i32 2, label %bb.z
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %._crit_edge.i
  br label %_ZN10aiVector3tIfEixEj.exit.i

bb.z:                                             ; preds = %._crit_edge.i
  br label %_ZN10aiVector3tIfEixEj.exit.i

_ZN10aiVector3tIfEixEj.exit.i:                    ; preds = %bb.z, %bb.y, %._crit_edge.i
  %.0.i.i = phi ptr [ %.sroa.067.i, %._crit_edge.i ], [ %.sroa.869.i, %bb.z ], [ %.sroa.568.i, %bb.y ]
  store float %i.db, ptr %.0.i.i, align 4
  switch i32 %.182.i, label %_ZN10aiVector3tIfEixEj.exit35.i [
    i32 2, label %bb.ab
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit.i
  br label %_ZN10aiVector3tIfEixEj.exit35.i

bb.ab:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit.i
  br label %_ZN10aiVector3tIfEixEj.exit35.i

_ZN10aiVector3tIfEixEj.exit35.i:                  ; preds = %bb.ab, %bb.aa, %_ZN10aiVector3tIfEixEj.exit.i
  %.0.i34.i = phi ptr [ %.sroa.565.i, %bb.aa ], [ %.sroa.064.i, %_ZN10aiVector3tIfEixEj.exit.i ], [ %.sroa.866.i, %bb.ab ]
  store float %i.dd, ptr %.0.i34.i, align 4
  switch i32 %.188.i, label %_ZN10aiVector3tIfEixEj.exit37.i [
    i32 2, label %bb.ad
    i32 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit35.i
  br label %_ZN10aiVector3tIfEixEj.exit37.i

bb.ad:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit35.i
  br label %_ZN10aiVector3tIfEixEj.exit37.i

_ZN10aiVector3tIfEixEj.exit37.i:                  ; preds = %bb.ad, %bb.ac, %_ZN10aiVector3tIfEixEj.exit35.i, %_ZN10aiVector3tIfEixEj.exit35.thread.i
  %.093.lcssa120140145.i = phi float [ %i.df, %bb.ac ], [ %i.df, %bb.ad ], [ %i.df, %_ZN10aiVector3tIfEixEj.exit35.i ], [ 1.000000e+00, %_ZN10aiVector3tIfEixEj.exit35.thread.i ]
  %.0.i36.i = phi ptr [ %.sroa.5.i, %bb.ac ], [ %.sroa.863.i, %bb.ad ], [ %.sroa.062.i, %_ZN10aiVector3tIfEixEj.exit35.i ], [ %.sroa.062.i, %_ZN10aiVector3tIfEixEj.exit35.thread.i ]
  store float %.093.lcssa120140145.i, ptr %.0.i36.i, align 4
  %.sroa.062.i.0..sroa.062.i.0..sroa.062.i.0..sroa.062.0..sroa.062.0..sroa.062.0..i = load float, ptr %.sroa.062.i, align 4
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.4..i = load float, ptr %.sroa.5.i, align 4
  %.sroa.863.i.0..sroa.863.i.0..sroa.863.i.0..sroa.863.0..sroa.863.0..sroa.863.8..i = load float, ptr %.sroa.863.i, align 4
  %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i = load float, ptr %.sroa.067.i, align 4 ; 4 uses
  %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i = load float, ptr %.sroa.568.i, align 4 ; 4 uses
  %.sroa.064.i.0..sroa.064.i.0..sroa.064.i.0..sroa.064.0..sroa.064.0..sroa.064.0..i = load float, ptr %.sroa.064.i, align 4
  %.sroa.565.i.0..sroa.565.i.0..sroa.565.i.0..sroa.565.0..sroa.565.0..sroa.565.4..i = load float, ptr %.sroa.565.i, align 4
  %.sroa.866.i.0..sroa.866.i.0..sroa.866.i.0..sroa.866.0..sroa.866.0..sroa.866.8..i = load float, ptr %.sroa.866.i, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 16 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1028 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1032
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1036
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 1040
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 1044 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 1048
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 1052
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1056
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 1060 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1064
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 1068
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 1072
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 1076 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 1080
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 1084
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 1088
  %i.dy = load <4 x float>, ptr %i.di, align 4    ; 4 uses
  %i.dz = load float, ptr %i.dl, align 4
  %i.ea = load float, ptr %i.dk, align 4
  %i.eb = load float, ptr %i.dj, align 4          ; 4 uses
  %i.ec = fmul float %i.eb, 0.000000e+00
  %i.ed = extractelement <4 x float> %i.dy, i64 0
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float 0.000000e+00, float %i.ec)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.ee)
  %i.eg = fadd float %i.dz, %i.ef
  %i.eh = fmul float %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i, %i.eb
  %i.ei = fmul float %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i, %i.eb
  %i.ej = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.062.i.0..sroa.062.i.0..sroa.062.i.0..sroa.062.0..sroa.062.0..sroa.062.0..i, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.4..i, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %.sroa.863.i.0..sroa.863.i.0..sroa.863.i.0..sroa.863.0..sroa.863.0..sroa.863.8..i, i64 2 ; 4 uses
  %i.em = shufflevector <4 x float> %i.dy, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.en = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %i.eh, i64 1
  %i.ep = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.064.i.0..sroa.064.i.0..sroa.064.i.0..sroa.064.0..sroa.064.0..sroa.064.0..i, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %.sroa.565.i.0..sroa.565.i.0..sroa.565.i.0..sroa.565.0..sroa.565.0..sroa.565.4..i, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %.sroa.866.i.0..sroa.866.i.0..sroa.866.i.0..sroa.866.0..sroa.866.0..sroa.866.8..i, i64 2 ; 4 uses
  %i.es = shufflevector <4 x float> %i.dy, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.et = shufflevector <4 x float> %i.dy, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.eu = load <4 x float>, ptr %i.dm, align 4    ; 4 uses
  %i.ev = load float, ptr %i.dp, align 4
  %i.ew = load float, ptr %i.do, align 4
  %i.ex = load float, ptr %i.dn, align 4          ; 4 uses
  %i.ey = fmul float %i.ex, 0.000000e+00
  %i.ez = extractelement <4 x float> %i.eu, i64 0
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float 0.000000e+00, float %i.ey)
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ew, float 0.000000e+00, float %i.fa)
  %i.fc = fadd float %i.ev, %i.fb
  %i.fd = fmul float %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i, %i.ex
  %i.fe = fmul float %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i, %i.ex
  %i.ff = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fg = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 1
  %4 = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %5 = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %6 = load <4 x float>, ptr %i.dq, align 4       ; 4 uses
  %7 = load float, ptr %i.dt, align 4
  %8 = load float, ptr %i.ds, align 4
  %9 = load float, ptr %i.dr, align 4             ; 4 uses
  %10 = fmul float %9, 0.000000e+00
  %11 = extractelement <4 x float> %6, i64 0
  %12 = tail call float @llvm.fmuladd.f32(float %11, float 0.000000e+00, float %10)
  %13 = tail call float @llvm.fmuladd.f32(float %8, float 0.000000e+00, float %12)
  %14 = fadd float %7, %13
  %15 = fmul float %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i, %9
  %i.fi = fmul float %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i, %9
  %16 = shufflevector <4 x float> %6, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %17 = insertelement <4 x float> poison, float %i.fi, i64 0
  %18 = insertelement <4 x float> %17, float %15, i64 1
  %19 = shufflevector <4 x float> %6, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %20 = shufflevector <4 x float> %6, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %21 = load <4 x float>, ptr %i.du, align 4      ; 4 uses
  %22 = load float, ptr %i.dx, align 4
  %23 = load float, ptr %i.dw, align 4
  %24 = load float, ptr %i.dv, align 4            ; 4 uses
  %i.fj = fmul float %24, 0.000000e+00
  %25 = extractelement <4 x float> %21, i64 0
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 0.000000e+00, float %i.fj)
  %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i = load float, ptr %.sroa.869.i, align 4 ; 4 uses
  %27 = tail call float @llvm.fmuladd.f32(float %23, float 0.000000e+00, float %26)
  %28 = fmul float %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i, %i.eb
  %i.fk = insertelement <4 x float> %i.eo, float %28, i64 2
  %i.fl = insertelement <4 x float> %i.fk, float %i.eg, i64 3
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.em, <4 x float> %i.fl)
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.es, <4 x float> %i.fm)
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> zeroinitializer, <4 x float> %29)
  %30 = fmul float %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i, %i.ex
  %31 = insertelement <4 x float> %i.fh, float %30, i64 2
  %32 = insertelement <4 x float> %31, float %i.fc, i64 3
  %33 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.ff, <4 x float> %32)
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %4, <4 x float> %33)
  %35 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> zeroinitializer, <4 x float> %34)
  %36 = fmul float %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i, %9
  %37 = insertelement <4 x float> %18, float %36, i64 2
  %38 = insertelement <4 x float> %37, float %14, i64 3
  %39 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %16, <4 x float> %38)
  %40 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %19, <4 x float> %39)
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> zeroinitializer, <4 x float> %40)
  %i.fo = fadd float %22, %27
  %i.fp = fmul float %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i, %24
  %i.fq = fmul float %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i, %24
  %i.fr = fmul float %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i, %24
  %i.fs = shufflevector <4 x float> %21, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ft = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 1
  %i.fv = insertelement <4 x float> %i.fu, float %i.fp, i64 2
  %i.fw = insertelement <4 x float> %i.fv, float %i.fo, i64 3
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.fs, <4 x float> %i.fw)
  %i.fy = shufflevector <4 x float> %21, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.fy, <4 x float> %i.fx)
  %i.ga = shufflevector <4 x float> %21, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> zeroinitializer, <4 x float> %i.fz)
  store <4 x float> %i.fn, ptr %i.di, align 4
  store <4 x float> %35, ptr %i.dm, align 4
  store <4 x float> %41, ptr %i.dq, align 4
  store <4 x float> %i.gb, ptr %i.du, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.062.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.863.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.866.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.067.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.568.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869.i)
  br label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit

bb.ae:                                            ; preds = %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 9 uses
  %.077102.i = phi i32 [ 1, %.lr.ph.i ], [ %.1.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.078101.i = phi i32 [ 1, %.lr.ph.i ], [ %.179.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.081100.i = phi i32 [ 2, %.lr.ph.i ], [ %.182.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.08499.i = phi i32 [ 1, %.lr.ph.i ], [ %.185.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.08798.i = phi i32 [ 0, %.lr.ph.i ], [ %.188.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.09097.i = phi i32 [ 1, %.lr.ph.i ], [ %.191.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.09396.i = phi double [ 1.000000e+00, %.lr.ph.i ], [ %.194.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [1028 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 7 uses
  %i.ge = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(7) @.str.186) #28
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.af, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.gg = load ptr, ptr %i.cy, align 8
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv.i ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8
  %.not7.i.i = icmp eq i32 %i.gi, 1
  br i1 %.not7.i.i, label %bb.ag, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = load i32, ptr %i.gk, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit.i:             ; preds = %bb.ag, %bb.af, %bb.ae
  %.1.i = phi i32 [ %.077102.i, %bb.ae ], [ %i.gl, %bb.ag ], [ %.077102.i, %bb.af ] ; 2 uses
  %i.gm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(11) @.str.187) #28
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ah, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i

bb.ah:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i
  %i.go = load ptr, ptr %i.cy, align 8
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.i ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8
  %.not7.i41.i = icmp eq i32 %i.gq, 1
  br i1 %.not7.i41.i, label %bb.ai, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load i32, ptr %i.gs, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i:           ; preds = %bb.ai, %bb.ah, %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i
  %.179.i = phi i32 [ %.078101.i, %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i ], [ %i.gt, %bb.ai ], [ %.078101.i, %bb.ah ] ; 2 uses
  %i.gu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(10) @.str.188) #28
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.aj, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i

bb.aj:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i
  %i.gw = load ptr, ptr %i.cy, align 8
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %indvars.iv.i ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8
  %.not7.i45.i = icmp eq i32 %i.gy, 1
  br i1 %.not7.i45.i, label %bb.ak, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = load i32, ptr %i.ha, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i:           ; preds = %bb.ak, %bb.aj, %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i
  %.182.i = phi i32 [ %.081100.i, %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i ], [ %i.hb, %bb.ak ], [ %.081100.i, %bb.aj ] ; 2 uses
  %i.hc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(14) @.str.189) #28
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.al, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i

bb.al:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i
  %i.he = load ptr, ptr %i.cy, align 8
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %indvars.iv.i ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8
  %.not7.i49.i = icmp eq i32 %i.hg, 1
  br i1 %.not7.i49.i, label %bb.am, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i

bb.am:                                            ; preds = %bb.al
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = load i32, ptr %i.hi, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i:           ; preds = %bb.am, %bb.al, %_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i
  %.185.i = phi i32 [ %.08499.i, %_ZNK10aiMetadata3GetIiEEbjRT_.exit46.i ], [ %i.hj, %bb.am ], [ %.08499.i, %bb.al ] ; 2 uses
  %i.hk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(10) @.str.190) #28
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.an, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i

bb.an:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i
  %i.hm = load ptr, ptr %i.cy, align 8
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %indvars.iv.i ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8
  %.not7.i53.i = icmp eq i32 %i.ho, 1
  br i1 %.not7.i53.i, label %bb.ao, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i

bb.ao:                                            ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = load i32, ptr %i.hq, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i:           ; preds = %bb.ao, %bb.an, %_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i
  %.188.i = phi i32 [ %.08798.i, %_ZNK10aiMetadata3GetIiEEbjRT_.exit50.i ], [ %i.hr, %bb.ao ], [ %.08798.i, %bb.an ] ; 2 uses
  %i.hs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(14) @.str.191) #28
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.ap, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i

bb.ap:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i
  %i.hu = load ptr, ptr %i.cy, align 8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %indvars.iv.i ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8
  %.not7.i57.i = icmp eq i32 %i.hw, 1
  br i1 %.not7.i57.i, label %bb.aq, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i

bb.aq:                                            ; preds = %bb.ap
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = load i32, ptr %i.hy, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i:           ; preds = %bb.aq, %bb.ap, %_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i
  %.191.i = phi i32 [ %.09097.i, %_ZNK10aiMetadata3GetIiEEbjRT_.exit54.i ], [ %i.hz, %bb.aq ], [ %.09097.i, %bb.ap ] ; 2 uses
  %i.ia = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(16) @.str.194) #28
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.ar, label %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i

bb.ar:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i
  %i.ic = load ptr, ptr %i.cy, align 8
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %indvars.iv.i ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8
  %.not7.i61.i = icmp eq i32 %i.ie, 4
  br i1 %.not7.i61.i, label %bb.as, label %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = load double, ptr %i.ig, align 8
  br label %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i

_ZNK10aiMetadata3GetIdEEbjRT_.exit.i:             ; preds = %bb.as, %bb.ar, %_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i
  %.194.i = phi double [ %.09396.i, %_ZNK10aiMetadata3GetIiEEbjRT_.exit58.i ], [ %i.ih, %bb.as ], [ %.09396.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !8

_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit: ; preds = %_ZN10aiVector3tIfEixEj.exit37.i, %bb.x, %bb.w, %bb.v, %bb.u
  ret void

bb.at:                                            ; preds = %bb.j, %bb.r, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.d ], [ %i.bj, %bb.j ], [ %i.cg, %bb.r ]
  %i.ii = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP10aiSkeletonSaIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #29
  br label %_ZNSt6vectorIP10aiSkeletonSaIS1_EED2Ev.exit

_ZNSt6vectorIP10aiSkeletonSaIS1_EED2Ev.exit:      ; preds = %bb.at, %bb.au
  tail call void @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #27
  tail call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.af) #27
  tail call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #27
  tail call void @_ZNSt13unordered_mapIPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.t) #27
  tail call void @_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #27
  tail call void @_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #27
  %i.io = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIP9aiTextureSaIS1_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIP10aiSkeletonSaIS1_EED2Ev.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  tail call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #29
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EED2Ev.exit

_ZNSt6vectorIP9aiTextureSaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIP10aiSkeletonSaIS1_EED2Ev.exit, %bb.av
  %i.iu = load ptr, ptr %i.f, align 8             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_:bb.a
  %i.xu = fadd float %i.wp, 1.000000e+00
  %i.xv = fsub float %i.xu, %i.wt
  %i.xw = fsub float %i.xv, %i.wz
  %i.xx = call noundef float @sqrtf(float noundef %i.xw) #27
  %i.xy = fmul float %i.xx, 2.000000e+00          ; 3 uses
  %i.xz = fmul float %i.xy, 2.500000e-01
  %.sroa.020.4.vec.insert25.i334 = insertelement <2 x float> <float undef, float poison>, float %i.xz, i64 1
  %i.ya = insertelement <2 x float> poison, float %i.ws, i64 0
  %i.yb = insertelement <2 x float> %i.ya, float %i.wx, i64 1
  %i.yc = fadd <2 x float> %i.wq, %i.yb
  %i.yd = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yf = fdiv <2 x float> %i.yc, %i.ye
  %i.yg = fsub float %i.wy, %i.wu
  %i.yh = fdiv float %i.yg, %i.xy
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.yi = fcmp ogt float %i.wt, %i.wz
  br i1 %i.yi, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yj = fadd float %i.wt, 1.000000e+00
  %i.yk = fsub float %i.yj, %i.wp
  %i.yl = fsub float %i.yk, %i.wz
  %i.ym = call noundef float @sqrtf(float noundef %i.yl) #27
  %i.yn = fmul float %i.ym, 2.000000e+00          ; 3 uses
  %i.yo = extractelement <2 x float> %i.wq, i64 0
  %i.yp = fadd float %i.yo, %i.ws
  %i.yq = fdiv float %i.yp, %i.yn
  %.sroa.020.4.vec.insert23.i331 = insertelement <2 x float> <float undef, float poison>, float %i.yq, i64 1
  %i.yr = fmul float %i.yn, 2.500000e-01
  %i.ys = extractelement <2 x float> %i.wq, i64 1
  %i.yt = fsub float %i.ys, %i.wx
  %i.yu = fadd float %i.wu, %i.wy
  %i.yv = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.yw = insertelement <2 x float> %i.yv, float %i.yu, i64 1
  %i.yx = insertelement <2 x float> poison, float %i.yn, i64 0
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yz = fdiv <2 x float> %i.yw, %i.yy           ; 2 uses
  %i.za = insertelement <2 x float> %i.yz, float %i.yr, i64 0
  %i.zb = extractelement <2 x float> %i.yz, i64 0
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.zc = fadd float %i.wz, 1.000000e+00
  %i.zd = fsub float %i.zc, %i.wp
  %i.ze = fsub float %i.zd, %i.wt
  %i.zf = call noundef float @sqrtf(float noundef %i.ze) #27
  %i.zg = fmul float %i.zf, 2.000000e+00          ; 3 uses
  %i.zh = extractelement <2 x float> %i.wq, i64 1
  %i.zi = fadd float %i.zh, %i.wx
  %i.zj = fdiv float %i.zi, %i.zg
  %.sroa.020.4.vec.insert.i322 = insertelement <2 x float> <float undef, float poison>, float %i.zj, i64 1
  %i.zk = fmul float %i.zg, 2.500000e-01
  %i.zl = extractelement <2 x float> %i.wq, i64 0
  %i.zm = fsub float %i.ws, %i.zl
  %i.zn = fadd float %i.wu, %i.wy
  %i.zo = insertelement <2 x float> poison, float %i.zn, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %i.zm, i64 1
  %i.zq = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zs = fdiv <2 x float> %i.zp, %i.zr           ; 2 uses
  %.sroa.6.12.vec.insert.i324 = insertelement <2 x float> %i.zs, float %i.zk, i64 1
  %i.zt = extractelement <2 x float> %i.zs, i64 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cf
  %.sroa.020.0.i325 = phi <2 x float> [ %.sroa.020.4.vec.insert27.i337, %bb.cf ], [ %.sroa.020.4.vec.insert25.i334, %bb.ch ], [ %.sroa.020.4.vec.insert23.i331, %bb.cj ], [ %.sroa.020.4.vec.insert.i322, %bb.ck ] ; 4 uses
  %.sroa.6.0.i326 = phi <2 x float> [ %i.xq, %bb.cf ], [ %i.yf, %bb.ch ], [ %i.za, %bb.cj ], [ %.sroa.6.12.vec.insert.i324, %bb.ck ] ; 5 uses
  %.sink.i.i327 = phi float [ %i.xr, %bb.cf ], [ %i.yh, %bb.ch ], [ %i.zb, %bb.cj ], [ %i.zt, %bb.ck ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %i.fi, label %._crit_edge434, label %.lr.ph430

.lr.ph430:                                        ; preds = %bb.cl
  %.sroa.0384.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i325, i64 1
  %i.zu = fneg float %.sroa.0384.4.vec.extract
  %i.zv = shufflevector <2 x float> %.sroa.6.0.i326, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zw = shufflevector <2 x float> %.sroa.6.0.i326, <2 x float> %.sroa.020.0.i325, <2 x i32> <i32 1, i32 3>
  %i.zx = shufflevector <2 x float> %.sroa.020.0.i325, <2 x float> %.sroa.6.0.i326, <2 x i32> <i32 1, i32 2>
  %i.zy = insertelement <2 x float> poison, float %.sink.i.i327, i64 0
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaa = insertelement <2 x float> %.sroa.020.0.i325, float %.sink.i.i327, i64 0
  %i.aab = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.aac = insertelement <2 x float> %i.aab, float %.sink.i.i327, i64 1
  br label %bb.co

bb.cm:                                            ; preds = %._crit_edge.i.i305
  %i.aad = landingpad { ptr, i32 }
          cleanup
  %i.aae = load ptr, ptr %26, align 8             ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.vp
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.cm
  %i.aag = load i64, ptr %i.vp, align 8
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.cu

bb.cn:                                            ; preds = %bb.ce
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.co:                                            ; preds = %.lr.ph430, %bb.co
  %.0167428 = phi i64 [ 0, %.lr.ph430 ], [ %i.abj, %bb.co ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %.0167428 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8 ; 2 uses
  %i.aal = load float, ptr %i.aak, align 4
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 12
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 2 uses
  %i.aao = load <2 x float>, ptr %i.aam, align 4  ; 5 uses
  %i.aap = load <2 x float>, ptr %i.aan, align 4  ; 3 uses
  %i.aaq = fneg <2 x float> %i.aao
  %i.aar = extractelement <2 x float> %i.aap, i64 1
  %i.aas = fneg float %i.aar
  %i.aat = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aau = fmul <2 x float> %i.aat, %i.aac
  %i.aav = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.aaw = shufflevector <2 x float> %i.aav, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %i.aaa, <2 x float> %i.aau)
  %i.aay = fneg <2 x float> %i.aao
  %i.aaz = shufflevector <2 x float> %i.aao, <2 x float> %i.aay, <2 x i32> <i32 3, i32 1>
  %i.aba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaz, <2 x float> %.sroa.6.0.i326, <2 x float> %i.aax)
  %i.abb = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.abc = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abc, <2 x float> %i.zv, <2 x float> %i.aba)
  %i.abe = fmul <2 x float> %i.zz, %i.aap
  %i.abf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %.sroa.6.0.i326, <2 x float> %i.abe)
  %i.abg = shufflevector <2 x float> %i.aap, <2 x float> %i.aao, <2 x i32> <i32 1, i32 2>
  %i.abh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abg, <2 x float> %i.zx, <2 x float> %i.abf)
  %i.abi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaq, <2 x float> %i.zw, <2 x float> %i.abh)
  store <2 x float> %i.abd, ptr %i.aak, align 8
  store <2 x float> %i.abi, ptr %i.aan, align 8
  %i.abj = add nuw i64 %.0167428, 1               ; 2 uses
  %exitcond450.not = icmp eq i64 %i.abj, %i.ds
  br i1 %exitcond450.not, label %.lr.ph433, label %bb.co, !llvm.loop !369

.loopexit:                                        ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  br i1 %i.fi, label %._crit_edge434, label %.lr.ph433

.lr.ph433:                                        ; preds = %bb.co, %.loopexit
  %i.abk = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.abl = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.abm = getelementptr inbounds nuw i8, ptr %27, i64 48
  br label %bb.cq

._crit_edge434.loopexit:                          ; preds = %bb.cr
  %.pre458 = load ptr, ptr %12, align 8
  br label %._crit_edge434

._crit_edge434:                                   ; preds = %bb.cl, %._crit_edge434.loopexit, %.loopexit
  %i.abn = phi ptr [ %.pre458, %._crit_edge434.loopexit ], [ %i.a, %.loopexit ], [ %i.a, %bb.cl ] ; 7 uses
  %i.abo = trunc i64 %i.ds to i32                 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 1056
  store i32 %i.abo, ptr %i.abp, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 1040
  store i32 %i.abo, ptr %i.abq, align 8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 1028
  store i32 %i.abo, ptr %i.abr, align 4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abn, i64 1064
  store ptr %i.hc, ptr %i.abs, align 8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 1048
  store ptr %i.fr, ptr %i.abt, align 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abn, i64 1032
  store ptr %i.fh, ptr %i.abu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.abv = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i351 = icmp eq ptr %i.abv, null
  br i1 %.not.i.i.i351, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge434
  %i.abw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = ptrtoint ptr %i.abx to i64
  %i.abz = ptrtoint ptr %i.abv to i64
  %i.aca = sub i64 %i.aby, %i.abz
  call void @_ZdlPvm(ptr noundef nonnull %i.abv, i64 noundef %i.aca) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge434, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.acb = getelementptr inbounds nuw i8, ptr %13, i64 384 ; 2 uses
  %i.acc = load ptr, ptr %i.acb, align 16
  %i.acd = getelementptr inbounds nuw i8, ptr %13, i64 392
  %i.ace = load ptr, ptr %i.acd, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.acc, ptr noundef %i.ace)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360 unwind label %bb.db

bb.cq:                                            ; preds = %.lr.ph433, %bb.cr
  %.0165431 = phi i64 [ 0, %.lr.ph433 ], [ %i.aiu, %bb.cr ] ; 4 uses
  %i.acf = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %.0165431 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 2 uses
  %i.ach = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %.0165431 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8 ; 2 uses
  %i.acj = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.0165431 ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.acl = load float, ptr %i.ack, align 4        ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 12
  %i.acn = load float, ptr %i.acm, align 4        ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acp = load float, ptr %i.aco, align 4        ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acf, i64 20
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  %i.act = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %i.acu = load float, ptr %i.act, align 4
  %.scalar = fadd float %i.acl, 0.000000e+00      ; 2 uses
  %i.acv = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.acw = shufflevector <2 x float> %i.acv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.acx = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.acu, i64 2 ; 4 uses
  %.scalar585 = fadd float %i.acn, 0.000000e+00   ; 2 uses
  %i.acy = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar585, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ada = load <4 x float>, ptr %i.acg, align 4, !noalias !370 ; 6 uses
  %i.adb = load float, ptr %i.acq, align 4, !noalias !370 ; 4 uses
  %i.adc = extractelement <4 x float> %i.ada, i64 0 ; 2 uses
  %i.add = fneg float %i.adc                      ; 2 uses
  %i.ade = fmul float %i.adb, %i.add
  %i.adf = fmul float %i.adb, %i.adc
  %i.adg = load <2 x float>, ptr %i.acr, align 4, !noalias !370 ; 3 uses
  %28 = shufflevector <2 x float> %i.adg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %29 = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, float %i.adb, i64 0 ; 2 uses
  %30 = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>, float %i.adb, i64 0
  %31 = fmul <4 x float> %29, %30                 ; 2 uses
  %32 = extractelement <2 x float> %i.adg, i64 1  ; 4 uses
  %33 = extractelement <4 x float> %31, i64 0
  %i.adh = call float @llvm.fmuladd.f32(float %32, float %32, float %33)
  %34 = extractelement <2 x float> %i.adg, i64 0  ; 2 uses
  %35 = call float @llvm.fmuladd.f32(float %34, float %32, float %i.ade)
  %36 = call float @llvm.fmuladd.f32(float %34, float %32, float %i.adf)
  %37 = fmul float %36, 2.000000e+00              ; 2 uses
  %38 = shufflevector <4 x float> %28, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %39 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %38, <4 x float> %31)
  %40 = shufflevector <4 x float> %28, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  %41 = shufflevector <4 x float> %i.ada, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 poison, i32 0>
  %i.adi = insertelement <4 x float> poison, float %i.add, i64 0
  %42 = shufflevector <4 x float> %i.adi, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %43 = shufflevector <4 x float> %41, <4 x float> %42, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %44 = fmul <4 x float> %40, %43
  %45 = shufflevector <4 x float> %29, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  %i.adj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %39, <4 x float> %45, <4 x float> %44) ; 4 uses
  %i.adk = extractelement <4 x float> %i.adj, i64 1
  %i.adl = fmul float %i.adk, 2.000000e+00        ; 2 uses
  %i.adm = extractelement <4 x float> %i.adj, i64 2
  %i.adn = fmul float %i.adm, 2.000000e+00        ; 4 uses
  %i.ado = extractelement <4 x float> %i.adj, i64 3
  %i.adp = shufflevector <4 x float> %i.ada, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.adq = shufflevector <4 x float> %i.ada, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.adr = fmul <2 x float> %i.adp, %i.adq
  %i.ads = extractelement <4 x float> %i.adj, i64 0 ; 2 uses
  %i.adt = fmul float %i.adl, 0.000000e+00        ; 2 uses
  %i.adu = shufflevector <4 x float> %i.ada, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.adv = shufflevector <4 x float> %i.ada, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.adw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adu, <2 x float> %i.adv, <2 x float> %i.adr)
  %i.adx = fmul <2 x float> %i.adw, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %i.ady = extractelement <2 x float> %i.adx, i64 1 ; 2 uses
  %i.adz = fadd float %i.ady, %i.adt
  %i.aea = call float @llvm.fmuladd.f32(float %i.adh, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.aeb = fmul float %35, 2.000000e+00           ; 3 uses
  %i.aec = fmul float %i.ado, 2.000000e+00        ; 4 uses
  %i.aed = fmul float %37, 0.000000e+00           ; 2 uses
  %i.aee = fadd float %i.aea, %i.aed
  %i.aef = call float @llvm.fmuladd.f32(float %i.adn, float 0.000000e+00, float %i.aee)
  %i.aeg = call float @llvm.fmuladd.f32(float %i.acl, float 0.000000e+00, float %i.aef) ; 2 uses
  %i.aeh = fmul float %i.ads, 0.000000e+00        ; 2 uses
  %i.aei = fadd float %i.aeh, %i.aeb
  %i.aej = call float @llvm.fmuladd.f32(float %i.aec, float 0.000000e+00, float %i.aei)
  %i.aek = call float @llvm.fmuladd.f32(float %i.acl, float 0.000000e+00, float %i.aej) ; 2 uses
  %i.ael = call float @llvm.fmuladd.f32(float %i.aea, float 0.000000e+00, float %37)
  %i.aem = call float @llvm.fmuladd.f32(float %i.adn, float 0.000000e+00, float %i.ael)
  %i.aen = call float @llvm.fmuladd.f32(float %i.acn, float 0.000000e+00, float %i.aem) ; 2 uses
  %i.aeo = call float @llvm.fmuladd.f32(float %i.aeb, float 0.000000e+00, float %i.ads)
  %i.aep = call float @llvm.fmuladd.f32(float %i.aec, float 0.000000e+00, float %i.aeo)
  %i.aeq = call float @llvm.fmuladd.f32(float %i.acn, float 0.000000e+00, float %i.aep) ; 2 uses
  %i.aer = fmul float %i.aek, 0.000000e+00        ; 2 uses
  %i.aes = call float @llvm.fmuladd.f32(float %i.aea, float 0.000000e+00, float %i.aed) ; 2 uses
  %i.aet = call float @llvm.fmuladd.f32(float %i.aeb, float 0.000000e+00, float %i.aeh) ; 2 uses
  %i.aeu = fadd float %i.adn, %i.aes
  %i.aev = call float @llvm.fmuladd.f32(float %i.acp, float 0.000000e+00, float %i.aeu) ; 2 uses
  %i.aew = fadd float %i.aec, %i.aet
  %i.aex = insertelement <4 x float> poison, float %i.acp, i64 0
  %i.aey = insertelement <4 x float> %i.aex, float %i.adn, i64 1
  %i.aez = insertelement <4 x float> %i.aey, float %i.aec, i64 2
  %i.afa = insertelement <4 x float> %i.aez, float %i.aeg, i64 3
  %i.afb = insertelement <4 x float> poison, float %i.aew, i64 0
  %i.afc = insertelement <4 x float> %i.afb, float %i.aes, i64 1
  %i.afd = insertelement <4 x float> %i.afc, float %i.aet, i64 2
  %i.afe = insertelement <4 x float> %i.afd, float %i.aer, i64 3
  %i.aff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afa, <4 x float> zeroinitializer, <4 x float> %i.afe) ; 5 uses
  %i.afg = extractelement <4 x float> %i.aff, i64 1
  %i.afh = fadd float %i.afg, 0.000000e+00
  %i.afi = extractelement <4 x float> %i.aff, i64 2
  %i.afj = fadd float %i.afi, 0.000000e+00
  %i.afk = insertelement <2 x float> poison, float %i.aeg, i64 0
  %i.afl = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afm = insertelement <2 x float> poison, float %i.aer, i64 0
  %i.afn = shufflevector <4 x float> %i.aff, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.afo = call float @llvm.fmuladd.f32(float %i.ady, float 0.000000e+00, float %i.adl)
  %i.afp = fmul float %i.aeq, 0.000000e+00        ; 2 uses
  %i.afq = insertelement <2 x float> poison, float %i.aen, i64 0
  %i.afr = shufflevector <2 x float> %i.afq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afs = insertelement <2 x float> poison, float %i.afp, i64 0
  %i.aft = call float @llvm.fmuladd.f32(float %i.aen, float 0.000000e+00, float %i.afp) ; 2 uses
  %i.afu = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.adt, i64 1
  %i.afv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adx, <2 x float> <float -2.000000e+00, float 0.000000e+00>, <2 x float> %i.afu) ; 2 uses
  %i.afw = extractelement <2 x float> %i.afv, i64 0 ; 4 uses
  %i.afx = call float @llvm.fmuladd.f32(float %i.afw, float 0.000000e+00, float %i.adz)
  %i.afy = call float @llvm.fmuladd.f32(float %i.acl, float 0.000000e+00, float %i.afx) ; 2 uses
  %i.afz = call float @llvm.fmuladd.f32(float %i.afw, float 0.000000e+00, float %i.afo)
  %i.aga = call float @llvm.fmuladd.f32(float %i.acn, float 0.000000e+00, float %i.afz) ; 2 uses
  %i.agb = extractelement <2 x float> %i.afv, i64 1 ; 2 uses
  %i.agc = fadd float %i.afw, %i.agb
  %i.agd = call float @llvm.fmuladd.f32(float %i.afw, float 0.000000e+00, float %i.agb)
  %i.age = fadd float %i.agd, 0.000000e+00
  %i.agf = extractelement <4 x float> %i.aff, i64 3
  %i.agg = call float @llvm.fmuladd.f32(float %i.afy, float 0.000000e+00, float %i.agf)
  %i.agh = fadd float %.scalar, %i.agg
  %i.agi = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.afy, i64 0
  %i.agj = shufflevector <4 x float> %i.agi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agk = insertelement <4 x float> %i.afn, float %i.agh, i64 3
  %i.agl = call float @llvm.fmuladd.f32(float %i.aga, float 0.000000e+00, float %i.aft)
  %i.agm = fadd float %.scalar585, %i.agl
  %i.agn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aga, i64 0
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agp = insertelement <4 x float> poison, float %i.aft, i64 2
  %i.agq = insertelement <4 x float> %i.agp, float %i.agm, i64 3
  %i.agr = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.acp, i64 0 ; 2 uses
  %i.ags = fadd <2 x float> %i.agr, <float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.agt = shufflevector <2 x float> %i.ags, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.agu = extractelement <4 x float> %i.aff, i64 0 ; 2 uses
  %i.agv = fmul float %i.agu, 0.000000e+00        ; 2 uses
  %i.agw = insertelement <2 x float> poison, float %i.aev, i64 0
  %i.agx = shufflevector <2 x float> %i.agw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agy = insertelement <2 x float> poison, float %i.agv, i64 0
  %i.agz = call float @llvm.fmuladd.f32(float %i.aev, float 0.000000e+00, float %i.agv) ; 2 uses
  %i.aha = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.agc, i64 0
  %i.ahb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agr, <2 x float> zeroinitializer, <2 x float> %i.aha) ; 2 uses
  %i.ahc = shufflevector <2 x float> %i.ahb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ahd = extractelement <2 x float> %i.ahb, i64 0
  %i.ahe = call float @llvm.fmuladd.f32(float %i.ahd, float 0.000000e+00, float %i.agz)
  %i.ahf = extractelement <2 x float> %i.ags, i64 0
  %i.ahg = fadd float %i.ahf, %i.ahe
  %i.ahh = insertelement <4 x float> poison, float %i.agz, i64 2
  %i.ahi = insertelement <4 x float> %i.ahh, float %i.ahg, i64 3
  %i.ahj = load <2 x float>, ptr %i.aci, align 4  ; 3 uses
  %i.ahk = load float, ptr %i.acs, align 4        ; 3 uses
  %i.ahl = insertelement <2 x float> poison, float %i.afj, i64 0
  %i.ahm = shufflevector <2 x float> %i.ahl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ahn = shufflevector <2 x float> %i.ahj, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 2, i32 2>
  %i.aho = fmul <4 x float> %i.ahm, %i.ahn
  %i.ahp = shufflevector <2 x float> %i.ahj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ahq = shufflevector <4 x float> %i.ahp, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ahr = insertelement <4 x float> poison, float %i.afh, i64 0
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahq, <4 x float> %i.ahs, <4 x float> %i.aho)
  %i.ahu = fmul float %i.aek, %i.ahk
  %i.ahv = insertelement <2 x float> %i.ahj, float 0.000000e+00, i64 1 ; 3 uses
  %i.ahw = insertelement <2 x float> %i.afm, float %i.ahu, i64 1
  %i.ahx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahv, <2 x float> %i.afl, <2 x float> %i.ahw)
  %i.ahy = shufflevector <2 x float> %i.ahx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahz = fmul float %i.aeq, %i.ahk
  %i.aia = insertelement <2 x float> %i.afs, float %i.ahz, i64 1
  %i.aib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahv, <2 x float> %i.afr, <2 x float> %i.aia)
  %i.aic = shufflevector <4 x float> %i.ahy, <4 x float> %i.agk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aid = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acx, <4 x float> %i.agj, <4 x float> %i.aic)
  %i.aie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acw, <4 x float> zeroinitializer, <4 x float> %i.aid)
  %i.aif = shufflevector <2 x float> %i.aib, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aig = shufflevector <4 x float> %i.aif, <4 x float> %i.agq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acx, <4 x float> %i.ago, <4 x float> %i.aig)
  %i.aii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acz, <4 x float> zeroinitializer, <4 x float> %i.aih)
  %i.aij = insertelement <4 x float> poison, float %i.age, i64 0
  %i.aik = shufflevector <4 x float> %i.aij, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ail = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acx, <4 x float> %i.aik, <4 x float> %i.aht)
  %i.aim = fadd <4 x float> %i.ail, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.aie, ptr %27, align 16
  store <4 x float> %i.aii, ptr %i.abk, align 16
  %i.ain = fmul float %i.agu, %i.ahk
  %i.aio = insertelement <2 x float> %i.agy, float %i.ain, i64 1
  %i.aip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahv, <2 x float> %i.agx, <2 x float> %i.aio)
  %i.aiq = shufflevector <2 x float> %i.aip, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.air = shufflevector <4 x float> %i.aiq, <4 x float> %i.ahi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ais = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acx, <4 x float> %i.ahc, <4 x float> %i.air)
  %i.ait = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agt, <4 x float> zeroinitializer, <4 x float> %i.ais)
  store <4 x float> %i.ait, ptr %i.abl, align 16
  store <4 x float> %i.aim, ptr %i.abm, align 16
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(12) %i.aci, ptr noundef nonnull align 4 dereferenceable(16) %i.acg, ptr noundef nonnull align 4 dereferenceable(12) %i.ack)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.aiu = add nuw i64 %.0165431, 1               ; 2 uses
  %exitcond452.not = icmp eq i64 %i.aiu, %i.ds
  br i1 %exitcond452.not, label %._crit_edge434.loopexit, label %bb.cq, !llvm.loop !373

bb.cs:                                            ; preds = %bb.cq
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cn, %bb.cs
  %.pn190.pn = phi { ptr, i32 } [ %i.aiv, %bb.cs ], [ %i.aai, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.cu

bb.cu:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %bb.ct
  %.pn194.pn = phi { ptr, i32 } [ %i.aad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ], [ %.pn190.pn, %bb.ct ], [ %i.un, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.cu, %bb.au, %bb.aw, %bb.bh, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  %.pn194.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %i.il, %bb.au ], [ %i.im, %bb.av ], [ %i.nd, %bb.bh ], [ %i.in, %bb.aw ], [ %.pn194.pn, %bb.cu ], [ %i.ui, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %.pn194.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.cy

bb.cy:                                            ; preds = %bb.aq, %bb.cx, %bb.l, %bb.s, %bb.w, %bb.aa
  %.pn207.pn = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.cs, %bb.w ], [ %i.hv, %bb.aq ], [ %i.dm, %bb.aa ], [ %i.au, %bb.l ], [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ]
  %i.aiw = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i358 = icmp eq ptr %i.aiw, null
  br i1 %.not.i.i.i358, label %_ZNSt6vectorIlSaIlEED2Ev.exit359, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aix = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aiy = load ptr, ptr %i.aix, align 8
  %i.aiz = ptrtoint ptr %i.aiy to i64
  %i.aja = ptrtoint ptr %i.aiw to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  call void @_ZdlPvm(ptr noundef nonnull %i.aiw, i64 noundef %i.ajb) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit359

_ZNSt6vectorIlSaIlEED2Ev.exit359:                 ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.ajc = getelementptr inbounds nuw i8, ptr %13, i64 384 ; 2 uses
  %i.ajd = load ptr, ptr %i.ajc, align 16
  %i.aje = getelementptr inbounds nuw i8, ptr %13, i64 392
  %i.ajf = load ptr, ptr %i.aje, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.ajd, ptr noundef %i.ajf)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ajg = load ptr, ptr %i.acb, align 16         ; 3 uses
  %.not.i.i.i361 = icmp eq ptr %i.ajg, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360
  %i.ajh = getelementptr inbounds nuw i8, ptr %13, i64 400
  %i.aji = load ptr, ptr %i.ajh, align 16
  %i.ajj = ptrtoint ptr %i.aji to i64
  %i.ajk = ptrtoint ptr %i.ajg to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  call void @_ZdlPvm(ptr noundef nonnull %i.ajg, i64 noundef %i.ajl) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362

bb.db:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.15, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.14, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.13, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.12, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.11, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.10, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.9, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.8, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.7, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.6, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.5, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.4, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.3, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.2, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.1, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ajm = landingpad { ptr, i32 }
          catch ptr null
  %i.ajn = extractvalue { ptr, i32 } %i.ajm, 0
  call void @__clang_call_terminate(ptr %i.ajn) #32
  unreachable
end_hunk_1
