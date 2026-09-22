Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
._crit_edge1550:                                  ; preds = %bb.bq, %bb.bp
  %.sroa.01283.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %i.czs, %bb.bq ] ; 4 uses
  %.sroa.24.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %.sroa.24.8.vec.insert1332, %bb.bq ] ; 3 uses
  %.sroa.341333.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %i.czw, %bb.bq ] ; 5 uses
  %.sroa.511362.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %.sroa.511362.24.vec.insert1377, %bb.bq ] ; 2 uses
  %.sroa.01283.0.vec.extract1292 = extractelement <2 x float> %.sroa.01283.4.lcssa, i64 0 ; 2 uses
  %.sroa.01283.4.vec.extract1309 = extractelement <2 x float> %.sroa.01283.4.lcssa, i64 1 ; 2 uses
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.ctm, i64 4
  %.sroa.24.8.vec.extract1326 = extractelement <2 x float> %.sroa.24.4.lcssa, i64 0
  %.sroa.341333.16.vec.extract1342 = extractelement <2 x float> %.sroa.341333.4.lcssa, i64 0
  %.sroa.341333.20.vec.extract1355 = extractelement <2 x float> %.sroa.341333.4.lcssa, i64 1
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.ctm, i64 20
  %i.cxb = fadd <2 x float> %.sroa.341333.4.lcssa, %i.cwk
  store <2 x float> %i.cxb, ptr %i.cwm, align 4, !tbaa !20
  %.sroa.511362.24.vec.extract1371 = extractelement <2 x float> %.sroa.511362.4.lcssa, i64 0 ; 2 uses
  %i.cxc = fadd float %.sroa.511362.24.vec.extract1371, %i.cwl
  store float %i.cxc, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !20
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cwo, i64 72
  %i.cxe = fadd float %.sroa.01283.4.vec.extract1309, %i.cvl ; 3 uses
  %i.cxf = fadd float %.sroa.01283.0.vec.extract1292, %i.cvh ; 3 uses
  %foldExtExtBinop1899 = fadd <2 x float> %.sroa.24.4.lcssa, %i.cuv ; 2 uses
  %i.cxg = extractelement <2 x float> %foldExtExtBinop1899, i64 0 ; 2 uses
  store float %i.cxf, ptr %i.ctm, align 4, !tbaa !20
  store float %i.cxe, ptr %i.cwz, align 4, !tbaa !20
  store float %i.cxg, ptr %.sroa.42.0..sroa_idx.i795, align 4, !tbaa !20
  %i.cxh = insertelement <2 x float> poison, float %i.cxe, i64 0
  %i.cxi = shufflevector <2 x float> %i.cxh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxj = fmul <2 x float> %i.cth, %i.cxi
  %i.cxk = insertelement <2 x float> poison, float %i.cxf, i64 0
  %i.cxl = shufflevector <2 x float> %i.cxk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctg, <2 x float> %i.cxl, <2 x float> %i.cxj)
  %i.cxn = shufflevector <2 x float> %foldExtExtBinop1899, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cti, <2 x float> %i.cxn, <2 x float> %i.cxm)
  %i.cxp = fmul float %.sroa.461242.16.copyload1244, %i.cxe
  %i.cxq = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %i.cxf, float %i.cxp)
  %i.cxr = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %i.cxg, float %i.cxq)
  %.sroa.3.12.vec.insert.i.i802 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cxr, i64 0
  store <2 x float> %i.cxo, ptr %i.cxd, align 4
  %.sroa.42.0..sroa_idx.i803 = getelementptr inbounds nuw i8, ptr %i.cwo, i64 80
  store <2 x float> %.sroa.3.12.vec.insert.i.i802, ptr %.sroa.42.0..sroa_idx.i803, align 4, !tbaa !21
  %i.cxs = load float, ptr %i.cxa, align 4, !tbaa !20 ; 2 uses
  %i.cxt = load float, ptr %i.cwm, align 4, !tbaa !20 ; 2 uses
  %i.cxu = load float, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !20 ; 2 uses
  %i.cxv = insertelement <2 x float> poison, float %i.cxs, i64 0
  %i.cxw = shufflevector <2 x float> %i.cxv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxx = fmul <2 x float> %i.cth, %i.cxw
  %i.cxy = insertelement <2 x float> poison, float %i.cxt, i64 0
  %i.cxz = shufflevector <2 x float> %i.cxy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cya = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctg, <2 x float> %i.cxz, <2 x float> %i.cxx)
  %i.cyb = insertelement <2 x float> poison, float %i.cxu, i64 0
  %i.cyc = shufflevector <2 x float> %i.cyb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cti, <2 x float> %i.cyc, <2 x float> %i.cya)
  %i.cye = fmul float %.sroa.461242.16.copyload1244, %i.cxs
  %i.cyf = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %i.cxt, float %i.cye)
  %i.cyg = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %i.cxu, float %i.cyf)
  %.sroa.3.12.vec.insert.i19.i806 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cyg, i64 0
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cwo, i64 88
  store <2 x float> %i.cyd, ptr %i.cyh, align 4
  %.sroa.4.0..sroa_idx.i807 = getelementptr inbounds nuw i8, ptr %i.cwo, i64 96
  store <2 x float> %.sroa.3.12.vec.insert.i19.i806, ptr %.sroa.4.0..sroa_idx.i807, align 4, !tbaa !21
  %i.cyi = load ptr, ptr %i.csm, align 8, !tbaa !47
  %i.cyj = getelementptr inbounds nuw [688 x i8], ptr %i.cyi, i64 %indvars.iv1650 ; 4 uses
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cyj, i64 104
  %i.cyl = shufflevector <2 x float> %.sroa.01283.4.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cym = fmul <2 x float> %i.cth, %i.cyl
  %i.cyn = shufflevector <2 x float> %.sroa.01283.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctg, <2 x float> %i.cyn, <2 x float> %i.cym)
  %i.cyp = shufflevector <2 x float> %.sroa.24.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cti, <2 x float> %i.cyp, <2 x float> %i.cyo)
  %i.cyr = fmul float %.sroa.461242.16.copyload1244, %.sroa.01283.4.vec.extract1309
  %i.cys = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %.sroa.01283.0.vec.extract1292, float %i.cyr)
  %i.cyt = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %.sroa.24.8.vec.extract1326, float %i.cys)
  %.sroa.3.12.vec.insert.i.i810 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cyt, i64 0
  store <2 x float> %i.cyq, ptr %i.cyk, align 4
  %.sroa.42.0..sroa_idx.i811 = getelementptr inbounds nuw i8, ptr %i.cyj, i64 112
  store <2 x float> %.sroa.3.12.vec.insert.i.i810, ptr %.sroa.42.0..sroa_idx.i811, align 4, !tbaa !21
  %i.cyu = shufflevector <2 x float> %.sroa.341333.4.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cyv = fmul <2 x float> %i.cth, %i.cyu
  %i.cyw = shufflevector <2 x float> %.sroa.341333.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctg, <2 x float> %i.cyw, <2 x float> %i.cyv)
  %i.cyy = shufflevector <2 x float> %.sroa.511362.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cti, <2 x float> %i.cyy, <2 x float> %i.cyx)
  %i.cza = fmul float %.sroa.461242.16.copyload1244, %.sroa.341333.20.vec.extract1355
  %i.czb = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %.sroa.341333.16.vec.extract1342, float %i.cza)
  %i.czc = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %.sroa.511362.24.vec.extract1371, float %i.czb)
  %.sroa.3.12.vec.insert.i19.i814 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.czc, i64 0
  %i.czd = getelementptr inbounds nuw i8, ptr %i.cyj, i64 120
  store <2 x float> %i.cyz, ptr %i.czd, align 4
  %.sroa.4.0..sroa_idx.i815 = getelementptr inbounds nuw i8, ptr %i.cyj, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i19.i814, ptr %.sroa.4.0..sroa_idx.i815, align 4, !tbaa !21
  %exitcond1654.not = icmp eq i64 %indvars.iv.next1651, %wide.trip.count1653
  br i1 %exitcond1654.not, label %.loopexit, label %bb.bp, !llvm.loop !228

bb.bq:                                            ; preds = %.lr.ph1549, %bb.bq
  %indvars.iv1645 = phi i64 [ 0, %.lr.ph1549 ], [ %indvars.iv.next1646, %bb.bq ] ; 3 uses
  %.sroa.511362.41546 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %.sroa.511362.24.vec.insert1377, %bb.bq ] ; 2 uses
  %.sroa.341333.41545 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %i.czw, %bb.bq ]
  %.sroa.24.41544 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %.sroa.24.8.vec.insert1332, %bb.bq ] ; 2 uses
  %.sroa.01283.41543 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %i.czs, %bb.bq ]
  %i.cze = getelementptr inbounds nuw [32 x i8], ptr %i.cws, i64 %indvars.iv1645 ; 4 uses
  %i.czf = getelementptr inbounds nuw [4 x i8], ptr %i.cwy, i64 %indvars.iv1645
  %i.czg = load float, ptr %i.czf, align 4, !tbaa !20, !noalias !261 ; 3 uses
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cze, i64 8
  %i.czi = load float, ptr %i.czh, align 4, !tbaa !20, !noalias !261
  %i.czj = fmul float %i.czg, %i.czi
  %i.czk = getelementptr inbounds nuw i8, ptr %i.cze, i64 16
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cze, i64 24
  %i.czm = load float, ptr %i.czl, align 4, !tbaa !20, !noalias !261
  %i.czn = fmul float %i.czg, %i.czm
  %i.czo = load <2 x float>, ptr %i.cze, align 4, !tbaa !20, !noalias !261
  %i.czp = insertelement <2 x float> poison, float %i.czg, i64 0
  %i.czq = shufflevector <2 x float> %i.czp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czr = fmul <2 x float> %i.czq, %i.czo
  %i.czs = fadd <2 x float> %.sroa.01283.41543, %i.czr ; 2 uses
  %.sroa.24.8.vec.extract1330 = extractelement <2 x float> %.sroa.24.41544, i64 0
  %i.czt = fadd float %.sroa.24.8.vec.extract1330, %i.czj
  %.sroa.24.8.vec.insert1332 = insertelement <2 x float> %.sroa.24.41544, float %i.czt, i64 0 ; 2 uses
  %i.czu = load <2 x float>, ptr %i.czk, align 4, !tbaa !20, !noalias !261
  %i.czv = fmul <2 x float> %i.czq, %i.czu
  %i.czw = fadd <2 x float> %.sroa.341333.41545, %i.czv ; 2 uses
  %.sroa.511362.24.vec.extract1375 = extractelement <2 x float> %.sroa.511362.41546, i64 0
  %i.czx = fadd float %.sroa.511362.24.vec.extract1375, %i.czn
  %.sroa.511362.24.vec.insert1377 = insertelement <2 x float> %.sroa.511362.41546, float %i.czx, i64 0 ; 2 uses
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1 ; 2 uses
  %exitcond1649.not = icmp eq i64 %indvars.iv.next1646, %wide.trip.count1648
  br i1 %exitcond1649.not, label %._crit_edge1550, label %bb.bq, !llvm.loop !231

.loopexit:                                        ; preds = %._crit_edge1550, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not9 = icmp eq i32 %1, -1
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i32 [ %1, %.lr.ph ], [ %i.k, %bb.c ]
  %i.c = sext i32 %.010 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %_ZNK11btMultiBody15isLinkKinematicEi.exit

_ZNK11btMultiBody15isLinkKinematicEi.exit:        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load i32, ptr %i.g, align 8, !tbaa !97
  %i.i = and i32 %i.h, 2
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !77   ; 2 uses
  %.not = icmp eq i32 %i.k, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i6, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load i32, ptr %i.n, align 8, !tbaa !97
  %i.p = and i32 %i.o, 2
  %i.q = icmp ne i32 %i.p, 0
  br label %_ZNK11btMultiBody15isBaseKinematicEv.exit

