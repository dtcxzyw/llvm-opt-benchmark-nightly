inline.NumInlined: 11293
inline.NumDeleted: 2901
begin_hunk_0_@_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SE_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2107 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2088   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 11                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2108
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 11                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 4503599627370496
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 4503599627370495           ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN19duckdb_jaro_winkler6common16BitvectorHashmapEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN19duckdb_jaro_winkler6common16BitvectorHashmapEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 11                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !2107
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
  unreachable

_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4503599627370495) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 11
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 11
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(2048) %.0911.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !2109, !alias.scope !2110
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 2048 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 2048
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2114

_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE13_M_deallocateEPS2_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt12_Vector_baseIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE13_M_deallocateEPS2_m.exit36.i

_ZNSt12_Vector_baseIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE13_M_deallocateEPS2_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !2088
  %i.ab = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !2107
  %i.ac = getelementptr inbounds nuw [2048 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !2108
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.g
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [2048 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN19duckdb_jaro_winkler6common16BitvectorHashmapES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN19duckdb_jaro_winkler6common16BitvectorHashmapES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !2107
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN19duckdb_jaro_winkler6common16BitvectorHashmapES2_EvT_S4_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE13_M_deallocateEPS2_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN19duckdb_jaro_winkler6common16BitvectorHashmapEmS2_ET_S4_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1821 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1818   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1820
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !84
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !1821
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !84
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !84
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
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !1818
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !1821
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !1820
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb_jaro_winkler::detail::SearchBoundMask", align 8 ; 7 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 11 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = icmp ne ptr %4, %3
  %i.h = icmp ne ptr %2, %1
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double ; 2 uses
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %i.k = fdiv double %i.i, %i.j
  %i.l = sitofp i64 %i.f to double                ; 4 uses
  %i.m = fdiv double %i.i, %i.l
  %i.n = fadd double %i.k, %i.m
  %i.o = fadd double %i.n, 1.000000e+00
  %i.p = fdiv double %i.o, 3.000000e+00
  %i.q = fcmp ult double %i.p, %5
  br i1 %i.q, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit
  %i.r = icmp eq i64 %i.c, 1
  %i.s = icmp eq i64 %i.f, 1
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %1, align 1, !tbaa !66
  %i.u = load i8, ptr %3, align 1, !tbaa !66
  %i.v = icmp eq i8 %i.t, %i.u
  %i.w = uitofp i1 %i.v to double
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.x = icmp sgt i64 %i.f, %i.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = sdiv i64 %i.f, 2                         ; 2 uses
  %i.z = add nsw i64 %i.y, -1                     ; 4 uses
  %i.aa = add nsw i64 %i.z, %i.c
  %i.ab = icmp sgt i64 %i.f, %i.aa
  br i1 %i.ab, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = sdiv i64 %i.c, 2                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = add nsw i64 %i.ad, %i.f
  %i.af = icmp sgt i64 %i.c, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

bb.g:                                             ; preds = %bb.f
  %.pre204 = add nsw i64 %i.f, %i.ad
  %i.ag = sub nsw i64 1, %i.ac
  %.not294 = icmp eq i64 %i.f, %i.ag
  br i1 %.not294, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit: ; preds = %bb.e
  %.pre208 = add nsw i64 %i.c, %i.z
  %i.ah = sub nsw i64 1, %i.y
  %.not295 = icmp eq i64 %i.c, %i.ah
  br i1 %.not295, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread: ; preds = %bb.f, %bb.e, %bb.g, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit
  %.0.i70270 = phi i64 [ %i.ad, %bb.g ], [ %i.z, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 6 uses
  %.pre-phi205269 = phi i64 [ %.pre204, %bb.g ], [ %i.c, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.c, %bb.f ], [ %i.c, %bb.e ] ; 6 uses
  %.pre-phi209268 = phi i64 [ %i.f, %bb.g ], [ %.pre208, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.f, %bb.f ], [ %i.f, %bb.e ] ; 8 uses
  %i.ai = icmp slt i64 %.pre-phi205269, 65
  %i.aj = icmp slt i64 %.pre-phi209268, 65
  %or.cond6 = and i1 %i.aj, %i.ai
  br i1 %or.cond6, label %bb.h, label %bb.v

bb.h:                                             ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread
  %i.ak = trunc i64 %.0.i70270 to i32
  %i.al = add nsw i64 %.0.i70270, 1
  %i.am = icmp slt i32 %i.ak, 63
  %i.an = and i64 %i.al, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i, -1
  %.0.i.i = select i1 %i.am, i64 %i.ao, i64 -1    ; 2 uses
  %sext = shl i64 %.0.i70270, 32
  %i.ap = ashr exact i64 %sext, 32
  %.sroa.speculated.i71 = tail call i64 @llvm.smin.i64(i64 %.pre-phi209268, i64 %i.ap) ; 3 uses
  %i.aq = icmp sgt i64 %.sroa.speculated.i71, 0
  br i1 %i.aq, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ar = load ptr, ptr %0, align 8               ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.as, align 8
  br label %bb.i

.preheader.i:                                     ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, %bb.h
  %.036.lcssa.i = phi i64 [ %.0.i.i, %bb.h ], [ %i.cv, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %.sroa.speculated.i71, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.ct, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.026.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.cp, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.aw = icmp slt i64 %.0.lcssa.i, %.pre-phi209268
  br i1 %i.aw, label %.lr.ph68.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit

.lr.ph68.i:                                       ; preds = %.preheader.i
  %i.ax = load ptr, ptr %0, align 8               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ay, align 8
  br label %bb.m

bb.i:                                             ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, %.lr.ph.i
  %.sroa.026.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cp, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.059.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ct, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ]
  %.058.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cw, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 3 uses
  %.03657.i = phi i64 [ %.0.i.i, %.lr.ph.i ], [ %i.cv, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %.058.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !66  ; 3 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = zext nneg i8 %i.bd to i64
  %i.bg = mul nsw i64 %i.au, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bj = sext i8 %i.bd to i64                    ; 7 uses
  %i.bk = and i64 %i.bj, 127
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !2104
  %i.bp = icmp eq i64 %i.bo, %i.bj
  br i1 %i.bp, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.l
  %i.bq = mul nsw i64 %i.bj, 5
  %i.br = add nsw i64 %i.bj, 1
  %i.bs = add nsw i64 %i.br, %i.bq
  %i.bt = and i64 %i.bs, 127                      ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not1718.i.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !2104
  %i.by = icmp eq i64 %i.bx, %i.bj
  br i1 %i.by, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i
  %.019.i.i9.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.preheader.i.i.i ]
  %i.bz = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.preheader.i.i.i ]
  %i.ca = lshr i64 %.019.i.i9.i.i.i, 5            ; 2 uses
  %i.cb = mul nuw nsw i64 %i.bz, 5
  %i.cc = add nuw nsw i64 %i.ca, 1
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  %i.ce = and i64 %i.cd, 127                      ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not17.i.i.i.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.ci = load i64, ptr %i.cf, align 8, !tbaa !2104
  %i.cj = icmp eq i64 %i.ci, %i.bj
  br i1 %i.cj, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i.i.preheader.i.i.i, %.preheader.i.i.i.i.i, %bb.l, %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.bi, %bb.j ], [ 0, %bb.k ], [ %i.bn, %bb.l ], [ 0, %.preheader.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.preheader.i.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i ]
  %i.ck = xor i64 %.sroa.026.060.i, -1
  %i.cl = and i64 %.0.i.i.i, %i.ck
  %i.cm = and i64 %i.cl, %.03657.i                ; 3 uses
  %i.cn = sub i64 0, %i.cm
  %i.co = and i64 %i.cm, %i.cn
  %i.cp = or i64 %i.co, %.sroa.026.060.i          ; 2 uses
  %i.cq = icmp ne i64 %i.cm, 0
  %i.cr = zext i1 %i.cq to i64
  %i.cs = shl nuw i64 %i.cr, %.058.i
  %i.ct = or i64 %i.cs, %.sroa.8.059.i            ; 2 uses
  %i.cu = shl i64 %.03657.i, 1
  %i.cv = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cw = add nuw nsw i64 %.058.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cw, %.sroa.speculated.i71
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.i, !llvm.loop !2115
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d:bb.a
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i44.i = icmp eq i64 %i.ec, 0
  br i1 %.not17.i.i.i.i44.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i, label %.lr.ph.i.i.i.i45.i, !llvm.loop !2105

.lr.ph.i.i.i.i45.i:                               ; preds = %.lr.ph.i.i42.i
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !2104
  %i.ee = icmp eq i64 %i.ed, %i.de
  br i1 %i.ee, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, label %.lr.ph.i.i42.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i: ; preds = %.lr.ph.i.i42.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i: ; preds = %.lr.ph.i.i.i.i45.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i, %.lr.ph.i.i.preheader.i.i41.i, %.preheader.i.i.i.i39.i, %bb.p, %bb.o, %bb.n
  %.0.i.i46.i = phi i64 [ %i.dd, %bb.n ], [ 0, %bb.o ], [ %i.di, %bb.p ], [ 0, %.preheader.i.i.i.i39.i ], [ %i.dr, %.lr.ph.i.i.preheader.i.i41.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i ], [ %i.ec, %.lr.ph.i.i.i.i45.i ]
  %i.ef = xor i64 %.sroa.026.167.i, -1
  %i.eg = and i64 %.0.i.i46.i, %i.ef
  %i.eh = and i64 %i.eg, %.13764.i                ; 3 uses
  %i.ei = sub i64 0, %i.eh
  %i.ej = and i64 %i.eh, %i.ei
  %i.ek = or i64 %i.ej, %.sroa.026.167.i          ; 2 uses
  %i.el = icmp ne i64 %i.eh, 0
  %i.em = zext i1 %i.el to i64
  %i.en = shl nuw i64 %i.em, %.165.i
  %i.eo = or i64 %i.en, %.sroa.8.166.i            ; 2 uses
  %i.ep = shl i64 %.13764.i, 1
  %i.eq = add nuw nsw i64 %.165.i, 1              ; 2 uses
  %i.er = icmp slt i64 %i.eq, %.pre-phi209268
  br i1 %i.er, label %bb.m, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit, !llvm.loop !2116

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, %.preheader.i
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i ], [ %i.eo, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 2 uses
  %.sroa.026.1.lcssa.i = phi i64 [ %.sroa.026.0.lcssa.i, %.preheader.i ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 3 uses
  %i.es = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.026.1.lcssa.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.026.1.lcssa.i, 0
  br i1 %.not.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit
  %i.et = uitofp nneg i64 %i.es to double         ; 2 uses
  %i.eu = fdiv double %i.et, %i.j
  %i.ev = fadd double %i.eu, 0.000000e+00
  %i.ew = fdiv double %i.et, %i.l
  %i.ex = fadd double %i.ew, %i.ev
  %i.ey = fadd double %i.ex, 1.000000e+00
  %i.ez = fdiv double %i.ey, 3.000000e+00
  %i.fa = fcmp ult double %i.ez, %5
  br i1 %i.fa, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.q
  %i.fb = load ptr, ptr %0, align 8               ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = load ptr, ptr %i.fc, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, %.lr.ph.i73
  %.05.i = phi i64 [ %.sroa.026.1.lcssa.i, %.lr.ph.i73 ], [ %i.gw, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ] ; 3 uses
  %.0124.i = phi i64 [ 0, %.lr.ph.i73 ], [ %i.gt, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ]
  %.0133.i = phi i64 [ %.sroa.8.1.lcssa.i, %.lr.ph.i73 ], [ %i.gv, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ] ; 3 uses
  %i.fg = sub i64 0, %.05.i
  %i.fh = and i64 %.05.i, %i.fg                   ; 2 uses
  %i.fi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0133.i, i1 true)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !66  ; 3 uses
  %i.fl = icmp sgt i8 %i.fk, -1
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = mul nsw i64 %i.fe, %i.fm
  %i.fo = getelementptr [8 x i8], ptr %i.ff, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82

bb.t:                                             ; preds = %bb.r
  %i.fq = sext i8 %i.fk to i64                    ; 7 uses
  %i.fr = and i64 %i.fq, 127
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i74, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fv = load i64, ptr %i.fs, align 8, !tbaa !2104
  %i.fw = icmp eq i64 %i.fv, %i.fq
  br i1 %i.fw, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, label %.preheader.i.i.i.i.i75

.preheader.i.i.i.i.i75:                           ; preds = %bb.u
  %i.fx = mul nsw i64 %i.fq, 5
  %i.fy = add nsw i64 %i.fq, 1
  %i.fz = add nsw i64 %i.fy, %i.fx
  %i.ga = and i64 %i.fz, 127                      ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i.i76 = icmp eq i64 %i.gd, 0
  br i1 %.not1718.i.i.i.i.i76, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, label %.lr.ph.i.i.preheader.i.i.i77

.lr.ph.i.i.preheader.i.i.i77:                     ; preds = %.preheader.i.i.i.i.i75
  %i.ge = load i64, ptr %i.gb, align 8, !tbaa !2104
  %i.gf = icmp eq i64 %i.ge, %i.fq
  br i1 %i.gf, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.preheader.i.i.i77, %.lr.ph.i.i.i.i.i81
  %.019.i.i9.i.i.i79 = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i81 ], [ %i.fq, %.lr.ph.i.i.preheader.i.i.i77 ]
  %i.gg = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i81 ], [ %i.ga, %.lr.ph.i.i.preheader.i.i.i77 ]
  %i.gh = lshr i64 %.019.i.i9.i.i.i79, 5          ; 2 uses
  %i.gi = mul nuw nsw i64 %i.gg, 5
  %i.gj = add nuw nsw i64 %i.gh, 1
  %i.gk = add nuw nsw i64 %i.gj, %i.gi
  %i.gl = and i64 %i.gk, 127                      ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i.i80 = icmp eq i64 %i.go, 0
  br i1 %.not17.i.i.i.i.i80, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i85, label %.lr.ph.i.i.i.i.i81, !llvm.loop !2105

