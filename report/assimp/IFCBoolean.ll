inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.of = ptrtoint ptr %.sroa.40.0.lcssa to i64
  %i.og = ptrtoint ptr %.sroa.0611.0.lcssa to i64 ; 4 uses
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = sdiv exact i64 %i.oh, 40                ; 4 uses
  %i.oj = and i64 %i.oi, 1
  %.not206 = icmp eq i64 %i.oj, 0
  br i1 %.not206, label %bb.bu, label %bb.br
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  br i1 %i.nx, label %.loopexit795, label %.lr.ph934

.lr.ph934:                                        ; preds = %bb.bv
  %i.vq = add nsw i64 %i.oi, -1                   ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph934, %bb.bw
  %.0192933 = phi i64 [ 0, %.lr.ph934 ], [ %i.wd, %bb.bw ] ; 3 uses
  %i.vr = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0611.0.lcssa, i64 %.0192933 ; 4 uses
  %i.vs = add i64 %i.vq, %.0192933
  %i.vt = urem i64 %i.vs, %i.oi
  %i.vu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0611.0.lcssa, i64 %i.vt ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.wc = load i64, ptr %i.vu, align 8
  store i64 %i.wc, ptr %i.vr, align 8
  store i64 %i.wb, ptr %i.vu, align 8
  %i.wd = add nuw i64 %.0192933, 1                ; 2 uses
  %exitcond1066.not = icmp eq i64 %i.wd, %i.vq
  br i1 %exitcond1066.not, label %.loopexit795, label %bb.bw, !llvm.loop !165

.loopexit795:                                     ; preds = %bb.bw, %bb.bv
end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.aie = ptrtoint ptr %i.ahw to i64
  %i.aif = sub i64 %i.aid, %i.aie
  %i.aig = sdiv exact i64 %i.aif, 24              ; 2 uses
  %i.aih = add i64 %.0140, -1
  %i.aii = add i64 %i.aih, %i.aig
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
end_hunk_3
begin_hunk_4_@_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, !prof !213

end_hunk_4
begin_hunk_5_@_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_:bb.a
  unreachable

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -24
  %2 = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %2                          ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %3 = add i64 %.fr.i, 24
  %i.s = sub i64 %3, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

end_hunk_5
begin_hunk_6_@_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_:bb.a

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

end_hunk_6
begin_hunk_7_@_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_:bb.a
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 24
  br i1 %i.y, label %bb.h, label %bb.i, !prof !226

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 24
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
end_hunk_7
begin_hunk_8_@_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_:bb.a

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.o
end_hunk_8