_ZNK11btMultiBody15isBaseKinematicEv.exit:        ; preds = %bb.b, %_ZNK11btMultiBody15isLinkKinematicEi.exit, %bb.d, %._crit_edge
  %.05 = phi i1 [ %i.q, %bb.d ], [ false, %._crit_edge ], [ false, %_ZNK11btMultiBody15isLinkKinematicEi.exit ], [ false, %bb.b ]
  ret i1 %.05
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN29btSpatialTransformationMatrix16transformInverseERK22btSymmetricSpatialDyadRS0_NS_16eOutputOperationE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(144) %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !20 ; 5 uses
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !20 ; 6 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !20 ; 3 uses
  %i.g = fneg float %i.f                          ; 4 uses
  %i.h = extractelement <2 x float> %i.d, i64 0
  %i.i = fneg float %i.h                          ; 4 uses
  %i.j = extractelement <2 x float> %i.e, i64 0
  %i.k = fneg float %i.j                          ; 4 uses
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.u = load <4 x float>, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.w = load <4 x float>, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load <4 x float>, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.aa = load <4 x float>, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ag = load <4 x float>, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20, !noalias !316
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !20, !noalias !316
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10658.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.11659.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load <2 x float>, ptr %0, align 4, !tbaa !20, !noalias !317 ; 4 uses
  %i.aq = load <2 x float>, ptr %i.l, align 4, !tbaa !20, !noalias !317 ; 4 uses
  %i.ar = load <2 x float>, ptr %i.m, align 4, !tbaa !20, !noalias !317 ; 4 uses
  %i.as = extractelement <2 x float> %i.ap, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 0
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 0.000000e+00, i64 3
  %i.aw = shufflevector <4 x float> %i.w, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ax = insertelement <3 x float> <float poison, float poison, float 0.000000e+00>, float %i.i, i64 0
  %i.ay = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.az = shufflevector <3 x float> %i.ax, <3 x float> %i.ay, <3 x i32> <i32 0, i32 4, i32 2> ; 3 uses
  %i.ba = fmul <3 x float> %i.aw, %i.az
  %i.bb = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0> ; 3 uses
  %i.bc = shufflevector <3 x float> <float poison, float 0.000000e+00, float poison>, <3 x float> %i.bb, <3 x i32> <i32 4, i32 1, i32 poison>
  %i.bd = insertelement <3 x float> %i.bc, float %i.g, i64 2 ; 3 uses
  %i.be = shufflevector <4 x float> %i.u, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bd, <3 x float> %i.be, <3 x float> %i.ba)
  %i.bg = insertelement <3 x float> <float 0.000000e+00, float poison, float poison>, float %i.k, i64 1
  %i.bh = shufflevector <3 x float> %i.bg, <3 x float> %i.bb, <3 x i32> <i32 0, i32 1, i32 3> ; 3 uses
  %i.bi = shufflevector <4 x float> %i.y, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.bi, <3 x float> %i.bf)
  %i.bk = shufflevector <4 x float> %i.ac, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bl = fmul <3 x float> %i.bk, %i.az
  %i.bm = shufflevector <4 x float> %i.aa, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bd, <3 x float> %i.bm, <3 x float> %i.bl)
  %i.bo = shufflevector <4 x float> %i.ae, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.bo, <3 x float> %i.bn)
  %i.bq = insertelement <3 x float> poison, float %i.ai, i64 0
  %i.br = shufflevector <3 x float> %i.bq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bs = fmul <3 x float> %i.br, %i.az
  %i.bt = shufflevector <4 x float> %i.ag, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bd, <3 x float> %i.bt, <3 x float> %i.bs)
  %i.bv = insertelement <3 x float> poison, float %i.ak, i64 0
  %i.bw = shufflevector <3 x float> %i.bv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.bw, <3 x float> %i.bu)
  %i.by = load <3 x float>, ptr %1, align 4, !tbaa !20, !noalias !318
  %i.bz = shufflevector <3 x float> %i.by, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ca = fsub <3 x float> %i.bz, %i.bj           ; 5 uses
  %i.cb = load <3 x float>, ptr %i.al, align 4, !tbaa !20, !noalias !318
  %i.cc = shufflevector <3 x float> %i.cb, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.cd = fsub <3 x float> %i.cc, %i.bp           ; 3 uses
  %i.ce = load <3 x float>, ptr %i.am, align 4, !tbaa !20, !noalias !318
  %i.cf = shufflevector <3 x float> %i.ce, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.cg = fsub <3 x float> %i.cf, %i.bx           ; 5 uses
  %i.ch = load <2 x float>, ptr %i.o, align 4, !tbaa !20, !noalias !317 ; 6 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 1
  %i.cj = load <2 x float>, ptr %i.n, align 4, !tbaa !20, !noalias !317 ; 6 uses
  %i.ck = load <2 x float>, ptr %i.p, align 4, !tbaa !20, !noalias !317 ; 6 uses
  %i.cl = shufflevector <2 x float> %i.aq, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cm = fmul <3 x float> %i.cl, %i.cd
  %i.cn = shufflevector <2 x float> %i.ap, <2 x float> poison, <3 x i32> zeroinitializer
  %i.co = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ca, <3 x float> %i.cn, <3 x float> %i.cm)
  %i.cp = shufflevector <2 x float> %i.ar, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cg, <3 x float> %i.cp, <3 x float> %i.co) ; 6 uses
  %i.cr = shufflevector <3 x float> %i.ca, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cs = shufflevector <3 x float> <float poison, float -0.000000e+00, float poison>, <3 x float> %i.ca, <2 x i32> <i32 4, i32 1>
  %i.ct = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.cj, <2 x i32> <i32 3, i32 1> ; 3 uses
  %i.cu = shufflevector <3 x float> %i.cg, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cv = shufflevector <3 x float> <float poison, float -0.000000e+00, float poison>, <3 x float> %i.cg, <2 x i32> <i32 4, i32 1>
  %i.cw = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ck, <2 x i32> <i32 3, i32 1> ; 3 uses
  %i.cx = insertelement <2 x float> %i.cr, float -0.000000e+00, i64 1
  %i.cy = insertelement <2 x float> %i.cu, float -0.000000e+00, i64 1
  %i.cz = shufflevector <3 x float> %i.ca, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.da = insertelement <2 x float> %i.cz, float -0.000000e+00, i64 1
  %i.db = shufflevector <3 x float> %i.cg, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dc = insertelement <2 x float> %i.db, float -0.000000e+00, i64 1
  %i.dd = shufflevector <2 x float> %i.ch, <2 x float> %i.aq, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.de = shufflevector <3 x float> %i.cd, <3 x float> %i.cq, <4 x i32> <i32 1, i32 2, i32 0, i32 5>
  %i.df = fmul <4 x float> %i.dd, %i.de           ; 4 uses
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float -0.000000e+00, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.dh)
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.di)
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dl = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.df, <2 x i32> <i32 5, i32 1>
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.ct, <2 x float> %i.dl)
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cw, <2 x float> %i.dm)
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dp = shufflevector <4 x float> %i.df, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dq = insertelement <2 x float> %i.dp, float -0.000000e+00, i64 1
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.ct, <2 x float> %i.dq)
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.cw, <2 x float> %i.dr)
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.du = extractelement <3 x float> %i.cq, i64 1
  %i.dv = extractelement <4 x float> %i.df, i64 3
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.du, float %i.dv)
  %i.dx = extractelement <3 x float> %i.cq, i64 0
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.dx, float %i.dw)
  %i.dz = shufflevector <3 x float> %i.cq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ea = fmul <2 x float> %i.ch, %i.dz
  %i.eb = shufflevector <3 x float> %i.cq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.eb, <2 x float> %i.ea)
  %i.ed = shufflevector <3 x float> %i.cq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ed, <2 x float> %i.ec)
  %i.ef = extractelement <2 x float> %i.cj, i64 1
  %i.eg = extractelement <2 x float> %i.ck, i64 1
  %i.eh = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ei = shufflevector <4 x float> %i.av, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ej = fmul <4 x float> %i.ei, %i.do
  %i.ek = shufflevector <2 x float> %i.ap, <2 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.dk, <4 x float> %i.ej)
  %i.en = shufflevector <2 x float> %i.ar, <2 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.eo = insertelement <4 x float> %i.en, float 0.000000e+00, i64 3
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.dt, <4 x float> %i.em)
  store float %i.dy, ptr %2, align 4
  store <2 x float> %i.ee, ptr %.sroa.4653.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6655.0..sroa_idx, align 4, !tbaa !21
  %i.eq = shufflevector <2 x float> %i.ch, <2 x float> poison, <3 x i32> zeroinitializer
  %i.er = fmul <3 x float> %i.eq, %i.cd
  %i.es = shufflevector <2 x float> %i.cj, <2 x float> poison, <3 x i32> zeroinitializer
  %i.et = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ca, <3 x float> %i.es, <3 x float> %i.er)
  %i.eu = shufflevector <2 x float> %i.ck, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ev = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cg, <3 x float> %i.eu, <3 x float> %i.et) ; 6 uses
  %i.ew = shufflevector <2 x float> %i.aq, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.ex = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ey = fmul <2 x float> %i.ew, %i.ex
  %i.ez = shufflevector <2 x float> %i.ap, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fa, <2 x float> %i.ey)
  %i.fc = shufflevector <2 x float> %i.ar, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.fd = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fd, <2 x float> %i.fb)
  %i.ff = extractelement <3 x float> %i.ev, i64 2
  %i.fg = fmul float %i.ci, %i.ff
  %i.fh = extractelement <3 x float> %i.ev, i64 1
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.fh, float %i.fg)
  %i.fj = extractelement <3 x float> %i.ev, i64 0
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.fj, float %i.fi)
  store <2 x float> %i.fe, ptr %i.an, align 4
  store float %i.fk, ptr %.sroa.10658.16..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.11659.16..sroa_idx, align 4, !tbaa !21
  store <4 x float> %i.ep, ptr %i.ao, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.4593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fm = load <2 x float>, ptr %0, align 4, !tbaa !20, !noalias !319 ; 3 uses
  %i.fn = load <2 x float>, ptr %i.l, align 4, !tbaa !20, !noalias !319 ; 4 uses
  %i.fo = load <2 x float>, ptr %i.m, align 4, !tbaa !20, !noalias !319 ; 3 uses
  %i.fp = load <2 x float>, ptr %i.t, align 4, !tbaa !20, !noalias !320 ; 3 uses
  %i.fq = load <2 x float>, ptr %i.z, align 4, !tbaa !20, !noalias !320 ; 3 uses
  %i.fr = load <2 x float>, ptr %i.af, align 4, !tbaa !20, !noalias !320 ; 3 uses
  %i.fs = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.ft = insertelement <4 x float> %i.fs, float -0.000000e+00, i64 2 ; 2 uses
  %i.fu = shufflevector <2 x float> %i.fq, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.fv = fmul <4 x float> %i.ft, %i.fu
  %i.fw = shufflevector <2 x float> %i.fp, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.fx = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.fy = insertelement <4 x float> %i.fx, float -0.000000e+00, i64 2 ; 3 uses
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fy, <4 x float> %i.fv)
  %i.ga = shufflevector <2 x float> %i.fr, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.gb = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.gc = insertelement <4 x float> %i.gb, float -0.000000e+00, i64 2 ; 3 uses
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.gc, <4 x float> %i.fz) ; 3 uses
  %i.ge = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 1>
  %i.gg = shufflevector <2 x float> %i.fq, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.gh = fmul <4 x float> %i.gf, %i.gg
  %i.gi = shufflevector <2 x float> %i.fp, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.fy, <4 x float> %i.gh)
  %i.gk = shufflevector <2 x float> %i.fr, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.gc, <4 x float> %i.gj) ; 3 uses
  %i.gm = extractelement <4 x float> %i.gl, i64 0
  %i.gn = extractelement <2 x float> %i.fn, i64 0
  %i.go = fmul float %i.gn, %i.gm
  %i.gp = extractelement <4 x float> %i.gd, i64 0
  %i.gq = extractelement <2 x float> %i.fm, i64 0
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gp, float %i.go)
  %i.gs = extractelement <2 x float> %i.fo, i64 0
  %i.gt = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.gu = shufflevector <4 x float> %i.fx, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.gv = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %.sroa.9597.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.gw = load <2 x float>, ptr %i.o, align 4, !tbaa !20, !noalias !319 ; 3 uses
  %i.gx = load float, ptr %i.r, align 4, !tbaa !20, !noalias !319 ; 2 uses
  %i.gy = load <2 x float>, ptr %i.n, align 4, !tbaa !20, !noalias !319 ; 3 uses
  %i.gz = load float, ptr %i.q, align 4, !tbaa !20, !noalias !319 ; 2 uses
  %i.ha = load <2 x float>, ptr %i.p, align 4, !tbaa !20, !noalias !319 ; 3 uses
  %i.hb = load float, ptr %i.s, align 4, !tbaa !20, !noalias !319 ; 2 uses
  %i.hc = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x float> %i.gt, <4 x float> %i.hc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.he = fmul <4 x float> %i.hd, %i.gl
  %i.hf = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hg = shufflevector <4 x float> %i.gu, <4 x float> %i.hf, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.gd, <4 x float> %i.he)
  %i.hi = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hj = shufflevector <4 x float> %i.gv, <4 x float> %i.hi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.hk = shufflevector <2 x float> %i.fn, <2 x float> %i.gw, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.hl = insertelement <4 x float> %i.hk, float 0.000000e+00, i64 2
  %i.hm = shufflevector <4 x float> %i.gl, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.hn = shufflevector <2 x float> %i.fm, <2 x float> %i.gy, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.ho = insertelement <4 x float> %i.hn, float 0.000000e+00, i64 2
  %i.hp = shufflevector <4 x float> %i.gd, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.hq = shufflevector <2 x float> %i.fo, <2 x float> %i.ha, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.hr = insertelement <4 x float> %i.hq, float 0.000000e+00, i64 2
  %.sroa.14601.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.hs = load <2 x float>, ptr %i.v, align 4, !tbaa !20, !noalias !320 ; 2 uses
  %i.ht = load <2 x float>, ptr %i.ab, align 4, !tbaa !20, !noalias !320 ; 2 uses
  %i.hu = load <2 x float>, ptr %i.ah, align 4, !tbaa !20, !noalias !320 ; 2 uses
  %i.hv = shufflevector <2 x float> %i.ht, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.hx = fmul <4 x float> %i.ft, %i.hw
  %i.hy = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.fy, <4 x float> %i.hx)
  %i.ib = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.gc, <4 x float> %i.ia) ; 3 uses
  %i.ie = extractelement <4 x float> %i.id, i64 0
  %i.if = tail call noundef float @llvm.fmuladd.f32(float %i.gs, float %i.ie, float %i.gr)
  %i.ig = insertelement <3 x float> poison, float %i.gx, i64 0
  %i.ih = shufflevector <3 x float> %i.ig, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ii = shufflevector <2 x float> %i.fq, <2 x float> %i.ht, <3 x i32> <i32 3, i32 0, i32 2>
  %i.ij = fmul <3 x float> %i.ih, %i.ii
  %i.ik = shufflevector <2 x float> %i.fp, <2 x float> %i.hs, <3 x i32> <i32 3, i32 0, i32 2>
  %i.il = insertelement <3 x float> poison, float %i.gz, i64 0
  %i.im = shufflevector <3 x float> %i.il, <3 x float> poison, <3 x i32> zeroinitializer
  %i.in = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ik, <3 x float> %i.im, <3 x float> %i.ij)
  %i.io = shufflevector <2 x float> %i.fr, <2 x float> %i.hu, <3 x i32> <i32 3, i32 0, i32 2>
  %i.ip = insertelement <3 x float> poison, float %i.hb, i64 0
  %i.iq = shufflevector <3 x float> %i.ip, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ir = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.io, <3 x float> %i.iq, <3 x float> %i.in) ; 4 uses
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> %i.id, <4 x float> %i.hh)
  %i.it = shufflevector <3 x float> %i.ir, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.iu = shufflevector <4 x float> %i.hm, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.iv = fmul <4 x float> %i.hl, %i.iu
  %i.iw = shufflevector <4 x float> %i.hp, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.iw, <4 x float> %i.iv)
  %i.iy = shufflevector <4 x float> %i.id, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ja = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %i.iz, <4 x float> %i.ix)
  %i.jb = insertelement <2 x float> %i.gw, float %i.gx, i64 1
  %i.jc = shufflevector <3 x float> %i.ir, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jd = fmul <2 x float> %i.jb, %i.jc
  %i.je = insertelement <2 x float> %i.gy, float %i.gz, i64 1
  %i.jf = shufflevector <3 x float> %i.ir, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.jf, <2 x float> %i.jd)
  %i.jh = insertelement <2 x float> %i.ha, float %i.hb, i64 1
  %i.ji = shufflevector <3 x float> %i.ir, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.ji, <2 x float> %i.jg)
  store float %i.if, ptr %i.fl, align 4
  store <4 x float> %i.is, ptr %.sroa.4593.0..sroa_idx, align 4
  store <4 x float> %i.ja, ptr %.sroa.9597.16..sroa_idx, align 4
  store <2 x float> %i.jj, ptr %.sroa.14601.32..sroa_idx, align 4
  %.sroa.16603.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 92
  store float 0.000000e+00, ptr %.sroa.16603.32..sroa_idx, align 4, !tbaa !21
  %i.jk = load float, ptr %0, align 4, !tbaa !20, !noalias !321 ; 3 uses
  %i.jl = load float, ptr %i.l, align 4, !tbaa !20, !noalias !321 ; 3 uses
  %i.jm = load float, ptr %i.m, align 4, !tbaa !20, !noalias !321 ; 3 uses
  %i.jn = load <4 x float>, ptr %i.t, align 4
  %i.jo = load <4 x float>, ptr %i.v, align 4
  %i.jp = load <4 x float>, ptr %i.x, align 4
  %i.jq = load <4 x float>, ptr %i.z, align 4
  %i.jr = load <4 x float>, ptr %i.ab, align 4
  %i.js = load <4 x float>, ptr %i.ad, align 4
  %i.jt = load <4 x float>, ptr %i.af, align 4
  %i.ju = load float, ptr %i.ah, align 4, !tbaa !20, !noalias !322
  %i.jv = load float, ptr %i.aj, align 4, !tbaa !20, !noalias !322
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.4562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ka = load <2 x float>, ptr %i.n, align 4, !tbaa !20, !noalias !321 ; 5 uses
  %i.kb = load <2 x float>, ptr %i.o, align 4, !tbaa !20, !noalias !321 ; 5 uses
  %i.kc = load <2 x float>, ptr %i.p, align 4, !tbaa !20, !noalias !321 ; 5 uses
  %i.kd = shufflevector <4 x float> %i.jo, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ke = insertelement <3 x float> %i.ay, float 0.000000e+00, i64 2
  %i.kf = insertelement <3 x float> %i.ke, float %i.i, i64 0 ; 7 uses
  %i.kg = fmul <3 x float> %i.kd, %i.kf
  %i.kh = insertelement <3 x float> %i.ay, float 0.000000e+00, i64 1
  %i.ki = insertelement <3 x float> %i.kh, float %i.g, i64 2 ; 7 uses
  %i.kj = shufflevector <4 x float> %i.jn, <4 x float> poison, <3 x i32> zeroinitializer
  %i.kk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.kj, <3 x float> %i.kg)
  %i.kl = insertelement <3 x float> %i.bb, float 0.000000e+00, i64 0
  %i.km = insertelement <3 x float> %i.kl, float %i.k, i64 1 ; 7 uses
  %i.kn = shufflevector <4 x float> %i.jp, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ko = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.kn, <3 x float> %i.kk)
  %i.kp = shufflevector <4 x float> %i.jr, <4 x float> poison, <3 x i32> zeroinitializer
  %i.kq = fmul <3 x float> %i.kp, %i.kf
  %i.kr = shufflevector <4 x float> %i.jq, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ks = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.kr, <3 x float> %i.kq)
  %i.kt = shufflevector <4 x float> %i.js, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ku = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.kt, <3 x float> %i.ks)
  %i.kv = insertelement <3 x float> poison, float %i.ju, i64 0
  %i.kw = shufflevector <3 x float> %i.kv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.kx = fmul <3 x float> %i.kw, %i.kf
  %i.ky = shufflevector <4 x float> %i.jt, <4 x float> poison, <3 x i32> zeroinitializer
  %i.kz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.ky, <3 x float> %i.kx)
  %i.la = insertelement <3 x float> poison, float %i.jv, i64 0
  %i.lb = shufflevector <3 x float> %i.la, <3 x float> poison, <3 x i32> zeroinitializer
  %i.lc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.lb, <3 x float> %i.kz)
  %i.ld = load <3 x float>, ptr %1, align 4, !tbaa !20, !noalias !323 ; 4 uses
  %i.le = shufflevector <3 x float> %i.ld, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lf = fsub <3 x float> %i.le, %i.ko           ; 3 uses
  %i.lg = load <3 x float>, ptr %i.al, align 4, !tbaa !20, !noalias !323 ; 4 uses
  %i.lh = shufflevector <3 x float> %i.lg, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.li = fsub <3 x float> %i.lh, %i.ku           ; 3 uses
  %i.lj = load <3 x float>, ptr %i.am, align 4, !tbaa !20, !noalias !323 ; 4 uses
  %i.lk = shufflevector <3 x float> %i.lj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ll = fsub <3 x float> %i.lk, %i.lc           ; 3 uses
  %4 = shufflevector <3 x float> %i.ki, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.lm = fmul <3 x float> %i.li, %4
  %i.ln = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.lf, <3 x float> zeroinitializer, <3 x float> %i.lm)
  %i.lo = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> zeroinitializer
  %i.lp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ll, <3 x float> %i.lo, <3 x float> %i.ln)
  %i.lq = fmul <3 x float> %i.li, zeroinitializer
  %i.lr = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ls = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.lf, <3 x float> %i.lr, <3 x float> %i.lq)
  %i.lt = shufflevector <3 x float> %i.kf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.lu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ll, <3 x float> %i.lt, <3 x float> %i.ls)
  %i.lv = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> zeroinitializer
  %i.lw = fmul <3 x float> %i.lv, %i.li
  %5 = shufflevector <3 x float> %i.km, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.lx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.lf, <3 x float> %5, <3 x float> %i.lw)
  %i.ly = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ll, <3 x float> zeroinitializer, <3 x float> %i.lx)
  %i.lz = load <3 x float>, ptr %i.jw, align 4, !tbaa !20, !noalias !324
  %i.ma = shufflevector <3 x float> %i.lz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mb = fadd <3 x float> %i.lp, %i.ma
  %i.mc = load <3 x float>, ptr %i.jx, align 4, !tbaa !20, !noalias !324
  %i.md = shufflevector <3 x float> %i.mc, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.me = fadd <3 x float> %i.lu, %i.md
  %i.mf = load <3 x float>, ptr %i.jy, align 4, !tbaa !20, !noalias !324
  %i.mg = shufflevector <3 x float> %i.mf, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mh = fadd <3 x float> %i.ly, %i.mg
  %i.mi = shufflevector <3 x float> %i.lg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.mj = fmul <3 x float> %i.mi, %i.kf
  %i.mk = shufflevector <3 x float> %i.ld, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ml = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.mk, <3 x float> %i.mj)
  %i.mm = shufflevector <3 x float> %i.lj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.mn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.mm, <3 x float> %i.ml)
  %i.mo = shufflevector <3 x float> %i.lg, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.mp = fmul <3 x float> %i.mo, %i.kf
  %i.mq = shufflevector <3 x float> %i.ld, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.mr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.mq, <3 x float> %i.mp)
  %i.ms = shufflevector <3 x float> %i.lj, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.mt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.ms, <3 x float> %i.mr)
  %i.mu = shufflevector <3 x float> %i.lg, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.mv = fmul <3 x float> %i.mu, %i.kf
  %i.mw = shufflevector <3 x float> %i.ld, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.mx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.mw, <3 x float> %i.mv)
  %i.my = shufflevector <3 x float> %i.lj, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.mz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.my, <3 x float> %i.mx)
  %i.na = fsub <3 x float> %i.mb, %i.mn           ; 3 uses
  %i.nb = fsub <3 x float> %i.me, %i.mt           ; 3 uses
  %i.nc = fsub <3 x float> %i.mh, %i.mz           ; 3 uses
  %i.nd = insertelement <3 x float> poison, float %i.jl, i64 0
  %i.ne = shufflevector <3 x float> %i.nd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.nf = fmul <3 x float> %i.ne, %i.nb
  %i.ng = insertelement <3 x float> poison, float %i.jk, i64 0
  %i.nh = shufflevector <3 x float> %i.ng, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ni = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.na, <3 x float> %i.nh, <3 x float> %i.nf)
  %i.nj = insertelement <3 x float> poison, float %i.jm, i64 0
  %i.nk = shufflevector <3 x float> %i.nj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.nl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nc, <3 x float> %i.nk, <3 x float> %i.ni) ; 6 uses
  %i.nm = extractelement <2 x float> %i.kb, i64 1 ; 2 uses
  %i.nn = extractelement <2 x float> %i.ka, i64 1 ; 2 uses
  %i.no = extractelement <2 x float> %i.kc, i64 1 ; 2 uses
  %i.np = extractelement <3 x float> %i.nl, i64 2
  %i.nq = fmul float %i.jl, %i.np
  %i.nr = extractelement <3 x float> %i.nl, i64 1
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.nr, float %i.nq)
  %i.nt = extractelement <3 x float> %i.nl, i64 0
  %i.nu = tail call noundef float @llvm.fmuladd.f32(float %i.jm, float %i.nt, float %i.ns)
  %i.nv = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.nw = fmul <2 x float> %i.kb, %i.nv
  %i.nx = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ny = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.nx, <2 x float> %i.nw)
  %i.nz = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.oa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.nz, <2 x float> %i.ny)
  store float %i.nu, ptr %i.jz, align 4
  store <2 x float> %i.oa, ptr %.sroa.4562.0..sroa_idx, align 4
  %.sroa.6563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 108
  store float 0.000000e+00, ptr %.sroa.6563.0..sroa_idx, align 4, !tbaa !21
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.oc = shufflevector <2 x float> %i.kb, <2 x float> poison, <3 x i32> zeroinitializer
  %i.od = fmul <3 x float> %i.oc, %i.nb
  %i.oe = shufflevector <2 x float> %i.ka, <2 x float> poison, <3 x i32> zeroinitializer
  %i.of = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.na, <3 x float> %i.oe, <3 x float> %i.od)
  %i.og = shufflevector <2 x float> %i.kc, <2 x float> poison, <3 x i32> zeroinitializer
  %i.oh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nc, <3 x float> %i.og, <3 x float> %i.of) ; 6 uses
  %i.oi = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oj = insertelement <2 x float> %i.oi, float %i.jl, i64 0 ; 2 uses
  %i.ok = shufflevector <3 x float> %i.oh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ol = fmul <2 x float> %i.oj, %i.ok
  %i.om = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.on = insertelement <2 x float> %i.om, float %i.jk, i64 0 ; 2 uses
  %i.oo = shufflevector <3 x float> %i.oh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.op = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.oo, <2 x float> %i.ol)
  %i.oq = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.or = insertelement <2 x float> %i.oq, float %i.jm, i64 0 ; 2 uses
  %i.os = shufflevector <3 x float> %i.oh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ot = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.os, <2 x float> %i.op)
  %i.ou = extractelement <3 x float> %i.oh, i64 2
  %i.ov = fmul float %i.nm, %i.ou
  %i.ow = extractelement <3 x float> %i.oh, i64 1
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.nn, float %i.ow, float %i.ov)
  %i.oy = extractelement <3 x float> %i.oh, i64 0
  %i.oz = tail call noundef float @llvm.fmuladd.f32(float %i.no, float %i.oy, float %i.ox)
  store <2 x float> %i.ot, ptr %i.ob, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store float %i.oz, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11565.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  store float 0.000000e+00, ptr %.sroa.11565.16..sroa_idx, align 4, !tbaa !21
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.pb = shufflevector <2 x float> %i.kb, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.pc = fmul <3 x float> %i.pb, %i.nb
  %i.pd = shufflevector <2 x float> %i.ka, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.pe = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.na, <3 x float> %i.pd, <3 x float> %i.pc)
  %i.pf = shufflevector <2 x float> %i.kc, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.pg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nc, <3 x float> %i.pf, <3 x float> %i.pe) ; 6 uses
  %i.ph = shufflevector <3 x float> %i.pg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.pi = fmul <2 x float> %i.oj, %i.ph
  %i.pj = shufflevector <3 x float> %i.pg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.pj, <2 x float> %i.pi)
  %i.pl = shufflevector <3 x float> %i.pg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.pm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.pl, <2 x float> %i.pk)
  %i.pn = extractelement <3 x float> %i.pg, i64 2
  %i.po = fmul float %i.nm, %i.pn
  %i.pp = extractelement <3 x float> %i.pg, i64 1
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.nn, float %i.pp, float %i.po)
  %i.pr = extractelement <3 x float> %i.pg, i64 0
  %i.ps = tail call noundef float @llvm.fmuladd.f32(float %i.no, float %i.pr, float %i.pq)
  store <2 x float> %i.pm, ptr %i.pa, align 4
  %.sroa.15566.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  store float %i.ps, ptr %.sroa.15566.32..sroa_idx, align 4
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.qc = load <4 x float>, ptr %i.qb, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.qe = load <4 x float>, ptr %i.qd, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.qg = load <4 x float>, ptr %i.qf, align 4
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.qi = load <4 x float>, ptr %i.qh, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.qk = load <4 x float>, ptr %i.qj, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.qm = load <4 x float>, ptr %i.ql, align 4
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.qo = load <4 x float>, ptr %i.qn, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !20, !noalias !325
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !20, !noalias !325
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.qv = load float, ptr %2, align 4, !tbaa !20
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !20
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !20
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.rd = load <2 x float>, ptr %i.qw, align 4, !tbaa !20
  %i.re = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.qy, i64 3
  %i.rf = shufflevector <2 x float> %i.rd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rh = load <2 x float>, ptr %i.qz, align 4, !tbaa !20
  %i.ri = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.rb, i64 3
  %i.rj = shufflevector <2 x float> %i.rh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> %i.ri, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rl = shufflevector <4 x float> %i.qe, <4 x float> poison, <3 x i32> zeroinitializer
  %i.rm = insertelement <3 x float> <float poison, float poison, float 0.000000e+00>, float %i.i, i64 0 ; 2 uses
  %i.rn = insertelement <3 x float> %i.rm, float %i.f, i64 1 ; 10 uses
  %i.ro = fmul <3 x float> %i.rl, %i.rn
  %i.rp = shufflevector <4 x float> %i.qk, <4 x float> poison, <3 x i32> zeroinitializer
  %i.rq = fmul <3 x float> %i.rp, %i.rn
  %i.rr = insertelement <3 x float> poison, float %i.qq, i64 0
  %i.rs = shufflevector <3 x float> %i.rr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rt = fmul <3 x float> %i.rs, %i.rn
  %i.ru = load <2 x float>, ptr %i.rc, align 4, !tbaa !20
  %i.rv = load <2 x float>, ptr %i.pv, align 4, !tbaa !20, !noalias !326 ; 5 uses
  %i.rw = load <2 x float>, ptr %i.pw, align 4, !tbaa !20, !noalias !326 ; 5 uses
  %i.rx = load <2 x float>, ptr %i.px, align 4, !tbaa !20, !noalias !326 ; 6 uses
  %i.ry = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.rz = insertelement <3 x float> %i.ry, float 0.000000e+00, i64 1
  %i.sa = insertelement <3 x float> %i.rz, float %i.g, i64 2 ; 10 uses
  %i.sb = shufflevector <4 x float> %i.qc, <4 x float> poison, <3 x i32> zeroinitializer
  %i.sc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.sb, <3 x float> %i.ro)
  %i.sd = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.se = insertelement <3 x float> %i.sd, float 0.000000e+00, i64 0
  %i.sf = insertelement <3 x float> %i.se, float %i.k, i64 1 ; 10 uses
  %i.sg = shufflevector <4 x float> %i.qg, <4 x float> poison, <3 x i32> zeroinitializer
  %i.sh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.sg, <3 x float> %i.sc)
  %i.si = shufflevector <4 x float> %i.qi, <4 x float> poison, <3 x i32> zeroinitializer
  %i.sj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.si, <3 x float> %i.rq)
  %i.sk = shufflevector <4 x float> %i.qm, <4 x float> poison, <3 x i32> zeroinitializer
  %i.sl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.sk, <3 x float> %i.sj)
  %i.sm = shufflevector <4 x float> %i.qo, <4 x float> poison, <3 x i32> zeroinitializer
  %i.sn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.sm, <3 x float> %i.rt)
  %i.so = insertelement <3 x float> poison, float %i.qs, i64 0
  %i.sp = shufflevector <3 x float> %i.so, <3 x float> poison, <3 x i32> zeroinitializer
  %i.sq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.sp, <3 x float> %i.sn)
  %i.sr = load <3 x float>, ptr %1, align 4, !tbaa !20, !noalias !327
  %i.ss = shufflevector <3 x float> %i.sr, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.st = fsub <3 x float> %i.ss, %i.sh           ; 5 uses
  %i.su = load <3 x float>, ptr %i.qt, align 4, !tbaa !20, !noalias !327
  %i.sv = shufflevector <3 x float> %i.su, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.sw = fsub <3 x float> %i.sv, %i.sl           ; 5 uses
  %i.sx = load <3 x float>, ptr %i.qu, align 4, !tbaa !20, !noalias !327
  %i.sy = shufflevector <3 x float> %i.sx, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.sz = fsub <3 x float> %i.sy, %i.sq           ; 5 uses
  %i.ta = extractelement <3 x float> %i.sw, i64 1
  %i.tb = extractelement <3 x float> %i.st, i64 1
  %i.tc = extractelement <3 x float> %i.sz, i64 1
  %i.td = extractelement <3 x float> %i.sw, i64 2
  %i.te = extractelement <3 x float> %i.st, i64 2
  %i.tf = extractelement <3 x float> %i.sz, i64 2
  %i.tg = extractelement <3 x float> %i.sz, i64 0
  %i.th = extractelement <2 x float> %i.rx, i64 0
  %i.ti = shufflevector <2 x float> %i.rw, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.tj = fmul <3 x float> %i.ti, %i.sw
  %i.tk = shufflevector <2 x float> %i.rv, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.tl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.st, <3 x float> %i.tk, <3 x float> %i.tj)
  %i.tm = shufflevector <2 x float> %i.rx, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.tn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sz, <3 x float> %i.tm, <3 x float> %i.tl) ; 6 uses
  %i.to = extractelement <3 x float> %i.tn, i64 0
  %i.tp = shufflevector <2 x float> %i.rw, <2 x float> poison, <3 x i32> zeroinitializer
  %i.tq = fmul <3 x float> %i.tp, %i.sw
  %i.tr = shufflevector <2 x float> %i.rv, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ts = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.st, <3 x float> %i.tr, <3 x float> %i.tq)
  %i.tt = shufflevector <2 x float> %i.rx, <2 x float> poison, <3 x i32> zeroinitializer
  %i.tu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sz, <3 x float> %i.tt, <3 x float> %i.ts) ; 6 uses
  %i.tv = load float, ptr %i.pu, align 4, !tbaa !20, !noalias !326 ; 6 uses
  %i.tw = load float, ptr %0, align 4, !tbaa !20, !noalias !326 ; 4 uses
  %i.tx = load float, ptr %i.pt, align 4, !tbaa !20, !noalias !326 ; 5 uses
  %i.ty = fmul float %i.tx, %i.ta
  %i.tz = tail call float @llvm.fmuladd.f32(float %i.tb, float %i.tw, float %i.ty)
  %i.ua = tail call noundef float @llvm.fmuladd.f32(float %i.tc, float %i.tv, float %i.tz) ; 2 uses
  %i.ub = fmul float %i.tx, %i.td
  %i.uc = tail call float @llvm.fmuladd.f32(float %i.te, float %i.tw, float %i.ub)
  %i.ud = tail call noundef float @llvm.fmuladd.f32(float %i.tf, float %i.tv, float %i.uc) ; 2 uses
  %i.ue = shufflevector <2 x float> %i.rw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.uf = shufflevector <3 x float> %i.ue, <3 x float> %i.tn, <4 x i32> <i32 poison, i32 poison, i32 0, i32 5>
  %i.ug = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> %i.uf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uj = shufflevector <3 x float> %i.sw, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.uk = insertelement <4 x float> %i.uj, float %i.ud, i64 1
  %i.ul = insertelement <4 x float> %i.uk, float %i.tx, i64 3
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.un = fmul <4 x float> %i.ui, %i.um
  %i.uo = shufflevector <2 x float> %i.rv, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.up = shufflevector <3 x float> %i.st, <3 x float> %i.uo, <4 x i32> <i32 0, i32 poison, i32 3, i32 poison>
  %i.uq = insertelement <4 x float> %i.up, float %i.ua, i64 1 ; 2 uses
  %i.ur = shufflevector <3 x float> %i.tn, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.us = shufflevector <4 x float> %i.uq, <4 x float> %i.ur, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ut = shufflevector <4 x float> %i.uq, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.uu = insertelement <2 x float> %i.ut, float %i.tw, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.uw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.us, <4 x float> %i.uv, <4 x float> %i.un) ; 4 uses
  %i.ux = extractelement <4 x float> %i.uw, i64 0
  %i.uy = tail call noundef float @llvm.fmuladd.f32(float %i.tg, float %i.tv, float %i.ux) ; 3 uses
  %i.uz = extractelement <4 x float> %i.uw, i64 1
  %i.va = tail call noundef float @llvm.fmuladd.f32(float %i.tv, float %i.uy, float %i.uz)
  %i.vb = extractelement <4 x float> %i.uw, i64 2
  %i.vc = tail call noundef float @llvm.fmuladd.f32(float %i.th, float %i.uy, float %i.vb)
  %i.vd = extractelement <4 x float> %i.uw, i64 3
  %i.ve = tail call noundef float @llvm.fmuladd.f32(float %i.tv, float %i.to, float %i.vd)
  %i.vf = shufflevector <3 x float> %i.ue, <3 x float> %i.tu, <2 x i32> <i32 1, i32 5>
  %i.vg = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.vh = insertelement <2 x float> %i.vg, float %i.tx, i64 1
  %i.vi = fmul <2 x float> %i.vf, %i.vh
  %i.vj = shufflevector <3 x float> %i.uo, <3 x float> %i.tu, <2 x i32> <i32 1, i32 4>
  %i.vk = insertelement <2 x float> poison, float %i.ua, i64 0
  %i.vl = insertelement <2 x float> %i.vk, float %i.tw, i64 1
  %i.vm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vj, <2 x float> %i.vl, <2 x float> %i.vi)
  %i.vn = shufflevector <2 x float> %i.rx, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.vo = shufflevector <3 x float> %i.vn, <3 x float> %i.tu, <2 x i32> <i32 1, i32 3>
  %i.vp = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.tv, i64 1
  %i.vr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vo, <2 x float> %i.vq, <2 x float> %i.vm)
  %i.vs = shufflevector <3 x float> %i.tu, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.vt = fmul <2 x float> %i.rw, %i.vs
  %i.vu = shufflevector <3 x float> %i.tu, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rv, <2 x float> %i.vu, <2 x float> %i.vt)
  %i.vw = shufflevector <3 x float> %i.tu, <3 x float> poison, <2 x i32> zeroinitializer
  %i.vx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rx, <2 x float> %i.vw, <2 x float> %i.vv)
  %i.vy = shufflevector <3 x float> %i.tn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.vz = fmul <2 x float> %i.rw, %i.vy
  %i.wa = shufflevector <3 x float> %i.tn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rv, <2 x float> %i.wa, <2 x float> %i.vz)
  %i.wc = shufflevector <3 x float> %i.tn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.wd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rx, <2 x float> %i.wc, <2 x float> %i.wb)
  %i.we = fadd float %i.qv, %i.va
  %i.wf = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.vc, i64 0
  %i.wg = shufflevector <2 x float> %i.vr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.wh = shufflevector <4 x float> %i.wf, <4 x float> %i.wg, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.wi = fadd <4 x float> %i.rg, %i.wh
  %i.wj = shufflevector <2 x float> %i.vx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wk = insertelement <4 x float> %i.wj, float -0.000000e+00, i64 2
  %i.wl = insertelement <4 x float> %i.wk, float %i.ve, i64 3
  %i.wm = fadd <4 x float> %i.rk, %i.wl
  %i.wn = fadd <2 x float> %i.wd, %i.ru
  store float %i.we, ptr %2, align 4, !tbaa !20
  store <4 x float> %i.wi, ptr %i.qw, align 4, !tbaa !20
  store <4 x float> %i.wm, ptr %i.qz, align 4, !tbaa !20
  store <2 x float> %i.wn, ptr %i.rc, align 4, !tbaa !20
  %i.wo = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float 0.000000e+00, ptr %i.wo, align 4, !tbaa !20
  %i.wp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !20
  %i.wr = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !20
  %i.wu = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !20
  %i.wx = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.wy = load <2 x float>, ptr %0, align 4, !tbaa !20, !noalias !328 ; 3 uses
  %i.wz = load <2 x float>, ptr %i.pt, align 4, !tbaa !20, !noalias !328 ; 4 uses
  %i.xa = load <2 x float>, ptr %i.pu, align 4, !tbaa !20, !noalias !328 ; 3 uses
  %i.xb = load <2 x float>, ptr %i.qb, align 4, !tbaa !20, !noalias !329 ; 3 uses
  %i.xc = load <2 x float>, ptr %i.qh, align 4, !tbaa !20, !noalias !329 ; 3 uses
  %i.xd = load <2 x float>, ptr %i.qn, align 4, !tbaa !20, !noalias !329 ; 3 uses
  %i.xe = shufflevector <2 x float> %i.wz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.xf = insertelement <4 x float> %i.xe, float -0.000000e+00, i64 2 ; 2 uses
  %i.xg = shufflevector <2 x float> %i.xc, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.xh = fmul <4 x float> %i.xf, %i.xg
  %i.xi = shufflevector <2 x float> %i.xb, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.xj = shufflevector <2 x float> %i.wy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.xk = insertelement <4 x float> %i.xj, float -0.000000e+00, i64 2 ; 3 uses
  %i.xl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xi, <4 x float> %i.xk, <4 x float> %i.xh)
  %i.xm = shufflevector <2 x float> %i.xd, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.xn = shufflevector <2 x float> %i.xa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.xo = insertelement <4 x float> %i.xn, float -0.000000e+00, i64 2 ; 3 uses
  %i.xp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xm, <4 x float> %i.xo, <4 x float> %i.xl) ; 3 uses
  %i.xq = shufflevector <2 x float> %i.wz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 1>
  %i.xs = shufflevector <2 x float> %i.xc, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.xt = fmul <4 x float> %i.xr, %i.xs
  %i.xu = shufflevector <2 x float> %i.xb, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.xv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.xk, <4 x float> %i.xt)
  %i.xw = shufflevector <2 x float> %i.xd, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.xx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xw, <4 x float> %i.xo, <4 x float> %i.xv) ; 3 uses
  %i.xy = extractelement <4 x float> %i.xx, i64 0
  %i.xz = extractelement <2 x float> %i.wz, i64 0
  %i.ya = fmul float %i.xz, %i.xy
  %i.yb = extractelement <4 x float> %i.xp, i64 0
  %i.yc = extractelement <2 x float> %i.wy, i64 0
  %i.yd = tail call float @llvm.fmuladd.f32(float %i.yc, float %i.yb, float %i.ya)
  %i.ye = extractelement <2 x float> %i.xa, i64 0
  %i.yf = shufflevector <4 x float> %i.xe, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.yg = shufflevector <4 x float> %i.xj, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.yh = shufflevector <4 x float> %i.xn, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.yi = load <2 x float>, ptr %i.wr, align 4, !tbaa !20
  %i.yj = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.wt, i64 3
  %i.yk = shufflevector <2 x float> %i.yi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> %i.yj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ym = load <2 x float>, ptr %i.pw, align 4, !tbaa !20, !noalias !328 ; 3 uses
  %i.yn = load float, ptr %i.pz, align 4, !tbaa !20, !noalias !328 ; 2 uses
  %i.yo = load <2 x float>, ptr %i.pv, align 4, !tbaa !20, !noalias !328 ; 3 uses
  %i.yp = load float, ptr %i.py, align 4, !tbaa !20, !noalias !328 ; 2 uses
  %i.yq = load <2 x float>, ptr %i.px, align 4, !tbaa !20, !noalias !328 ; 3 uses
  %i.yr = load float, ptr %i.qa, align 4, !tbaa !20, !noalias !328 ; 2 uses
  %i.ys = load <2 x float>, ptr %i.wu, align 4, !tbaa !20
  %i.yt = shufflevector <2 x float> %i.ym, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.yu = shufflevector <4 x float> %i.yf, <4 x float> %i.yt, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.yv = fmul <4 x float> %i.yu, %i.xx
  %i.yw = shufflevector <2 x float> %i.yo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.yx = shufflevector <4 x float> %i.yg, <4 x float> %i.yw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.yy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yx, <4 x float> %i.xp, <4 x float> %i.yv)
  %i.yz = shufflevector <2 x float> %i.yq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.za = shufflevector <4 x float> %i.yh, <4 x float> %i.yz, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.zb = shufflevector <2 x float> %i.wz, <2 x float> %i.ym, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.zc = insertelement <4 x float> %i.zb, float -0.000000e+00, i64 2
  %i.zd = shufflevector <4 x float> %i.xx, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ze = shufflevector <2 x float> %i.wy, <2 x float> %i.yo, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.zf = insertelement <4 x float> %i.ze, float 0.000000e+00, i64 2
  %i.zg = shufflevector <4 x float> %i.xp, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.zh = shufflevector <2 x float> %i.xa, <2 x float> %i.yq, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.zi = insertelement <4 x float> %i.zh, float 0.000000e+00, i64 2
  %i.zj = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ww, i64 3
  %i.zk = shufflevector <2 x float> %i.ys, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> %i.zj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.zm = load <2 x float>, ptr %i.wx, align 4, !tbaa !20
  %i.zn = load <2 x float>, ptr %i.qd, align 4, !tbaa !20, !noalias !329 ; 2 uses
  %i.zo = load <2 x float>, ptr %i.qj, align 4, !tbaa !20, !noalias !329 ; 2 uses
  %i.zp = load <2 x float>, ptr %i.qp, align 4, !tbaa !20, !noalias !329 ; 2 uses
  %i.zq = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zr = shufflevector <4 x float> %i.zq, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.zs = fmul <4 x float> %i.xf, %i.zr
  %i.zt = shufflevector <2 x float> %i.zn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zu = shufflevector <4 x float> %i.zt, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.zv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zu, <4 x float> %i.xk, <4 x float> %i.zs)
  %i.zw = shufflevector <2 x float> %i.zp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zx = shufflevector <4 x float> %i.zw, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.zy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zx, <4 x float> %i.xo, <4 x float> %i.zv) ; 3 uses
  %i.zz = extractelement <4 x float> %i.zy, i64 0
  %i.aaa = tail call noundef float @llvm.fmuladd.f32(float %i.ye, float %i.zz, float %i.yd)
  %i.aab = fadd float %i.wq, %i.aaa
  %i.aac = insertelement <3 x float> poison, float %i.yn, i64 0
  %i.aad = shufflevector <3 x float> %i.aac, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aae = shufflevector <2 x float> %i.xc, <2 x float> %i.zo, <3 x i32> <i32 3, i32 0, i32 2>
  %i.aaf = fmul <3 x float> %i.aad, %i.aae
  %i.aag = shufflevector <2 x float> %i.xb, <2 x float> %i.zn, <3 x i32> <i32 3, i32 0, i32 2>
  %i.aah = insertelement <3 x float> poison, float %i.yp, i64 0
  %i.aai = shufflevector <3 x float> %i.aah, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aaj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aag, <3 x float> %i.aai, <3 x float> %i.aaf)
  %i.aak = shufflevector <2 x float> %i.xd, <2 x float> %i.zp, <3 x i32> <i32 3, i32 0, i32 2>
  %i.aal = insertelement <3 x float> poison, float %i.yr, i64 0
  %i.aam = shufflevector <3 x float> %i.aal, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aan = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aak, <3 x float> %i.aam, <3 x float> %i.aaj) ; 4 uses
  %i.aao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.za, <4 x float> %i.zy, <4 x float> %i.yy)
  %i.aap = shufflevector <3 x float> %i.aan, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.aaq = shufflevector <4 x float> %i.zd, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.aar = fmul <4 x float> %i.zc, %i.aaq
  %i.aas = shufflevector <4 x float> %i.zg, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aat = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zf, <4 x float> %i.aas, <4 x float> %i.aar)
  %i.aau = shufflevector <4 x float> %i.zy, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.aav = shufflevector <4 x float> %i.aau, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aaw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zi, <4 x float> %i.aav, <4 x float> %i.aat)
  %i.aax = insertelement <2 x float> %i.ym, float %i.yn, i64 1
  %i.aay = shufflevector <3 x float> %i.aan, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aaz = fmul <2 x float> %i.aax, %i.aay
  %i.aba = insertelement <2 x float> %i.yo, float %i.yp, i64 1
  %i.abb = shufflevector <3 x float> %i.aan, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.abb, <2 x float> %i.aaz)
  %i.abd = insertelement <2 x float> %i.yq, float %i.yr, i64 1
  %i.abe = shufflevector <3 x float> %i.aan, <3 x float> poison, <2 x i32> zeroinitializer
  %i.abf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abd, <2 x float> %i.abe, <2 x float> %i.abc)
  %i.abg = fadd <4 x float> %i.yl, %i.aao
  %i.abh = fadd <4 x float> %i.zl, %i.aaw
  %i.abi = fadd <2 x float> %i.abf, %i.zm
  store float %i.aab, ptr %i.wp, align 4, !tbaa !20
  store <4 x float> %i.abg, ptr %i.wr, align 4, !tbaa !20
  store <4 x float> %i.abh, ptr %i.wu, align 4, !tbaa !20
  store <2 x float> %i.abi, ptr %i.wx, align 4, !tbaa !20
  %i.abj = getelementptr inbounds nuw i8, ptr %2, i64 92
  store float 0.000000e+00, ptr %i.abj, align 4, !tbaa !20
  %i.abk = load <4 x float>, ptr %i.qb, align 4
  %i.abl = load <4 x float>, ptr %i.qd, align 4
  %i.abm = load <4 x float>, ptr %i.qf, align 4
  %i.abn = load <4 x float>, ptr %i.qh, align 4
  %i.abo = load <4 x float>, ptr %i.qj, align 4
  %i.abp = load <4 x float>, ptr %i.ql, align 4
  %i.abq = load <4 x float>, ptr %i.qn, align 4
  %i.abr = load float, ptr %i.qp, align 4, !tbaa !20, !noalias !330
  %i.abs = load float, ptr %i.qr, align 4, !tbaa !20, !noalias !330
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.abw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !20
  %i.aby = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !20
  %i.acb = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !20
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.acf = load <2 x float>, ptr %i.aby, align 4, !tbaa !20
  %i.acg = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.aca, i64 3
  %i.ach = shufflevector <2 x float> %i.acf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aci = shufflevector <4 x float> %i.ach, <4 x float> %i.acg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acj = load <2 x float>, ptr %i.acb, align 4, !tbaa !20
  %i.ack = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.acd, i64 3
  %i.acl = shufflevector <2 x float> %i.acj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acm = shufflevector <4 x float> %i.acl, <4 x float> %i.ack, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acn = shufflevector <4 x float> %i.abl, <4 x float> poison, <3 x i32> zeroinitializer
  %i.aco = fmul <3 x float> %i.acn, %i.rn
  %i.acp = shufflevector <4 x float> %i.abk, <4 x float> poison, <3 x i32> zeroinitializer
  %i.acq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.acp, <3 x float> %i.aco)
  %i.acr = shufflevector <4 x float> %i.abm, <4 x float> poison, <3 x i32> zeroinitializer
  %i.acs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.acr, <3 x float> %i.acq)
  %i.act = shufflevector <4 x float> %i.abo, <4 x float> poison, <3 x i32> zeroinitializer
  %i.acu = fmul <3 x float> %i.act, %i.rn
  %i.acv = shufflevector <4 x float> %i.abn, <4 x float> poison, <3 x i32> zeroinitializer
  %i.acw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.acv, <3 x float> %i.acu)
  %i.acx = shufflevector <4 x float> %i.abp, <4 x float> poison, <3 x i32> zeroinitializer
  %i.acy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.acx, <3 x float> %i.acw)
  %i.acz = insertelement <3 x float> poison, float %i.abr, i64 0
  %i.ada = shufflevector <3 x float> %i.acz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.adb = fmul <3 x float> %i.ada, %i.rn
  %i.adc = shufflevector <4 x float> %i.abq, <4 x float> poison, <3 x i32> zeroinitializer
  %i.add = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.adc, <3 x float> %i.adb)
  %i.ade = insertelement <3 x float> poison, float %i.abs, i64 0
  %i.adf = shufflevector <3 x float> %i.ade, <3 x float> poison, <3 x i32> zeroinitializer
  %i.adg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.adf, <3 x float> %i.add)
  %i.adh = load <3 x float>, ptr %i.qt, align 4, !tbaa !20, !noalias !331 ; 4 uses
  %i.adi = shufflevector <3 x float> %i.adh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.adj = fsub <3 x float> %i.adi, %i.acy        ; 3 uses
  %6 = shufflevector <3 x float> %i.sa, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.adk = fmul <3 x float> %i.adj, %6
  %i.adl = fmul <3 x float> %i.adj, zeroinitializer
  %i.adm = fmul <3 x float> %i.sd, %i.adj
  %i.adn = load <3 x float>, ptr %i.abt, align 4, !tbaa !20, !noalias !332
  %i.ado = shufflevector <3 x float> %i.adn, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.adp = load <3 x float>, ptr %i.abu, align 4, !tbaa !20, !noalias !332
  %i.adq = shufflevector <3 x float> %i.adp, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.adr = load <3 x float>, ptr %i.abv, align 4, !tbaa !20, !noalias !332
  %i.ads = shufflevector <3 x float> %i.adr, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.adt = shufflevector <3 x float> %i.adh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.adu = fmul <3 x float> %i.adt, %i.rn
  %i.adv = shufflevector <3 x float> %i.adh, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adw = fmul <3 x float> %i.adv, %i.rn
  %i.adx = shufflevector <3 x float> %i.adh, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ady = fmul <3 x float> %i.adx, %i.rn
  %i.adz = load <2 x float>, ptr %i.ace, align 4, !tbaa !20
  %i.aea = load <2 x float>, ptr %i.pv, align 4, !tbaa !20, !noalias !333 ; 6 uses
  %i.aeb = load <2 x float>, ptr %i.pw, align 4, !tbaa !20, !noalias !333 ; 6 uses
  %i.aec = load <2 x float>, ptr %i.px, align 4, !tbaa !20, !noalias !333 ; 6 uses
  %i.aed = load <3 x float>, ptr %1, align 4, !tbaa !20, !noalias !331 ; 4 uses
  %i.aee = shufflevector <3 x float> %i.aed, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aef = fsub <3 x float> %i.aee, %i.acs        ; 3 uses
  %i.aeg = load <3 x float>, ptr %i.qu, align 4, !tbaa !20, !noalias !331 ; 4 uses
  %i.aeh = shufflevector <3 x float> %i.aeg, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aei = fsub <3 x float> %i.aeh, %i.adg        ; 3 uses
  %i.aej = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aef, <3 x float> zeroinitializer, <3 x float> %i.adk)
  %i.aek = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aei, <3 x float> %i.ry, <3 x float> %i.aej)
  %7 = shufflevector <3 x float> %i.rn, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ael = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aef, <3 x float> %7, <3 x float> %i.adl)
  %i.aem = shufflevector <3 x float> %i.rm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aen = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aei, <3 x float> %i.aem, <3 x float> %i.ael)
  %8 = shufflevector <3 x float> %i.sf, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aeo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aef, <3 x float> %8, <3 x float> %i.adm)
  %i.aep = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aei, <3 x float> zeroinitializer, <3 x float> %i.aeo)
  %i.aeq = fadd <3 x float> %i.aek, %i.ado
  %i.aer = fadd <3 x float> %i.aen, %i.adq
  %i.aes = fadd <3 x float> %i.aep, %i.ads
  %i.aet = shufflevector <3 x float> %i.aed, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aeu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.aet, <3 x float> %i.adu)
  %i.aev = shufflevector <3 x float> %i.aeg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aew = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.aev, <3 x float> %i.aeu)
  %i.aex = shufflevector <3 x float> %i.aed, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aey = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.aex, <3 x float> %i.adw)
  %i.aez = shufflevector <3 x float> %i.aeg, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.afa = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.aez, <3 x float> %i.aey)
  %i.afb = shufflevector <3 x float> %i.aed, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.afc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.afb, <3 x float> %i.ady)
  %i.afd = shufflevector <3 x float> %i.aeg, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.afe = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sf, <3 x float> %i.afd, <3 x float> %i.afc)
  %i.aff = fsub <3 x float> %i.aeq, %i.aew        ; 5 uses
  %i.afg = fsub <3 x float> %i.aer, %i.afa        ; 5 uses
  %i.afh = fsub <3 x float> %i.aes, %i.afe        ; 5 uses
  %i.afi = extractelement <3 x float> %i.afg, i64 1
  %i.afj = extractelement <3 x float> %i.aff, i64 1
  %i.afk = extractelement <3 x float> %i.afh, i64 1
  %i.afl = extractelement <3 x float> %i.afg, i64 2
  %i.afm = extractelement <3 x float> %i.aff, i64 2
  %i.afn = extractelement <3 x float> %i.afh, i64 2
  %i.afo = extractelement <3 x float> %i.afg, i64 0
  %i.afp = extractelement <3 x float> %i.aff, i64 0
  %i.afq = extractelement <3 x float> %i.afh, i64 0
  %i.afr = extractelement <2 x float> %i.aeb, i64 0
  %i.afs = extractelement <2 x float> %i.aea, i64 0
  %i.aft = extractelement <2 x float> %i.aec, i64 0
  %i.afu = shufflevector <2 x float> %i.aeb, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.afv = fmul <3 x float> %i.afu, %i.afg
  %i.afw = shufflevector <2 x float> %i.aea, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.afx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aff, <3 x float> %i.afw, <3 x float> %i.afv)
  %i.afy = shufflevector <2 x float> %i.aec, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.afz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.afh, <3 x float> %i.afy, <3 x float> %i.afx) ; 6 uses
  %i.aga = extractelement <3 x float> %i.afz, i64 2
  %i.agb = extractelement <3 x float> %i.afz, i64 1
  %i.agc = extractelement <3 x float> %i.afz, i64 0
  %i.agd = shufflevector <2 x float> %i.aeb, <2 x float> poison, <3 x i32> zeroinitializer
  %i.age = fmul <3 x float> %i.agd, %i.afg
  %i.agf = shufflevector <2 x float> %i.aea, <2 x float> poison, <3 x i32> zeroinitializer
  %i.agg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aff, <3 x float> %i.agf, <3 x float> %i.age)
  %i.agh = shufflevector <2 x float> %i.aec, <2 x float> poison, <3 x i32> zeroinitializer
  %i.agi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.afh, <3 x float> %i.agh, <3 x float> %i.agg) ; 6 uses
  %i.agj = load float, ptr %0, align 4, !tbaa !20, !noalias !333 ; 6 uses
  %i.agk = load float, ptr %i.pt, align 4, !tbaa !20, !noalias !333 ; 6 uses
  %i.agl = load float, ptr %i.pu, align 4, !tbaa !20, !noalias !333 ; 6 uses
  %i.agm = fmul float %i.agk, %i.afi
  %i.agn = tail call float @llvm.fmuladd.f32(float %i.afj, float %i.agj, float %i.agm)
  %i.ago = tail call noundef float @llvm.fmuladd.f32(float %i.afk, float %i.agl, float %i.agn) ; 3 uses
  %i.agp = fmul float %i.agk, %i.afl
  %i.agq = tail call float @llvm.fmuladd.f32(float %i.afm, float %i.agj, float %i.agp)
  %i.agr = tail call noundef float @llvm.fmuladd.f32(float %i.afn, float %i.agl, float %i.agq) ; 3 uses
  %i.ags = fmul float %i.agk, %i.afo
  %i.agt = tail call float @llvm.fmuladd.f32(float %i.afp, float %i.agj, float %i.ags)
  %i.agu = tail call noundef float @llvm.fmuladd.f32(float %i.afq, float %i.agl, float %i.agt) ; 3 uses
  %i.agv = fmul float %i.agk, %i.agr
  %i.agw = tail call float @llvm.fmuladd.f32(float %i.agj, float %i.ago, float %i.agv)
  %i.agx = tail call noundef float @llvm.fmuladd.f32(float %i.agl, float %i.agu, float %i.agw)
  %i.agy = fmul float %i.afr, %i.agr
  %i.agz = tail call float @llvm.fmuladd.f32(float %i.afs, float %i.ago, float %i.agy)
  %i.aha = tail call noundef float @llvm.fmuladd.f32(float %i.aft, float %i.agu, float %i.agz)
  %i.ahb = fmul float %i.agk, %i.aga
  %i.ahc = tail call float @llvm.fmuladd.f32(float %i.agj, float %i.agb, float %i.ahb)
  %i.ahd = tail call noundef float @llvm.fmuladd.f32(float %i.agl, float %i.agc, float %i.ahc)
  %i.ahe = shufflevector <2 x float> %i.aeb, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ahf = shufflevector <3 x float> %i.ahe, <3 x float> %i.agi, <2 x i32> <i32 1, i32 5>
  %i.ahg = insertelement <2 x float> poison, float %i.agr, i64 0
  %i.ahh = insertelement <2 x float> %i.ahg, float %i.agk, i64 1
  %i.ahi = fmul <2 x float> %i.ahf, %i.ahh
  %i.ahj = shufflevector <2 x float> %i.aea, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ahk = shufflevector <3 x float> %i.ahj, <3 x float> %i.agi, <2 x i32> <i32 1, i32 4>
  %i.ahl = insertelement <2 x float> poison, float %i.ago, i64 0
  %i.ahm = insertelement <2 x float> %i.ahl, float %i.agj, i64 1
  %i.ahn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahk, <2 x float> %i.ahm, <2 x float> %i.ahi)
  %i.aho = shufflevector <2 x float> %i.aec, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ahp = shufflevector <3 x float> %i.aho, <3 x float> %i.agi, <2 x i32> <i32 1, i32 3>
  %i.ahq = insertelement <2 x float> poison, float %i.agu, i64 0
  %i.ahr = insertelement <2 x float> %i.ahq, float %i.agl, i64 1
  %i.ahs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahp, <2 x float> %i.ahr, <2 x float> %i.ahn)
  %i.aht = shufflevector <3 x float> %i.agi, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ahu = fmul <2 x float> %i.aeb, %i.aht
  %i.ahv = shufflevector <3 x float> %i.agi, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ahw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aea, <2 x float> %i.ahv, <2 x float> %i.ahu)
  %i.ahx = shufflevector <3 x float> %i.agi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ahy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aec, <2 x float> %i.ahx, <2 x float> %i.ahw)
  %i.ahz = shufflevector <3 x float> %i.afz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aia = fmul <2 x float> %i.aeb, %i.ahz
  %i.aib = shufflevector <3 x float> %i.afz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aea, <2 x float> %i.aib, <2 x float> %i.aia)
  %i.aid = shufflevector <3 x float> %i.afz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aec, <2 x float> %i.aid, <2 x float> %i.aic)
  %i.aif = fadd float %i.abx, %i.agx
  %i.aig = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.aha, i64 0
  %i.aih = shufflevector <2 x float> %i.ahs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aii = shufflevector <4 x float> %i.aig, <4 x float> %i.aih, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.aij = fadd <4 x float> %i.aci, %i.aii
  %i.aik = shufflevector <2 x float> %i.ahy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ail = insertelement <4 x float> %i.aik, float -0.000000e+00, i64 2
  %i.aim = insertelement <4 x float> %i.ail, float %i.ahd, i64 3
  %i.ain = fadd <4 x float> %i.acm, %i.aim
  %i.aio = fadd <2 x float> %i.aie, %i.adz
  store float %i.aif, ptr %i.abw, align 4, !tbaa !20
  store <4 x float> %i.aij, ptr %i.aby, align 4, !tbaa !20
  store <4 x float> %i.ain, ptr %i.acb, align 4, !tbaa !20
  store <2 x float> %i.aio, ptr %i.ace, align 4, !tbaa !20
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aiy = load <4 x float>, ptr %i.aix, align 4
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.aja = load <4 x float>, ptr %i.aiz, align 4
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ajc = load <4 x float>, ptr %i.ajb, align 4
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.aje = load <4 x float>, ptr %i.ajd, align 4
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.ajg = load <4 x float>, ptr %i.ajf, align 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aji = load <4 x float>, ptr %i.ajh, align 4
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ajk = load <4 x float>, ptr %i.ajj, align 4
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !20, !noalias !334
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !20, !noalias !334
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ajr = load float, ptr %2, align 4, !tbaa !20
  %i.ajs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !20
  %i.ajv = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !20
  %i.ajy = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ajz = load <2 x float>, ptr %i.ajs, align 4, !tbaa !20
  %i.aka = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.aju, i64 3
  %i.akb = shufflevector <2 x float> %i.ajz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akc = shufflevector <4 x float> %i.akb, <4 x float> %i.aka, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.akd = load <2 x float>, ptr %i.ajv, align 4, !tbaa !20
  %i.ake = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ajx, i64 3
  %i.akf = shufflevector <2 x float> %i.akd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akg = shufflevector <4 x float> %i.akf, <4 x float> %i.ake, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.akh = shufflevector <4 x float> %i.aja, <4 x float> poison, <3 x i32> zeroinitializer
  %i.aki = insertelement <3 x float> <float poison, float poison, float 0.000000e+00>, float %i.i, i64 0 ; 2 uses
  %i.akj = insertelement <3 x float> %i.aki, float %i.f, i64 1 ; 10 uses
  %i.akk = fmul <3 x float> %i.akh, %i.akj
  %i.akl = shufflevector <4 x float> %i.ajg, <4 x float> poison, <3 x i32> zeroinitializer
  %i.akm = fmul <3 x float> %i.akl, %i.akj
  %i.akn = insertelement <3 x float> poison, float %i.ajm, i64 0
  %i.ako = shufflevector <3 x float> %i.akn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.akp = fmul <3 x float> %i.ako, %i.akj
  %i.akq = load <2 x float>, ptr %i.ajy, align 4, !tbaa !20
  %i.akr = load <2 x float>, ptr %i.air, align 4, !tbaa !20, !noalias !335 ; 5 uses
  %i.aks = load <2 x float>, ptr %i.ais, align 4, !tbaa !20, !noalias !335 ; 5 uses
  %i.akt = load <2 x float>, ptr %i.ait, align 4, !tbaa !20, !noalias !335 ; 6 uses
  %i.aku = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.akv = insertelement <3 x float> %i.aku, float 0.000000e+00, i64 1
  %i.akw = insertelement <3 x float> %i.akv, float %i.g, i64 2 ; 10 uses
  %i.akx = shufflevector <4 x float> %i.aiy, <4 x float> poison, <3 x i32> zeroinitializer
  %i.aky = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.akx, <3 x float> %i.akk)
  %i.akz = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.ala = insertelement <3 x float> %i.akz, float 0.000000e+00, i64 0
  %i.alb = insertelement <3 x float> %i.ala, float %i.k, i64 1 ; 10 uses
  %i.alc = shufflevector <4 x float> %i.ajc, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ald = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.alc, <3 x float> %i.aky)
  %i.ale = shufflevector <4 x float> %i.aje, <4 x float> poison, <3 x i32> zeroinitializer
  %i.alf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.ale, <3 x float> %i.akm)
  %i.alg = shufflevector <4 x float> %i.aji, <4 x float> poison, <3 x i32> zeroinitializer
  %i.alh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.alg, <3 x float> %i.alf)
  %i.ali = shufflevector <4 x float> %i.ajk, <4 x float> poison, <3 x i32> zeroinitializer
  %i.alj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.ali, <3 x float> %i.akp)
  %i.alk = insertelement <3 x float> poison, float %i.ajo, i64 0
  %i.all = shufflevector <3 x float> %i.alk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.alm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.all, <3 x float> %i.alj)
  %i.aln = load <3 x float>, ptr %1, align 4, !tbaa !20, !noalias !336
  %i.alo = shufflevector <3 x float> %i.aln, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.alp = fsub <3 x float> %i.alo, %i.ald        ; 5 uses
  %i.alq = load <3 x float>, ptr %i.ajp, align 4, !tbaa !20, !noalias !336
  %i.alr = shufflevector <3 x float> %i.alq, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.als = fsub <3 x float> %i.alr, %i.alh        ; 5 uses
  %i.alt = load <3 x float>, ptr %i.ajq, align 4, !tbaa !20, !noalias !336
  %i.alu = shufflevector <3 x float> %i.alt, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.alv = fsub <3 x float> %i.alu, %i.alm        ; 5 uses
  %i.alw = extractelement <3 x float> %i.als, i64 1
  %i.alx = extractelement <3 x float> %i.alp, i64 1
  %i.aly = extractelement <3 x float> %i.alv, i64 1
  %i.alz = extractelement <3 x float> %i.als, i64 2
  %i.ama = extractelement <3 x float> %i.alp, i64 2
  %i.amb = extractelement <3 x float> %i.alv, i64 2
  %i.amc = extractelement <3 x float> %i.alv, i64 0
  %i.amd = extractelement <2 x float> %i.akt, i64 0
  %i.ame = shufflevector <2 x float> %i.aks, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.amf = fmul <3 x float> %i.ame, %i.als
  %i.amg = shufflevector <2 x float> %i.akr, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.amh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alp, <3 x float> %i.amg, <3 x float> %i.amf)
  %i.ami = shufflevector <2 x float> %i.akt, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.amj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alv, <3 x float> %i.ami, <3 x float> %i.amh) ; 6 uses
  %i.amk = extractelement <3 x float> %i.amj, i64 0
  %i.aml = shufflevector <2 x float> %i.aks, <2 x float> poison, <3 x i32> zeroinitializer
  %i.amm = fmul <3 x float> %i.aml, %i.als
  %i.amn = shufflevector <2 x float> %i.akr, <2 x float> poison, <3 x i32> zeroinitializer
  %i.amo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alp, <3 x float> %i.amn, <3 x float> %i.amm)
  %i.amp = shufflevector <2 x float> %i.akt, <2 x float> poison, <3 x i32> zeroinitializer
  %i.amq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alv, <3 x float> %i.amp, <3 x float> %i.amo) ; 6 uses
  %i.amr = load float, ptr %i.aiq, align 4, !tbaa !20, !noalias !335 ; 6 uses
  %i.ams = load float, ptr %0, align 4, !tbaa !20, !noalias !335 ; 4 uses
  %i.amt = load float, ptr %i.aip, align 4, !tbaa !20, !noalias !335 ; 5 uses
  %i.amu = fmul float %i.amt, %i.alw
  %i.amv = tail call float @llvm.fmuladd.f32(float %i.alx, float %i.ams, float %i.amu)
  %i.amw = tail call noundef float @llvm.fmuladd.f32(float %i.aly, float %i.amr, float %i.amv) ; 2 uses
  %i.amx = fmul float %i.amt, %i.alz
  %i.amy = tail call float @llvm.fmuladd.f32(float %i.ama, float %i.ams, float %i.amx)
  %i.amz = tail call noundef float @llvm.fmuladd.f32(float %i.amb, float %i.amr, float %i.amy) ; 2 uses
  %i.ana = shufflevector <2 x float> %i.aks, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.anb = shufflevector <3 x float> %i.ana, <3 x float> %i.amj, <4 x i32> <i32 poison, i32 poison, i32 0, i32 5>
  %i.anc = insertelement <4 x float> poison, float %i.amt, i64 0
  %i.and = shufflevector <4 x float> %i.anc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> %i.anb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.anf = shufflevector <3 x float> %i.als, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ang = insertelement <4 x float> %i.anf, float %i.amz, i64 1
  %i.anh = insertelement <4 x float> %i.ang, float %i.amt, i64 3
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.anj = fmul <4 x float> %i.ane, %i.ani
  %i.ank = shufflevector <2 x float> %i.akr, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.anl = shufflevector <3 x float> %i.alp, <3 x float> %i.ank, <4 x i32> <i32 0, i32 poison, i32 3, i32 poison>
  %i.anm = insertelement <4 x float> %i.anl, float %i.amw, i64 1 ; 2 uses
  %i.ann = shufflevector <3 x float> %i.amj, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ano = shufflevector <4 x float> %i.anm, <4 x float> %i.ann, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.anp = shufflevector <4 x float> %i.anm, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.anq = insertelement <2 x float> %i.anp, float %i.ams, i64 0
  %i.anr = shufflevector <2 x float> %i.anq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ans = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ano, <4 x float> %i.anr, <4 x float> %i.anj) ; 4 uses
  %i.ant = extractelement <4 x float> %i.ans, i64 0
  %i.anu = tail call noundef float @llvm.fmuladd.f32(float %i.amc, float %i.amr, float %i.ant) ; 3 uses
  %i.anv = extractelement <4 x float> %i.ans, i64 1
  %i.anw = tail call noundef float @llvm.fmuladd.f32(float %i.amr, float %i.anu, float %i.anv)
  %i.anx = extractelement <4 x float> %i.ans, i64 2
  %i.any = tail call noundef float @llvm.fmuladd.f32(float %i.amd, float %i.anu, float %i.anx)
  %i.anz = extractelement <4 x float> %i.ans, i64 3
  %i.aoa = tail call noundef float @llvm.fmuladd.f32(float %i.amr, float %i.amk, float %i.anz)
  %i.aob = shufflevector <3 x float> %i.ana, <3 x float> %i.amq, <2 x i32> <i32 1, i32 5>
  %i.aoc = insertelement <2 x float> poison, float %i.amz, i64 0
  %i.aod = insertelement <2 x float> %i.aoc, float %i.amt, i64 1
  %i.aoe = fmul <2 x float> %i.aob, %i.aod
  %i.aof = shufflevector <3 x float> %i.ank, <3 x float> %i.amq, <2 x i32> <i32 1, i32 4>
  %i.aog = insertelement <2 x float> poison, float %i.amw, i64 0
  %i.aoh = insertelement <2 x float> %i.aog, float %i.ams, i64 1
  %i.aoi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aof, <2 x float> %i.aoh, <2 x float> %i.aoe)
  %i.aoj = shufflevector <2 x float> %i.akt, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.aok = shufflevector <3 x float> %i.aoj, <3 x float> %i.amq, <2 x i32> <i32 1, i32 3>
  %i.aol = insertelement <2 x float> poison, float %i.anu, i64 0
  %i.aom = insertelement <2 x float> %i.aol, float %i.amr, i64 1
  %i.aon = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aok, <2 x float> %i.aom, <2 x float> %i.aoi)
  %i.aoo = shufflevector <3 x float> %i.amq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aop = fmul <2 x float> %i.aks, %i.aoo
  %i.aoq = shufflevector <3 x float> %i.amq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aor = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akr, <2 x float> %i.aoq, <2 x float> %i.aop)
  %i.aos = shufflevector <3 x float> %i.amq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aot = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akt, <2 x float> %i.aos, <2 x float> %i.aor)
  %i.aou = shufflevector <3 x float> %i.amj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aov = fmul <2 x float> %i.aks, %i.aou
  %i.aow = shufflevector <3 x float> %i.amj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aox = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akr, <2 x float> %i.aow, <2 x float> %i.aov)
  %i.aoy = shufflevector <3 x float> %i.amj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aoz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akt, <2 x float> %i.aoy, <2 x float> %i.aox)
  %i.apa = fsub float %i.ajr, %i.anw
  %i.apb = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.any, i64 0
  %i.apc = shufflevector <2 x float> %i.aon, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.apd = shufflevector <4 x float> %i.apb, <4 x float> %i.apc, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ape = fsub <4 x float> %i.akc, %i.apd
  %i.apf = shufflevector <2 x float> %i.aot, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.apg = insertelement <4 x float> %i.apf, float 0.000000e+00, i64 2
  %i.aph = insertelement <4 x float> %i.apg, float %i.aoa, i64 3
  %i.api = fsub <4 x float> %i.akg, %i.aph
  %i.apj = fsub <2 x float> %i.akq, %i.aoz
  store float %i.apa, ptr %2, align 4, !tbaa !20
  store <4 x float> %i.ape, ptr %i.ajs, align 4, !tbaa !20
  store <4 x float> %i.api, ptr %i.ajv, align 4, !tbaa !20
  store <2 x float> %i.apj, ptr %i.ajy, align 4, !tbaa !20
  %i.apk = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float 0.000000e+00, ptr %i.apk, align 4, !tbaa !20
  %i.apl = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !20
  %i.apn = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.app = load float, ptr %i.apo, align 4, !tbaa !20
  %i.apq = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !20
  %i.apt = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.apu = load <2 x float>, ptr %0, align 4, !tbaa !20, !noalias !337 ; 3 uses
  %i.apv = load <2 x float>, ptr %i.aip, align 4, !tbaa !20, !noalias !337 ; 4 uses
  %i.apw = load <2 x float>, ptr %i.aiq, align 4, !tbaa !20, !noalias !337 ; 3 uses
  %i.apx = load <2 x float>, ptr %i.aix, align 4, !tbaa !20, !noalias !338 ; 3 uses
  %i.apy = load <2 x float>, ptr %i.ajd, align 4, !tbaa !20, !noalias !338 ; 3 uses
  %i.apz = load <2 x float>, ptr %i.ajj, align 4, !tbaa !20, !noalias !338 ; 3 uses
  %i.aqa = shufflevector <2 x float> %i.apv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.aqb = insertelement <4 x float> %i.aqa, float -0.000000e+00, i64 2 ; 2 uses
  %i.aqc = shufflevector <2 x float> %i.apy, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.aqd = fmul <4 x float> %i.aqb, %i.aqc
  %i.aqe = shufflevector <2 x float> %i.apx, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.aqf = shufflevector <2 x float> %i.apu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.aqg = insertelement <4 x float> %i.aqf, float -0.000000e+00, i64 2 ; 3 uses
  %i.aqh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqe, <4 x float> %i.aqg, <4 x float> %i.aqd)
  %i.aqi = shufflevector <2 x float> %i.apz, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.aqj = shufflevector <2 x float> %i.apw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.aqk = insertelement <4 x float> %i.aqj, float -0.000000e+00, i64 2 ; 3 uses
  %i.aql = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqi, <4 x float> %i.aqk, <4 x float> %i.aqh) ; 3 uses
  %i.aqm = shufflevector <2 x float> %i.apv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqn = shufflevector <4 x float> %i.aqm, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 1>
  %i.aqo = shufflevector <2 x float> %i.apy, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.aqp = fmul <4 x float> %i.aqn, %i.aqo
  %i.aqq = shufflevector <2 x float> %i.apx, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.aqr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqq, <4 x float> %i.aqg, <4 x float> %i.aqp)
  %i.aqs = shufflevector <2 x float> %i.apz, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.aqt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqs, <4 x float> %i.aqk, <4 x float> %i.aqr) ; 3 uses
  %i.aqu = extractelement <4 x float> %i.aqt, i64 0
  %i.aqv = extractelement <2 x float> %i.apv, i64 0
  %i.aqw = fmul float %i.aqv, %i.aqu
  %i.aqx = extractelement <4 x float> %i.aql, i64 0
  %i.aqy = extractelement <2 x float> %i.apu, i64 0
  %i.aqz = tail call float @llvm.fmuladd.f32(float %i.aqy, float %i.aqx, float %i.aqw)
  %i.ara = extractelement <2 x float> %i.apw, i64 0
  %i.arb = shufflevector <4 x float> %i.aqa, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.arc = shufflevector <4 x float> %i.aqf, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.ard = shufflevector <4 x float> %i.aqj, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.are = load <2 x float>, ptr %i.apn, align 4, !tbaa !20
  %i.arf = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.app, i64 3
  %i.arg = shufflevector <2 x float> %i.are, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.arh = shufflevector <4 x float> %i.arg, <4 x float> %i.arf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ari = load <2 x float>, ptr %i.ais, align 4, !tbaa !20, !noalias !337 ; 3 uses
  %i.arj = load float, ptr %i.aiv, align 4, !tbaa !20, !noalias !337 ; 2 uses
  %i.ark = load <2 x float>, ptr %i.air, align 4, !tbaa !20, !noalias !337 ; 3 uses
  %i.arl = load float, ptr %i.aiu, align 4, !tbaa !20, !noalias !337 ; 2 uses
  %i.arm = load <2 x float>, ptr %i.ait, align 4, !tbaa !20, !noalias !337 ; 3 uses
  %i.arn = load float, ptr %i.aiw, align 4, !tbaa !20, !noalias !337 ; 2 uses
  %i.aro = load <2 x float>, ptr %i.apq, align 4, !tbaa !20
  %i.arp = shufflevector <2 x float> %i.ari, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.arq = shufflevector <4 x float> %i.arb, <4 x float> %i.arp, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.arr = fmul <4 x float> %i.arq, %i.aqt
  %i.ars = shufflevector <2 x float> %i.ark, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.art = shufflevector <4 x float> %i.arc, <4 x float> %i.ars, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.aru = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.art, <4 x float> %i.aql, <4 x float> %i.arr)
  %i.arv = shufflevector <2 x float> %i.arm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.arw = shufflevector <4 x float> %i.ard, <4 x float> %i.arv, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.arx = shufflevector <2 x float> %i.apv, <2 x float> %i.ari, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.ary = insertelement <4 x float> %i.arx, float 0.000000e+00, i64 2
  %i.arz = shufflevector <4 x float> %i.aqt, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.asa = shufflevector <2 x float> %i.apu, <2 x float> %i.ark, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.asb = insertelement <4 x float> %i.asa, float 0.000000e+00, i64 2
  %i.asc = shufflevector <4 x float> %i.aql, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.asd = shufflevector <2 x float> %i.apw, <2 x float> %i.arm, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.ase = insertelement <4 x float> %i.asd, float 0.000000e+00, i64 2
  %i.asf = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.aps, i64 3
  %i.asg = shufflevector <2 x float> %i.aro, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ash = shufflevector <4 x float> %i.asg, <4 x float> %i.asf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.asi = load <2 x float>, ptr %i.apt, align 4, !tbaa !20
  %i.asj = load <2 x float>, ptr %i.aiz, align 4, !tbaa !20, !noalias !338 ; 2 uses
  %i.ask = load <2 x float>, ptr %i.ajf, align 4, !tbaa !20, !noalias !338 ; 2 uses
  %i.asl = load <2 x float>, ptr %i.ajl, align 4, !tbaa !20, !noalias !338 ; 2 uses
  %i.asm = shufflevector <2 x float> %i.ask, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asn = shufflevector <4 x float> %i.asm, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.aso = fmul <4 x float> %i.aqb, %i.asn
  %i.asp = shufflevector <2 x float> %i.asj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asq = shufflevector <4 x float> %i.asp, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.asr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asq, <4 x float> %i.aqg, <4 x float> %i.aso)
  %i.ass = shufflevector <2 x float> %i.asl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ast = shufflevector <4 x float> %i.ass, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.asu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ast, <4 x float> %i.aqk, <4 x float> %i.asr) ; 3 uses
  %i.asv = extractelement <4 x float> %i.asu, i64 0
  %i.asw = tail call noundef float @llvm.fmuladd.f32(float %i.ara, float %i.asv, float %i.aqz)
  %i.asx = fsub float %i.apm, %i.asw
  %i.asy = insertelement <3 x float> poison, float %i.arj, i64 0
  %i.asz = shufflevector <3 x float> %i.asy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ata = shufflevector <2 x float> %i.apy, <2 x float> %i.ask, <3 x i32> <i32 3, i32 0, i32 2>
  %i.atb = fmul <3 x float> %i.asz, %i.ata
  %i.atc = shufflevector <2 x float> %i.apx, <2 x float> %i.asj, <3 x i32> <i32 3, i32 0, i32 2>
  %i.atd = insertelement <3 x float> poison, float %i.arl, i64 0
  %i.ate = shufflevector <3 x float> %i.atd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.atf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.atc, <3 x float> %i.ate, <3 x float> %i.atb)
  %i.atg = shufflevector <2 x float> %i.apz, <2 x float> %i.asl, <3 x i32> <i32 3, i32 0, i32 2>
  %i.ath = insertelement <3 x float> poison, float %i.arn, i64 0
  %i.ati = shufflevector <3 x float> %i.ath, <3 x float> poison, <3 x i32> zeroinitializer
  %i.atj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.atg, <3 x float> %i.ati, <3 x float> %i.atf) ; 4 uses
  %i.atk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.arw, <4 x float> %i.asu, <4 x float> %i.aru)
  %i.atl = shufflevector <3 x float> %i.atj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.atm = shufflevector <4 x float> %i.arz, <4 x float> %i.atl, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.atn = fmul <4 x float> %i.ary, %i.atm
  %i.ato = shufflevector <4 x float> %i.asc, <4 x float> %i.atl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asb, <4 x float> %i.ato, <4 x float> %i.atn)
  %i.atq = shufflevector <4 x float> %i.asu, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.atr = shufflevector <4 x float> %i.atq, <4 x float> %i.atl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ats = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ase, <4 x float> %i.atr, <4 x float> %i.atp)
  %i.att = insertelement <2 x float> %i.ari, float %i.arj, i64 1
  %i.atu = shufflevector <3 x float> %i.atj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.atv = fmul <2 x float> %i.att, %i.atu
  %i.atw = insertelement <2 x float> %i.ark, float %i.arl, i64 1
  %i.atx = shufflevector <3 x float> %i.atj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aty = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atw, <2 x float> %i.atx, <2 x float> %i.atv)
  %i.atz = insertelement <2 x float> %i.arm, float %i.arn, i64 1
  %i.aua = shufflevector <3 x float> %i.atj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aub = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> %i.aua, <2 x float> %i.aty)
  %i.auc = fsub <4 x float> %i.arh, %i.atk
  %i.aud = fsub <4 x float> %i.ash, %i.ats
  %i.aue = fsub <2 x float> %i.asi, %i.aub
  store float %i.asx, ptr %i.apl, align 4, !tbaa !20
  store <4 x float> %i.auc, ptr %i.apn, align 4, !tbaa !20
  store <4 x float> %i.aud, ptr %i.apq, align 4, !tbaa !20
  store <2 x float> %i.aue, ptr %i.apt, align 4, !tbaa !20
  %i.auf = getelementptr inbounds nuw i8, ptr %2, i64 92
  store float 0.000000e+00, ptr %i.auf, align 4, !tbaa !20
  %i.aug = load <4 x float>, ptr %i.aix, align 4
  %i.auh = load <4 x float>, ptr %i.aiz, align 4
  %i.aui = load <4 x float>, ptr %i.ajb, align 4
  %i.auj = load <4 x float>, ptr %i.ajd, align 4
  %i.auk = load <4 x float>, ptr %i.ajf, align 4
  %i.aul = load <4 x float>, ptr %i.ajh, align 4
  %i.aum = load <4 x float>, ptr %i.ajj, align 4
  %i.aun = load float, ptr %i.ajl, align 4, !tbaa !20, !noalias !339
  %i.auo = load float, ptr %i.ajn, align 4, !tbaa !20, !noalias !339
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aur = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aus = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aut = load float, ptr %i.aus, align 4, !tbaa !20
  %i.auu = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !20
  %i.aux = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !20
  %i.ava = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.avb = load <2 x float>, ptr %i.auu, align 4, !tbaa !20
  %i.avc = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.auw, i64 3
  %i.avd = shufflevector <2 x float> %i.avb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ave = shufflevector <4 x float> %i.avd, <4 x float> %i.avc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.avf = load <2 x float>, ptr %i.aux, align 4, !tbaa !20
  %i.avg = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.auz, i64 3
  %i.avh = shufflevector <2 x float> %i.avf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avi = shufflevector <4 x float> %i.avh, <4 x float> %i.avg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.avj = shufflevector <4 x float> %i.auh, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avk = fmul <3 x float> %i.avj, %i.akj
  %i.avl = shufflevector <4 x float> %i.aug, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.avl, <3 x float> %i.avk)
  %i.avn = shufflevector <4 x float> %i.aui, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.avn, <3 x float> %i.avm)
  %i.avp = shufflevector <4 x float> %i.auk, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avq = fmul <3 x float> %i.avp, %i.akj
  %i.avr = shufflevector <4 x float> %i.auj, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.avr, <3 x float> %i.avq)
  %i.avt = shufflevector <4 x float> %i.aul, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.avt, <3 x float> %i.avs)
  %i.avv = insertelement <3 x float> poison, float %i.aun, i64 0
  %i.avw = shufflevector <3 x float> %i.avv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.avx = fmul <3 x float> %i.avw, %i.akj
  %i.avy = shufflevector <4 x float> %i.aum, <4 x float> poison, <3 x i32> zeroinitializer
  %i.avz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.avy, <3 x float> %i.avx)
  %i.awa = insertelement <3 x float> poison, float %i.auo, i64 0
  %i.awb = shufflevector <3 x float> %i.awa, <3 x float> poison, <3 x i32> zeroinitializer
  %i.awc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.awb, <3 x float> %i.avz)
  %i.awd = load <3 x float>, ptr %i.ajp, align 4, !tbaa !20, !noalias !340 ; 4 uses
  %i.awe = shufflevector <3 x float> %i.awd, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.awf = fsub <3 x float> %i.awe, %i.avu        ; 3 uses
  %9 = shufflevector <3 x float> %i.akw, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.awg = fmul <3 x float> %i.awf, %9
  %i.awh = fmul <3 x float> %i.awf, zeroinitializer
  %i.awi = fmul <3 x float> %i.akz, %i.awf
  %i.awj = load <3 x float>, ptr %i.aup, align 4, !tbaa !20, !noalias !341
  %i.awk = shufflevector <3 x float> %i.awj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.awl = load <3 x float>, ptr %i.auq, align 4, !tbaa !20, !noalias !341
  %i.awm = shufflevector <3 x float> %i.awl, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.awn = load <3 x float>, ptr %i.aur, align 4, !tbaa !20, !noalias !341
  %i.awo = shufflevector <3 x float> %i.awn, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.awp = shufflevector <3 x float> %i.awd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.awq = fmul <3 x float> %i.awp, %i.akj
  %i.awr = shufflevector <3 x float> %i.awd, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aws = fmul <3 x float> %i.awr, %i.akj
  %i.awt = shufflevector <3 x float> %i.awd, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.awu = fmul <3 x float> %i.awt, %i.akj
  %i.awv = load <2 x float>, ptr %i.ava, align 4, !tbaa !20
  %i.aww = load <2 x float>, ptr %i.air, align 4, !tbaa !20, !noalias !342 ; 6 uses
  %i.awx = load <2 x float>, ptr %i.ais, align 4, !tbaa !20, !noalias !342 ; 6 uses
  %i.awy = load <2 x float>, ptr %i.ait, align 4, !tbaa !20, !noalias !342 ; 6 uses
  %i.awz = load <3 x float>, ptr %1, align 4, !tbaa !20, !noalias !340 ; 4 uses
  %i.axa = shufflevector <3 x float> %i.awz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.axb = fsub <3 x float> %i.axa, %i.avo        ; 3 uses
  %i.axc = load <3 x float>, ptr %i.ajq, align 4, !tbaa !20, !noalias !340 ; 4 uses
  %i.axd = shufflevector <3 x float> %i.axc, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.axe = fsub <3 x float> %i.axd, %i.awc        ; 3 uses
  %i.axf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.axb, <3 x float> zeroinitializer, <3 x float> %i.awg)
  %i.axg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.axe, <3 x float> %i.aku, <3 x float> %i.axf)
  %10 = shufflevector <3 x float> %i.akj, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.axh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.axb, <3 x float> %10, <3 x float> %i.awh)
  %i.axi = shufflevector <3 x float> %i.aki, <3 x float> poison, <3 x i32> zeroinitializer
  %i.axj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.axe, <3 x float> %i.axi, <3 x float> %i.axh)
  %11 = shufflevector <3 x float> %i.alb, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.axk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.axb, <3 x float> %11, <3 x float> %i.awi)
  %i.axl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.axe, <3 x float> zeroinitializer, <3 x float> %i.axk)
  %i.axm = fadd <3 x float> %i.axg, %i.awk
  %i.axn = fadd <3 x float> %i.axj, %i.awm
  %i.axo = fadd <3 x float> %i.axl, %i.awo
  %i.axp = shufflevector <3 x float> %i.awz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.axq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.axp, <3 x float> %i.awq)
  %i.axr = shufflevector <3 x float> %i.axc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.axs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.axr, <3 x float> %i.axq)
  %i.axt = shufflevector <3 x float> %i.awz, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.axu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.axt, <3 x float> %i.aws)
  %i.axv = shufflevector <3 x float> %i.axc, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.axw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.axv, <3 x float> %i.axu)
  %i.axx = shufflevector <3 x float> %i.awz, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.axy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.akw, <3 x float> %i.axx, <3 x float> %i.awu)
  %i.axz = shufflevector <3 x float> %i.axc, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.aya = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.alb, <3 x float> %i.axz, <3 x float> %i.axy)
  %i.ayb = fsub <3 x float> %i.axm, %i.axs        ; 5 uses
  %i.ayc = fsub <3 x float> %i.axn, %i.axw        ; 5 uses
  %i.ayd = fsub <3 x float> %i.axo, %i.aya        ; 5 uses
  %i.aye = extractelement <3 x float> %i.ayc, i64 1
  %i.ayf = extractelement <3 x float> %i.ayb, i64 1
  %i.ayg = extractelement <3 x float> %i.ayd, i64 1
  %i.ayh = extractelement <3 x float> %i.ayc, i64 2
  %i.ayi = extractelement <3 x float> %i.ayb, i64 2
  %i.ayj = extractelement <3 x float> %i.ayd, i64 2
  %i.ayk = extractelement <3 x float> %i.ayc, i64 0
  %i.ayl = extractelement <3 x float> %i.ayb, i64 0
  %i.aym = extractelement <3 x float> %i.ayd, i64 0
  %i.ayn = extractelement <2 x float> %i.awx, i64 0
  %i.ayo = extractelement <2 x float> %i.aww, i64 0
  %i.ayp = extractelement <2 x float> %i.awy, i64 0
  %i.ayq = shufflevector <2 x float> %i.awx, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ayr = fmul <3 x float> %i.ayq, %i.ayc
  %i.ays = shufflevector <2 x float> %i.aww, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ayt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ayb, <3 x float> %i.ays, <3 x float> %i.ayr)
  %i.ayu = shufflevector <2 x float> %i.awy, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ayv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ayd, <3 x float> %i.ayu, <3 x float> %i.ayt) ; 6 uses
  %i.ayw = extractelement <3 x float> %i.ayv, i64 2
  %i.ayx = extractelement <3 x float> %i.ayv, i64 1
  %i.ayy = extractelement <3 x float> %i.ayv, i64 0
  %i.ayz = shufflevector <2 x float> %i.awx, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aza = fmul <3 x float> %i.ayz, %i.ayc
  %i.azb = shufflevector <2 x float> %i.aww, <2 x float> poison, <3 x i32> zeroinitializer
  %i.azc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ayb, <3 x float> %i.azb, <3 x float> %i.aza)
  %i.azd = shufflevector <2 x float> %i.awy, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aze = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ayd, <3 x float> %i.azd, <3 x float> %i.azc) ; 6 uses
  %i.azf = load float, ptr %0, align 4, !tbaa !20, !noalias !342 ; 6 uses
  %i.azg = load float, ptr %i.aip, align 4, !tbaa !20, !noalias !342 ; 6 uses
  %i.azh = load float, ptr %i.aiq, align 4, !tbaa !20, !noalias !342 ; 6 uses
  %i.azi = fmul float %i.azg, %i.aye
  %i.azj = tail call float @llvm.fmuladd.f32(float %i.ayf, float %i.azf, float %i.azi)
  %i.azk = tail call noundef float @llvm.fmuladd.f32(float %i.ayg, float %i.azh, float %i.azj) ; 3 uses
  %i.azl = fmul float %i.azg, %i.ayh
  %i.azm = tail call float @llvm.fmuladd.f32(float %i.ayi, float %i.azf, float %i.azl)
  %i.azn = tail call noundef float @llvm.fmuladd.f32(float %i.ayj, float %i.azh, float %i.azm) ; 3 uses
  %i.azo = fmul float %i.azg, %i.ayk
  %i.azp = tail call float @llvm.fmuladd.f32(float %i.ayl, float %i.azf, float %i.azo)
  %i.azq = tail call noundef float @llvm.fmuladd.f32(float %i.aym, float %i.azh, float %i.azp) ; 3 uses
  %i.azr = fmul float %i.azg, %i.azn
  %i.azs = tail call float @llvm.fmuladd.f32(float %i.azf, float %i.azk, float %i.azr)
  %i.azt = tail call noundef float @llvm.fmuladd.f32(float %i.azh, float %i.azq, float %i.azs)
  %i.azu = fmul float %i.ayn, %i.azn
  %i.azv = tail call float @llvm.fmuladd.f32(float %i.ayo, float %i.azk, float %i.azu)
  %i.azw = tail call noundef float @llvm.fmuladd.f32(float %i.ayp, float %i.azq, float %i.azv)
  %i.azx = fmul float %i.azg, %i.ayw
  %i.azy = tail call float @llvm.fmuladd.f32(float %i.azf, float %i.ayx, float %i.azx)
  %i.azz = tail call noundef float @llvm.fmuladd.f32(float %i.azh, float %i.ayy, float %i.azy)
  %i.baa = shufflevector <2 x float> %i.awx, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.bab = shufflevector <3 x float> %i.baa, <3 x float> %i.aze, <2 x i32> <i32 1, i32 5>
  %i.bac = insertelement <2 x float> poison, float %i.azn, i64 0
  %i.bad = insertelement <2 x float> %i.bac, float %i.azg, i64 1
  %i.bae = fmul <2 x float> %i.bab, %i.bad
  %i.baf = shufflevector <2 x float> %i.aww, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.bag = shufflevector <3 x float> %i.baf, <3 x float> %i.aze, <2 x i32> <i32 1, i32 4>
  %i.bah = insertelement <2 x float> poison, float %i.azk, i64 0
  %i.bai = insertelement <2 x float> %i.bah, float %i.azf, i64 1
  %i.baj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bag, <2 x float> %i.bai, <2 x float> %i.bae)
  %i.bak = shufflevector <2 x float> %i.awy, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.bal = shufflevector <3 x float> %i.bak, <3 x float> %i.aze, <2 x i32> <i32 1, i32 3>
  %i.bam = insertelement <2 x float> poison, float %i.azq, i64 0
  %i.ban = insertelement <2 x float> %i.bam, float %i.azh, i64 1
  %i.bao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bal, <2 x float> %i.ban, <2 x float> %i.baj)
  %i.bap = shufflevector <3 x float> %i.aze, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.baq = fmul <2 x float> %i.awx, %i.bap
  %i.bar = shufflevector <3 x float> %i.aze, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bas = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aww, <2 x float> %i.bar, <2 x float> %i.baq)
  %i.bat = shufflevector <3 x float> %i.aze, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bau = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awy, <2 x float> %i.bat, <2 x float> %i.bas)
  %i.bav = shufflevector <3 x float> %i.ayv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.baw = fmul <2 x float> %i.awx, %i.bav
  %i.bax = shufflevector <3 x float> %i.ayv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aww, <2 x float> %i.bax, <2 x float> %i.baw)
  %i.baz = shufflevector <3 x float> %i.ayv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awy, <2 x float> %i.baz, <2 x float> %i.bay)
  %i.bbb = fsub float %i.aut, %i.azt
  %i.bbc = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.azw, i64 0
  %i.bbd = shufflevector <2 x float> %i.bao, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bbe = shufflevector <4 x float> %i.bbc, <4 x float> %i.bbd, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bbf = fsub <4 x float> %i.ave, %i.bbe
  %i.bbg = shufflevector <2 x float> %i.bau, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bbh = insertelement <4 x float> %i.bbg, float 0.000000e+00, i64 2
  %i.bbi = insertelement <4 x float> %i.bbh, float %i.azz, i64 3
  %i.bbj = fsub <4 x float> %i.avi, %i.bbi
  %i.bbk = fsub <2 x float> %i.awv, %i.bba
  store float %i.bbb, ptr %i.aus, align 4, !tbaa !20
  store <4 x float> %i.bbf, ptr %i.auu, align 4, !tbaa !20
  store <4 x float> %i.bbj, ptr %i.aux, align 4, !tbaa !20
  store <2 x float> %i.bbk, ptr %i.ava, align 4, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.c
  %i.bbl = getelementptr inbounds nuw i8, ptr %2, i64 140
  store float 0.000000e+00, ptr %i.bbl, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody12solveImatrixERK20btSpatialForceVectorR21btSpatialMotionVector(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = fcmp ult float %i.e, f0x34000000
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !20 ; 2 uses
  %i.i = fcmp ult float %i.h, f0x34000000
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = load float, ptr %i.j, align 4, !tbaa !20 ; 2 uses
  %i.l = fcmp ult float %i.k, f0x34000000
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !20
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.h, i64 1
  %i.q = fdiv <2 x float> %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = fdiv float %i.s, %i.k
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  store <2 x float> %i.q, ptr %2, align 4
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4265.0..sroa_idx, align 4, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load float, ptr %i.u, align 8, !tbaa !45 ; 2 uses
  %i.w = fcmp ult float %i.v, f0x34000000
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = fdiv float 1.000000e+00, %i.v            ; 2 uses
  %i.y = load <2 x float>, ptr %1, align 4, !tbaa !20
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !20
  %i.ae = fmul float %i.x, %i.ad
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.ab, ptr %i.af, align 4
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4256.0..sroa_idx, align 4, !tbaa !21
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !99, !range !68, !noundef !69
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.m
end_hunk_0
begin_hunk_1_@_ZN11btMultiBody24predictPositionsMultiDofEf:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.aj, ptr %i.ak, align 4, !tbaa !20
  %i.al = load <3 x float>, ptr %i.af, align 8, !tbaa !20 ; 4 uses
  %i.am = shufflevector <3 x float> %i.al, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.an = load float, ptr %i.af, align 8, !tbaa !20
  store float %i.an, ptr %i.ag, align 8, !tbaa !20
  %i.ao = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ao, ptr %i.ah, align 4, !tbaa !20
  %i.ap = load float, ptr %i.ae, align 4, !tbaa !20 ; 2 uses
  %i.aq = load <3 x float>, ptr %i.ae, align 4, !tbaa !20 ; 3 uses
  %i.ar = shufflevector <3 x float> %i.aq, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.ar, %i.ar
  %i.as = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.as)
  %i.au = extractelement <3 x float> %i.aq, i64 2 ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.at)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.av) ; 2 uses
  %i.aw = fmul float %1, %sqrt.i.i
  %i.ax = fcmp ogt float %i.aw, f0x3F490FDB
  %i.ay = fdiv float f0x3F490FDB, %1
  %.0.i = select i1 %i.ax, float %i.ay, float %sqrt.i.i ; 6 uses
  %i.az = fcmp olt float %.0.i, 1.000000e-03
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader
  %i.ba = fmul float %1, %1
  %i.bb = fmul float %1, %i.ba
  %i.bc = fmul float %i.bb, f0x3CAAAAAB
  %i.bd = fmul float %i.bc, %.0.i
  %i.be = fneg float %.0.i
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.bf)
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit"