.lr.ph.i.i.i.i.i81:                               ; preds = %.lr.ph.i.i.i78
  %i.gp = load i64, ptr %i.gm, align 8, !tbaa !2104
  %i.gq = icmp eq i64 %i.gp, %i.fq
  br i1 %i.gq, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, label %.lr.ph.i.i.i78, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i85: ; preds = %.lr.ph.i.i.i78
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82: ; preds = %.lr.ph.i.i.i.i.i81, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i85, %.lr.ph.i.i.preheader.i.i.i77, %.preheader.i.i.i.i.i75, %bb.u, %bb.t, %bb.s
  %.0.i.i.i83 = phi i64 [ %i.fp, %bb.s ], [ 0, %bb.t ], [ %i.fu, %bb.u ], [ 0, %.preheader.i.i.i.i.i75 ], [ %i.gd, %.lr.ph.i.i.preheader.i.i.i77 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i85 ], [ %i.go, %.lr.ph.i.i.i.i.i81 ]
  %i.gr = and i64 %.0.i.i.i83, %i.fh
  %.not14.i = icmp eq i64 %i.gr, 0
  %i.gs = zext i1 %.not14.i to i64
  %i.gt = add nuw nsw i64 %.0124.i, %i.gs         ; 2 uses
  %i.gu = add i64 %.0133.i, -1
  %i.gv = and i64 %i.gu, %.0133.i                 ; 2 uses
  %i.gw = xor i64 %i.fh, %.05.i
  %.not.i84 = icmp eq i64 %i.gv, 0
  br i1 %.not.i84, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141, label %bb.r, !llvm.loop !2117

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.gx = sdiv i64 %.pre-phi209268, 64
  %i.gy = and i64 %.pre-phi209268, 63
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = zext i1 %i.gz to i64
  %i.hb = add nsw i64 %i.gx, %i.ha                ; 5 uses
  %i.hc = sdiv i64 %.pre-phi205269, 64
  %i.hd = and i64 %.pre-phi205269, 63
  %i.he = icmp ne i64 %i.hd, 0
  %i.hf = zext i1 %i.he to i64
  %i.hg = add nsw i64 %i.hc, %i.hf                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false), !alias.scope !2118
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not51.i = icmp eq i64 %i.hb, 0
  br i1 %.not51.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hk = icmp ugt i64 %i.hb, 1152921504606846975
  br i1 %i.hk, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i112

.invoke:                                          ; preds = %bb.x, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.cont unwind label %bb.y

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i112: ; preds = %bb.w
  %i.hl = shl nuw nsw i64 %i.hb, 3
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #26
          to label %.noexc121 unwind label %bb.y  ; 5 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i112
  store i64 0, ptr %i.hm, align 8, !tbaa !84
  %i.hn = add nsw i64 %i.hb, -1                   ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i114

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i114: ; preds = %.noexc121
  %i.hp = getelementptr i8, ptr %i.hm, i64 8
  %.idx.i.i.i.i.i31.i115 = shl nuw nsw i64 %i.hn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 0, i64 %.idx.i.i.i.i.i31.i115, i1 false), !tbaa !84
  br label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i:  ; preds = %.noexc121, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i114
  store ptr %i.hm, ptr %i.hh, align 8, !tbaa !1818
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hb ; 3 uses
  store ptr %i.hq, ptr %i.hi, align 8, !tbaa !1821
  store ptr %i.hq, ptr %i.hj, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %bb.v
  %i.hr = phi ptr [ %i.hq, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %bb.v ]
  %i.hs = phi ptr [ %i.hm, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %bb.v ] ; 10 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.hg, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit35.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hv = icmp ugt i64 %i.hg, 1152921504606846975
  br i1 %i.hv, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.x
  %i.hw = shl nuw nsw i64 %i.hg, 3
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #26
          to label %.noexc105 unwind label %bb.y  ; 5 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.hx, align 8, !tbaa !84
  %i.hy = add nsw i64 %i.hg, -1                   ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc105
  %i.ia = getelementptr i8, ptr %i.hx, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.hy, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ia, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !84
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc105
  store ptr %i.hx, ptr %7, align 8, !tbaa !1818
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hg ; 3 uses
  store ptr %i.ib, ptr %i.ht, align 8, !tbaa !1821
  store ptr %i.ib, ptr %i.hu, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit35.i

_ZNSt6vectorImSaImEE6resizeEm.exit35.i:           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.ic = phi ptr [ %i.ib, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ]
  %i.id = phi ptr [ %i.hx, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 10 uses
  %i.ie = icmp sgt i64 %.pre-phi209268, 0
  br i1 %i.ie, label %.lr.ph.i86, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit

.lr.ph.i86:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit35.i
  %i.if = add nsw i64 %.0.i70270, 1
  %.sroa.speculated.i87 = tail call i64 @llvm.smin.i64(i64 %.pre-phi205269, i64 %i.if) ; 2 uses
  %i.ig = and i64 %.sroa.speculated.i87, 63
  %notmask.i = shl nsw i64 -1, %i.ig
  %i.ih = xor i64 %notmask.i, -1
  %i.ii = sdiv i64 %.sroa.speculated.i87, 64
  %i.ij = add nsw i64 %i.ii, 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.z

bb.y:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i112, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #25
  resume { ptr, i32 } %i.ik

bb.z:                                             ; preds = %bb.ae, %.lr.ph.i86
  %.056.i = phi i64 [ 0, %.lr.ph.i86 ], [ %i.ja, %bb.ae ] ; 5 uses
  %.sroa.0.055.i = phi i64 [ %i.ij, %.lr.ph.i86 ], [ %.sroa.0.2.i, %bb.ae ] ; 3 uses
  %.sroa.17.054.i = phi i64 [ -1, %.lr.ph.i86 ], [ %.sroa.17.1.i, %bb.ae ] ; 3 uses
  %.sroa.13.053.i = phi i64 [ %i.ih, %.lr.ph.i86 ], [ %.sroa.13.1.i, %bb.ae ] ; 3 uses
  %.sroa.10.052.i = phi i64 [ 0, %.lr.ph.i86 ], [ %.sroa.10.1.i, %bb.ae ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 %.056.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !66, !noalias !2118
  store i64 %.sroa.0.055.i, ptr %6, align 8, !tbaa !84, !noalias !2118
  store i64 %.sroa.10.052.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2118
  store i64 %.sroa.13.053.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2118
  store i64 %.sroa.17.054.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2118
  tail call fastcc void @_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE(ptr noundef nonnull readonly align 8 dereferenceable(56) %0, i8 noundef signext %i.im, ptr %i.id, ptr %i.hs, i64 noundef %.056.i, ptr noundef nonnull byval(%"struct.duckdb_jaro_winkler::detail::SearchBoundMask") align 8 %6)
  %i.in = add nsw i64 %.056.i, %.0.i70270         ; 2 uses
  %i.io = add nsw i64 %i.in, 1
  %i.ip = icmp slt i64 %i.io, %.pre-phi205269
  br i1 %i.ip, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.iq = shl i64 %.sroa.13.053.i, 1              ; 2 uses
  %i.ir = or disjoint i64 %i.iq, 1
  %i.is = add nsw i64 %i.in, 2
  %i.it = icmp slt i64 %i.is, %.pre-phi205269
  %i.iu = icmp eq i64 %i.iq, -2
  %or.cond.i90 = select i1 %i.it, i1 %i.iu, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i90, i64 0, i64 %i.ir
  %i.iv = zext i1 %or.cond.i90 to i64
  %spec.select50.i = add nsw i64 %.sroa.0.055.i, %i.iv
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.13.1.i = phi i64 [ %.sroa.13.053.i, %bb.z ], [ %spec.select.i, %bb.aa ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.055.i, %bb.z ], [ %spec.select50.i, %bb.aa ] ; 3 uses
  %.not.i88 = icmp slt i64 %.056.i, %.0.i70270
  br i1 %.not.i88, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iw = shl i64 %.sroa.17.054.i, 1              ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.iy = add nsw i64 %.sroa.0.1.i, -1
  %i.iz = add nsw i64 %.sroa.10.052.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.10.1.i = phi i64 [ %.sroa.10.052.i, %bb.ab ], [ %i.iz, %bb.ad ], [ %.sroa.10.052.i, %bb.ac ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.054.i, %bb.ab ], [ -1, %bb.ad ], [ %i.iw, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ab ], [ %i.iy, %bb.ad ], [ %.sroa.0.1.i, %bb.ac ]
  %i.ja = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %i.ja, %.pre-phi209268
  br i1 %exitcond.not.i89, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit, label %bb.z, !llvm.loop !2121

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit: ; preds = %bb.ae
  %.pre = load ptr, ptr %i.ht, align 8, !tbaa !1821
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.pre202 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1821
  br label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit, %_ZNSt6vectorImSaImEE6resizeEm.exit35.i
  %i.jb = phi ptr [ %.pre202, %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit ], [ %i.hr, %_ZNSt6vectorImSaImEE6resizeEm.exit35.i ] ; 3 uses
  %i.jc = phi ptr [ %.pre, %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit ], [ %i.ic, %_ZNSt6vectorImSaImEE6resizeEm.exit35.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.jd = ptrtoint ptr %i.jc to i64               ; 2 uses
  %i.je = ptrtoint ptr %i.id to i64               ; 2 uses
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.jh = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = icmp ult i64 %i.jf, %i.ji
  br i1 %i.jj, label %.preheader.i93, label %.preheader20.i

.preheader20.i:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit
  %.not22.i = icmp eq ptr %i.hs, %i.jb
  br i1 %.not22.i, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %.preheader20.i
  %i.jk = add i64 %i.jg, -8
  %i.jl = sub i64 %i.jk, %i.jh                    ; 2 uses
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jl, 24
  br i1 %min.iters.check, label %.lr.ph.i91.preheader363, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i91.preheader
  %n.vec = and i64 %i.jn, 4611686018427387900     ; 3 uses
  %i.jo = shl i64 %n.vec, 3
  %i.jp = getelementptr i8, ptr %i.hs, i64 %i.jo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ju, %vector.body ]
  %vec.phi319 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.jv, %vector.body ]
  %i.jq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.jq ; 2 uses
  %i.jr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !84
  %wide.load320 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !84
  %i.js = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.jt = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load320)
  %i.ju = add <2 x i64> %i.js, %vec.phi           ; 2 uses
  %i.jv = add <2 x i64> %i.jt, %vec.phi319        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %middle.block, label %vector.body, !llvm.loop !2122

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.jv, %i.ju
  %i.jx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.jn, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i91.preheader363

.lr.ph.i91.preheader363:                          ; preds = %.lr.ph.i91.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i91.preheader ], [ %i.jx, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.hs, %.lr.ph.i91.preheader ], [ %i.jp, %middle.block ]
  br label %.lr.ph.i91

.preheader.i93:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit
  %.not1925.i = icmp eq ptr %i.id, %i.jc
  br i1 %.not1925.i, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i93
  %i.jy = add i64 %i.jd, -8
  %i.jz = sub i64 %i.jy, %i.je                    ; 2 uses
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.jz, 24
  br i1 %min.iters.check322, label %.lr.ph28.i.preheader359, label %vector.ph323

vector.ph323:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec325 = and i64 %i.kb, 4611686018427387900  ; 3 uses
  %i.kc = shl i64 %n.vec325, 3
  %i.kd = getelementptr i8, ptr %i.id, i64 %i.kc
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph323
  %index327 = phi i64 [ 0, %vector.ph323 ], [ %index.next333, %vector.body326 ] ; 2 uses
  %vec.phi328 = phi <2 x i64> [ zeroinitializer, %vector.ph323 ], [ %i.ki, %vector.body326 ]
  %vec.phi329 = phi <2 x i64> [ zeroinitializer, %vector.ph323 ], [ %i.kj, %vector.body326 ]
  %i.ke = shl i64 %index327, 3
  %next.gep330 = getelementptr i8, ptr %i.id, i64 %i.ke ; 2 uses
  %i.kf = getelementptr i8, ptr %next.gep330, i64 16
  %wide.load331 = load <2 x i64>, ptr %next.gep330, align 8, !tbaa !84
  %wide.load332 = load <2 x i64>, ptr %i.kf, align 8, !tbaa !84
  %i.kg = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load331)
  %i.kh = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load332)
  %i.ki = add <2 x i64> %i.kg, %vec.phi328        ; 2 uses
  %i.kj = add <2 x i64> %i.kh, %vec.phi329        ; 2 uses
  %index.next333 = add nuw i64 %index327, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next333, %n.vec325
  br i1 %i.kk, label %middle.block334, label %vector.body326, !llvm.loop !2123

middle.block334:                                  ; preds = %vector.body326
  %bin.rdx335 = add <2 x i64> %i.kj, %i.ki
  %i.kl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx335) ; 2 uses
  %cmp.n336 = icmp eq i64 %i.kb, %n.vec325
  br i1 %cmp.n336, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader359

.lr.ph28.i.preheader359:                          ; preds = %.lr.ph28.i.preheader, %middle.block334
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.kl, %middle.block334 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.id, %.lr.ph28.i.preheader ], [ %i.kd, %middle.block334 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader359, %.lr.ph28.i
  %.027.i = phi i64 [ %i.ko, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader359 ]
  %.sroa.016.026.i = phi ptr [ %i.kp, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader359 ] ; 2 uses
  %i.km = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !84
  %i.kn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.km)
  %i.ko = add nuw nsw i64 %i.kn, %.027.i          ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.kp, %i.jc
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !2124

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader363, %.lr.ph.i91
  %.124.i = phi i64 [ %i.ks, %.lr.ph.i91 ], [ %.124.i.ph, %.lr.ph.i91.preheader363 ]
  %.sroa.012.023.i = phi ptr [ %i.kt, %.lr.ph.i91 ], [ %.sroa.012.023.i.ph, %.lr.ph.i91.preheader363 ] ; 2 uses
  %i.kq = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !84
  %i.kr = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kq)
  %i.ks = add nuw nsw i64 %i.kr, %.124.i          ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i92 = icmp eq ptr %i.kt, %i.jb
  br i1 %.not.i92, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i91, !llvm.loop !2125

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i91, %.lr.ph28.i, %middle.block, %middle.block334
  %.2.i = phi i64 [ %i.ko, %.lr.ph28.i ], [ %i.kl, %middle.block334 ], [ %i.jx, %middle.block ], [ %i.ks, %.lr.ph.i91 ] ; 5 uses
  %.not.i94 = icmp eq i64 %.2.i, 0
  br i1 %.not.i94, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.ku = sitofp i64 %.2.i to double              ; 2 uses
  %i.kv = fdiv double %i.ku, %i.j
  %i.kw = fadd double %i.kv, 0.000000e+00
  %i.kx = fdiv double %i.ku, %i.l
  %i.ky = fadd double %i.kx, %i.kw
  %i.kz = fadd double %i.ky, 1.000000e+00
  %i.la = fdiv double %i.kz, 3.000000e+00
  %i.lb = fcmp ult double %i.la, %5
  br i1 %i.lb, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96
  %i.lc = load i64, ptr %i.id, align 8, !tbaa !84
  %i.ld = load i64, ptr %i.hs, align 8, !tbaa !84
  %i.le = load ptr, ptr %0, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = load ptr, ptr %i.lf, align 8
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i101 = icmp eq i64 %i.nj, 0
  br i1 %.not.i101, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.i, !llvm.loop !2126

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i98 = phi ptr [ %3, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.nf, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.lc, %.preheader2.lr.ph.i ], [ %i.ni, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.ld, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.nj, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i102, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i102, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.lj, %.lr.ph.i102 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.lm, %.lr.ph.i102 ]
  %.1.lcssa.i = phi ptr [ %.027.i98, %.preheader2.i ], [ %i.lk, %.lr.ph.i102 ] ; 2 uses
  br label %.preheader.i99

