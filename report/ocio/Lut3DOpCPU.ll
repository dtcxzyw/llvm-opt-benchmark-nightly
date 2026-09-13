Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !69
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !64
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !64
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE6resizeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !tbaa !70   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !71 ; 6 uses
  %i.b = ptrtoint ptr %.val8 to i64               ; 2 uses
  %i.c = ptrtoint ptr %.val7 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 7 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %1, %i.e                     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !233
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.b
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.e, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.g
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.g, 5                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.val8, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val8, i64 %i.p
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !71
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %i.g
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 range(i64 1, 0) %i.g)
  %i.r = add nuw nsw i64 %.sroa.speculated.i.i, %i.e
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d ; 2 uses
  %i.w = shl nuw nsw i64 %i.g, 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, i8 0, i64 %i.w, i1 false)
  %.not1.i.i.i.i = icmp eq ptr %.val7, %.val8
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.val7, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i, i64 32, i1 false), !tbaa.struct !74, !alias.scope !234
  %i.x = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.x, %.val8
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !232

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.not.i34.i = icmp eq ptr %.val7, null
  br i1 %.not.i34.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !233
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i: ; preds = %bb.f, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.u, ptr %0, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.g
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !233
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.e
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val7, i64 %1 ; 2 uses
  %.not.i9 = icmp eq ptr %.val8, %i.af
  br i1 %.not.i9, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.af, ptr %i.a, align 8, !tbaa !71
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %9 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %.sroa.03.i.i8.i = alloca [3 x i64], align 8    ; 4 uses
  %.sroa.03.i.i.i = alloca [3 x i64], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i17 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i17, 5               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph35

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.j = icmp eq i64 %i.by, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph35, !llvm.loop !235

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i20.lcssa = phi i64 [ %.fr.i17, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i20.lcssa, 5               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i20.lcssa, 32
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i, %._crit_edge
  %.07.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %.07.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.46.0.copyload.i.i.i = load i64, ptr %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.v = icmp slt i64 %.07.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.042.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.07.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.042.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %.val2.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !73
  %i.ad = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.042.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !74
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !236

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.07.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !74
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.07.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.06.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.097.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !73
  %i.al = icmp ult i64 %.val1.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.06.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !tbaa.struct !74
  %i.an = icmp sgt i64 %.097.i.i.i.i.i, %.07.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i, !llvm.loop !237

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %.sroa.46.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i)
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, 0
  %i.ap = add nsw i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i, label %bb.c, !llvm.loop !238

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i
  %10 = icmp sgt i64 %.fr.i20.lcssa, 32
  br i1 %10, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i
  %.sroa.0.02.i.i = phi ptr [ %i.aq, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i ], [ %storemerge18.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i8.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.46.0.copyload.i.i10.i = load i64, ptr %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i.i, align 8, !tbaa !64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.a                     ; 3 uses
  %i.at = ashr exact i64 %i.as, 5                 ; 3 uses
  %i.au = add nsw i64 %i.at, -1
  %i.av = lshr i64 %i.au, 1
  %i.aw = icmp sgt i64 %i.at, 2
  br i1 %i.aw, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i26.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i26.i
  %.042.i.i.i27.i = phi i64 [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i26.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ax = shl i64 %.042.i.i.i27.i, 1              ; 2 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ay
  %i.ba = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.az, i64 24
  %.val2.i.i.i.i28.i = load i64, ptr %i.bc, align 8, !tbaa !73
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val3.i.i.i.i29.i = load i64, ptr %i.bd, align 8, !tbaa !73
  %i.be = icmp ult i64 %.val2.i.i.i.i28.i, %.val3.i.i.i.i29.i
  %spec.select.i.i.i30.i = select i1 %i.be, i64 %i.ba, i64 %i.ay ; 4 uses
  %i.bf = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i30.i
  %i.bg = getelementptr inbounds [32 x i8], ptr %0, i64 %.042.i.i.i27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !tbaa.struct !74
  %i.bh = icmp slt i64 %spec.select.i.i.i30.i, %i.av
  br i1 %i.bh, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i, !llvm.loop !236

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i26.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i26.i ] ; 5 uses
  %i.bi = and i64 %i.as, 32
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bk = add nsw i64 %i.at, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bl
  br i1 %i.bm, label %.thread.i.i25.i, label %bb.h

.thread.i.i25.i:                                  ; preds = %bb.g
  %i.bn = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !tbaa.struct !74
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i25.i
  %.06.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.bo, %.thread.i.i25.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.06.i.i.i.i17.i = phi i64 [ %.097.i.i78.i.i19.i, %bb.i ], [ %.06.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i18.i = add nsw i64 %.06.i.i.i.i17.i, -1
  %.097.i.i78.i.i19.i = lshr i64 %.097.in.i.i.i.i18.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.097.i.i78.i.i19.i ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %.val1.i.i.i.i.i20.i = load i64, ptr %i.bs, align 8, !tbaa !73
  %i.bt = icmp ult i64 %.val1.i.i.i.i.i20.i, %.sroa.46.0.copyload.i.i10.i
  br i1 %i.bt, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bu = getelementptr inbounds [32 x i8], ptr %0, i64 %.06.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !tbaa.struct !74
  %.not9.i.i24.i = icmp eq i64 %.097.i.i78.i.i19.i, 0
  br i1 %.not9.i.i24.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !237

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i: ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bv = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i8.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %.sroa.46.0.copyload.i.i10.i, ptr %.sroa.4.0..sroa_idx.i.i.i23.i, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i8.i)
  %i.bw = icmp sgt i64 %i.as, 32
  br i1 %i.bw, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !239

.lr.ph35:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1834 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01933 = phi i64 [ %i.by, %bb.b ], [ %2, %.lr.ph ]
  %i.bx = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.by = add nsw i64 %.01933, -1                 ; 3 uses
  %i.bz = lshr i64 %i.bx, 1
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %storemerge1834, i64 -32 ; 4 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !tbaa !73 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 24
  %.val3.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !73 ; 3 uses
  %i.cd = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %i.ce = getelementptr i8, ptr %storemerge1834, i64 -8
  %.val3.i27.i.i = load i64, ptr %i.ce, align 8, !tbaa !73 ; 4 uses
  br i1 %i.cd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph35
  %i.cf = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cg = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph35
  %i.ch = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ci = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1834, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !73 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = getelementptr i8, ptr %.sroa.012.1.i.i, i64 24
  %.val2.i.i15.i = load i64, ptr %i.cj, align 8, !tbaa !73
  %i.ck = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !240

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i10.i.i = load i64, ptr %i.cm, align 8, !tbaa !73
  %i.cn = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !241

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, i64 32, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !242

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1834, i64 noundef %i.by)
  %i.cp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a
  %.fr.i = freeze i64 %i.cq                       ; 2 uses
  %i.cr = ashr exact i64 %.fr.i, 5                ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !235

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !56
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !76
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !56
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !56
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.mul.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !57}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut3DOpDataE", !9, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!13 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!14 = !{!13, !10, i64 0}
!15 = !{!"p1 omnipotent char", !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 float", !9, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIfSaIfEE", !20, i64 0}
!22 = !{!"vtable pointer", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!25 = !{!"float", !5, i64 0}
!26 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE", !24, i64 0, !17, i64 8, !16, i64 16, !25, i64 24, !6, i64 28, !9, i64 32}
!27 = !{!26, !9, i64 32}
!28 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelE", !9, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE", !31, i64 0}
!33 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndE", !9, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE", !35, i64 0}
end_hunk_0