bb.c:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit105.preheader
  %i.bh = fmul float %.0.i, 5.000000e-01
  %i.bi = fmul float %1, %i.bh
  %i.bj = tail call noundef float @sinf(float noundef %i.bi) #26
  %i.bk = fdiv float %i.bj, %.0.i
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit"

"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit": ; preds = %bb.b, %bb.c
  %.sink39.i = phi float [ %i.bk, %bb.c ], [ %i.bg, %bb.b ] ; 2 uses
  %i.bl = insertelement <4 x float> poison, float %.sink39.i, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = fmul <4 x float> %i.ar, %i.bm           ; 4 uses
  %i.bo = extractelement <4 x float> %i.bn, i64 0
  %i.bp = fneg float %i.bo                        ; 2 uses
  %i.bq = fmul float %1, %.0.i
  %i.br = fmul float %i.bq, 5.000000e-01
  %i.bs = tail call noundef float @cosf(float noundef %i.br) #26
  %i.bt = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x float> %i.bt, float %i.bs, i64 0 ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bw = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.sink39.i, i64 3
  %i.bx = fmul <4 x float> %i.bv, %i.bw
  %i.by = fneg <4 x float> %i.bn
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ca = shufflevector <3 x float> %i.al, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cb = fmul <4 x float> %i.ca, %i.bx
  %i.cc = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <2 x float> %i.bz, <2 x float> %i.bu, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bp, i64 1
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.cg, <4 x float> %i.cb)
  %i.ci = shufflevector <3 x float> %i.al, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.cj = insertelement <4 x float> poison, float %i.bp, i64 2
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.bn, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.cl = shufflevector <4 x float> %i.ce, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.cl, <4 x float> %i.ch)
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.bn, <4 x float> %i.cm) ; 6 uses
  %foldExtExtBinop188 = fmul <4 x float> %i.cn, %i.cn
  %i.co = extractelement <4 x float> %foldExtExtBinop188, i64 1
  %i.cp = extractelement <4 x float> %i.cn, i64 0 ; 2 uses
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.co)
  %i.cr = extractelement <4 x float> %i.cn, i64 2 ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cq)
  %i.ct = extractelement <4 x float> %i.cn, i64 3 ; 2 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.cw = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = fmul <4 x float> %i.cn, %i.cx
  store <4 x float> %i.cy, ptr %i.ag, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %.split, %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit"
  %i.cz = icmp sgt i32 %i.b, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dc = fdiv float f0x3F490FDB, %1
  %i.dd = fmul float %1, %1
  %i.de = fmul float %1, %i.dd
  %i.df = fmul float %i.de, f0x3CAAAAAB
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.dg = insertelement <2 x float> poison, float %1, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw [688 x i8], ptr %i.di, i64 %indvars.iv ; 27 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 492 ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 544
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !98 ; 2 uses
  %.not = icmp eq ptr %i.dm, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 224
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !97
  %i.dp = and i32 %i.do, 3
  %.not163 = icmp eq i32 %i.dp, 0
  br i1 %.not163, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 564
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !78
  switch i32 %i.dr, label %.loopexit [
    i32 1, label %bb.h
    i32 0, label %bb.h
    i32 2, label %.preheader165
    i32 3, label %.preheader166
  ]