.lr.ph.i102:                                      ; preds = %.preheader2.i, %.lr.ph.i102
  %.16.i = phi ptr [ %i.lk, %.lr.ph.i102 ], [ %.027.i98, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.lj, %.lr.ph.i102 ], [ %.03621.i, %.preheader2.i ]
  %i.lj = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.lj
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !84 ; 2 uses
  %.not40.i = icmp eq i64 %i.lm, 0
  br i1 %.not40.i, label %.lr.ph.i102, label %.preheader1.i, !llvm.loop !2127

.preheader.i99:                                   ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.nf, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.ni, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.nh, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.nj, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i99, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.ln, %.lr.ph11.i ], [ %.13415.i, %.preheader.i99 ]
  %i.ln = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ln
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !84 ; 2 uses
  %.not42.i = icmp eq i64 %i.lp, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !2128

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i99
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i99 ], [ %i.ln, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i99 ], [ %i.lp, %.lr.ph11.i ] ; 3 uses
  %i.lq = sub i64 0, %.2.lcssa.i
  %i.lr = and i64 %.2.lcssa.i, %i.lq              ; 2 uses
  %i.ls = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.lt = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !66  ; 3 uses
  %i.lv = icmp sgt i8 %i.lu, -1
  br i1 %i.lv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i
  %i.lw = zext nneg i8 %i.lu to i64
  %i.lx = mul nsw i64 %i.lh, %i.lw
  %i.ly = getelementptr [8 x i8], ptr %i.li, i64 %i.lx
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %.235.lcssa.i
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.ag:                                            ; preds = %._crit_edge.i
  %i.mb = getelementptr inbounds nuw [2048 x i8], ptr %i.le, i64 %.235.lcssa.i ; 3 uses
  %i.mc = sext i8 %i.lu to i64                    ; 7 uses
  %i.md = and i64 %i.mc, 127
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mh = load i64, ptr %i.me, align 8, !tbaa !2104
  %i.mi = icmp eq i64 %i.mh, %i.mc
  br i1 %i.mi, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ah
  %i.mj = mul nsw i64 %i.mc, 5
  %i.mk = add nsw i64 %i.mc, 1
  %i.ml = add nsw i64 %i.mk, %i.mj
  %i.mm = and i64 %i.ml, 127                      ; 2 uses
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not1718.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.mq = load i64, ptr %i.mn, align 8, !tbaa !2104
  %i.mr = icmp eq i64 %i.mq, %i.mc
  br i1 %i.mr, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %.019.i.i9.i.i = phi i64 [ %i.mt, %.lr.ph.i.i.i.i ], [ %i.mc, %.lr.ph.i.i.preheader.i.i ]
  %i.ms = phi i64 [ %i.mx, %.lr.ph.i.i.i.i ], [ %i.mm, %.lr.ph.i.i.preheader.i.i ]
  %i.mt = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.mu = mul nuw nsw i64 %i.ms, 5
  %i.mv = add nuw nsw i64 %i.mt, 1
  %i.mw = add nuw nsw i64 %i.mv, %i.mu
  %i.mx = and i64 %i.mw, 127                      ; 2 uses
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.na, 0
  br i1 %.not17.i.i.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.nb = load i64, ptr %i.my, align 8, !tbaa !2104
  %i.nc = icmp eq i64 %i.nb, %i.mc
  br i1 %i.nc, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i: ; preds = %.lr.ph.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.preheader.i.i.i.i, %bb.ah, %bb.ag, %bb.af
  %.0.i.i100 = phi i64 [ %i.ma, %bb.af ], [ 0, %bb.ag ], [ %i.mg, %bb.ah ], [ 0, %.preheader.i.i.i.i ], [ %i.mp, %.lr.ph.i.i.preheader.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i ], [ %i.na, %.lr.ph.i.i.i.i ]
  %i.nd = and i64 %.0.i.i100, %i.lr
  %.not43.i = icmp eq i64 %i.nd, 0
  %i.ne = zext i1 %.not43.i to i64
  %i.nf = add nsw i64 %.12718.i, %i.ne            ; 3 uses
  %i.ng = add i64 %.23216.i, -1
  %i.nh = and i64 %i.ng, %.23216.i                ; 2 uses
  %i.ni = xor i64 %i.lr, %.2.lcssa.i              ; 2 uses
  %i.nj = add nsw i64 %.13914.i, -1               ; 3 uses
  %.not41.i = icmp eq i64 %i.nh, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i99, !llvm.loop !2129

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %.preheader20.i, %.preheader.i93, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96
  %.0.i95152 = phi i1 [ false, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96 ], [ false, %.preheader20.i ], [ false, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ false, %.preheader.i93 ], [ true, %.loopexit.i ]
  %.2.i147 = phi i64 [ %.2.i, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96 ], [ 0, %.preheader20.i ], [ 0, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ 0, %.preheader.i93 ], [ %.2.i, %.loopexit.i ]
  %.163 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96 ], [ 0, %.preheader20.i ], [ 0, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ 0, %.preheader.i93 ], [ %i.nf, %.loopexit.i ]
  %.not.i.i.i.i103 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i103, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %8

8:                                                ; preds = %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.hs) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %8, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  %.not.i.i.i1.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i1.i, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, label %9

9:                                                ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.id) #29
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i95152, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82, %bb.g, %bb.q, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit
  %.264 = phi i64 [ 0, %bb.q ], [ %.163, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ 0, %bb.g ], [ %i.gt, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ]
  %.061 = phi i64 [ %i.es, %bb.q ], [ %.2.i147, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ 0, %bb.g ], [ %i.es, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ]
  %i.nk = sdiv i64 %.264, 2
  %i.nl = sitofp i64 %.061 to double              ; 4 uses
  %i.nm = fdiv double %i.nl, %i.j
  %i.nn = fadd double %i.nm, 0.000000e+00
  %i.no = fdiv double %i.nl, %i.l
  %i.np = fadd double %i.no, %i.nn
  %i.nq = sitofp i64 %i.nk to double
  %i.nr = fsub double %i.nl, %i.nq
  %i.ns = fdiv double %i.nr, %i.nl
  %i.nt = fadd double %i.ns, %i.np
  %i.nu = fdiv double %i.nt, 3.000000e+00         ; 2 uses
  %i.nv = fcmp oge double %i.nu, %5
  %i.nw = select i1 %i.nv, double %i.nu, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit, %bb.a, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.w, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.nw, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread141 ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit ]
  ret double %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !1818   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i8 noundef signext %1, ptr captures(none) %.0.val, ptr captures(none) %.24.val, i64 noundef %2, ptr noundef readonly byval(%"struct.duckdb_jaro_winkler::detail::SearchBoundMask") align 8 captures(none) %3) unnamed_addr #20 {
bb.a:
  %i.a = sdiv i64 %2, 64                          ; 4 uses
  %i.b = srem i64 %2, 64                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2130 ; 9 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !2132   ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i8 %1, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = zext nneg i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2094
  %i.l = mul nsw i64 %i.k, %i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1818
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.d
  %i.p = load i64, ptr %i.o, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !2088
  %i.r = getelementptr inbounds nuw [2048 x i8], ptr %i.q, i64 %i.d ; 3 uses
  %i.s = sext i8 %1 to i64                        ; 7 uses
  %i.t = and i64 %i.s, 127
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.u, align 8, !tbaa !2104
  %i.y = icmp eq i64 %i.x, %i.s
  br i1 %i.y, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e
  %i.z = mul nsw i64 %i.s, 5
  %i.aa = add nsw i64 %i.s, 1
  %i.ab = add nsw i64 %i.aa, %i.z
  %i.ac = and i64 %i.ab, 127                      ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not1718.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.preheader.i.i.i
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !2104
  %i.ah = icmp eq i64 %i.ag, %i.s
  br i1 %i.ah, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %.019.i.i9.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.preheader.i ]
  %i.ai = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ %i.ac, %.lr.ph.i.i.preheader.i ]
  %i.aj = lshr i64 %.019.i.i9.i, 5                ; 2 uses
  %i.ak = mul nuw nsw i64 %i.ai, 5
  %i.al = add nuw nsw i64 %i.aj, 1
  %i.am = add nuw nsw i64 %i.al, %i.ak
  %i.an = and i64 %i.am, 127                      ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not17.i.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i, label %.lr.ph.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !2104
  %i.as = icmp eq i64 %i.ar, %i.s
  br i1 %i.as, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit, label %.lr.ph.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.d, %bb.e, %.preheader.i.i.i, %.lr.ph.i.i.preheader.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i
  %.0.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ], [ %i.w, %bb.e ], [ 0, %.preheader.i.i.i ], [ %i.af, %.lr.ph.i.i.preheader.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !2133
  %i.av = and i64 %i.au, %.0.i
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !2134
  %i.ay = and i64 %i.av, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.d ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !84 ; 2 uses
  %i.bb = xor i64 %i.ba, -1
  %i.bc = and i64 %i.ay, %i.bb                    ; 2 uses
  %i.bd = sub i64 0, %i.bc
  %i.be = and i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !84
  %i.bg = icmp ne i64 %i.bc, 0
  %i.bh = zext i1 %i.bg to i64
  %i.bi = shl nuw i64 %i.bh, %i.b
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.24.val, i64 %i.a ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !84
  %i.bl = or i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !84
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !2134 ; 2 uses
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = icmp sgt i8 %1, -1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = zext nneg i8 %1 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !2094
  %i.bt = mul nsw i64 %i.bs, %i.bq
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !1818
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.d
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %0, align 8, !tbaa !2088
  %i.bz = getelementptr inbounds nuw [2048 x i8], ptr %i.by, i64 %i.d ; 3 uses
  %i.ca = sext i8 %1 to i64                       ; 7 uses
  %i.cb = and i64 %i.ca, 127
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i64 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i64, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !2104
  %i.cg = icmp eq i64 %i.cf, %i.ca
  br i1 %i.cg, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74, label %.preheader.i.i.i65

.preheader.i.i.i65:                               ; preds = %bb.j
  %i.ch = mul nsw i64 %i.ca, 5
  %i.ci = add nsw i64 %i.ca, 1
  %i.cj = add nsw i64 %i.ci, %i.ch
  %i.ck = and i64 %i.cj, 127                      ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i66 = icmp eq i64 %i.cn, 0
  br i1 %.not1718.i.i.i66, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74, label %.lr.ph.i.i.preheader.i67

.lr.ph.i.i.preheader.i67:                         ; preds = %.preheader.i.i.i65
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !2104
  %i.cp = icmp eq i64 %i.co, %i.ca
  br i1 %i.cp, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i.i.preheader.i67, %.lr.ph.i.i.i71
  %.019.i.i9.i69 = phi i64 [ %i.cr, %.lr.ph.i.i.i71 ], [ %i.ca, %.lr.ph.i.i.preheader.i67 ]
  %i.cq = phi i64 [ %i.cv, %.lr.ph.i.i.i71 ], [ %i.ck, %.lr.ph.i.i.preheader.i67 ]
  %i.cr = lshr i64 %.019.i.i9.i69, 5              ; 2 uses
  %i.cs = mul nuw nsw i64 %i.cq, 5
  %i.ct = add nuw nsw i64 %i.cr, 1
  %i.cu = add nuw nsw i64 %i.ct, %i.cs
  %i.cv = and i64 %i.cu, 127                      ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cv ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE:bb.a
  %i.er = load i64, ptr %i.eo, align 8, !tbaa !2104
  %i.es = icmp eq i64 %i.er, %i.dt
  br i1 %i.es, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, label %.preheader.i.i.i76

.preheader.i.i.i76:                               ; preds = %bb.m
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.dy ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i77 = icmp eq i64 %i.ev, 0
  br i1 %.not1718.i.i.i77, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, label %.lr.ph.i.i.preheader.i78

.lr.ph.i.i.preheader.i78:                         ; preds = %.preheader.i.i.i76
  %i.ew = load i64, ptr %i.et, align 8, !tbaa !2104
  %i.ex = icmp eq i64 %i.ew, %i.dt
  br i1 %i.ex, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i.i.preheader.i78, %.lr.ph.i.i.i82
  %.019.i.i9.i80 = phi i64 [ %i.ez, %.lr.ph.i.i.i82 ], [ %i.dt, %.lr.ph.i.i.preheader.i78 ]
  %i.ey = phi i64 [ %i.fd, %.lr.ph.i.i.i82 ], [ %i.dy, %.lr.ph.i.i.preheader.i78 ]
  %i.ez = lshr i64 %.019.i.i9.i80, 5              ; 2 uses
  %i.fa = mul nuw nsw i64 %i.ey, 5
  %i.fb = add nuw nsw i64 %i.ez, 1
  %i.fc = add nuw nsw i64 %i.fb, %i.fa
  %i.fd = and i64 %i.fc, 127                      ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i81 = icmp eq i64 %i.fg, 0
  br i1 %.not17.i.i.i81, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84, label %.lr.ph.i.i.i82, !llvm.loop !2105

.lr.ph.i.i.i82:                                   ; preds = %.lr.ph.i79
  %i.fh = load i64, ptr %i.fe, align 8, !tbaa !2104
  %i.fi = icmp eq i64 %i.fh, %i.dt
  br i1 %i.fi, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, label %.lr.ph.i79, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84: ; preds = %.lr.ph.i79
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85: ; preds = %.lr.ph.i.i.i82, %.lr.ph.split, %bb.m, %.preheader.i.i.i76, %.lr.ph.i.i.preheader.i78, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84
  %.0.i83 = phi i64 [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84 ], [ 0, %.lr.ph.split ], [ %i.eq, %bb.m ], [ 0, %.preheader.i.i.i76 ], [ %i.ev, %.lr.ph.i.i.preheader.i78 ], [ %i.fg, %.lr.ph.i.i.i82 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.211
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %i.fl = xor i64 %i.fk, -1
  %i.fm = and i64 %.0.i83, %i.fl                  ; 2 uses
  %.not63 = icmp eq i64 %i.fm, 0
  br i1 %.not63, label %.critedge, label %.split.us

.split.us:                                        ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us
  %.us-phi = phi i64 [ %.211.us, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %.211, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %.us-phi12 = phi i64 [ %i.eh, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %.0.i83, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %.us-phi13 = phi i64 [ %i.ej, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %i.fk, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %.us-phi14 = phi i64 [ %i.el, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %i.fm, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.us-phi
  %i.fo = sub i64 0, %.us-phi14
  %i.fp = and i64 %.us-phi12, %i.fo
  %i.fq = or i64 %i.fp, %.us-phi13
  store i64 %i.fq, ptr %i.fn, align 8, !tbaa !84
  %i.fr = shl nuw i64 1, %i.b
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.24.val, i64 %i.a ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !84
  %i.fu = or i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !84
  br label %bb.r

.critedge:                                        ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85
  %i.fv = add i64 %.211, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.fv, %i.dp
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2135

._crit_edge:                                      ; preds = %.critedge, %.critedge.us, %bb.l
  %.2.lcssa = phi i64 [ %.1, %bb.l ], [ %i.dp, %.critedge.us ], [ %i.dp, %.critedge ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !2133 ; 2 uses
  %.not62 = icmp eq i64 %i.fx, 0
  br i1 %.not62, label %bb.r, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.fy = icmp sgt i8 %1, -1
  br i1 %i.fy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ga = zext nneg i8 %1 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !2094
  %i.gd = mul nsw i64 %i.gc, %i.ga
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !1818
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %.2.lcssa
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96

bb.p:                                             ; preds = %bb.n
  %i.gi = load ptr, ptr %0, align 8, !tbaa !2088
  %i.gj = getelementptr inbounds nuw [2048 x i8], ptr %i.gi, i64 %.2.lcssa ; 3 uses
  %i.gk = sext i8 %1 to i64                       ; 7 uses
  %i.gl = and i64 %i.gk, 127
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i86 = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i86, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gp = load i64, ptr %i.gm, align 8, !tbaa !2104
  %i.gq = icmp eq i64 %i.gp, %i.gk
  br i1 %i.gq, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %.preheader.i.i.i87

.preheader.i.i.i87:                               ; preds = %bb.q
  %i.gr = mul nsw i64 %i.gk, 5
  %i.gs = add nsw i64 %i.gk, 1
  %i.gt = add nsw i64 %i.gs, %i.gr
  %i.gu = and i64 %i.gt, 127                      ; 2 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i88 = icmp eq i64 %i.gx, 0
  br i1 %.not1718.i.i.i88, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %.lr.ph.i.i.preheader.i89

.lr.ph.i.i.preheader.i89:                         ; preds = %.preheader.i.i.i87
  %i.gy = load i64, ptr %i.gv, align 8, !tbaa !2104
  %i.gz = icmp eq i64 %i.gy, %i.gk
  br i1 %i.gz, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.lr.ph.i.i.preheader.i89, %.lr.ph.i.i.i93
  %.019.i.i9.i91 = phi i64 [ %i.hb, %.lr.ph.i.i.i93 ], [ %i.gk, %.lr.ph.i.i.preheader.i89 ]
  %i.ha = phi i64 [ %i.hf, %.lr.ph.i.i.i93 ], [ %i.gu, %.lr.ph.i.i.preheader.i89 ]
  %i.hb = lshr i64 %.019.i.i9.i91, 5              ; 2 uses
  %i.hc = mul nuw nsw i64 %i.ha, 5
  %i.hd = add nuw nsw i64 %i.hb, 1
  %i.he = add nuw nsw i64 %i.hd, %i.hc
  %i.hf = and i64 %i.he, 127                      ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i92 = icmp eq i64 %i.hi, 0
  br i1 %.not17.i.i.i92, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95, label %.lr.ph.i.i.i93, !llvm.loop !2105

.lr.ph.i.i.i93:                                   ; preds = %.lr.ph.i90
  %i.hj = load i64, ptr %i.hg, align 8, !tbaa !2104
  %i.hk = icmp eq i64 %i.hj, %i.gk
  br i1 %i.hk, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %.lr.ph.i90, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95: ; preds = %.lr.ph.i90
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96: ; preds = %.lr.ph.i.i.i93, %bb.o, %bb.p, %bb.q, %.preheader.i.i.i87, %.lr.ph.i.i.preheader.i89, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95
  %.0.i94 = phi i64 [ %i.gh, %bb.o ], [ 0, %bb.p ], [ %i.go, %bb.q ], [ 0, %.preheader.i.i.i87 ], [ %i.gx, %.lr.ph.i.i.preheader.i89 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95 ], [ %i.hi, %.lr.ph.i.i.i93 ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.2.lcssa ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !84 ; 2 uses
  %i.hn = xor i64 %i.hm, -1
  %i.ho = and i64 %.0.i94, %i.hn
  %i.hp = and i64 %i.ho, %i.fx                    ; 3 uses
  %i.hq = sub i64 0, %i.hp
  %i.hr = and i64 %i.hp, %i.hq
  %i.hs = or i64 %i.hr, %i.hm
  store i64 %i.hs, ptr %i.hl, align 8, !tbaa !84
  %i.ht = icmp ne i64 %i.hp, 0
  %i.hu = zext i1 %i.ht to i64
  %i.hv = shl nuw i64 %i.hu, %i.b
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.24.val, i64 %i.a ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !84
  %i.hy = or i64 %i.hv, %i.hx
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !84
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %.split.us, %._crit_edge, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !2088   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit

_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb_jaro_winkler::detail::SearchBoundMask", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb_jaro_winkler::common::PatternMatchVector", align 8 ; 18 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::common::BlockPatternMatchVector", align 8 ; 14 uses
  %8 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 13 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = icmp ne ptr %3, %2
  %i.h = icmp ne ptr %1, %0
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double ; 2 uses
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %i.k = fdiv double %i.i, %i.j
  %i.l = sitofp i64 %i.f to double                ; 4 uses
  %i.m = fdiv double %i.i, %i.l
  %i.n = fadd double %i.k, %i.m
  %i.o = fadd double %i.n, 1.000000e+00
  %i.p = fdiv double %i.o, 3.000000e+00
  %i.q = fcmp ult double %i.p, %4
  br i1 %i.q, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit
  %i.r = icmp eq i64 %i.c, 1
  %i.s = icmp eq i64 %i.f, 1
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %0, align 1, !tbaa !66
  %i.u = load i8, ptr %2, align 1, !tbaa !66
  %i.v = icmp eq i8 %i.t, %i.u
  %i.w = uitofp i1 %i.v to double
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.x = icmp sgt i64 %i.f, %i.c
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = sdiv i64 %i.f, 2
  %i.z = add nsw i64 %i.y, -1                     ; 5 uses
  %i.aa = add nsw i64 %i.z, %i.c
  %i.ab = icmp sgt i64 %i.f, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.z ; 2 uses
  %.pre236.a = ptrtoint ptr %i.ad to i64
  %.pre238.a = add nsw i64 %i.c, %i.z
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.g:                                             ; preds = %bb.d
  %i.ae = sdiv i64 %i.c, 2
  %i.af = add nsw i64 %i.ae, -1                   ; 5 uses
  %i.ag = add nsw i64 %i.af, %i.f
  %i.ah = icmp sgt i64 %i.c, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.af ; 2 uses
  %.pre233 = ptrtoint ptr %i.aj to i64
  %.pre234 = add nsw i64 %i.f, %i.af
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi239.a = phi i64 [ %i.f, %bb.e ], [ %.pre238.a, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  %.pre-phi237 = phi i64 [ %i.d, %bb.e ], [ %.pre236.a, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ]
  %.pre-phi235 = phi i64 [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %.pre234, %bb.h ]
  %.pre-phi = phi i64 [ %i.a, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ], [ %.pre233, %bb.h ]
  %.0163 = phi ptr [ %3, %bb.e ], [ %i.ad, %bb.f ], [ %3, %bb.g ], [ %3, %bb.h ]
  %.0 = phi ptr [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.0.i53 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.af, %bb.h ] ; 6 uses
  %.sroa.speculated.i54 = tail call i64 @llvm.smin.i64(i64 %.pre-phi239.a, i64 %.pre-phi235) ; 3 uses
  %i.ak = icmp sgt i64 %.sroa.speculated.i54, 0
  br i1 %i.ak, label %.lr.ph.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

.lr.ph.i:                                         ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit, %bb.i
  %.018.i = phi i64 [ %i.ap, %bb.i ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.018.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.am, %i.ao
  br i1 %.not.i, label %bb.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.018.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %.sroa.speculated.i54
  br i1 %exitcond.not.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit, label %.lr.ph.i, !llvm.loop !2136

_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit: ; preds = %.lr.ph.i, %bb.i, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ], [ %.sroa.speculated.i54, %bb.i ], [ %.018.i, %.lr.ph.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa.i ; 7 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %.pre-phi, %i.as                ; 8 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %.pre-phi237, %i.au             ; 8 uses
  %i.aw = icmp ne ptr %.0, %i.aq
  %i.ax = icmp ne ptr %.0163, %i.ar
  %or.cond4 = and i1 %i.aw, %i.ax
  br i1 %or.cond4, label %bb.j, label %bb.at

bb.j:                                             ; preds = %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %i.ay = icmp slt i64 %i.at, 65
  %i.az = icmp slt i64 %i.av, 65
  %or.cond6 = and i1 %i.ay, %i.az
  br i1 %or.cond6, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 2048 ; 4 uses
  %i.bb = icmp sgt i64 %i.at, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %6, i8 0, i64 4096, i1 false)
  br i1 %i.bb, label %.lr.ph22.i.i, label %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit

.lr.ph22.i.i:                                     ; preds = %bb.k, %bb.o
  %.021.i.i = phi i64 [ %i.co, %bb.o ], [ 1, %bb.k ] ; 3 uses
  %.01520.i.i = phi i64 [ %i.cp, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.01520.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !66  ; 3 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph22.i.i
  %i.bf = zext nneg i8 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !84
  %i.bi = or i64 %i.bh, %.021.i.i
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !84
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph22.i.i
  %i.bj = sext i8 %i.bd to i64                    ; 8 uses
  %i.bk = and i64 %i.bj, 127                      ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !2104
  %i.bp = icmp eq i64 %i.bo, %i.bj
  br i1 %i.bp, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.n
  %i.bq = mul nsw i64 %i.bj, 5
  %i.br = add nsw i64 %i.bj, 1
  %i.bs = add nsw i64 %i.br, %i.bq
  %i.bt = and i64 %i.bs, 127                      ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not1718.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !2104
  %i.by = icmp eq i64 %i.bx, %i.bj
  br i1 %i.by, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %.019.i.i16.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.preheader.i.i ]
  %i.bz = phi i64 [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.preheader.i.i ]
  %i.ca = lshr i64 %.019.i.i16.i.i, 5             ; 2 uses
  %i.cb = mul nuw nsw i64 %i.bz, 5
  %i.cc = add nuw nsw i64 %i.ca, 1
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  %i.ce = and i64 %i.cd, 127                      ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not17.i.i.i.i, label %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ci = load i64, ptr %i.cf, align 8, !tbaa !2104
  %i.cj = icmp eq i64 %i.ci, %i.bj
  br i1 %i.cj, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i, !llvm.loop !2105

._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, !llvm.loop !2105

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.preheader.i.i.i.i, %bb.n, %bb.m
  %i.ck = phi i64 [ 0, %bb.m ], [ %i.bn, %bb.n ], [ 0, %.preheader.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.preheader.i.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.ch, %.lr.ph.i.i.i.i ]
  %.015.i.i.i.i = phi i64 [ %i.bk, %bb.m ], [ %i.bk, %bb.n ], [ %i.bt, %.preheader.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.preheader.i.i ], [ %i.ce, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.015.i.i.i.i ; 2 uses
  store i64 %i.bj, ptr %i.cl, align 8, !tbaa !2104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = or i64 %i.ck, %.021.i.i
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !2102
  br label %bb.o

bb.o:                                             ; preds = %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, %bb.l
end_hunk_2
begin_hunk_3_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.o, %bb.k
  %i.cq = trunc i64 %.0.i53 to i32
  %i.cr = add nsw i64 %.0.i53, 1
  %i.cs = icmp slt i32 %i.cq, 63
  %i.ct = and i64 %i.cr, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i.i, -1
  %.0.i.i = select i1 %i.cs, i64 %i.cu, i64 -1    ; 2 uses
  %sext = shl i64 %.0.i53, 32
  %i.cv = ashr exact i64 %sext, 32
  %.sroa.speculated.i55 = tail call i64 @llvm.smin.i64(i64 %i.av, i64 %i.cv) ; 3 uses
  %i.cw = icmp sgt i64 %.sroa.speculated.i55, 0
  br i1 %i.cw, label %.lr.ph.i57, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit
  %.034.lcssa.i = phi i64 [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.eq, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ]
  %.0.lcssa.i56 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %.sroa.speculated.i55, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.eo, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.cx = icmp slt i64 %.0.lcssa.i56, %i.av
  br i1 %i.cx, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit

.lr.ph.i57:                                       ; preds = %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i
  %.sroa.0.057.i = phi i64 [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %.sroa.8.056.i = phi i64 [ %i.eo, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ]
  %.055.i = phi i64 [ %i.er, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %.03454.i = phi i64 [ %i.eq, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.055.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !66  ; 3 uses
  %i.da = icmp sgt i8 %i.cz, -1
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i57
  %i.db = zext nneg i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i

bb.q:                                             ; preds = %.lr.ph.i57
  %i.de = sext i8 %i.cz to i64                    ; 7 uses
  %i.df = and i64 %i.de, 127
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i58 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i58, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = load i64, ptr %i.dg, align 8, !tbaa !2104
  %i.dk = icmp eq i64 %i.dj, %i.de
  br i1 %i.dk, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.preheader.i.i.i.i59

.preheader.i.i.i.i59:                             ; preds = %bb.r
  %i.dl = mul nsw i64 %i.de, 5
  %i.dm = add nsw i64 %i.de, 1
  %i.dn = add nsw i64 %i.dm, %i.dl
  %i.do = and i64 %i.dn, 127                      ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i60 = icmp eq i64 %i.dr, 0
  br i1 %.not1718.i.i.i.i60, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.preheader.i.i61

.lr.ph.i.i.preheader.i.i61:                       ; preds = %.preheader.i.i.i.i59
  %i.ds = load i64, ptr %i.dp, align 8, !tbaa !2104
  %i.dt = icmp eq i64 %i.ds, %i.de
  br i1 %i.dt, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i.preheader.i.i61, %.lr.ph.i.i.i.i64
  %.019.i.i7.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i64 ], [ %i.de, %.lr.ph.i.i.preheader.i.i61 ]
  %i.du = phi i64 [ %i.dz, %.lr.ph.i.i.i.i64 ], [ %i.do, %.lr.ph.i.i.preheader.i.i61 ]
  %i.dv = lshr i64 %.019.i.i7.i.i, 5              ; 2 uses
  %i.dw = mul nuw nsw i64 %i.du, 5
  %i.dx = add nuw nsw i64 %i.dv, 1
  %i.dy = add nuw nsw i64 %i.dx, %i.dw
  %i.dz = and i64 %i.dy, 127                      ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i63 = icmp eq i64 %i.ec, 0
  br i1 %.not17.i.i.i.i63, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i64, !llvm.loop !2105

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i62
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !2104
  %i.ee = icmp eq i64 %i.ed, %i.de
  br i1 %i.ee, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i62, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i62
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i: ; preds = %.lr.ph.i.i.i.i64, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i61, %.preheader.i.i.i.i59, %bb.r, %bb.q, %bb.p
  %.0.i36.i = phi i64 [ %i.dd, %bb.p ], [ 0, %bb.q ], [ %i.di, %bb.r ], [ 0, %.preheader.i.i.i.i59 ], [ %i.dr, %.lr.ph.i.i.preheader.i.i61 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i ], [ %i.ec, %.lr.ph.i.i.i.i64 ]
  %i.ef = xor i64 %.sroa.0.057.i, -1
  %i.eg = and i64 %.0.i36.i, %i.ef
  %i.eh = and i64 %i.eg, %.03454.i                ; 3 uses
  %i.ei = sub i64 0, %i.eh
  %i.ej = and i64 %i.eh, %i.ei
  %i.ek = or i64 %i.ej, %.sroa.0.057.i            ; 2 uses
  %i.el = icmp ne i64 %i.eh, 0
  %i.em = zext i1 %i.el to i64
  %i.en = shl nuw i64 %i.em, %.055.i
  %i.eo = or i64 %i.en, %.sroa.8.056.i            ; 2 uses
  %i.ep = shl i64 %.03454.i, 1
  %i.eq = or disjoint i64 %i.ep, 1                ; 2 uses
  %i.er = add nuw nsw i64 %.055.i, 1              ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.er, %.sroa.speculated.i55
  br i1 %exitcond.not.i65, label %.preheader.i, label %.lr.ph.i57, !llvm.loop !2138

.lr.ph65.i:                                       ; preds = %.preheader.i, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i
  %.sroa.0.164.i = phi i64 [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.0.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.8.163.i = phi i64 [ %i.gi, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.8.0.lcssa.i, %.preheader.i ]
  %.162.i = phi i64 [ %i.gk, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.0.lcssa.i56, %.preheader.i ] ; 3 uses
  %.13561.i = phi i64 [ %i.gj, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.162.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !66  ; 3 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph65.i
  %i.ev = zext nneg i8 %i.et to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i

bb.t:                                             ; preds = %.lr.ph65.i
  %i.ey = sext i8 %i.et to i64                    ; 7 uses
  %i.ez = and i64 %i.ey, 127
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i37.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i37.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = load i64, ptr %i.fa, align 8, !tbaa !2104
  %i.fe = icmp eq i64 %i.fd, %i.ey
  br i1 %i.fe, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.preheader.i.i.i38.i

.preheader.i.i.i38.i:                             ; preds = %bb.u
  %i.ff = mul nsw i64 %i.ey, 5
  %i.fg = add nsw i64 %i.ey, 1
  %i.fh = add nsw i64 %i.fg, %i.ff
  %i.fi = and i64 %i.fh, 127                      ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i39.i = icmp eq i64 %i.fl, 0
  br i1 %.not1718.i.i.i39.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i.i.preheader.i40.i

.lr.ph.i.i.preheader.i40.i:                       ; preds = %.preheader.i.i.i38.i
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !2104
  %i.fn = icmp eq i64 %i.fm, %i.ey
  br i1 %i.fn, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i.i.preheader.i40.i, %.lr.ph.i.i.i44.i
  %.019.i.i7.i42.i = phi i64 [ %i.fp, %.lr.ph.i.i.i44.i ], [ %i.ey, %.lr.ph.i.i.preheader.i40.i ]
  %i.fo = phi i64 [ %i.ft, %.lr.ph.i.i.i44.i ], [ %i.fi, %.lr.ph.i.i.preheader.i40.i ]
  %i.fp = lshr i64 %.019.i.i7.i42.i, 5            ; 2 uses
  %i.fq = mul nuw nsw i64 %i.fo, 5
  %i.fr = add nuw nsw i64 %i.fp, 1
  %i.fs = add nuw nsw i64 %i.fr, %i.fq
  %i.ft = and i64 %i.fs, 127                      ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i43.i = icmp eq i64 %i.fw, 0
  br i1 %.not17.i.i.i43.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, label %.lr.ph.i.i.i44.i, !llvm.loop !2105

.lr.ph.i.i.i44.i:                                 ; preds = %.lr.ph.i41.i
  %i.fx = load i64, ptr %i.fu, align 8, !tbaa !2104
  %i.fy = icmp eq i64 %i.fx, %i.ey
  br i1 %i.fy, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i: ; preds = %.lr.ph.i41.i
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i: ; preds = %.lr.ph.i.i.i44.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, %.lr.ph.i.i.preheader.i40.i, %.preheader.i.i.i38.i, %bb.u, %bb.t, %bb.s
  %.0.i45.i = phi i64 [ %i.ex, %bb.s ], [ 0, %bb.t ], [ %i.fc, %bb.u ], [ 0, %.preheader.i.i.i38.i ], [ %i.fl, %.lr.ph.i.i.preheader.i40.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i ], [ %i.fw, %.lr.ph.i.i.i44.i ]
  %i.fz = xor i64 %.sroa.0.164.i, -1
  %i.ga = and i64 %.0.i45.i, %i.fz
  %i.gb = and i64 %i.ga, %.13561.i                ; 3 uses
  %i.gc = sub i64 0, %i.gb
  %i.gd = and i64 %i.gb, %i.gc
  %i.ge = or i64 %i.gd, %.sroa.0.164.i            ; 2 uses
  %i.gf = icmp ne i64 %i.gb, 0
  %i.gg = zext i1 %i.gf to i64
  %i.gh = shl nuw i64 %i.gg, %.162.i
  %i.gi = or i64 %i.gh, %.sroa.8.163.i            ; 2 uses
  %i.gj = shl i64 %.13561.i, 1
  %i.gk = add nuw nsw i64 %.162.i, 1              ; 2 uses
  %i.gl = icmp slt i64 %i.gk, %i.av
  br i1 %i.gl, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, !llvm.loop !2139

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, %.preheader.i
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i ], [ %i.gi, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader.i ], [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %i.gm = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.1.lcssa.i)
  %i.gn = add nuw nsw i64 %i.gm, %.0.lcssa.i      ; 3 uses
  %.not.i66 = icmp eq i64 %i.gn, 0
  br i1 %.not.i66, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.go = uitofp nneg i64 %i.gn to double         ; 2 uses
  %i.gp = fdiv double %i.go, %i.j
  %i.gq = fadd double %i.gp, 0.000000e+00
  %i.gr = fdiv double %i.go, %i.l
  %i.gs = fadd double %i.gr, %i.gq
  %i.gt = fadd double %i.gs, 1.000000e+00
  %i.gu = fdiv double %i.gt, 3.000000e+00
  %i.gv = fcmp ult double %i.gu, %4
  br i1 %i.gv, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %.sink.split, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.v, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77
  %.05.i = phi i64 [ %i.il, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77 ], [ %.sroa.0.1.lcssa.i, %bb.v ] ; 3 uses
  %.0124.i = phi i64 [ %i.ii, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77 ], [ 0, %bb.v ]
  %.0133.i = phi i64 [ %i.ik, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77 ], [ %.sroa.8.1.lcssa.i, %bb.v ] ; 3 uses
  %i.gw = sub i64 0, %.05.i
  %i.gx = and i64 %.05.i, %i.gw                   ; 2 uses
  %i.gy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0133.i, i1 true)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !66  ; 3 uses
  %i.hb = icmp sgt i8 %i.ha, -1
  br i1 %i.hb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i68
  %i.hc = zext nneg i8 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77

bb.x:                                             ; preds = %.lr.ph.i68
  %i.hf = sext i8 %i.ha to i64                    ; 7 uses
  %i.hg = and i64 %i.hf, 127
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i69 = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i.i.i69, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hk = load i64, ptr %i.hh, align 8, !tbaa !2104
  %i.hl = icmp eq i64 %i.hk, %i.hf
  br i1 %i.hl, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, label %.preheader.i.i.i.i70

.preheader.i.i.i.i70:                             ; preds = %bb.y
  %i.hm = mul nsw i64 %i.hf, 5
  %i.hn = add nsw i64 %i.hf, 1
  %i.ho = add nsw i64 %i.hn, %i.hm
  %i.hp = and i64 %i.ho, 127                      ; 2 uses
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i71 = icmp eq i64 %i.hs, 0
  br i1 %.not1718.i.i.i.i71, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, label %.lr.ph.i.i.preheader.i.i72

.lr.ph.i.i.preheader.i.i72:                       ; preds = %.preheader.i.i.i.i70
  %i.ht = load i64, ptr %i.hq, align 8, !tbaa !2104
  %i.hu = icmp eq i64 %i.ht, %i.hf
  br i1 %i.hu, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i.preheader.i.i72, %.lr.ph.i.i.i.i76
  %.019.i.i7.i.i74 = phi i64 [ %i.hw, %.lr.ph.i.i.i.i76 ], [ %i.hf, %.lr.ph.i.i.preheader.i.i72 ]
  %i.hv = phi i64 [ %i.ia, %.lr.ph.i.i.i.i76 ], [ %i.hp, %.lr.ph.i.i.preheader.i.i72 ]
  %i.hw = lshr i64 %.019.i.i7.i.i74, 5            ; 2 uses
  %i.hx = mul nuw nsw i64 %i.hv, 5
  %i.hy = add nuw nsw i64 %i.hw, 1
  %i.hz = add nuw nsw i64 %i.hy, %i.hx
  %i.ia = and i64 %i.hz, 127                      ; 2 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i75 = icmp eq i64 %i.id, 0
  br i1 %.not17.i.i.i.i75, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i80, label %.lr.ph.i.i.i.i76, !llvm.loop !2105

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i73
  %i.ie = load i64, ptr %i.ib, align 8, !tbaa !2104
  %i.if = icmp eq i64 %i.ie, %i.hf
  br i1 %i.if, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, label %.lr.ph.i.i73, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i80: ; preds = %.lr.ph.i.i73
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77: ; preds = %.lr.ph.i.i.i.i76, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i80, %.lr.ph.i.i.preheader.i.i72, %.preheader.i.i.i.i70, %bb.y, %bb.x, %bb.w
  %.0.i.i78 = phi i64 [ %i.he, %bb.w ], [ 0, %bb.x ], [ %i.hj, %bb.y ], [ 0, %.preheader.i.i.i.i70 ], [ %i.hs, %.lr.ph.i.i.preheader.i.i72 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i80 ], [ %i.id, %.lr.ph.i.i.i.i76 ]
  %i.ig = and i64 %.0.i.i78, %i.gx
  %.not14.i = icmp eq i64 %i.ig, 0
  %i.ih = zext i1 %.not14.i to i64
  %i.ii = add nuw nsw i64 %.0124.i, %i.ih         ; 2 uses
  %i.ij = add i64 %.0133.i, -1
  %i.ik = and i64 %i.ij, %.0133.i                 ; 2 uses
  %i.il = xor i64 %i.gx, %.05.i
  %.not.i79 = icmp eq i64 %i.ik, 0
  br i1 %.not.i79, label %.sink.split, label %.lr.ph.i68, !llvm.loop !2140

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread: ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  invoke void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %i.aq, ptr noundef %.0)
          to label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i81, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.io) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ab, %bb.aa
  %i.ip = load ptr, ptr %7, align 8, !tbaa !2088  ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i4.i, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ip) #29
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.ac, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.kd, %.body ], [ %i.im, %bb.ac ], [ %i.im, %_ZNSt6vectorImSaImEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.iq = sdiv i64 %i.av, 64
  %i.ir = and i64 %i.av, 63
  %i.is = icmp ne i64 %i.ir, 0
  %i.it = zext i1 %i.is to i64
  %i.iu = add nsw i64 %i.iq, %i.it                ; 5 uses
  %i.iv = sdiv i64 %i.at, 64
  %i.iw = and i64 %i.at, 63
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = zext i1 %i.ix to i64
  %i.iz = add nsw i64 %i.iv, %i.iy                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false), !alias.scope !2141
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.not47.i = icmp eq i64 %i.iu, 0
  br i1 %.not47.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jd = icmp ugt i64 %i.iu, 1152921504606846975
  br i1 %i.jd, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i121

.invoke:                                          ; preds = %bb.ae, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i121: ; preds = %bb.ad
  %i.je = shl nuw nsw i64 %i.iu, 3
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #26
          to label %.noexc130 unwind label %.body ; 5 uses

.noexc130:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i121
  store i64 0, ptr %i.jf, align 8, !tbaa !84
  %i.jg = add nsw i64 %i.iu, -1                   ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i123

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i123: ; preds = %.noexc130
  %i.ji = getelementptr i8, ptr %i.jf, i64 8
  %.idx.i.i.i.i.i31.i124 = shl nuw nsw i64 %i.jg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ji, i8 0, i64 %.idx.i.i.i.i.i31.i124, i1 false), !tbaa !84
  br label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i:  ; preds = %.noexc130, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i123
  store ptr %i.jf, ptr %i.ja, align 8, !tbaa !1818
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.iu ; 3 uses
  store ptr %i.jj, ptr %i.jb, align 8, !tbaa !1821
  store ptr %i.jj, ptr %i.jc, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.jk = phi ptr [ %i.jj, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ]
  %i.jl = phi ptr [ %i.jf, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 10 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.iz, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jo = icmp ugt i64 %i.iz, 1152921504606846975
  br i1 %i.jo, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ae
  %i.jp = shl nuw nsw i64 %i.iz, 3
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #26
          to label %.noexc114 unwind label %.body ; 5 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.jq, align 8, !tbaa !84
  %i.jr = add nsw i64 %i.iz, -1                   ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc114
  %i.jt = getelementptr i8, ptr %i.jq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.jr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !84
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc114
  store ptr %i.jq, ptr %8, align 8, !tbaa !1818
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.iz ; 3 uses
  store ptr %i.ju, ptr %i.jm, align 8, !tbaa !1821
  store ptr %i.ju, ptr %i.jn, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i

_ZNSt6vectorImSaImEE6resizeEm.exit34.i:           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.jv = phi ptr [ %i.ju, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ]
  %i.jw = phi ptr [ %i.jq, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 9 uses
  %i.jx = icmp sgt i64 %i.av, 0
  br i1 %i.jx, label %.lr.ph.i82, label %.loopexit

.lr.ph.i82:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.jy = add nsw i64 %.0.i53, 1
  %.sroa.speculated.i83 = call i64 @llvm.smin.i64(i64 %i.at, i64 %i.jy) ; 2 uses
  %i.jz = and i64 %.sroa.speculated.i83, 63
  %notmask.i = shl nsw i64 -1, %i.jz
  %i.ka = xor i64 %notmask.i, -1
  %i.kb = sdiv i64 %.sroa.speculated.i83, 64
  %i.kc = add nsw i64 %i.kb, 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.af

.body:                                            ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i121, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i82
  %.052.i = phi i64 [ 0, %.lr.ph.i82 ], [ %i.kt, %bb.ak ] ; 5 uses
  %.sroa.0.051.i = phi i64 [ %i.kc, %.lr.ph.i82 ], [ %.sroa.0.2.i, %bb.ak ] ; 3 uses
  %.sroa.17.050.i = phi i64 [ -1, %.lr.ph.i82 ], [ %.sroa.17.1.i, %bb.ak ] ; 3 uses
  %.sroa.13.049.i = phi i64 [ %i.ka, %.lr.ph.i82 ], [ %.sroa.13.1.i, %bb.ak ] ; 3 uses
  %.sroa.10.048.i = phi i64 [ 0, %.lr.ph.i82 ], [ %.sroa.10.1.i, %bb.ak ] ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.052.i
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !66, !noalias !2141
  store i64 %.sroa.0.051.i, ptr %5, align 8, !tbaa !84, !noalias !2141
  store i64 %.sroa.10.048.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2141
  store i64 %.sroa.13.049.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2141
  store i64 %.sroa.17.050.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2141
  call fastcc void @_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE(ptr noundef nonnull readonly align 8 dereferenceable(56) %7, i8 noundef signext %i.kf, ptr %i.jw, ptr %i.jl, i64 noundef %.052.i, ptr noundef nonnull byval(%"struct.duckdb_jaro_winkler::detail::SearchBoundMask") align 8 %5)
  %i.kg = add nsw i64 %.052.i, %.0.i53            ; 2 uses
  %i.kh = add nsw i64 %i.kg, 1
  %i.ki = icmp slt i64 %i.kh, %i.at
  br i1 %i.ki, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kj = shl i64 %.sroa.13.049.i, 1              ; 2 uses
  %i.kk = or disjoint i64 %i.kj, 1
  %i.kl = add nsw i64 %i.kg, 2
  %i.km = icmp slt i64 %i.kl, %i.at
  %i.kn = icmp eq i64 %i.kj, -2
  %or.cond.i86 = select i1 %i.km, i1 %i.kn, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i86, i64 0, i64 %i.kk
  %i.ko = zext i1 %or.cond.i86 to i64
  %spec.select46.i = add nsw i64 %.sroa.0.051.i, %i.ko
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.13.1.i = phi i64 [ %.sroa.13.049.i, %bb.af ], [ %spec.select.i, %bb.ag ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.051.i, %bb.af ], [ %spec.select46.i, %bb.ag ] ; 3 uses
  %.not.i84 = icmp slt i64 %.052.i, %.0.i53
  br i1 %.not.i84, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kp = shl i64 %.sroa.17.050.i, 1              ; 2 uses
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kr = add nsw i64 %.sroa.0.1.i, -1
  %i.ks = add nsw i64 %.sroa.10.048.i, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sroa.10.1.i = phi i64 [ %.sroa.10.048.i, %bb.ah ], [ %i.ks, %bb.aj ], [ %.sroa.10.048.i, %bb.ai ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.050.i, %bb.ah ], [ -1, %bb.aj ], [ %i.kp, %bb.ai ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ah ], [ %i.kr, %bb.aj ], [ %.sroa.0.1.i, %bb.ai ]
  %i.kt = add nuw nsw i64 %.052.i, 1              ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %i.kt, %i.av
  br i1 %exitcond.not.i85, label %.loopexit.loopexit, label %bb.af, !llvm.loop !2144

.loopexit.loopexit:                               ; preds = %bb.ak
  %.pre = load ptr, ptr %i.jm, align 8, !tbaa !1821
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre231 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1821
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.ku = phi ptr [ %.pre231, %.loopexit.loopexit ], [ %i.jk, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i ] ; 3 uses
  %i.kv = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.jv, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.kw = ptrtoint ptr %i.kv to i64               ; 2 uses
  %i.kx = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.la = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = icmp ult i64 %i.ky, %i.lb
  br i1 %i.lc, label %.preheader.i89, label %.preheader20.i

.preheader20.i:                                   ; preds = %.loopexit
  %.not22.i = icmp eq ptr %i.jl, %i.ku
  br i1 %.not22.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %.preheader20.i
  %i.ld = add i64 %i.kz, -8
  %i.le = sub i64 %i.ld, %i.la                    ; 2 uses
  %i.lf = lshr i64 %i.le, 3
  %i.lg = add nuw nsw i64 %i.lf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.le, 24
  br i1 %min.iters.check, label %.lr.ph.i87.preheader416, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i87.preheader
  %n.vec = and i64 %i.lg, 4611686018427387900     ; 3 uses
  %i.lh = shl i64 %n.vec, 3
  %i.li = getelementptr i8, ptr %i.jl, i64 %i.lh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ln, %vector.body ]
  %vec.phi368 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lo, %vector.body ]
  %i.lj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jl, i64 %i.lj ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !84
  %wide.load369 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !84
  %i.ll = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.lm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load369)
  %i.ln = add <2 x i64> %i.ll, %vec.phi           ; 2 uses
  %i.lo = add <2 x i64> %i.lm, %vec.phi368        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lp = icmp eq i64 %index.next, %n.vec
  br i1 %i.lp, label %middle.block, label %vector.body, !llvm.loop !2145

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.lo, %i.ln
  %i.lq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.lg, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i87.preheader416

.lr.ph.i87.preheader416:                          ; preds = %.lr.ph.i87.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i87.preheader ], [ %i.lq, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.jl, %.lr.ph.i87.preheader ], [ %i.li, %middle.block ]
  br label %.lr.ph.i87

.preheader.i89:                                   ; preds = %.loopexit
  %.not1925.i = icmp eq ptr %i.jw, %i.kv
  br i1 %.not1925.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i89
  %i.lr = add i64 %i.kw, -8
  %i.ls = sub i64 %i.lr, %i.kx                    ; 2 uses
  %i.lt = lshr i64 %i.ls, 3
  %i.lu = add nuw nsw i64 %i.lt, 1                ; 2 uses
  %min.iters.check371 = icmp ult i64 %i.ls, 24
  br i1 %min.iters.check371, label %.lr.ph28.i.preheader412, label %vector.ph372

vector.ph372:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec374 = and i64 %i.lu, 4611686018427387900  ; 3 uses
  %i.lv = shl i64 %n.vec374, 3
  %i.lw = getelementptr i8, ptr %i.jw, i64 %i.lv
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph372
  %index376 = phi i64 [ 0, %vector.ph372 ], [ %index.next382, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <2 x i64> [ zeroinitializer, %vector.ph372 ], [ %i.mb, %vector.body375 ]
  %vec.phi378 = phi <2 x i64> [ zeroinitializer, %vector.ph372 ], [ %i.mc, %vector.body375 ]
  %i.lx = shl i64 %index376, 3
  %next.gep379 = getelementptr i8, ptr %i.jw, i64 %i.lx ; 2 uses
  %i.ly = getelementptr i8, ptr %next.gep379, i64 16
  %wide.load380 = load <2 x i64>, ptr %next.gep379, align 8, !tbaa !84
  %wide.load381 = load <2 x i64>, ptr %i.ly, align 8, !tbaa !84
  %i.lz = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load380)
  %i.ma = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load381)
  %i.mb = add <2 x i64> %i.lz, %vec.phi377        ; 2 uses
  %i.mc = add <2 x i64> %i.ma, %vec.phi378        ; 2 uses
  %index.next382 = add nuw i64 %index376, 4       ; 2 uses
  %i.md = icmp eq i64 %index.next382, %n.vec374
  br i1 %i.md, label %middle.block383, label %vector.body375, !llvm.loop !2146

middle.block383:                                  ; preds = %vector.body375
  %bin.rdx384 = add <2 x i64> %i.mc, %i.mb
  %i.me = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx384) ; 2 uses
  %cmp.n385 = icmp eq i64 %i.lu, %n.vec374
  br i1 %cmp.n385, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader412

.lr.ph28.i.preheader412:                          ; preds = %.lr.ph28.i.preheader, %middle.block383
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.me, %middle.block383 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.jw, %.lr.ph28.i.preheader ], [ %i.lw, %middle.block383 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader412, %.lr.ph28.i
  %.027.i = phi i64 [ %i.mh, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader412 ]
  %.sroa.016.026.i = phi ptr [ %i.mi, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader412 ] ; 2 uses
  %i.mf = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !84
  %i.mg = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.mf)
  %i.mh = add nuw nsw i64 %i.mg, %.027.i          ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.mi, %i.kv
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !2147

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader416, %.lr.ph.i87
  %.124.i = phi i64 [ %i.ml, %.lr.ph.i87 ], [ %.124.i.ph, %.lr.ph.i87.preheader416 ]
  %.sroa.012.023.i = phi ptr [ %i.mm, %.lr.ph.i87 ], [ %.sroa.012.023.i.ph, %.lr.ph.i87.preheader416 ] ; 2 uses
  %i.mj = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !84
  %i.mk = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.mj)
  %i.ml = add nuw nsw i64 %i.mk, %.124.i          ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i88 = icmp eq ptr %i.mm, %i.ku
  br i1 %.not.i88, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i87, !llvm.loop !2148

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i87, %.lr.ph28.i, %middle.block, %middle.block383, %.preheader20.i, %.preheader.i89
  %.2.i = phi i64 [ %i.mh, %.lr.ph28.i ], [ 0, %.preheader.i89 ], [ 0, %.preheader20.i ], [ %i.me, %middle.block383 ], [ %i.lq, %middle.block ], [ %i.ml, %.lr.ph.i87 ] ; 3 uses
  %i.mn = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i90 = icmp eq i64 %i.mn, 0
  br i1 %.not.i90, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.mo = sitofp i64 %i.mn to double              ; 2 uses
  %i.mp = fdiv double %i.mo, %i.j
  %i.mq = fadd double %i.mp, 0.000000e+00
  %i.mr = fdiv double %i.mo, %i.l
  %i.ms = fadd double %i.mr, %i.mq
  %i.mt = fadd double %i.ms, 1.000000e+00
  %i.mu = fdiv double %i.mt, 3.000000e+00
  %i.mv = fcmp ult double %i.mu, %4
  br i1 %i.mv, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %bb.al

bb.al:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92
  %.not19.i93 = icmp eq i64 %.2.i, 0
  br i1 %.not19.i93, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %bb.al
  %i.mw = load i64, ptr %i.jw, align 8, !tbaa !84
  %i.mx = load i64, ptr %i.jl, align 8, !tbaa !84
  %i.my = load ptr, ptr %7, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.na = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = load ptr, ptr %i.mz, align 8
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i104 = icmp eq i64 %i.pd, 0
  br i1 %.not.i104, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.i, !llvm.loop !2126

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i94 = phi ptr [ %i.ar, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.oz, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.mw, %.preheader2.lr.ph.i ], [ %i.pc, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.mx, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.pd, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i106, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i106, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.nd, %.lr.ph.i106 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.ng, %.lr.ph.i106 ]
  %.1.lcssa.i = phi ptr [ %.027.i94, %.preheader2.i ], [ %i.ne, %.lr.ph.i106 ] ; 2 uses
  br label %.preheader.i95

.lr.ph.i106:                                      ; preds = %.preheader2.i, %.lr.ph.i106
  %.16.i = phi ptr [ %i.ne, %.lr.ph.i106 ], [ %.027.i94, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.nd, %.lr.ph.i106 ], [ %.03621.i, %.preheader2.i ]
  %i.nd = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.nd
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !84 ; 2 uses
  %.not40.i = icmp eq i64 %i.ng, 0
  br i1 %.not40.i, label %.lr.ph.i106, label %.preheader1.i, !llvm.loop !2127

.preheader.i95:                                   ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.oz, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.pc, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.pb, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.pd, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i95, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.nh, %.lr.ph11.i ], [ %.13415.i, %.preheader.i95 ]
  %i.nh = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !84 ; 2 uses
  %.not42.i = icmp eq i64 %i.nj, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !2128

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i95
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i95 ], [ %i.nh, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i95 ], [ %i.nj, %.lr.ph11.i ] ; 3 uses
  %i.nk = sub i64 0, %.2.lcssa.i
  %i.nl = and i64 %.2.lcssa.i, %i.nk              ; 2 uses
  %i.nm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.nn = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !66  ; 3 uses
  %i.np = icmp sgt i8 %i.no, -1
  br i1 %i.np, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i
  %i.nq = zext nneg i8 %i.no to i64
  %i.nr = mul nsw i64 %i.nb, %i.nq
  %i.ns = getelementptr [8 x i8], ptr %i.nc, i64 %i.nr
  %i.nt = getelementptr [8 x i8], ptr %i.ns, i64 %.235.lcssa.i
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.an:                                            ; preds = %._crit_edge.i
  %i.nv = getelementptr inbounds nuw [2048 x i8], ptr %i.my, i64 %.235.lcssa.i ; 3 uses
  %i.nw = sext i8 %i.no to i64                    ; 7 uses
  %i.nx = and i64 %i.nw, 127
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.nx ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i96 = icmp eq i64 %i.oa, 0
  br i1 %.not.i.i.i.i96, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ob = load i64, ptr %i.ny, align 8, !tbaa !2104
  %i.oc = icmp eq i64 %i.ob, %i.nw
  br i1 %i.oc, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i97