.preheader166:                                    ; preds = %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 464
  %i.dt = load <2 x float>, ptr %i.ds, align 8, !tbaa !20
  store <2 x float> %i.dt, ptr %i.dk, align 4, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 472
  %i.dv = load float, ptr %i.du, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 500
  store float %i.dv, ptr %i.dw, align 4, !tbaa !20
  br label %.loopexit

.preheader165:                                    ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 464
  %i.dy = load <4 x float>, ptr %i.dx, align 8, !tbaa !20
  store <4 x float> %i.dy, ptr %i.dk, align 4, !tbaa !20
  br label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 464
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !20
  store float %i.ea, ptr %i.dk, align 4, !tbaa !20
  br label %.loopexit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 328
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !86
  %i.ed = load ptr, ptr %i.db, align 8, !tbaa !50
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr [4 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 24     ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 564
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !78
  switch i32 %i.ei, label %.loopexit [
    i32 1, label %bb.j
    i32 0, label %bb.j
    i32 2, label %.preheader
    i32 3, label %.preheader164
  ]

.preheader164:                                    ; preds = %bb.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dj, i64 464
  %i.ek = load <2 x float>, ptr %i.ej, align 8, !tbaa !20 ; 3 uses
  store <2 x float> %i.ek, ptr %i.dk, align 4, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.dj, i64 472
  %i.em = load float, ptr %i.el, align 8, !tbaa !20 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 500
  store float %i.em, ptr %i.en, align 4, !tbaa !20
  %i.eo = load float, ptr %i.eg, align 4, !tbaa !20
  %i.ep = extractelement <2 x float> %i.ek, i64 0
  %i.eq = tail call float @llvm.fmuladd.f32(float %1, float %i.eo, float %i.ep) ; 2 uses
  store float %i.eq, ptr %i.dk, align 4, !tbaa !20
  %i.er = getelementptr i8, ptr %i.ef, i64 28
  %i.es = getelementptr i8, ptr %i.dj, i64 184
  %i.et = getelementptr i8, ptr %i.dj, i64 192
  %i.eu = load float, ptr %i.et, align 8, !tbaa !20 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.dj, i64 216
  %i.ew = getelementptr i8, ptr %i.dj, i64 224
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !20 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 136
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dj, i64 140
  %i.fa = fmul float %i.eq, 5.000000e-01          ; 2 uses
  %i.fb = tail call noundef float @sinf(float noundef %i.fa) #26
  %i.fc = tail call noundef float @cosf(float noundef %i.fa) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dj, i64 496
  %i.fe = load <2 x float>, ptr %i.es, align 8, !tbaa !20 ; 3 uses
  %i.ff = load <2 x float>, ptr %i.er, align 4, !tbaa !20 ; 2 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %i.fh = load <2 x float>, ptr %i.ev, align 8, !tbaa !20 ; 2 uses
  %i.fi = shufflevector <2 x float> %i.ff, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.fj = shufflevector <2 x float> %i.fh, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1> ; 2 uses
  %i.fk = insertelement <3 x float> %i.fj, float %i.eu, i64 0
  %i.fl = fmul <3 x float> %i.fi, %i.fk
  %i.fm = shufflevector <2 x float> %i.fe, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.fn = insertelement <3 x float> %i.fm, float %i.ex, i64 0
  %i.fo = fmul <3 x float> %i.fg, %i.fn
  %i.fp = fadd <3 x float> %i.fo, %i.fl           ; 6 uses
  %i.fq = load <3 x float>, ptr %i.ey, align 8, !tbaa !20 ; 3 uses
  %i.fr = load float, ptr %i.ez, align 4, !tbaa !20 ; 2 uses
  %i.fs = fmul float %i.fr, %i.fr
  %i.ft = extractelement <3 x float> %i.fq, i64 0 ; 2 uses
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fs)
  %i.fv = extractelement <3 x float> %i.fq, i64 2 ; 2 uses
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fu)
  %sqrt.i.i.i120 = tail call noundef float @llvm.sqrt.f32(float %i.fw)
  %i.fx = fdiv float %i.fb, %sqrt.i.i.i120
  %i.fy = insertelement <3 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <3 x float> %i.fy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ga = fmul <3 x float> %i.fq, %i.fz           ; 4 uses
  %i.gb = shufflevector <3 x float> %i.fp, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.gc = fmul <3 x float> %i.gb, %i.ga
  %i.gd = insertelement <3 x float> poison, float %i.fc, i64 0
  %i.ge = shufflevector <3 x float> %i.gd, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.gf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ge, <3 x float> %i.fp, <3 x float> %i.gc)
  %i.gg = shufflevector <3 x float> %i.gf, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.gh = fneg <3 x float> %i.ga                  ; 5 uses
  %i.gi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gh, <3 x float> %i.fp, <3 x float> %i.gg) ; 3 uses
  %i.gj = extractelement <3 x float> %i.fp, i64 2
  %i.gk = fneg float %i.gj
  %i.gl = extractelement <3 x float> %i.ga, i64 1
  %i.gm = fmul float %i.gl, %i.gk
  %i.gn = extractelement <3 x float> %i.gh, i64 0
  %i.go = extractelement <3 x float> %i.fp, i64 1
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.go, float %i.gm)
  %i.gq = extractelement <3 x float> %i.gh, i64 2
  %i.gr = extractelement <3 x float> %i.fp, i64 0
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gr, float %i.gp)
  %i.gt = fmul <3 x float> %i.ge, %i.gi
  %i.gu = shufflevector <3 x float> %i.gt, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.gv = insertelement <3 x float> poison, float %i.gs, i64 0
  %i.gw = shufflevector <3 x float> %i.gv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gw, <3 x float> %i.gh, <3 x float> %i.gu)
  %i.gy = shufflevector <3 x float> %i.gh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.gz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gi, <3 x float> %i.gy, <3 x float> %i.gx)
  %i.ha = shufflevector <3 x float> %i.gz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.hb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gi, <3 x float> %i.ga, <3 x float> %i.ha) ; 3 uses
  %i.hc = shufflevector <2 x float> %i.fe, <2 x float> %i.fh, <2 x i32> <i32 1, i32 3>
  %i.hd = shufflevector <3 x float> %i.hb, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.he = fmul <2 x float> %i.hc, %i.hd
  %2 = shufflevector <2 x float> %i.fe, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %3 = shufflevector <3 x float> %i.fj, <3 x float> %2, <2 x i32> <i32 3, i32 1>
  %i.hf = shufflevector <3 x float> %i.hb, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> %i.hf, <2 x float> %i.he)
  %i.hh = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %i.ex, i64 1
  %i.hj = shufflevector <3 x float> %i.hb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hj, <2 x float> %i.hg)
  %i.hl = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hm = insertelement <2 x float> %i.hl, float %i.em, i64 1
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.dh, <2 x float> %i.hm)
  store <2 x float> %i.hn, ptr %i.fd, align 8, !tbaa !20
  br label %.loopexit