.preheader.i.i.i.i97:                             ; preds = %bb.ao
  %i.od = mul nsw i64 %i.nw, 5
  %i.oe = add nsw i64 %i.nw, 1
  %i.of = add nsw i64 %i.oe, %i.od
  %i.og = and i64 %i.of, 127                      ; 2 uses
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i98 = icmp eq i64 %i.oj, 0
  br i1 %.not1718.i.i.i.i98, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i99

.lr.ph.i.i.preheader.i.i99:                       ; preds = %.preheader.i.i.i.i97
  %i.ok = load i64, ptr %i.oh, align 8, !tbaa !2104
  %i.ol = icmp eq i64 %i.ok, %i.nw
  br i1 %i.ol, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i.preheader.i.i99, %.lr.ph.i.i.i.i102
  %.019.i.i9.i.i = phi i64 [ %i.on, %.lr.ph.i.i.i.i102 ], [ %i.nw, %.lr.ph.i.i.preheader.i.i99 ]
  %i.om = phi i64 [ %i.or, %.lr.ph.i.i.i.i102 ], [ %i.og, %.lr.ph.i.i.preheader.i.i99 ]
  %i.on = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.oo = mul nuw nsw i64 %i.om, 5
  %i.op = add nuw nsw i64 %i.on, 1
  %i.oq = add nuw nsw i64 %i.op, %i.oo
  %i.or = and i64 %i.oq, 127                      ; 2 uses
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.or ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i101 = icmp eq i64 %i.ou, 0
  br i1 %.not17.i.i.i.i101, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i105, label %.lr.ph.i.i.i.i102, !llvm.loop !2105

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i100
  %i.ov = load i64, ptr %i.os, align 8, !tbaa !2104
  %i.ow = icmp eq i64 %i.ov, %i.nw
  br i1 %i.ow, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i100, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i105: ; preds = %.lr.ph.i.i100
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i: ; preds = %.lr.ph.i.i.i.i102, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i105, %.lr.ph.i.i.preheader.i.i99, %.preheader.i.i.i.i97, %bb.ao, %bb.an, %bb.am
  %.0.i.i103 = phi i64 [ %i.nu, %bb.am ], [ 0, %bb.an ], [ %i.oa, %bb.ao ], [ 0, %.preheader.i.i.i.i97 ], [ %i.oj, %.lr.ph.i.i.preheader.i.i99 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i105 ], [ %i.ou, %.lr.ph.i.i.i.i102 ]
  %i.ox = and i64 %.0.i.i103, %i.nl
  %.not43.i = icmp eq i64 %i.ox, 0
  %i.oy = zext i1 %.not43.i to i64
  %i.oz = add nsw i64 %.12718.i, %i.oy            ; 3 uses
  %i.pa = add i64 %.23216.i, -1
  %i.pb = and i64 %i.pa, %.23216.i                ; 2 uses
  %i.pc = xor i64 %i.nl, %.2.lcssa.i              ; 2 uses
  %i.pd = add nsw i64 %.13914.i, -1               ; 3 uses
  %.not41.i = icmp eq i64 %i.pb, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i95, !llvm.loop !2129

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %bb.al, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92
  %.0.i91173 = phi i1 [ false, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92 ], [ false, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ true, %bb.al ], [ true, %.loopexit.i ]
  %.145 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92 ], [ 0, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit ], [ 0, %bb.al ], [ %i.oz, %.loopexit.i ]
  %.not.i.i.i.i107 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorImSaImEED2Ev.exit.i108, label %bb.ap

bb.ap:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  call void @_ZdlPv(ptr noundef nonnull %i.jl) #29
  %.pre232 = load ptr, ptr %8, align 8, !tbaa !1818
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i108

_ZNSt6vectorImSaImEED2Ev.exit.i108:               ; preds = %bb.ap, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  %i.pe = phi ptr [ %.pre232, %bb.ap ], [ %i.jw, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit ] ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i1.i, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i108
  call void @_ZdlPv(ptr noundef nonnull %i.pe) #29
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i108, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.pf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i.i109 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i.i109, label %_ZNSt6vectorImSaImEED2Ev.exit.i110, label %bb.ar

bb.ar:                                            ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.pg) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i110

_ZNSt6vectorImSaImEED2Ev.exit.i110:               ; preds = %bb.ar, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  %i.ph = load ptr, ptr %7, align 8, !tbaa !2088  ; 2 uses
  %.not.i.i.i1.i111 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i1.i111, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i110
  call void @_ZdlPv(ptr noundef nonnull %i.ph) #29
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i110, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i91173, label %bb.at, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.sink.split:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77, %bb.v
  %.246.ph = phi i64 [ 0, %bb.v ], [ %i.ii, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %.246 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %.145, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.246.ph, %.sink.split ]
  %.043 = phi i64 [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %i.mn, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %i.gn, %.sink.split ]
  %i.pi = sdiv i64 %.246, 2
  %i.pj = sitofp i64 %.043 to double              ; 4 uses
  %i.pk = fdiv double %i.pj, %i.j
  %i.pl = fadd double %i.pk, 0.000000e+00
  %i.pm = fdiv double %i.pj, %i.l
  %i.pn = fadd double %i.pm, %i.pl
  %i.po = sitofp i64 %i.pi to double
  %i.pp = fsub double %i.pj, %i.po
  %i.pq = fdiv double %i.pp, %i.pj
  %i.pr = fadd double %i.pq, %i.pn
  %i.ps = fdiv double %i.pr, 3.000000e+00         ; 2 uses
  %i.pt = fcmp oge double %i.ps, %4
  %i.pu = select i1 %i.pt, double %i.ps, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %bb.a, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, %bb.at, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.w, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.pu, %bb.at ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread ]
  ret double %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv i64 %i.c, 64
  %i.e = and i64 %i.c, 63
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !2094
  tail call void @_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !2094
  %i.l = shl nsw i64 %i.k, 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1821 ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1818 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.u)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ult i64 %i.l, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.w, ptr %i.m, align 8, !tbaa !1821
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.x = icmp sgt i64 %i.c, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.y = load ptr, ptr %0, align 8
  %i.z = load ptr, ptr %i.j, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit, %_ZNSt6vectorImSaImEE6resizeEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit ] ; 4 uses
  %i.aa = lshr i64 %.015, 6                       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !66  ; 3 uses
  %i.ad = and i64 %.015, 63
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %i.af = icmp sgt i8 %i.ac, -1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i8 %i.ac to i64
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !2094
  %i.ai = mul nsw i64 %i.ah, %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.z, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.aa ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !84
  %i.am = or i64 %i.al, %i.ae
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !84
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [2048 x i8], ptr %i.y, i64 %i.aa ; 4 uses
  %i.ao = sext i8 %i.ac to i64                    ; 8 uses
  %i.ap = and i64 %i.ao, 127                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !2104
  %i.au = icmp eq i64 %i.at, %i.ao
  br i1 %i.au, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h
  %i.av = mul nsw i64 %i.ao, 5
  %i.aw = add nsw i64 %i.ao, 1
  %i.ax = add nsw i64 %i.aw, %i.av
  %i.ay = and i64 %i.ax, 127                      ; 4 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not1718.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.preheader.i.i.i
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !2104
  %i.bd = icmp eq i64 %i.bc, %i.ao
  br i1 %i.bd, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %.019.i.i11.i = phi i64 [ %i.bf, %.lr.ph.i.i.i ], [ %i.ao, %.lr.ph.i.i.preheader.i ]
  %i.be = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %i.ay, %.lr.ph.i.i.preheader.i ]
  %i.bf = lshr i64 %.019.i.i11.i, 5               ; 2 uses
  %i.bg = mul nuw nsw i64 %i.be, 5
  %i.bh = add nuw nsw i64 %i.bf, 1
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  %i.bj = and i64 %i.bi, 127                      ; 4 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not17.i.i.i, label %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i, label %.lr.ph.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !2104
  %i.bo = icmp eq i64 %i.bn, %i.ao
  br i1 %i.bo, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.lr.ph.i, !llvm.loop !2105