.preheader:                                       ; preds = %bb.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dj, i64 464 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dj, i64 468
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dj, i64 496
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dj, i64 500
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dj, i64 504
  %i.ht = load <3 x float>, ptr %i.ho, align 8, !tbaa !20 ; 6 uses
  %i.hu = shufflevector <3 x float> %i.ht, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.hv = extractelement <3 x float> %i.ht, i64 2 ; 2 uses
  %i.hw = load <4 x float>, ptr %i.ho, align 8, !tbaa !20 ; 4 uses
  %i.hx = load float, ptr %i.hp, align 4, !tbaa !20 ; 2 uses
  %i.hy = extractelement <3 x float> %i.ht, i64 0
  store float %i.hy, ptr %i.dk, align 4, !tbaa !20
  store float %i.hx, ptr %i.hq, align 8, !tbaa !20
  store float %i.hv, ptr %i.hr, align 4, !tbaa !20
  %i.hz = extractelement <4 x float> %i.hw, i64 3
  store float %i.hz, ptr %i.hs, align 8, !tbaa !20
  %i.ia = load <3 x float>, ptr %i.eg, align 4, !tbaa !20 ; 5 uses
  %i.ib = shufflevector <3 x float> %i.ia, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ic = load float, ptr %i.eg, align 4, !tbaa !20
  %i.id = shufflevector <3 x float> %i.ia, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ie = shufflevector <3 x float> %i.ht, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.if = fmul <4 x float> %i.id, %i.ie
  %i.ig = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ih = shufflevector <3 x float> %i.ia, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ii = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.ih, <4 x float> %i.if)
  %i.ij = fneg float %i.hv
  %i.ik = fneg <4 x float> %i.hu                  ; 5 uses
  %i.il = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> %i.ib, <4 x float> %i.ii) ; 3 uses
  %i.im = extractelement <3 x float> %i.ia, i64 1
  %i.in = fneg float %i.im
  %i.io = fmul float %i.hx, %i.in
  %i.ip = extractelement <4 x float> %i.ik, i64 0
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.ic, float %i.io)
  %i.ir = extractelement <3 x float> %i.ia, i64 2
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.ir, float %i.iq)
  %i.it = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.iu = fmul <4 x float> %i.ig, %i.it
  %i.iv = insertelement <4 x float> poison, float %i.is, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.iy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iw, <4 x float> %i.ix, <4 x float> %i.iu)
  %i.iz = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ja = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.jb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.ja, <4 x float> %i.iy)
  %i.jc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.hu, <4 x float> %i.jb) ; 5 uses
  %foldExtExtBinop190 = fmul <4 x float> %i.jc, %i.jc
  %i.jd = extractelement <4 x float> %foldExtExtBinop190, i64 2
  %i.je = extractelement <4 x float> %i.jc, i64 1 ; 2 uses
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float %i.je, float %i.jd)
  %i.jg = extractelement <4 x float> %i.jc, i64 0 ; 2 uses
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.jg, float %i.jf)
  %sqrt.i.i109 = tail call noundef float @llvm.sqrt.f32(float %i.jh) ; 2 uses
  %i.ji = fmul float %1, %sqrt.i.i109
  %i.jj = fcmp ogt float %i.ji, f0x3F490FDB
  %.0.i110 = select i1 %i.jj, float %i.dc, float %sqrt.i.i109 ; 6 uses
  %i.jk = fcmp olt float %.0.i110, 1.000000e-03
  br i1 %i.jk, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.dj, i64 464
  %i.jm = load float, ptr %i.jl, align 8, !tbaa !20 ; 2 uses
  store float %i.jm, ptr %i.dk, align 4, !tbaa !20
  %i.jn = load float, ptr %i.eg, align 4, !tbaa !20
  %i.jo = tail call float @llvm.fmuladd.f32(float %1, float %i.jn, float %i.jm)
  store float %i.jo, ptr %i.dk, align 4, !tbaa !20
  br label %.loopexit