._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, !llvm.loop !2105

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i: ; preds = %.lr.ph.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i, %.lr.ph.i.i.preheader.i, %.preheader.i.i.i, %bb.h, %bb.g
  %i.bp = phi i64 [ 0, %bb.g ], [ %i.as, %bb.h ], [ 0, %.preheader.i.i.i ], [ %i.bb, %.lr.ph.i.i.preheader.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i ], [ %i.bm, %.lr.ph.i.i.i ]
  %.015.i.i.i = phi i64 [ %i.ap, %bb.g ], [ %i.ap, %bb.h ], [ %i.ay, %.preheader.i.i.i ], [ %i.ay, %.lr.ph.i.i.preheader.i ], [ %i.bj, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i ], [ %i.bj, %.lr.ph.i.i.i ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.015.i.i.i ; 2 uses
  store i64 %i.ao, ptr %i.bq, align 8, !tbaa !2104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = or i64 %i.bp, %i.ae
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !2102
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit: ; preds = %bb.f, %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i
  %i.bt = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !2149
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m) ; 0 uses
  %i.o = icmp eq ptr %0, %1
  br i1 %i.o, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.r = load i8, ptr %i.q, align 8, !tbaa !339
  store i8 %i.r, ptr %i.p, align 8, !tbaa !339
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.t = load i8, ptr %i.s, align 1, !tbaa !344
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.t, ptr %i.u, align 1, !tbaa !344
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE6formatINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEEEES6_v:bb.a
  %.sroa.0.sroa.0.0.insert.ext.i47.i = zext nneg i8 %i.gf to i32
  store i32 %.sroa.0.sroa.0.0.insert.ext.i47.i, ptr %22, align 16
  store i32 9, ptr %i.r, align 16, !tbaa !361
  br label %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.ci:                                            ; preds = %bb.ca
  %i.gg = load i8, ptr %22, align 16, !tbaa !66
  %.sroa.0.sroa.0.0.insert.ext.i49.i = zext i8 %i.gg to i32
  store i32 %.sroa.0.sroa.0.0.insert.ext.i49.i, ptr %22, align 16
  store i32 9, ptr %i.r, align 16, !tbaa !361
  br label %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bz, %bb.bx
  %i.gh = load i8, ptr %i.l, align 4, !tbaa !2297
  %i.gi = icmp eq i8 %i.gh, 100
  %or.cond4 = and i1 %.051, %i.gi
  br i1 %or.cond4, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  store i8 46, ptr %i.o, align 4, !tbaa !2298
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal14char_converterINS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEES9_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.gj = load ptr, ptr %i.b, align 8, !tbaa !350
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  store ptr %.sroa.0.0.copyload.i, ptr %25, align 8
  store ptr null, ptr %i.aa, align 8, !tbaa !13
  store ptr %17, ptr %i.ab, align 8, !tbaa !2323
  store ptr %0, ptr %i.ac, align 8, !tbaa !2330
  %i.gk = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 16 dereferenceable(20) %22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %.pre150 = load ptr, ptr %i.b, align 8, !tbaa !350
  br label %bb.cl

bb.cl:                                            ; preds = %bb.b, %bb.ck, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit
  %i.gl = phi ptr [ %.pre150, %bb.ck ], [ %i.ba, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit ], [ %i.ae, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.gj, %bb.ck ], [ %i.ba, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit ], [ %.0146, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %i.gl, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.k, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bw
  %.pn78.pn = phi { ptr, i32 } [ %.pn78128, %bb.bw ], [ %i.ca, %bb.j ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.cb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %common.resume

._crit_edge:                                      ; preds = %bb.cl, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.1, %bb.cl ] ; 2 uses
  %.lcssa134 = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.cl ]
  %i.gm = ptrtoint ptr %.lcssa134 to i64
  %i.gn = ptrtoint ptr %.0.lcssa to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = icmp sgt i64 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i104, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit111

.lr.ph.i.i.i.i.i104:                              ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107, %.lr.ph.i.i.i.i.i104
  %.07.i.i.i.i.i105 = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i104 ], [ %i.he, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107 ] ; 2 uses
  %.056.i.i.i.i.i106 = phi ptr [ %.0.lcssa, %.lr.ph.i.i.i.i.i104 ], [ %i.hd, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107 ] ; 2 uses
  %i.gt = load i64, ptr %i.gq, align 8, !tbaa !2284 ; 2 uses
  %i.gu = add i64 %i.gt, 1                        ; 3 uses
  %i.gv = load i64, ptr %i.gr, align 8, !tbaa !2275
  %i.gw = icmp ugt i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.cn, label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107

bb.cn:                                            ; preds = %bb.cm
  %i.gx = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !59
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.gu), !inline_history !2289
  %.pre.i.i.i.i.i.i.i109 = load i64, ptr %i.gq, align 8, !tbaa !2284 ; 2 uses
  %.pre2.i.i.i.i.i.i.i110 = add i64 %.pre.i.i.i.i.i.i.i109, 1
  br label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107

_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107: ; preds = %bb.cn, %bb.cm
  %.pre-phi.i.i.i.i.i.i.i108 = phi i64 [ %i.gu, %bb.cm ], [ %.pre2.i.i.i.i.i.i.i110, %bb.cn ]
  %i.gz = phi i64 [ %i.gt, %bb.cm ], [ %.pre.i.i.i.i.i.i.i109, %bb.cn ]
  %i.ha = load i8, ptr %.056.i.i.i.i.i106, align 1, !tbaa !66
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !2273
  store i64 %.pre-phi.i.i.i.i.i.i.i108, ptr %i.gq, align 8, !tbaa !2284
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 %i.ha, ptr %i.hc, align 1, !tbaa !66
  %i.hd = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i106, i64 1
  %i.he = add nsw i64 %.07.i.i.i.i.i105, -1
  %i.hf = icmp sgt i64 %.07.i.i.i.i.i105, 1
  br i1 %i.hf, label %bb.cm, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit111, !llvm.loop !2290

_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit111: ; preds = %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i107, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret ptr %.sroa.0.0.copyload.i

bb.co:                                            ; preds = %bb.bt
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE12parse_headerERPKcS9_RNS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(17) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %9 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %10 = alloca %"class.duckdb_fmt::v6::internal::printf_width_handler", align 8 ; 4 uses
  %11 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66    ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = icmp eq i8 %i.b, 48                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !350
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit

.preheader.i:                                     ; preds = %bb.b, %bb.e
  %i.f = phi i8 [ %i.n, %bb.e ], [ %i.b, %bb.b ]
  %i.g = phi ptr [ %i.m, %bb.e ], [ %i.a, %bb.b ]
  %.018.i = phi i32 [ %i.l, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.h = icmp ugt i32 %.018.i, 214748364
  br i1 %i.h, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.i = mul nuw nsw i32 %.018.i, 10
  %i.j = zext nneg i8 %i.f to i32
  %i.k = add nsw i32 %i.j, -48
  %i.l = add nuw i32 %i.k, %i.i                   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 5 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !350
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 1, !tbaa !66    ; 2 uses
  %i.o = add i8 %i.n, -48
  %or.cond.i = icmp ult i8 %i.o, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !2299

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull %6) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i
  unreachable

bb.g:                                             ; preds = %.critedge.thread.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !328    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit: ; preds = %bb.c, %.critedge.i
  %i.u = phi ptr [ %i.e, %bb.c ], [ %i.m, %.critedge.i ] ; 3 uses
  %.017.i = phi i32 [ 0, %bb.c ], [ %i.l, %.critedge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not = icmp eq ptr %i.u, %2
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit
  %i.v = load i8, ptr %i.u, align 1, !tbaa !66
  %i.w = icmp eq i8 %i.v, 36
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %1, align 8, !tbaa !350
  br label %.thread

bb.j:                                             ; preds = %bb.h, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit
  br i1 %i.d, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 48, ptr %i.y, align 2, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not44 = icmp eq i32 %.017.i, 0
  br i1 %.not44, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l, %bb.i
  %.137.ph = phi i32 [ -1, %bb.l ], [ %.017.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.017.i, ptr %3, align 4, !tbaa !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.x

bb.n:                                             ; preds = %.thread, %bb.a
  %.2 = phi i32 [ %.137.ph, %.thread ], [ -1, %bb.a ] ; 4 uses
  tail call void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  %i.z = load ptr, ptr %1, align 8, !tbaa !350    ; 5 uses
  %.not45 = icmp eq ptr %i.z, %2
  br i1 %.not45, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66   ; 4 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond46 = icmp ult i8 %i.ab, 10
  br i1 %or.cond46, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ac = icmp eq i8 %i.aa, 48
  br i1 %i.ac, label %bb.q, label %.preheader.i47

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ad, ptr %1, align 8, !tbaa !350
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57

.preheader.i47:                                   ; preds = %bb.p, %bb.s
  %i.ae = phi i8 [ %i.am, %bb.s ], [ %i.aa, %bb.p ]
  %i.af = phi ptr [ %i.al, %bb.s ], [ %i.z, %bb.p ]
  %.018.i48 = phi i32 [ %i.ak, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.ag = icmp ugt i32 %.018.i48, 214748364
  br i1 %i.ag, label %.critedge.thread.i53, label %bb.r

bb.r:                                             ; preds = %.preheader.i47
  %i.ah = mul nuw nsw i32 %.018.i48, 10
  %i.ai = zext nneg i8 %i.ae to i32
  %i.aj = add nsw i32 %i.ai, -48
  %i.ak = add nuw i32 %i.aj, %i.ah                ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 4 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !350
  %.not.i49 = icmp eq ptr %i.al, %2
  br i1 %.not.i49, label %.critedge.i51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load i8, ptr %i.al, align 1, !tbaa !66  ; 2 uses
  %i.an = add i8 %i.am, -48
  %or.cond.i50 = icmp ult i8 %i.an, 10
  br i1 %or.cond.i50, label %.preheader.i47, label %.critedge.i51, !llvm.loop !2299

.critedge.i51:                                    ; preds = %bb.s, %bb.r
  %i.ao = icmp slt i32 %i.ak, 0
  br i1 %i.ao, label %.critedge.thread.i53, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57

.critedge.thread.i53:                             ; preds = %.preheader.i47, %.critedge.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %4) #27
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.critedge.thread.i53
  unreachable

bb.u:                                             ; preds = %.critedge.thread.i53
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8, !tbaa !328   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57: ; preds = %bb.q, %.critedge.i51
  %.017.i52 = phi i32 [ 0, %bb.q ], [ %i.ak, %.critedge.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 %.017.i52, ptr %3, align 4, !tbaa !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.x

bb.v:                                             ; preds = %bb.o
  %i.at = icmp eq i8 %i.aa, 42
  br i1 %i.at, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.au, ptr %1, align 8, !tbaa !350
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %3, ptr %10, align 8, !tbaa !2332
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.av), !noalias !2333
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_printf_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %11, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.aw)
  %i.ax = call noundef i32 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal20printf_width_handlerIcEENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 16 dereferenceable(20) %11)
  store i32 %i.ax, ptr %3, align 4, !tbaa !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.n, %bb.v, %bb.w, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57
  %.1 = phi i32 [ -1, %bb.m ], [ %.2, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit57 ], [ %.2, %bb.w ], [ %.2, %bb.v ], [ %.2, %bb.n ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !316
  %i.e = load ptr, ptr %1, align 8, !tbaa !328    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !317  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.g, ptr %i.b, align 8, !tbaa !84
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !328
  %i.j = load i64, ptr %i.b, align 8, !tbaa !84
  store i64 %i.j, ptr %i.d, align 8, !tbaa !66
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !66
  store i8 %i.l, ptr %i.k, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !317
  %i.o = load ptr, ptr %3, align 8, !tbaa !328
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !316
  %i.r = load ptr, ptr %3, align 8, !tbaa !328    ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !317  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.s, ptr %i.a, align 8, !tbaa !84
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.u, ptr %2, align 8, !tbaa !328
  %i.v = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.v, ptr %i.q, align 8, !tbaa !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !66
  store i8 %i.x, ptr %i.w, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !317
  %i.aa = load ptr, ptr %2, align 8, !tbaa !328
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull %2) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !328   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ad) #29
  br label %.body

bb.h:                                             ; preds = %.noexc.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ac, %bb.g ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal24printf_precision_handlerENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(20) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !2306
  switch i32 %i.b, label %bb.q [
    i32 16, label %bb.p
    i32 15, label %bb.o
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16, !tbaa !66
  %.sroa.speculated.i = tail call noundef i32 @llvm.smax.i32(i32 %i.c, i32 0)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 16, !tbaa !66
  %i.e = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.d)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 16, !tbaa !66
  %i.g = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %i.f)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 16, !tbaa !66
  %i.i = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %i.h)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !84
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !84
  %i.j = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !84
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !84
  %i.k = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 16, !tbaa !66, !range !356, !noundef !360
  %i.m = zext nneg i8 %i.l to i32
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !66
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 0)
  %.sroa.speculated.i37 = zext nneg i8 %i.o to i32
  br label %bb.r

end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a
bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !328    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn52 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ac

bb.j:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !66
  switch i8 %i.aa, label %bb.n [
    i8 125, label %bb.k
    i8 123, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !2286 ; 2 uses
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !2286
  %i.ah = load i64, ptr %i.f, align 16, !tbaa !2287
  %i.ai = sub i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.f, align 16, !tbaa !2287
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i = load ptr, ptr %i.g, align 8, !tbaa !13
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i, ptr %i.h, align 8, !tbaa !13
  store ptr null, ptr %i.i, align 8, !tbaa !2323
  store ptr %i.c, ptr %i.j, align 8, !tbaa !3417
  store ptr %i.d, ptr %i.k, align 8, !tbaa !3419
  %i.aj = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.aj, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2284 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2275
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.m, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.am), !inline_history !3422
  br label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit: ; preds = %bb.l, %bb.m
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !2284
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2273
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  %i.av = load i8, ptr %i.t, align 1, !tbaa !66
  store i8 %i.av, ptr %i.au, align 1, !tbaa !66
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  br label %bb.ab

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %2, ptr %9, align 8, !tbaa !3415
  %i.aw = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.not46 = icmp eq ptr %i.aw, %i.a
  br i1 %.not46, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !66
  switch i8 %i.ax, label %.thread [
    i8 125, label %bb.p
    i8 58, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !2286 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !2286
  %i.bd = load i64, ptr %i.f, align 16, !tbaa !2287
  %i.be = sub i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.f, align 16, !tbaa !2287
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i56 = load ptr, ptr %i.g, align 8, !tbaa !13
  store ptr %.sroa.0.0.copyload.i.i.i55, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i56, ptr %i.l, align 8, !tbaa !13
  store ptr null, ptr %i.m, align 8, !tbaa !2323
  store ptr %i.c, ptr %i.n, align 8, !tbaa !3417
  store ptr %i.d, ptr %i.o, align 8, !tbaa !3419
  %i.bf = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.bf, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bh = call noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a) ; 3 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !66
  %.not48 = icmp eq i8 %i.bj, 125
  br i1 %.not48, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %10) #27
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.w:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %10, align 8, !tbaa !328  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.v
  %.pn49 = phi { ptr, i32 } [ %i.bk, %bb.v ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.bl, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ac

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.thread
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %12) #27
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %.thread
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.aa:                                            ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %12, align 8, !tbaa !328  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ac

bb.ab:                                            ; preds = %bb.k, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit, %bb.r, %bb.p
  %.169 = phi ptr [ %i.aw, %bb.p ], [ %i.bh, %bb.r ], [ %i.t, %bb.k ], [ %i.t, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.169, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.a
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3423

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn52.pn

.loopexit:                                        ; preds = %bb.ab, %bb.a, %.thread70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 125, i64 noundef %i.d) #30 ; 2 uses
  %.not2326 = icmp eq ptr %i.e, null
  br i1 %.not2326, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.013.lcssa = phi ptr [ %1, %.preheader ], [ %i.az, %bb.q ] ; 3 uses
  %.lcssa = phi i64 [ %i.d, %.preheader ], [ %i.bb, %bb.q ] ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3424, !nonnull !360, !align !2376
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2284 ; 2 uses
  %i.j = add i64 %i.i, %.lcssa                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2275
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.j), !inline_history !3422
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i: ; preds = %bb.b, %._crit_edge
  store i64 %i.j, ptr %i.h, align 8, !tbaa !2284
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2273
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i ; 2 uses
  %i.s = icmp eq ptr %2, %.013.lcssa
  br i1 %i.s, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i
  %i.t = icmp sgt i64 %.lcssa, 1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !341

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.013.lcssa, i64 %.lcssa, i1 false)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.lcssa, 1
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %.013.lcssa, align 1, !tbaa !66
  store i8 %i.v, ptr %i.r, align 1, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 16
  br label %bb.r

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %i.w = phi ptr [ %i.bc, %bb.q ], [ %i.e, %.preheader ] ; 2 uses
  %i.x = phi i64 [ %i.ba, %bb.q ], [ %i.c, %.preheader ]
  %.01327 = phi ptr [ %i.az, %bb.q ], [ %1, %.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 4 uses
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !66
  %.not = icmp eq i8 %i.aa, 125
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3424, !nonnull !360, !align !2376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull %3) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8, !tbaa !3424, !nonnull !360, !align !2376
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %i.x                     ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.aj, align 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2284 ; 2 uses
  %i.am = add i64 %i.al, %i.ai                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2275
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %.sroa.0.0.copyload.i.i17, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i17, i64 noundef %i.am), !inline_history !3422
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18: ; preds = %bb.l, %bb.k
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !2284
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2273
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = icmp eq ptr %i.y, %.01327
  br i1 %i.av, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18
  %i.aw = icmp sgt i64 %i.ai, 1
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !341

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.01327, i64 %i.ai, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ax = icmp eq i64 %i.ai, 1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = load i8, ptr %.01327, align 1, !tbaa !66
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18
  store ptr %.sroa.0.0.copyload.i.i17, ptr %i.aj, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = sub i64 %i.b, %i.ba                     ; 2 uses
  %i.bc = tail call noundef ptr @memchr(ptr noundef nonnull %i.az, i32 noundef 125, i64 noundef %i.bb) #30 ; 2 uses
  %.not23 = icmp eq ptr %i.bc, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.thread, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %3 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !350
  %i.h = load i8, ptr %0, align 1, !tbaa !66      ; 4 uses
  switch i8 %i.h, label %bb.c [
    i8 125, label %bb.b
    i8 58, label %bb.b
  ]
end_hunk_5