bb.k:                                             ; preds = %.preheader
  %i.jp = fmul float %i.df, %.0.i110
  %i.jq = fneg float %.0.i110
  %i.jr = fmul float %i.jp, %i.jq
  %i.js = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.jr)
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113"

bb.l:                                             ; preds = %.preheader
  %i.jt = fmul float %.0.i110, 5.000000e-01
  %i.ju = fmul float %1, %i.jt
  %i.jv = tail call noundef float @sinf(float noundef %i.ju) #26
  %i.jw = fdiv float %i.jv, %.0.i110
  br label %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113"

"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113": ; preds = %bb.k, %bb.l
  %.sink39.i111 = phi float [ %i.jw, %bb.l ], [ %i.js, %bb.k ]
  %i.jx = insertelement <4 x float> poison, float %.sink39.i111, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = fmul <4 x float> %i.jc, %i.jy           ; 3 uses
  %i.ka = fmul float %1, %.0.i110
  %i.kb = fmul float %i.ka, 5.000000e-01
  %i.kc = tail call noundef float @cosf(float noundef %i.kb) #26
  %i.kd = fneg <4 x float> %i.jz                  ; 2 uses
  %i.ke = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.kf = shufflevector <4 x float> %i.hw, <4 x float> %i.ik, <4 x i32> <i32 3, i32 3, i32 3, i32 4>
  %i.kg = fmul <4 x float> %i.ke, %i.kf
  %i.kh = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ki, <4 x float> %i.hw, <4 x float> %i.kg)
  %i.kk = shufflevector <4 x float> %i.jz, <4 x float> %i.kd, <4 x i32> <i32 2, i32 0, i32 1, i32 6>
  %i.kl = shufflevector <3 x float> %i.ht, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.km = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kk, <4 x float> %i.kl, <4 x float> %i.kj)
  %i.kn = shufflevector <3 x float> %i.ht, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kd, <4 x float> %i.kn, <4 x float> %i.km) ; 6 uses
  %foldExtExtBinop192 = fmul <4 x float> %i.ko, %i.ko
  %i.kp = extractelement <4 x float> %foldExtExtBinop192, i64 1
  %i.kq = extractelement <4 x float> %i.ko, i64 0 ; 2 uses
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.kp)
  %i.ks = extractelement <4 x float> %i.ko, i64 2 ; 2 uses
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ks, float %i.kr)
  %i.ku = extractelement <4 x float> %i.ko, i64 3 ; 2 uses
  %i.kv = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.ku, float %i.kt)
  %sqrt.i.i.i112 = tail call noundef float @llvm.sqrt.f32(float %i.kv)
  %i.kw = fdiv float 1.000000e+00, %sqrt.i.i.i112
  %i.kx = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.ky = shufflevector <4 x float> %i.kx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kz = fmul <4 x float> %i.ko, %i.ky
  store <4 x float> %i.kz, ptr %i.dk, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader166, %.preheader165, %bb.j, %"_ZZN11btMultiBody24predictPositionsMultiDofEfEN3$_0clERK9btVector3R12btQuaternionbf.exit113", %.preheader164, %bb.i, %bb.h, %bb.g
  tail call void @_ZN15btMultibodyLink32updateInterpolationCacheMultiDofEv(ptr noundef nonnull align 8 dereferenceable(688) %i.dj)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !397
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btMultibodyLink32updateInterpolationCacheMultiDofEv(ptr noundef nonnull align 8 dereferenceable(688) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.e = load i32, ptr %i.d, align 4, !tbaa !78
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load float, ptr %i.a, align 4, !tbaa !20
  %i.h = load float, ptr %i.f, align 8, !tbaa !20 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = fmul float %i.g, -5.000000e-01           ; 2 uses
  %i.k = tail call noundef float @sinf(float noundef %i.j) #26
  %i.l = tail call noundef float @cosf(float noundef %i.j) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load <2 x float>, ptr %i.i, align 4, !tbaa !20 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.p)
  %i.r = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.s = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.q)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.s)
  %i.t = fdiv float %i.k, %sqrt.i.i.i             ; 2 uses
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.o, %i.v              ; 5 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = load <2 x float>, ptr %i.n, align 8, !tbaa !20 ; 6 uses
  %i.z = fneg <2 x float> %i.w                    ; 2 uses
  %i.aa = load <2 x float>, ptr %i.m, align 8, !tbaa !20 ; 6 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0
  %i.ac = fneg float %i.ab
  %i.ad = fmul float %i.h, %i.t                   ; 4 uses
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x float> %i.af, float %i.ad, i64 0
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.aa, <2 x float> %i.ah)
  %i.al = shufflevector <2 x float> %i.y, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = fneg float %i.ad
  %i.ao = fneg float %i.x
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.an, i64 1
  %i.ar = shufflevector <2 x float> %i.aa, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.am)
  %i.at = fmul float %i.ad, %i.ac
  %foldExtExtBinop163 = fmul <2 x float> %i.y, %i.w
  %i.au = shufflevector <2 x float> %foldExtExtBinop163, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.y, <2 x float> %i.av)
  %i.ax = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
end_hunk_1
