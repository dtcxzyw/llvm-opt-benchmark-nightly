inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm:bb.a
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
  %7 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 12 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = icmp ne ptr %4, %3
  %i.h = icmp ne ptr %2, %1
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, label %.critedge

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %8 = sitofp i64 %i.f to double                  ; 4 uses
  %9 = insertelement <2 x double> poison, double %i.i, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x double> poison, double %i.j, i64 0
  %12 = insertelement <2 x double> %11, double %8, i64 1
  %13 = fdiv <2 x double> %10, %12                ; 2 uses
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %13, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.k = fadd double %14, 1.000000e+00
  %i.l = fdiv double %i.k, 3.000000e+00
  %i.m = fcmp ult double %i.l, %5
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit
  %i.n = icmp eq i64 %i.c, 1
  %i.o = icmp eq i64 %i.f, 1
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %1, align 1, !tbaa !66
  %i.q = load i8, ptr %3, align 1, !tbaa !66
  %i.r = icmp eq i8 %i.p, %i.q
  %i.s = uitofp i1 %i.r to double
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.t = icmp sgt i64 %i.f, %i.c
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 %i.f, 2                         ; 2 uses
  %i.v = add nsw i64 %i.u, -1                     ; 4 uses
  %i.w = add nsw i64 %i.v, %i.c
  %i.x = icmp sgt i64 %i.f, %i.w
  br i1 %i.x, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.y = sdiv i64 %i.c, 2                         ; 2 uses
  %i.z = add nsw i64 %i.y, -1                     ; 4 uses
  %i.aa = add nsw i64 %i.z, %i.f
  %i.ab = icmp sgt i64 %i.c, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

bb.g:                                             ; preds = %bb.f
  %.pre202 = add nsw i64 %i.f, %i.z
  %i.ac = sub nsw i64 1, %i.y
  %.not292 = icmp eq i64 %i.f, %i.ac
  br i1 %.not292, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit: ; preds = %bb.e
  %.pre206 = add nsw i64 %i.c, %i.v
  %i.ad = sub nsw i64 1, %i.u
  %.not293 = icmp eq i64 %i.c, %i.ad
  br i1 %.not293, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread: ; preds = %bb.f, %bb.e, %bb.g, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit
  %.0.i72268 = phi i64 [ %i.z, %bb.g ], [ %i.v, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.z, %bb.f ], [ %i.v, %bb.e ] ; 6 uses
  %.pre-phi203267 = phi i64 [ %.pre202, %bb.g ], [ %i.c, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.c, %bb.f ], [ %i.c, %bb.e ] ; 6 uses
  %.pre-phi207266 = phi i64 [ %i.f, %bb.g ], [ %.pre206, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.f, %bb.f ], [ %i.f, %bb.e ] ; 8 uses
  %i.ae = icmp slt i64 %.pre-phi203267, 65
  %i.af = icmp slt i64 %.pre-phi207266, 65
  %or.cond6 = and i1 %i.af, %i.ae
  br i1 %or.cond6, label %bb.h, label %bb.v

bb.h:                                             ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread
  %i.ag = trunc i64 %.0.i72268 to i32
  %i.ah = add nsw i64 %.0.i72268, 1
  %i.ai = icmp slt i32 %i.ag, 63
  %i.aj = and i64 %i.ah, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i, -1
  %.0.i.i = select i1 %i.ai, i64 %i.ak, i64 -1    ; 2 uses
  %sext = shl i64 %.0.i72268, 32
  %i.al = ashr exact i64 %sext, 32
  %.sroa.speculated.i73 = tail call i64 @llvm.smin.i64(i64 %.pre-phi207266, i64 %i.al) ; 3 uses
  %i.am = icmp sgt i64 %.sroa.speculated.i73, 0
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.an = load ptr, ptr %0, align 8               ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.ao, align 8
  br label %bb.i

.preheader.i:                                     ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, %bb.h
  %.036.lcssa.i = phi i64 [ %.0.i.i, %bb.h ], [ %i.co, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %.sroa.speculated.i73, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.cm, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.026.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.ci, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.as = icmp slt i64 %.0.lcssa.i, %.pre-phi207266
  br i1 %i.as, label %.lr.ph68.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit

.lr.ph68.i:                                       ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.m

bb.i:                                             ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, %.lr.ph.i
  %.sroa.026.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ci, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.059.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cm, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ]
  %.058.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cp, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 3 uses
  %.03657.i = phi i64 [ %.0.i.i, %.lr.ph.i ], [ %i.co, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %.058.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !66  ; 3 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i8 %i.aw to i64
  %i.az = mul nsw i64 %i.aq, %i.ay
  %i.ba = getelementptr [8 x i8], ptr %i.ar, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bc = sext i8 %i.aw to i64                    ; 7 uses
  %i.bd = and i64 %i.bc, 127
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !2104
  %i.bi = icmp eq i64 %i.bh, %i.bc
  br i1 %i.bi, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.l
  %i.bj = mul nsw i64 %i.bc, 5
  %i.bk = add nsw i64 %i.bc, 1
  %i.bl = add nsw i64 %i.bk, %i.bj
  %i.bm = and i64 %i.bl, 127                      ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not1718.i.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !2104
  %i.br = icmp eq i64 %i.bq, %i.bc
  br i1 %i.br, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i
  %.019.i.i9.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.preheader.i.i.i ]
  %i.bs = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.i.i.preheader.i.i.i ]
  %i.bt = lshr i64 %.019.i.i9.i.i.i, 5            ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bs, 5
  %i.bv = add nuw nsw i64 %i.bt, 1
  %i.bw = add nuw nsw i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, 127                      ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not17.i.i.i.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !2104
  %i.cc = icmp eq i64 %i.cb, %i.bc
  br i1 %i.cc, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i.i.preheader.i.i.i, %.preheader.i.i.i.i.i, %bb.l, %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.bb, %bb.j ], [ 0, %bb.k ], [ %i.bg, %bb.l ], [ 0, %.preheader.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.preheader.i.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  %i.cd = xor i64 %.sroa.026.060.i, -1
  %i.ce = and i64 %.0.i.i.i, %i.cd
  %i.cf = and i64 %i.ce, %.03657.i                ; 3 uses
  %i.cg = sub i64 0, %i.cf
  %i.ch = and i64 %i.cf, %i.cg
  %i.ci = or i64 %i.ch, %.sroa.026.060.i          ; 2 uses
  %i.cj = icmp ne i64 %i.cf, 0
  %i.ck = zext i1 %i.cj to i64
  %i.cl = shl nuw i64 %i.ck, %.058.i
  %i.cm = or i64 %i.cl, %.sroa.8.059.i            ; 2 uses
  %i.cn = shl i64 %.03657.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = add nuw nsw i64 %.058.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %.sroa.speculated.i73
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.i, !llvm.loop !2115

bb.m:                                             ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, %.lr.ph68.i
  %.sroa.026.167.i = phi i64 [ %.sroa.026.0.lcssa.i, %.lr.ph68.i ], [ %i.eg, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 2 uses
  %.sroa.8.166.i = phi i64 [ %.sroa.8.0.lcssa.i, %.lr.ph68.i ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ]
  %.165.i = phi i64 [ %.0.lcssa.i, %.lr.ph68.i ], [ %i.em, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 3 uses
  %.13764.i = phi i64 [ %.036.lcssa.i, %.lr.ph68.i ], [ %i.el, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 %.165.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !66  ; 3 uses
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ct = zext nneg i8 %i.cr to i64
  %i.cu = load i64, ptr %i.au, align 8, !tbaa !2094
  %i.cv = mul nsw i64 %i.cu, %i.ct
  %i.cw = load ptr, ptr %i.at, align 8, !tbaa !1818
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i

bb.o:                                             ; preds = %bb.m
  %i.cz = load ptr, ptr %0, align 8, !tbaa !2088  ; 3 uses
  %i.da = sext i8 %i.cr to i64                    ; 7 uses
  %i.db = and i64 %i.da, 127
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i38.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i.i38.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !2104
  %i.dg = icmp eq i64 %i.df, %i.da
  br i1 %i.dg, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, label %.preheader.i.i.i.i39.i

.preheader.i.i.i.i39.i:                           ; preds = %bb.p
  %i.dh = mul nsw i64 %i.da, 5
  %i.di = add nsw i64 %i.da, 1
  %i.dj = add nsw i64 %i.di, %i.dh
  %i.dk = and i64 %i.dj, 127                      ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i40.i = icmp eq i64 %i.dn, 0
  br i1 %.not1718.i.i.i.i40.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, label %.lr.ph.i.i.preheader.i.i41.i

.lr.ph.i.i.preheader.i.i41.i:                     ; preds = %.preheader.i.i.i.i39.i
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !2104
  %i.dp = icmp eq i64 %i.do, %i.da
  br i1 %i.dp, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %.lr.ph.i.i.preheader.i.i41.i, %.lr.ph.i.i.i.i45.i
  %.019.i.i9.i.i43.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i45.i ], [ %i.da, %.lr.ph.i.i.preheader.i.i41.i ]
  %i.dq = phi i64 [ %i.dv, %.lr.ph.i.i.i.i45.i ], [ %i.dk, %.lr.ph.i.i.preheader.i.i41.i ]
  %i.dr = lshr i64 %.019.i.i9.i.i43.i, 5          ; 2 uses
  %i.ds = mul nuw nsw i64 %i.dq, 5
  %i.dt = add nuw nsw i64 %i.dr, 1
  %i.du = add nuw nsw i64 %i.dt, %i.ds
  %i.dv = and i64 %i.du, 127                      ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i44.i = icmp eq i64 %i.dy, 0
  br i1 %.not17.i.i.i.i44.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i, label %.lr.ph.i.i.i.i45.i, !llvm.loop !2105

.lr.ph.i.i.i.i45.i:                               ; preds = %.lr.ph.i.i42.i
  %i.dz = load i64, ptr %i.dw, align 8, !tbaa !2104
  %i.ea = icmp eq i64 %i.dz, %i.da
  br i1 %i.ea, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, label %.lr.ph.i.i42.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i: ; preds = %.lr.ph.i.i42.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i: ; preds = %.lr.ph.i.i.i.i45.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i, %.lr.ph.i.i.preheader.i.i41.i, %.preheader.i.i.i.i39.i, %bb.p, %bb.o, %bb.n
  %.0.i.i46.i = phi i64 [ %i.cy, %bb.n ], [ 0, %bb.o ], [ %i.de, %bb.p ], [ 0, %.preheader.i.i.i.i39.i ], [ %i.dn, %.lr.ph.i.i.preheader.i.i41.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i47.i ], [ %i.dy, %.lr.ph.i.i.i.i45.i ]
  %i.eb = xor i64 %.sroa.026.167.i, -1
  %i.ec = and i64 %.0.i.i46.i, %i.eb
  %i.ed = and i64 %i.ec, %.13764.i                ; 3 uses
  %i.ee = sub i64 0, %i.ed
  %i.ef = and i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %.sroa.026.167.i          ; 2 uses
  %i.eh = icmp ne i64 %i.ed, 0
  %i.ei = zext i1 %i.eh to i64
  %i.ej = shl nuw i64 %i.ei, %.165.i
  %i.ek = or i64 %i.ej, %.sroa.8.166.i            ; 2 uses
  %i.el = shl i64 %.13764.i, 1
  %i.em = add nuw nsw i64 %.165.i, 1              ; 2 uses
  %i.en = icmp slt i64 %i.em, %.pre-phi207266
  br i1 %i.en, label %bb.m, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit, !llvm.loop !2116

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i, %.preheader.i
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 2 uses
  %.sroa.026.1.lcssa.i = phi i64 [ %.sroa.026.0.lcssa.i, %.preheader.i ], [ %i.eg, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit48.i ] ; 3 uses
  %i.eo = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.026.1.lcssa.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.026.1.lcssa.i, 0
  br i1 %.not.i, label %.critedge, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit
  %i.ep = uitofp nneg i64 %i.eo to double
  %15 = insertelement <2 x double> poison, double %i.ep, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %8, i64 0
  %18 = insertelement <2 x double> %17, double %i.j, i64 1
  %19 = fdiv <2 x double> %16, %18                ; 2 uses
  %20 = extractelement <2 x double> %19, i64 1
  %i.eq = fadd double %20, 0.000000e+00
  %21 = extractelement <2 x double> %19, i64 0
  %i.er = fadd double %21, %i.eq
  %i.es = fadd double %i.er, 1.000000e+00
  %i.et = fdiv double %i.es, 3.000000e+00
  %i.eu = fcmp ult double %i.et, %5
  br i1 %i.eu, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.q
  %i.ev = load ptr, ptr %0, align 8               ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.ew, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, %.lr.ph.i75
  %.05.i = phi i64 [ %.sroa.026.1.lcssa.i, %.lr.ph.i75 ], [ %i.gq, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ] ; 3 uses
  %.0124.i = phi i64 [ 0, %.lr.ph.i75 ], [ %i.gn, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ]
  %.0133.i = phi i64 [ %.sroa.8.1.lcssa.i, %.lr.ph.i75 ], [ %i.gp, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ] ; 3 uses
  %i.fa = sub i64 0, %.05.i
  %i.fb = and i64 %.05.i, %i.fa                   ; 2 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0133.i, i1 true)
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !66  ; 3 uses
  %i.ff = icmp sgt i8 %i.fe, -1
  br i1 %i.ff, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fg = zext nneg i8 %i.fe to i64
  %i.fh = mul nsw i64 %i.ey, %i.fg
  %i.fi = getelementptr [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84

bb.t:                                             ; preds = %bb.r
  %i.fk = sext i8 %i.fe to i64                    ; 7 uses
  %i.fl = and i64 %i.fk, 127
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i.i.i.i76, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fp = load i64, ptr %i.fm, align 8, !tbaa !2104
  %i.fq = icmp eq i64 %i.fp, %i.fk
  br i1 %i.fq, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, label %.preheader.i.i.i.i.i77

.preheader.i.i.i.i.i77:                           ; preds = %bb.u
  %i.fr = mul nsw i64 %i.fk, 5
  %i.fs = add nsw i64 %i.fk, 1
  %i.ft = add nsw i64 %i.fs, %i.fr
  %i.fu = and i64 %i.ft, 127                      ; 2 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i.i78 = icmp eq i64 %i.fx, 0
  br i1 %.not1718.i.i.i.i.i78, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, label %.lr.ph.i.i.preheader.i.i.i79

.lr.ph.i.i.preheader.i.i.i79:                     ; preds = %.preheader.i.i.i.i.i77
  %i.fy = load i64, ptr %i.fv, align 8, !tbaa !2104
  %i.fz = icmp eq i64 %i.fy, %i.fk
  br i1 %i.fz, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %.lr.ph.i.i.preheader.i.i.i79, %.lr.ph.i.i.i.i.i83
  %.019.i.i9.i.i.i81 = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i83 ], [ %i.fk, %.lr.ph.i.i.preheader.i.i.i79 ]
  %i.ga = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i83 ], [ %i.fu, %.lr.ph.i.i.preheader.i.i.i79 ]
  %i.gb = lshr i64 %.019.i.i9.i.i.i81, 5          ; 2 uses
  %i.gc = mul nuw nsw i64 %i.ga, 5
  %i.gd = add nuw nsw i64 %i.gb, 1
  %i.ge = add nuw nsw i64 %i.gd, %i.gc
  %i.gf = and i64 %i.ge, 127                      ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i.i82 = icmp eq i64 %i.gi, 0
  br i1 %.not17.i.i.i.i.i82, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i87, label %.lr.ph.i.i.i.i.i83, !llvm.loop !2105

.lr.ph.i.i.i.i.i83:                               ; preds = %.lr.ph.i.i.i80
  %i.gj = load i64, ptr %i.gg, align 8, !tbaa !2104
  %i.gk = icmp eq i64 %i.gj, %i.fk
  br i1 %i.gk, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, label %.lr.ph.i.i.i80, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i87: ; preds = %.lr.ph.i.i.i80
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84: ; preds = %.lr.ph.i.i.i.i.i83, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i87, %.lr.ph.i.i.preheader.i.i.i79, %.preheader.i.i.i.i.i77, %bb.u, %bb.t, %bb.s
  %.0.i.i.i85 = phi i64 [ %i.fj, %bb.s ], [ 0, %bb.t ], [ %i.fo, %bb.u ], [ 0, %.preheader.i.i.i.i.i77 ], [ %i.fx, %.lr.ph.i.i.preheader.i.i.i79 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i87 ], [ %i.gi, %.lr.ph.i.i.i.i.i83 ]
  %i.gl = and i64 %.0.i.i.i85, %i.fb
  %.not14.i = icmp eq i64 %i.gl, 0
  %i.gm = zext i1 %.not14.i to i64
  %i.gn = add nuw nsw i64 %.0124.i, %i.gm         ; 2 uses
  %i.go = add i64 %.0133.i, -1
  %i.gp = and i64 %i.go, %.0133.i                 ; 2 uses
  %i.gq = xor i64 %i.fb, %.05.i
  %.not.i86 = icmp eq i64 %i.gp, 0
  br i1 %.not.i86, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %bb.r, !llvm.loop !2117

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.gr = sdiv i64 %.pre-phi207266, 64
  %i.gs = and i64 %.pre-phi207266, 63
  %i.gt = icmp ne i64 %i.gs, 0
  %i.gu = zext i1 %i.gt to i64
  %i.gv = add nsw i64 %i.gr, %i.gu                ; 5 uses
  %i.gw = sdiv i64 %.pre-phi203267, 64
  %i.gx = and i64 %.pre-phi203267, 63
  %i.gy = icmp ne i64 %i.gx, 0
  %i.gz = zext i1 %i.gy to i64
  %i.ha = add nsw i64 %i.gw, %i.gz                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false), !alias.scope !2118
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not51.i = icmp eq i64 %i.gv, 0
  br i1 %.not51.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.he = icmp ugt i64 %i.gv, 1152921504606846975
  br i1 %i.he, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i118

.invoke:                                          ; preds = %bb.x, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.cont unwind label %bb.y

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i118: ; preds = %bb.w
  %i.hf = shl nuw nsw i64 %i.gv, 3
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #26
          to label %.noexc127 unwind label %bb.y  ; 5 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i118
  store i64 0, ptr %i.hg, align 8, !tbaa !84
  %i.hh = add nsw i64 %i.gv, -1                   ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i120

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i120: ; preds = %.noexc127
  %i.hj = getelementptr i8, ptr %i.hg, i64 8
  %.idx.i.i.i.i.i31.i121 = shl nuw nsw i64 %i.hh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hj, i8 0, i64 %.idx.i.i.i.i.i31.i121, i1 false), !tbaa !84
  br label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i:  ; preds = %.noexc127, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i120
  store ptr %i.hg, ptr %i.hb, align 8, !tbaa !1818
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gv ; 3 uses
  store ptr %i.hk, ptr %i.hc, align 8, !tbaa !1821
  store ptr %i.hk, ptr %i.hd, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %bb.v
  %i.hl = phi ptr [ %i.hk, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %bb.v ]
  %i.hm = phi ptr [ %i.hg, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %bb.v ] ; 11 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.ha, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit35.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hp = icmp ugt i64 %i.ha, 1152921504606846975
  br i1 %i.hp, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.x
  %i.hq = shl nuw nsw i64 %i.ha, 3
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #26
          to label %.noexc111 unwind label %bb.y  ; 5 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.hr, align 8, !tbaa !84
  %i.hs = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc111
  %i.hu = getelementptr i8, ptr %i.hr, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.hs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hu, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !84
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc111
  store ptr %i.hr, ptr %7, align 8, !tbaa !1818
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ha ; 3 uses
  store ptr %i.hv, ptr %i.hn, align 8, !tbaa !1821
  store ptr %i.hv, ptr %i.ho, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit35.i

_ZNSt6vectorImSaImEE6resizeEm.exit35.i:           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.hw = phi ptr [ %i.hv, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ]
  %i.hx = phi ptr [ %i.hr, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNSt6vectorImSaImEE6resizeEm.exit.i ] ; 11 uses
  %i.hy = icmp sgt i64 %.pre-phi207266, 0
  br i1 %i.hy, label %.lr.ph.i88, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit

.lr.ph.i88:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit35.i
  %i.hz = add nsw i64 %.0.i72268, 1
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d:bb.a
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.z

bb.y:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i118, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #25
  resume { ptr, i32 } %i.ie

bb.z:                                             ; preds = %bb.ae, %.lr.ph.i88
  %.056.i = phi i64 [ 0, %.lr.ph.i88 ], [ %i.iu, %bb.ae ] ; 5 uses
  %.sroa.0.055.i = phi i64 [ %i.id, %.lr.ph.i88 ], [ %.sroa.0.2.i, %bb.ae ] ; 3 uses
  %.sroa.17.054.i = phi i64 [ -1, %.lr.ph.i88 ], [ %.sroa.17.1.i, %bb.ae ] ; 3 uses
  %.sroa.13.053.i = phi i64 [ %i.ib, %.lr.ph.i88 ], [ %.sroa.13.1.i, %bb.ae ] ; 3 uses
  %.sroa.10.052.i = phi i64 [ 0, %.lr.ph.i88 ], [ %.sroa.10.1.i, %bb.ae ] ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 %.056.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !66, !noalias !2118
  store i64 %.sroa.0.055.i, ptr %6, align 8, !tbaa !84, !noalias !2118
  store i64 %.sroa.10.052.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2118
  store i64 %.sroa.13.053.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2118
  store i64 %.sroa.17.054.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2118
  tail call fastcc void @_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE(ptr noundef nonnull readonly align 8 dereferenceable(56) %0, i8 noundef signext %i.ig, ptr %i.hx, ptr %i.hm, i64 noundef %.056.i, ptr noundef nonnull byval(%"struct.duckdb_jaro_winkler::detail::SearchBoundMask") align 8 %6)
  %i.ih = add nsw i64 %.056.i, %.0.i72268         ; 2 uses
  %i.ii = add nsw i64 %i.ih, 1
  %i.ij = icmp slt i64 %i.ii, %.pre-phi203267
  br i1 %i.ij, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ik = shl i64 %.sroa.13.053.i, 1              ; 2 uses
  %i.il = or disjoint i64 %i.ik, 1
  %i.im = add nsw i64 %i.ih, 2
  %i.in = icmp slt i64 %i.im, %.pre-phi203267
  %i.io = icmp eq i64 %i.ik, -2
  %or.cond.i92 = select i1 %i.in, i1 %i.io, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i92, i64 0, i64 %i.il
  %i.ip = zext i1 %or.cond.i92 to i64
  %spec.select50.i = add nsw i64 %.sroa.0.055.i, %i.ip
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.13.1.i = phi i64 [ %.sroa.13.053.i, %bb.z ], [ %spec.select.i, %bb.aa ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.055.i, %bb.z ], [ %spec.select50.i, %bb.aa ] ; 3 uses
  %.not.i90 = icmp slt i64 %.056.i, %.0.i72268
  br i1 %.not.i90, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iq = shl i64 %.sroa.17.054.i, 1              ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.is = add nsw i64 %.sroa.0.1.i, -1
  %i.it = add nsw i64 %.sroa.10.052.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.10.1.i = phi i64 [ %.sroa.10.052.i, %bb.ab ], [ %i.it, %bb.ad ], [ %.sroa.10.052.i, %bb.ac ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.054.i, %bb.ab ], [ -1, %bb.ad ], [ %i.iq, %bb.ac ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ab ], [ %i.is, %bb.ad ], [ %.sroa.0.1.i, %bb.ac ]
  %i.iu = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %i.iu, %.pre-phi207266
  br i1 %exitcond.not.i91, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit, label %bb.z, !llvm.loop !2121

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit: ; preds = %bb.ae
  %.pre = load ptr, ptr %i.hn, align 8, !tbaa !1821
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.pre200 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1821
  br label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit, %_ZNSt6vectorImSaImEE6resizeEm.exit35.i
  %i.iv = phi ptr [ %.pre200, %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit ], [ %i.hl, %_ZNSt6vectorImSaImEE6resizeEm.exit35.i ] ; 3 uses
  %i.iw = phi ptr [ %.pre, %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit.loopexit ], [ %i.hw, %_ZNSt6vectorImSaImEE6resizeEm.exit35.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ix = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iy = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.jb = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = icmp ult i64 %i.iz, %i.jc
  br i1 %i.jd, label %.preheader.i95, label %.preheader20.i

.preheader20.i:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit
  %.not22.i = icmp eq ptr %i.hm, %i.iv
  br i1 %.not22.i, label %.critedge67, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %.preheader20.i
  %i.je = sub i64 %i.ja, %i.jb
  %i.jf = add i64 %i.je, -8                       ; 2 uses
  %i.jg = lshr i64 %i.jf, 3
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jf, 24
  br i1 %min.iters.check, label %.lr.ph.i93.preheader361, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i93.preheader
  %n.vec = and i64 %i.jh, 4611686018427387900     ; 3 uses
  %i.ji = shl i64 %n.vec, 3
  %i.jj = getelementptr i8, ptr %i.hm, i64 %i.ji
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.jo, %vector.body ]
  %vec.phi317 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.jp, %vector.body ]
  %i.jk = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hm, i64 %i.jk ; 2 uses
  %i.jl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !84
  %wide.load318 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !84
  %i.jm = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.jn = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load318)
  %i.jo = add <2 x i64> %i.jm, %vec.phi           ; 2 uses
  %i.jp = add <2 x i64> %i.jn, %vec.phi317        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jq = icmp eq i64 %index.next, %n.vec
  br i1 %i.jq, label %middle.block, label %vector.body, !llvm.loop !2122

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.jp, %i.jo
  %i.jr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.jh, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i93.preheader361

.lr.ph.i93.preheader361:                          ; preds = %.lr.ph.i93.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i93.preheader ], [ %i.jr, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.hm, %.lr.ph.i93.preheader ], [ %i.jj, %middle.block ]
  br label %.lr.ph.i93

.preheader.i95:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_SI_T0_SJ_l.exit
  %.not1925.i = icmp eq ptr %i.hx, %i.iw
  br i1 %.not1925.i, label %.critedge67, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i95
  %i.js = sub i64 %i.ix, %i.iy
  %i.jt = add i64 %i.js, -8                       ; 2 uses
  %i.ju = lshr i64 %i.jt, 3
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.jt, 24
  br i1 %min.iters.check320, label %.lr.ph28.i.preheader357, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec323 = and i64 %i.jv, 4611686018427387900  ; 3 uses
  %i.jw = shl i64 %n.vec323, 3
  %i.jx = getelementptr i8, ptr %i.hx, i64 %i.jw
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph321
  %index325 = phi i64 [ 0, %vector.ph321 ], [ %index.next331, %vector.body324 ] ; 2 uses
  %vec.phi326 = phi <2 x i64> [ zeroinitializer, %vector.ph321 ], [ %i.kc, %vector.body324 ]
  %vec.phi327 = phi <2 x i64> [ zeroinitializer, %vector.ph321 ], [ %i.kd, %vector.body324 ]
  %i.jy = shl i64 %index325, 3
  %next.gep328 = getelementptr i8, ptr %i.hx, i64 %i.jy ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep328, i64 16
  %wide.load329 = load <2 x i64>, ptr %next.gep328, align 8, !tbaa !84
  %wide.load330 = load <2 x i64>, ptr %i.jz, align 8, !tbaa !84
  %i.ka = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load329)
  %i.kb = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load330)
  %i.kc = add <2 x i64> %i.ka, %vec.phi326        ; 2 uses
  %i.kd = add <2 x i64> %i.kb, %vec.phi327        ; 2 uses
  %index.next331 = add nuw i64 %index325, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next331, %n.vec323
  br i1 %i.ke, label %middle.block332, label %vector.body324, !llvm.loop !2123

middle.block332:                                  ; preds = %vector.body324
  %bin.rdx333 = add <2 x i64> %i.kd, %i.kc
  %i.kf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx333) ; 2 uses
  %cmp.n334 = icmp eq i64 %i.jv, %n.vec323
  br i1 %cmp.n334, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader357

.lr.ph28.i.preheader357:                          ; preds = %.lr.ph28.i.preheader, %middle.block332
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.kf, %middle.block332 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.hx, %.lr.ph28.i.preheader ], [ %i.jx, %middle.block332 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader357, %.lr.ph28.i
  %.027.i = phi i64 [ %i.ki, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader357 ]
  %.sroa.016.026.i = phi ptr [ %i.kj, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader357 ] ; 2 uses
  %i.kg = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !84
  %i.kh = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kg)
  %i.ki = add nuw nsw i64 %i.kh, %.027.i          ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.kj, %i.iw
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !2124

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.preheader361, %.lr.ph.i93
  %.124.i = phi i64 [ %i.km, %.lr.ph.i93 ], [ %.124.i.ph, %.lr.ph.i93.preheader361 ]
  %.sroa.012.023.i = phi ptr [ %i.kn, %.lr.ph.i93 ], [ %.sroa.012.023.i.ph, %.lr.ph.i93.preheader361 ] ; 2 uses
  %i.kk = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !84
  %i.kl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kk)
  %i.km = add nuw nsw i64 %i.kl, %.124.i          ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i94 = icmp eq ptr %i.kn, %i.iv
  br i1 %.not.i94, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i93, !llvm.loop !2125

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i93, %.lr.ph28.i, %middle.block, %middle.block332
  %.2.i = phi i64 [ %i.ki, %.lr.ph28.i ], [ %i.kf, %middle.block332 ], [ %i.jr, %middle.block ], [ %i.km, %.lr.ph.i93 ] ; 4 uses
  %.not.i96 = icmp eq i64 %.2.i, 0
  br i1 %.not.i96, label %.critedge67, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.ko = sitofp i64 %.2.i to double
  %22 = insertelement <2 x double> poison, double %i.ko, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x double> poison, double %8, i64 0
  %25 = insertelement <2 x double> %24, double %i.j, i64 1
  %26 = fdiv <2 x double> %23, %25                ; 2 uses
  %27 = extractelement <2 x double> %26, i64 1
  %i.kp = fadd double %27, 0.000000e+00
  %28 = extractelement <2 x double> %26, i64 0
  %i.kq = fadd double %28, %i.kp
  %i.kr = fadd double %i.kq, 1.000000e+00
  %i.ks = fdiv double %i.kr, 3.000000e+00
  %i.kt = fcmp ult double %i.ks, %5
  br i1 %i.kt, label %.critedge67, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98
  %i.ku = load i64, ptr %i.hx, align 8, !tbaa !84
  %i.kv = load i64, ptr %i.hm, align 8, !tbaa !84
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i103 = icmp eq i64 %i.nb, 0
  br i1 %.not.i103, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, label %.preheader2.i, !llvm.loop !2126

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i100 = phi ptr [ %3, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.mx, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.ku, %.preheader2.lr.ph.i ], [ %i.na, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.kv, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.nb, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i104, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i104, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.ky, %.lr.ph.i104 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.lb, %.lr.ph.i104 ]
  %.1.lcssa.i = phi ptr [ %.027.i100, %.preheader2.i ], [ %i.kz, %.lr.ph.i104 ] ; 2 uses
  br label %.preheader.i101

.lr.ph.i104:                                      ; preds = %.preheader2.i, %.lr.ph.i104
  %.16.i = phi ptr [ %i.kz, %.lr.ph.i104 ], [ %.027.i100, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.ky, %.lr.ph.i104 ], [ %.03621.i, %.preheader2.i ]
  %i.ky = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.ky
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !84 ; 2 uses
  %.not40.i = icmp eq i64 %i.lb, 0
  br i1 %.not40.i, label %.lr.ph.i104, label %.preheader1.i, !llvm.loop !2127

.preheader.i101:                                  ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.mx, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.na, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.mz, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.nb, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i101, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.lc, %.lr.ph11.i ], [ %.13415.i, %.preheader.i101 ]
  %i.lc = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.lc
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !84 ; 2 uses
  %.not42.i = icmp eq i64 %i.le, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !2128

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i101
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i101 ], [ %i.lc, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i101 ], [ %i.le, %.lr.ph11.i ] ; 3 uses
  %i.lf = sub i64 0, %.2.lcssa.i
  %i.lg = and i64 %.2.lcssa.i, %i.lf              ; 2 uses
  %i.lh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.li = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !66  ; 3 uses
  %i.lk = icmp sgt i8 %i.lj, -1
  br i1 %i.lk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i
  %i.ll = zext nneg i8 %i.lj to i64
  %i.lm = load i64, ptr %i.kx, align 8, !tbaa !2094
  %i.ln = mul nsw i64 %i.lm, %i.ll
  %i.lo = load ptr, ptr %i.kw, align 8, !tbaa !1818
  %i.lp = getelementptr [8 x i8], ptr %i.lo, i64 %i.ln
  %i.lq = getelementptr [8 x i8], ptr %i.lp, i64 %.235.lcssa.i
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.ag:                                            ; preds = %._crit_edge.i
  %i.ls = load ptr, ptr %0, align 8, !tbaa !2088
  %i.lt = getelementptr inbounds nuw [2048 x i8], ptr %i.ls, i64 %.235.lcssa.i ; 3 uses
  %i.lu = sext i8 %i.lj to i64                    ; 7 uses
  %i.lv = and i64 %i.lu, 127
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lz = load i64, ptr %i.lw, align 8, !tbaa !2104
  %i.ma = icmp eq i64 %i.lz, %i.lu
  br i1 %i.ma, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ah
  %i.mb = mul nsw i64 %i.lu, 5
  %i.mc = add nsw i64 %i.lu, 1
  %i.md = add nsw i64 %i.mc, %i.mb
  %i.me = and i64 %i.md, 127                      ; 2 uses
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i = icmp eq i64 %i.mh, 0
  br i1 %.not1718.i.i.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.mi = load i64, ptr %i.mf, align 8, !tbaa !2104
  %i.mj = icmp eq i64 %i.mi, %i.lu
  br i1 %i.mj, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %.019.i.i9.i.i = phi i64 [ %i.ml, %.lr.ph.i.i.i.i ], [ %i.lu, %.lr.ph.i.i.preheader.i.i ]
  %i.mk = phi i64 [ %i.mp, %.lr.ph.i.i.i.i ], [ %i.me, %.lr.ph.i.i.preheader.i.i ]
  %i.ml = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.mm = mul nuw nsw i64 %i.mk, 5
  %i.mn = add nuw nsw i64 %i.ml, 1
  %i.mo = add nuw nsw i64 %i.mn, %i.mm
  %i.mp = and i64 %i.mo, 127                      ; 2 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ms, 0
  br i1 %.not17.i.i.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.mt = load i64, ptr %i.mq, align 8, !tbaa !2104
  %i.mu = icmp eq i64 %i.mt, %i.lu
  br i1 %i.mu, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i: ; preds = %.lr.ph.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.preheader.i.i.i.i, %bb.ah, %bb.ag, %bb.af
  %.0.i.i102 = phi i64 [ %i.lr, %bb.af ], [ 0, %bb.ag ], [ %i.ly, %bb.ah ], [ 0, %.preheader.i.i.i.i ], [ %i.mh, %.lr.ph.i.i.preheader.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i ], [ %i.ms, %.lr.ph.i.i.i.i ]
  %i.mv = and i64 %.0.i.i102, %i.lg
  %.not43.i = icmp eq i64 %i.mv, 0
  %i.mw = zext i1 %.not43.i to i64
  %i.mx = add nsw i64 %.12718.i, %i.mw            ; 3 uses
  %i.my = add i64 %.23216.i, -1
  %i.mz = and i64 %i.my, %.23216.i                ; 2 uses
  %i.na = xor i64 %i.lg, %.2.lcssa.i              ; 2 uses
  %i.nb = add nsw i64 %.13914.i, -1               ; 3 uses
  %.not41.i = icmp eq i64 %i.mz, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i101, !llvm.loop !2129

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit: ; preds = %.loopexit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.hm) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.hx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84, %bb.g, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, %bb.q, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit
  %.264 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %i.mx, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ 0, %bb.q ], [ 0, %bb.g ], [ %i.gn, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ]
  %.061 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ %.2.i, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ %i.eo, %bb.q ], [ 0, %bb.g ], [ %i.eo, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i84 ]
  %i.nc = sdiv i64 %.264, 2
  %i.nd = sitofp i64 %.061 to double              ; 3 uses
  %29 = insertelement <2 x double> poison, double %i.nd, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> poison, double %8, i64 0
  %32 = insertelement <2 x double> %31, double %i.j, i64 1
  %33 = fdiv <2 x double> %30, %32                ; 2 uses
  %34 = extractelement <2 x double> %33, i64 1
  %i.ne = fadd double %34, 0.000000e+00
  %35 = extractelement <2 x double> %33, i64 0
  %i.nf = fadd double %35, %i.ne
  %i.ng = sitofp i64 %i.nc to double
  %i.nh = fsub double %i.nd, %i.ng
  %i.ni = fdiv double %i.nh, %i.nd
  %i.nj = fadd double %i.ni, %i.nf
  %i.nk = fdiv double %i.nj, 3.000000e+00         ; 2 uses
  %i.nl = fcmp oge double %i.nk, %5
  %i.nm = select i1 %i.nl, double %i.nk, double 0.000000e+00
  br label %.critedge

.critedge67:                                      ; preds = %.preheader20.i, %.preheader.i95, %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit98
  %.not.i.i.i.i106 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i106, label %_ZNSt6vectorImSaImEED2Ev.exit.i107, label %bb.ai

bb.ai:                                            ; preds = %.critedge67
  tail call void @_ZdlPv(ptr noundef nonnull %i.hm) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i107

_ZNSt6vectorImSaImEED2Ev.exit.i107:               ; preds = %bb.ai, %.critedge67
  %.not.i.i.i1.i108 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i1.i108, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i107
  tail call void @_ZdlPv(ptr noundef nonnull %i.hx) #29
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i107, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.critedge

.critedge:                                        ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit, %bb.a, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.s, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.nm, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common23BlockPatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit109 ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit ], [ 0.000000e+00, %bb.a ]
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
define internal fastcc void @_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i8 noundef signext %1, ptr nofree captures(none) %.0.val, ptr nofree captures(none) %.24.val, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb_jaro_winkler::detail::SearchBoundMask") align 8 captures(none) %3) unnamed_addr #20 {
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
  br label %bb.s

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
end_hunk_1
begin_hunk_2_@_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE:bb.a

.lr.ph.i79:                                       ; preds = %.lr.ph.i.i.preheader.i78, %.lr.ph.i.i.i82
  %.019.i.i9.i80 = phi i64 [ %i.ez, %.lr.ph.i.i.i82 ], [ %i.ds, %.lr.ph.i.i.preheader.i78 ]
  %i.ey = phi i64 [ %i.fd, %.lr.ph.i.i.i82 ], [ %i.dx, %.lr.ph.i.i.preheader.i78 ]
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
  %i.fi = icmp eq i64 %i.fh, %i.ds
  br i1 %i.fi, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, label %.lr.ph.i79, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84: ; preds = %.lr.ph.i79
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85: ; preds = %.lr.ph.i.i.i82, %bb.m, %bb.n, %.preheader.i.i.i76, %.lr.ph.i.i.preheader.i78, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84
  %.0.i83 = phi i64 [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84 ], [ 0, %bb.m ], [ %i.eq, %bb.n ], [ 0, %.preheader.i.i.i76 ], [ %i.ev, %.lr.ph.i.i.preheader.i78 ], [ %i.fg, %.lr.ph.i.i.i82 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.211
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %i.fl = xor i64 %i.fk, -1
  %i.fm = and i64 %.0.i83, %i.fl                  ; 2 uses
  %.not63 = icmp eq i64 %i.fm, 0
  br i1 %.not63, label %.critedge, label %.split.us

.split.us:                                        ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us
  %.us-phi = phi i64 [ %.211.us, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %.211, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %.us-phi12 = phi i64 [ %i.eg, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %.0.i83, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %.us-phi13 = phi i64 [ %i.ei, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %i.fk, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
  %.us-phi14 = phi i64 [ %i.ek, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us ], [ %i.fm, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85 ]
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
  br label %bb.s

.critedge:                                        ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85
  %i.fv = add i64 %.211, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.fv, %i.dp
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !2135

._crit_edge:                                      ; preds = %.critedge, %.critedge.us, %bb.l
  %.2.lcssa = phi i64 [ %.1, %bb.l ], [ %i.dp, %.critedge.us ], [ %i.dp, %.critedge ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !2133 ; 2 uses
  %.not62 = icmp eq i64 %i.fx, 0
  br i1 %.not62, label %bb.s, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.fy = icmp sgt i8 %1, -1
  br i1 %i.fy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
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

bb.q:                                             ; preds = %bb.o
  %i.gi = load ptr, ptr %0, align 8, !tbaa !2088
  %i.gj = getelementptr inbounds nuw [2048 x i8], ptr %i.gi, i64 %.2.lcssa ; 3 uses
  %i.gk = sext i8 %1 to i64                       ; 7 uses
  %i.gl = and i64 %i.gk, 127
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i86 = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i86, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gp = load i64, ptr %i.gm, align 8, !tbaa !2104
  %i.gq = icmp eq i64 %i.gp, %i.gk
  br i1 %i.gq, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, label %.preheader.i.i.i87

.preheader.i.i.i87:                               ; preds = %bb.r
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

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96: ; preds = %.lr.ph.i.i.i93, %bb.p, %bb.q, %bb.r, %.preheader.i.i.i87, %.lr.ph.i.i.preheader.i89, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95
  %.0.i94 = phi i64 [ %i.gh, %bb.p ], [ 0, %bb.q ], [ %i.go, %bb.r ], [ 0, %.preheader.i.i.i87 ], [ %i.gx, %.lr.ph.i.i.preheader.i89 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95 ], [ %i.hi, %.lr.ph.i.i.i93 ]
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
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %.split.us, %._crit_edge, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit
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
  %7 = alloca %"struct.duckdb_jaro_winkler::common::BlockPatternMatchVector", align 8 ; 17 uses
  %8 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 15 uses
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
  %i.i = sitofp i64 %.sroa.speculated.i to double
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %9 = sitofp i64 %i.f to double                  ; 4 uses
  %10 = insertelement <2 x double> poison, double %i.i, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> poison, double %i.j, i64 0
  %13 = insertelement <2 x double> %12, double %9, i64 1
  %14 = fdiv <2 x double> %11, %13                ; 2 uses
  %shift = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %14, %shift
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.k = fadd double %15, 1.000000e+00
  %i.l = fdiv double %i.k, 3.000000e+00
  %i.m = fcmp ult double %i.l, %4
  br i1 %i.m, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit
  %i.n = icmp eq i64 %i.c, 1
  %i.o = icmp eq i64 %i.f, 1
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %0, align 1, !tbaa !66
  %i.q = load i8, ptr %2, align 1, !tbaa !66
  %i.r = icmp eq i8 %i.p, %i.q
  %i.s = uitofp i1 %i.r to double
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = icmp sgt i64 %i.f, %i.c
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 %i.f, 2
  %i.v = add nsw i64 %i.u, -1                     ; 5 uses
  %i.w = add nsw i64 %i.v, %i.c
  %i.x = icmp sgt i64 %i.f, %i.w
  br i1 %i.x, label %bb.f, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v ; 2 uses
  %.pre240 = ptrtoint ptr %i.z to i64
  %.pre242 = add nsw i64 %i.c, %i.v
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.g:                                             ; preds = %bb.d
  %i.aa = sdiv i64 %i.c, 2
  %i.ab = add nsw i64 %i.aa, -1                   ; 5 uses
  %i.ac = add nsw i64 %i.ab, %i.f
  %i.ad = icmp sgt i64 %i.c, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab ; 2 uses
  %.pre237 = ptrtoint ptr %i.af to i64
  %.pre238 = add nsw i64 %i.f, %i.ab
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi243 = phi i64 [ %i.f, %bb.e ], [ %.pre242, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  %.pre-phi241 = phi i64 [ %i.d, %bb.e ], [ %.pre240, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ]
  %.pre-phi239 = phi i64 [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %.pre238, %bb.h ]
  %.pre-phi = phi i64 [ %i.a, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ], [ %.pre237, %bb.h ]
  %.0174 = phi ptr [ %3, %bb.e ], [ %i.z, %bb.f ], [ %3, %bb.g ], [ %3, %bb.h ]
  %.0 = phi ptr [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %.0.i55 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ] ; 6 uses
  %.sroa.speculated.i56 = tail call i64 @llvm.smin.i64(i64 %.pre-phi243, i64 %.pre-phi239) ; 3 uses
  %i.ag = icmp sgt i64 %.sroa.speculated.i56, 0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

.lr.ph.i:                                         ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit, %bb.i
  %.018.i = phi i64 [ %i.al, %bb.i ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.018.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.ai, %i.ak
  br i1 %.not.i, label %bb.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.al = add nuw nsw i64 %.018.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.sroa.speculated.i56
  br i1 %exitcond.not.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit, label %.lr.ph.i, !llvm.loop !2136

_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit: ; preds = %.lr.ph.i, %bb.i, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ], [ %.sroa.speculated.i56, %bb.i ], [ %.018.i, %.lr.ph.i ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa.i ; 7 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %.pre-phi, %i.ao                ; 8 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %.pre-phi241, %i.aq             ; 8 uses
  %i.as = icmp ne ptr %.0, %i.am
  %i.at = icmp ne ptr %.0174, %i.an
  %or.cond4 = and i1 %i.as, %i.at
  br i1 %or.cond4, label %bb.j, label %bb.at

bb.j:                                             ; preds = %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %i.au = icmp slt i64 %i.ap, 65
  %i.av = icmp slt i64 %i.ar, 65
  %or.cond6 = and i1 %i.au, %i.av
  br i1 %or.cond6, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 2048 ; 4 uses
  %i.ax = icmp sgt i64 %i.ap, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %6, i8 0, i64 4096, i1 false)
  br i1 %i.ax, label %.lr.ph22.i.i, label %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit

.lr.ph22.i.i:                                     ; preds = %bb.k, %bb.o
  %.021.i.i = phi i64 [ %i.ck, %bb.o ], [ 1, %bb.k ] ; 3 uses
  %.01520.i.i = phi i64 [ %i.cl, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %.01520.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !66  ; 3 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph22.i.i
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !84
  %i.be = or i64 %i.bd, %.021.i.i
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !84
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph22.i.i
  %i.bf = sext i8 %i.az to i64                    ; 8 uses
  %i.bg = and i64 %i.bf, 127                      ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !2104
  %i.bl = icmp eq i64 %i.bk, %i.bf
  br i1 %i.bl, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.n
  %i.bm = mul nsw i64 %i.bf, 5
  %i.bn = add nsw i64 %i.bf, 1
  %i.bo = add nsw i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bo, 127                      ; 4 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not1718.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !2104
  %i.bu = icmp eq i64 %i.bt, %i.bf
  br i1 %i.bu, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %.019.i.i16.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.preheader.i.i ]
  %i.bv = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.preheader.i.i ]
  %i.bw = lshr i64 %.019.i.i16.i.i, 5             ; 2 uses
  %i.bx = mul nuw nsw i64 %i.bv, 5
  %i.by = add nuw nsw i64 %i.bw, 1
  %i.bz = add nuw nsw i64 %i.by, %i.bx
  %i.ca = and i64 %i.bz, 127                      ; 4 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not17.i.i.i.i, label %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2105

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !2104
  %i.cf = icmp eq i64 %i.ce, %i.bf
  br i1 %i.cf, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i, !llvm.loop !2105

._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, !llvm.loop !2105

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.preheader.i.i.i.i, %bb.n, %bb.m
  %i.cg = phi i64 [ 0, %bb.m ], [ %i.bj, %bb.n ], [ 0, %.preheader.i.i.i.i ], [ %i.bs, %.lr.ph.i.i.preheader.i.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %.015.i.i.i.i = phi i64 [ %i.bg, %bb.m ], [ %i.bg, %bb.n ], [ %i.bp, %.preheader.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.preheader.i.i ], [ %i.ca, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.015.i.i.i.i ; 2 uses
  store i64 %i.bf, ptr %i.ch, align 8, !tbaa !2104
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = or i64 %i.cg, %.021.i.i
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !2102
  br label %bb.o

bb.o:                                             ; preds = %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, %bb.l
  %i.ck = shl i64 %.021.i.i, 1
  %i.cl = add nuw nsw i64 %.01520.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cl, %i.ap
  br i1 %exitcond.not.i.i, label %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit, label %.lr.ph22.i.i, !llvm.loop !2137

_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.o, %bb.k
  %i.cm = trunc i64 %.0.i55 to i32
  %i.cn = add nsw i64 %.0.i55, 1
  %i.co = icmp slt i32 %i.cm, 63
  %i.cp = and i64 %i.cn, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.cp
  %i.cq = xor i64 %notmask.i.i, -1
  %.0.i.i = select i1 %i.co, i64 %i.cq, i64 -1    ; 2 uses
  %sext = shl i64 %.0.i55, 32
  %i.cr = ashr exact i64 %sext, 32
  %.sroa.speculated.i57 = tail call i64 @llvm.smin.i64(i64 %i.ar, i64 %i.cr) ; 3 uses
  %i.cs = icmp sgt i64 %.sroa.speculated.i57, 0
  br i1 %i.cs, label %.lr.ph.i59, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit
  %.034.lcssa.i = phi i64 [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.em, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ]
  %.0.lcssa.i58 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %.sroa.speculated.i57, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.eg, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.ct = icmp slt i64 %.0.lcssa.i58, %i.ar
  br i1 %i.ct, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit

.lr.ph.i59:                                       ; preds = %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i
  %.sroa.0.057.i = phi i64 [ %i.eg, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %.sroa.8.056.i = phi i64 [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ]
  %.055.i = phi i64 [ %i.en, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %.03454.i = phi i64 [ %i.em, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 %.055.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !66  ; 3 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i59
  %i.cx = zext nneg i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i

bb.q:                                             ; preds = %.lr.ph.i59
  %i.da = sext i8 %i.cv to i64                    ; 7 uses
  %i.db = and i64 %i.da, 127
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i60 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i.i60, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !2104
  %i.dg = icmp eq i64 %i.df, %i.da
  br i1 %i.dg, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.preheader.i.i.i.i61

.preheader.i.i.i.i61:                             ; preds = %bb.r
  %i.dh = mul nsw i64 %i.da, 5
  %i.di = add nsw i64 %i.da, 1
  %i.dj = add nsw i64 %i.di, %i.dh
  %i.dk = and i64 %i.dj, 127                      ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i62 = icmp eq i64 %i.dn, 0
  br i1 %.not1718.i.i.i.i62, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.preheader.i.i63

.lr.ph.i.i.preheader.i.i63:                       ; preds = %.preheader.i.i.i.i61
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !2104
  %i.dp = icmp eq i64 %i.do, %i.da
  br i1 %i.dp, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.lr.ph.i.i.preheader.i.i63, %.lr.ph.i.i.i.i66
  %.019.i.i7.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i66 ], [ %i.da, %.lr.ph.i.i.preheader.i.i63 ]
  %i.dq = phi i64 [ %i.dv, %.lr.ph.i.i.i.i66 ], [ %i.dk, %.lr.ph.i.i.preheader.i.i63 ]
  %i.dr = lshr i64 %.019.i.i7.i.i, 5              ; 2 uses
  %i.ds = mul nuw nsw i64 %i.dq, 5
  %i.dt = add nuw nsw i64 %i.dr, 1
  %i.du = add nuw nsw i64 %i.dt, %i.ds
  %i.dv = and i64 %i.du, 127                      ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i65 = icmp eq i64 %i.dy, 0
  br i1 %.not17.i.i.i.i65, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i66, !llvm.loop !2105

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i64
  %i.dz = load i64, ptr %i.dw, align 8, !tbaa !2104
  %i.ea = icmp eq i64 %i.dz, %i.da
  br i1 %i.ea, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i64, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i64
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i: ; preds = %.lr.ph.i.i.i.i66, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i63, %.preheader.i.i.i.i61, %bb.r, %bb.q, %bb.p
  %.0.i36.i = phi i64 [ %i.cz, %bb.p ], [ 0, %bb.q ], [ %i.de, %bb.r ], [ 0, %.preheader.i.i.i.i61 ], [ %i.dn, %.lr.ph.i.i.preheader.i.i63 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i ], [ %i.dy, %.lr.ph.i.i.i.i66 ]
  %i.eb = xor i64 %.sroa.0.057.i, -1
  %i.ec = and i64 %.0.i36.i, %i.eb
  %i.ed = and i64 %i.ec, %.03454.i                ; 3 uses
  %i.ee = sub i64 0, %i.ed
  %i.ef = and i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %.sroa.0.057.i            ; 2 uses
  %i.eh = icmp ne i64 %i.ed, 0
  %i.ei = zext i1 %i.eh to i64
  %i.ej = shl nuw i64 %i.ei, %.055.i
  %i.ek = or i64 %i.ej, %.sroa.8.056.i            ; 2 uses
  %i.el = shl i64 %.03454.i, 1
  %i.em = or disjoint i64 %i.el, 1                ; 2 uses
  %i.en = add nuw nsw i64 %.055.i, 1              ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %i.en, %.sroa.speculated.i57
  br i1 %exitcond.not.i67, label %.preheader.i, label %.lr.ph.i59, !llvm.loop !2138

.lr.ph65.i:                                       ; preds = %.preheader.i, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i
  %.sroa.0.164.i = phi i64 [ %i.ga, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.0.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.8.163.i = phi i64 [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.8.0.lcssa.i, %.preheader.i ]
  %.162.i = phi i64 [ %i.gg, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.0.lcssa.i58, %.preheader.i ] ; 3 uses
  %.13561.i = phi i64 [ %i.gf, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.162.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !66  ; 3 uses
  %i.eq = icmp sgt i8 %i.ep, -1
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph65.i
  %i.er = zext nneg i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i

bb.t:                                             ; preds = %.lr.ph65.i
  %i.eu = sext i8 %i.ep to i64                    ; 7 uses
  %i.ev = and i64 %i.eu, 127
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i37.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i37.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !2104
  %i.fa = icmp eq i64 %i.ez, %i.eu
  br i1 %i.fa, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.preheader.i.i.i38.i

.preheader.i.i.i38.i:                             ; preds = %bb.u
  %i.fb = mul nsw i64 %i.eu, 5
  %i.fc = add nsw i64 %i.eu, 1
  %i.fd = add nsw i64 %i.fc, %i.fb
  %i.fe = and i64 %i.fd, 127                      ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i39.i = icmp eq i64 %i.fh, 0
  br i1 %.not1718.i.i.i39.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i.i.preheader.i40.i

.lr.ph.i.i.preheader.i40.i:                       ; preds = %.preheader.i.i.i38.i
  %i.fi = load i64, ptr %i.ff, align 8, !tbaa !2104
  %i.fj = icmp eq i64 %i.fi, %i.eu
  br i1 %i.fj, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i.i.preheader.i40.i, %.lr.ph.i.i.i44.i
  %.019.i.i7.i42.i = phi i64 [ %i.fl, %.lr.ph.i.i.i44.i ], [ %i.eu, %.lr.ph.i.i.preheader.i40.i ]
  %i.fk = phi i64 [ %i.fp, %.lr.ph.i.i.i44.i ], [ %i.fe, %.lr.ph.i.i.preheader.i40.i ]
  %i.fl = lshr i64 %.019.i.i7.i42.i, 5            ; 2 uses
  %i.fm = mul nuw nsw i64 %i.fk, 5
  %i.fn = add nuw nsw i64 %i.fl, 1
  %i.fo = add nuw nsw i64 %i.fn, %i.fm
  %i.fp = and i64 %i.fo, 127                      ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i43.i = icmp eq i64 %i.fs, 0
  br i1 %.not17.i.i.i43.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, label %.lr.ph.i.i.i44.i, !llvm.loop !2105

.lr.ph.i.i.i44.i:                                 ; preds = %.lr.ph.i41.i
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !2104
  %i.fu = icmp eq i64 %i.ft, %i.eu
  br i1 %i.fu, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i: ; preds = %.lr.ph.i41.i
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i: ; preds = %.lr.ph.i.i.i44.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, %.lr.ph.i.i.preheader.i40.i, %.preheader.i.i.i38.i, %bb.u, %bb.t, %bb.s
  %.0.i45.i = phi i64 [ %i.et, %bb.s ], [ 0, %bb.t ], [ %i.ey, %bb.u ], [ 0, %.preheader.i.i.i38.i ], [ %i.fh, %.lr.ph.i.i.preheader.i40.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i ], [ %i.fs, %.lr.ph.i.i.i44.i ]
  %i.fv = xor i64 %.sroa.0.164.i, -1
  %i.fw = and i64 %.0.i45.i, %i.fv
  %i.fx = and i64 %i.fw, %.13561.i                ; 3 uses
  %i.fy = sub i64 0, %i.fx
  %i.fz = and i64 %i.fx, %i.fy
  %i.ga = or i64 %i.fz, %.sroa.0.164.i            ; 2 uses
  %i.gb = icmp ne i64 %i.fx, 0
  %i.gc = zext i1 %i.gb to i64
  %i.gd = shl nuw i64 %i.gc, %.162.i
  %i.ge = or i64 %i.gd, %.sroa.8.163.i            ; 2 uses
  %i.gf = shl i64 %.13561.i, 1
  %i.gg = add nuw nsw i64 %.162.i, 1              ; 2 uses
  %i.gh = icmp slt i64 %i.gg, %i.ar
  br i1 %i.gh, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, !llvm.loop !2139

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, %.preheader.i
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i ], [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader.i ], [ %i.ga, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %i.gi = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.1.lcssa.i)
  %i.gj = add nuw nsw i64 %i.gi, %.0.lcssa.i      ; 3 uses
  %.not.i68 = icmp eq i64 %i.gj, 0
  br i1 %.not.i68, label %.critedge, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gk = uitofp nneg i64 %i.gj to double
  %16 = insertelement <2 x double> poison, double %i.gk, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x double> poison, double %9, i64 0
  %19 = insertelement <2 x double> %18, double %i.j, i64 1
  %20 = fdiv <2 x double> %17, %19                ; 2 uses
  %21 = extractelement <2 x double> %20, i64 1
  %i.gl = fadd double %21, 0.000000e+00
  %22 = extractelement <2 x double> %20, i64 0
  %i.gm = fadd double %22, %i.gl
  %i.gn = fadd double %i.gm, 1.000000e+00
  %i.go = fdiv double %i.gn, 3.000000e+00
  %i.gp = fcmp ult double %i.go, %4
  br i1 %i.gp, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.v, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79
  %.05.i = phi i64 [ %i.if, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79 ], [ %.sroa.0.1.lcssa.i, %bb.v ] ; 3 uses
  %.0124.i = phi i64 [ %i.ic, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79 ], [ 0, %bb.v ]
  %.0133.i = phi i64 [ %i.ie, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79 ], [ %.sroa.8.1.lcssa.i, %bb.v ] ; 3 uses
  %i.gq = sub i64 0, %.05.i
  %i.gr = and i64 %.05.i, %i.gq                   ; 2 uses
  %i.gs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0133.i, i1 true)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !66  ; 3 uses
  %i.gv = icmp sgt i8 %i.gu, -1
  br i1 %i.gv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i70
  %i.gw = zext nneg i8 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79

bb.x:                                             ; preds = %.lr.ph.i70
  %i.gz = sext i8 %i.gu to i64                    ; 7 uses
  %i.ha = and i64 %i.gz, 127
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i71 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i.i71, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = load i64, ptr %i.hb, align 8, !tbaa !2104
  %i.hf = icmp eq i64 %i.he, %i.gz
  br i1 %i.hf, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, label %.preheader.i.i.i.i72

.preheader.i.i.i.i72:                             ; preds = %bb.y
  %i.hg = mul nsw i64 %i.gz, 5
  %i.hh = add nsw i64 %i.gz, 1
  %i.hi = add nsw i64 %i.hh, %i.hg
  %i.hj = and i64 %i.hi, 127                      ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i73 = icmp eq i64 %i.hm, 0
  br i1 %.not1718.i.i.i.i73, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, label %.lr.ph.i.i.preheader.i.i74

.lr.ph.i.i.preheader.i.i74:                       ; preds = %.preheader.i.i.i.i72
  %i.hn = load i64, ptr %i.hk, align 8, !tbaa !2104
  %i.ho = icmp eq i64 %i.hn, %i.gz
  br i1 %i.ho, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, label %.lr.ph.i.i75

.lr.ph.i.i75:                                     ; preds = %.lr.ph.i.i.preheader.i.i74, %.lr.ph.i.i.i.i78
  %.019.i.i7.i.i76 = phi i64 [ %i.hq, %.lr.ph.i.i.i.i78 ], [ %i.gz, %.lr.ph.i.i.preheader.i.i74 ]
  %i.hp = phi i64 [ %i.hu, %.lr.ph.i.i.i.i78 ], [ %i.hj, %.lr.ph.i.i.preheader.i.i74 ]
  %i.hq = lshr i64 %.019.i.i7.i.i76, 5            ; 2 uses
  %i.hr = mul nuw nsw i64 %i.hp, 5
  %i.hs = add nuw nsw i64 %i.hq, 1
  %i.ht = add nuw nsw i64 %i.hs, %i.hr
  %i.hu = and i64 %i.ht, 127                      ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i77 = icmp eq i64 %i.hx, 0
  br i1 %.not17.i.i.i.i77, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i82, label %.lr.ph.i.i.i.i78, !llvm.loop !2105

.lr.ph.i.i.i.i78:                                 ; preds = %.lr.ph.i.i75
  %i.hy = load i64, ptr %i.hv, align 8, !tbaa !2104
  %i.hz = icmp eq i64 %i.hy, %i.gz
  br i1 %i.hz, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, label %.lr.ph.i.i75, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i82: ; preds = %.lr.ph.i.i75
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79: ; preds = %.lr.ph.i.i.i.i78, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i82, %.lr.ph.i.i.preheader.i.i74, %.preheader.i.i.i.i72, %bb.y, %bb.x, %bb.w
  %.0.i.i80 = phi i64 [ %i.gy, %bb.w ], [ 0, %bb.x ], [ %i.hd, %bb.y ], [ 0, %.preheader.i.i.i.i72 ], [ %i.hm, %.lr.ph.i.i.preheader.i.i74 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i82 ], [ %i.hx, %.lr.ph.i.i.i.i78 ]
  %i.ia = and i64 %.0.i.i80, %i.gr
  %.not14.i = icmp eq i64 %i.ia, 0
  %i.ib = zext i1 %.not14.i to i64
  %i.ic = add nuw nsw i64 %.0124.i, %i.ib         ; 2 uses
  %i.id = add i64 %.0133.i, -1
  %i.ie = and i64 %i.id, %.0133.i                 ; 2 uses
  %i.if = xor i64 %i.gr, %.05.i
  %.not.i81 = icmp eq i64 %i.ie, 0
  br i1 %.not.i81, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i70, !llvm.loop !2140

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79, %bb.v
  %.012.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.ic, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.at

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  invoke void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %i.am, ptr noundef %.0)
          to label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i83, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.ii) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ab, %bb.aa
  %i.ij = load ptr, ptr %7, align 8, !tbaa !2088  ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i4.i, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ij) #29
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.ac, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.jx, %.body ], [ %i.ig, %bb.ac ], [ %i.ig, %_ZNSt6vectorImSaImEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ik = sdiv i64 %i.ar, 64
  %i.il = and i64 %i.ar, 63
  %i.im = icmp ne i64 %i.il, 0
  %i.in = zext i1 %i.im to i64
  %i.io = add nsw i64 %i.ik, %i.in                ; 5 uses
  %i.ip = sdiv i64 %i.ap, 64
  %i.iq = and i64 %i.ap, 63
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = zext i1 %i.ir to i64
  %i.it = add nsw i64 %i.ip, %i.is                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false), !alias.scope !2141
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.not47.i = icmp eq i64 %i.io, 0
  br i1 %.not47.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ix = icmp ugt i64 %i.io, 1152921504606846975
  br i1 %i.ix, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i132

.invoke:                                          ; preds = %bb.ae, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i132: ; preds = %bb.ad
  %i.iy = shl nuw nsw i64 %i.io, 3
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #26
          to label %.noexc141 unwind label %.body ; 5 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i132
  store i64 0, ptr %i.iz, align 8, !tbaa !84
  %i.ja = add nsw i64 %i.io, -1                   ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i134

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i134: ; preds = %.noexc141
  %i.jc = getelementptr i8, ptr %i.iz, i64 8
  %.idx.i.i.i.i.i31.i135 = shl nuw nsw i64 %i.ja, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jc, i8 0, i64 %.idx.i.i.i.i.i31.i135, i1 false), !tbaa !84
  br label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i:  ; preds = %.noexc141, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i134
  store ptr %i.iz, ptr %i.iu, align 8, !tbaa !1818
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.io ; 3 uses
  store ptr %i.jd, ptr %i.iv, align 8, !tbaa !1821
  store ptr %i.jd, ptr %i.iw, align 8, !tbaa !1820
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.je = phi ptr [ %i.jd, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ]
  %i.jf = phi ptr [ %i.iz, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 12 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.it, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ji = icmp ugt i64 %i.it, 1152921504606846975
  br i1 %i.ji, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ae
  %i.jj = shl nuw nsw i64 %i.it, 3
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #26
          to label %.noexc125 unwind label %.body ; 5 uses

end_hunk_2
begin_hunk_3_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i84
  %.052.i = phi i64 [ 0, %.lr.ph.i84 ], [ %i.kn, %bb.ak ] ; 5 uses
  %.sroa.0.051.i = phi i64 [ %i.jw, %.lr.ph.i84 ], [ %.sroa.0.2.i, %bb.ak ] ; 3 uses
  %.sroa.17.050.i = phi i64 [ -1, %.lr.ph.i84 ], [ %.sroa.17.1.i, %bb.ak ] ; 3 uses
  %.sroa.13.049.i = phi i64 [ %i.ju, %.lr.ph.i84 ], [ %.sroa.13.1.i, %bb.ak ] ; 3 uses
  %.sroa.10.048.i = phi i64 [ 0, %.lr.ph.i84 ], [ %.sroa.10.1.i, %bb.ak ] ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.052.i
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !66, !noalias !2141
  store i64 %.sroa.0.051.i, ptr %5, align 8, !tbaa !84, !noalias !2141
  store i64 %.sroa.10.048.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2141
  store i64 %.sroa.13.049.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2141
  store i64 %.sroa.17.050.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !84, !noalias !2141
  call fastcc void @_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE(ptr noundef nonnull readonly align 8 dereferenceable(56) %7, i8 noundef signext %i.jz, ptr %i.jq, ptr %i.jf, i64 noundef %.052.i, ptr noundef nonnull byval(%"struct.duckdb_jaro_winkler::detail::SearchBoundMask") align 8 %5)
  %i.ka = add nsw i64 %.052.i, %.0.i55            ; 2 uses
  %i.kb = add nsw i64 %i.ka, 1
  %i.kc = icmp slt i64 %i.kb, %i.ap
  br i1 %i.kc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kd = shl i64 %.sroa.13.049.i, 1              ; 2 uses
  %i.ke = or disjoint i64 %i.kd, 1
  %i.kf = add nsw i64 %i.ka, 2
  %i.kg = icmp slt i64 %i.kf, %i.ap
  %i.kh = icmp eq i64 %i.kd, -2
  %or.cond.i88 = select i1 %i.kg, i1 %i.kh, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i88, i64 0, i64 %i.ke
  %i.ki = zext i1 %or.cond.i88 to i64
  %spec.select46.i = add nsw i64 %.sroa.0.051.i, %i.ki
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.13.1.i = phi i64 [ %.sroa.13.049.i, %bb.af ], [ %spec.select.i, %bb.ag ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.051.i, %bb.af ], [ %spec.select46.i, %bb.ag ] ; 3 uses
  %.not.i86 = icmp slt i64 %.052.i, %.0.i55
  br i1 %.not.i86, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kj = shl i64 %.sroa.17.050.i, 1              ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kl = add nsw i64 %.sroa.0.1.i, -1
  %i.km = add nsw i64 %.sroa.10.048.i, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sroa.10.1.i = phi i64 [ %.sroa.10.048.i, %bb.ah ], [ %i.km, %bb.aj ], [ %.sroa.10.048.i, %bb.ai ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.050.i, %bb.ah ], [ -1, %bb.aj ], [ %i.kj, %bb.ai ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ah ], [ %i.kl, %bb.aj ], [ %.sroa.0.1.i, %bb.ai ]
  %i.kn = add nuw nsw i64 %.052.i, 1              ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.kn, %i.ar
  br i1 %exitcond.not.i87, label %.loopexit.loopexit, label %bb.af, !llvm.loop !2144

.loopexit.loopexit:                               ; preds = %bb.ak
  %.pre = load ptr, ptr %i.jg, align 8, !tbaa !1821
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1821
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.ko = phi ptr [ %.pre235, %.loopexit.loopexit ], [ %i.je, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i ] ; 3 uses
  %i.kp = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.jp, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.kq = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.kr = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ptrtoint ptr %i.ko to i64               ; 2 uses
  %i.ku = ptrtoint ptr %i.jf to i64               ; 2 uses
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = icmp ult i64 %i.ks, %i.kv
  br i1 %i.kw, label %.preheader.i91, label %.preheader20.i

.preheader20.i:                                   ; preds = %.loopexit
  %.not22.i = icmp eq ptr %i.jf, %i.ko
  br i1 %.not22.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.preheader20.i
  %i.kx = sub i64 %i.kt, %i.ku
  %i.ky = add i64 %i.kx, -8                       ; 2 uses
  %i.kz = lshr i64 %i.ky, 3
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ky, 24
  br i1 %min.iters.check, label %.lr.ph.i89.preheader424, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i89.preheader
  %n.vec = and i64 %i.la, 4611686018427387900     ; 3 uses
  %i.lb = shl i64 %n.vec, 3
  %i.lc = getelementptr i8, ptr %i.jf, i64 %i.lb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lh, %vector.body ]
  %vec.phi376 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.li, %vector.body ]
  %i.ld = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jf, i64 %i.ld ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !84
  %wide.load377 = load <2 x i64>, ptr %i.le, align 8, !tbaa !84
  %i.lf = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.lg = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load377)
  %i.lh = add <2 x i64> %i.lf, %vec.phi           ; 2 uses
  %i.li = add <2 x i64> %i.lg, %vec.phi376        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !2145

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.li, %i.lh
  %i.lk = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.la, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i89.preheader424

.lr.ph.i89.preheader424:                          ; preds = %.lr.ph.i89.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i89.preheader ], [ %i.lk, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.jf, %.lr.ph.i89.preheader ], [ %i.lc, %middle.block ]
  br label %.lr.ph.i89

.preheader.i91:                                   ; preds = %.loopexit
  %.not1925.i = icmp eq ptr %i.jq, %i.kp
  br i1 %.not1925.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i91
  %i.ll = sub i64 %i.kq, %i.kr
  %i.lm = add i64 %i.ll, -8                       ; 2 uses
  %i.ln = lshr i64 %i.lm, 3
  %i.lo = add nuw nsw i64 %i.ln, 1                ; 2 uses
  %min.iters.check379 = icmp ult i64 %i.lm, 24
  br i1 %min.iters.check379, label %.lr.ph28.i.preheader420, label %vector.ph380

vector.ph380:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec382 = and i64 %i.lo, 4611686018427387900  ; 3 uses
  %i.lp = shl i64 %n.vec382, 3
  %i.lq = getelementptr i8, ptr %i.jq, i64 %i.lp
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph380
  %index384 = phi i64 [ 0, %vector.ph380 ], [ %index.next390, %vector.body383 ] ; 2 uses
  %vec.phi385 = phi <2 x i64> [ zeroinitializer, %vector.ph380 ], [ %i.lv, %vector.body383 ]
  %vec.phi386 = phi <2 x i64> [ zeroinitializer, %vector.ph380 ], [ %i.lw, %vector.body383 ]
  %i.lr = shl i64 %index384, 3
  %next.gep387 = getelementptr i8, ptr %i.jq, i64 %i.lr ; 2 uses
  %i.ls = getelementptr i8, ptr %next.gep387, i64 16
  %wide.load388 = load <2 x i64>, ptr %next.gep387, align 8, !tbaa !84
  %wide.load389 = load <2 x i64>, ptr %i.ls, align 8, !tbaa !84
  %i.lt = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load388)
  %i.lu = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load389)
  %i.lv = add <2 x i64> %i.lt, %vec.phi385        ; 2 uses
  %i.lw = add <2 x i64> %i.lu, %vec.phi386        ; 2 uses
  %index.next390 = add nuw i64 %index384, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next390, %n.vec382
  br i1 %i.lx, label %middle.block391, label %vector.body383, !llvm.loop !2146

middle.block391:                                  ; preds = %vector.body383
  %bin.rdx392 = add <2 x i64> %i.lw, %i.lv
  %i.ly = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx392) ; 2 uses
  %cmp.n393 = icmp eq i64 %i.lo, %n.vec382
  br i1 %cmp.n393, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader420

.lr.ph28.i.preheader420:                          ; preds = %.lr.ph28.i.preheader, %middle.block391
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.ly, %middle.block391 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.jq, %.lr.ph28.i.preheader ], [ %i.lq, %middle.block391 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader420, %.lr.ph28.i
  %.027.i = phi i64 [ %i.mb, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader420 ]
  %.sroa.016.026.i = phi ptr [ %i.mc, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader420 ] ; 2 uses
  %i.lz = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !84
  %i.ma = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lz)
  %i.mb = add nuw nsw i64 %i.ma, %.027.i          ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.mc, %i.kp
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !2147

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader424, %.lr.ph.i89
  %.124.i = phi i64 [ %i.mf, %.lr.ph.i89 ], [ %.124.i.ph, %.lr.ph.i89.preheader424 ]
  %.sroa.012.023.i = phi ptr [ %i.mg, %.lr.ph.i89 ], [ %.sroa.012.023.i.ph, %.lr.ph.i89.preheader424 ] ; 2 uses
  %i.md = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !84
  %i.me = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.md)
  %i.mf = add nuw nsw i64 %i.me, %.124.i          ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i90 = icmp eq ptr %i.mg, %i.ko
  br i1 %.not.i90, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i89, !llvm.loop !2148

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i89, %.lr.ph28.i, %middle.block, %middle.block391, %.preheader20.i, %.preheader.i91
  %.2.i = phi i64 [ %i.mb, %.lr.ph28.i ], [ 0, %.preheader.i91 ], [ 0, %.preheader20.i ], [ %i.ly, %middle.block391 ], [ %i.lk, %middle.block ], [ %i.mf, %.lr.ph.i89 ] ; 3 uses
  %i.mh = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i92 = icmp eq i64 %i.mh, 0
  br i1 %.not.i92, label %.critedge50, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.mi = sitofp i64 %i.mh to double
  %23 = insertelement <2 x double> poison, double %i.mi, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x double> poison, double %9, i64 0
  %26 = insertelement <2 x double> %25, double %i.j, i64 1
  %27 = fdiv <2 x double> %24, %26                ; 2 uses
  %28 = extractelement <2 x double> %27, i64 1
  %i.mj = fadd double %28, 0.000000e+00
  %29 = extractelement <2 x double> %27, i64 0
  %i.mk = fadd double %29, %i.mj
  %i.ml = fadd double %i.mk, 1.000000e+00
  %i.mm = fdiv double %i.ml, 3.000000e+00
  %i.mn = fcmp ult double %i.mm, %4
  br i1 %i.mn, label %.critedge50, label %bb.al

bb.al:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94
  %.not19.i95 = icmp eq i64 %.2.i, 0
  br i1 %.not19.i95, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %bb.al
  %i.mo = load i64, ptr %i.jq, align 8, !tbaa !84
  %i.mp = load i64, ptr %i.jf, align 8, !tbaa !84
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ms = load ptr, ptr %7, align 8
  %i.mt = load i64, ptr %i.mr, align 8
  %i.mu = load ptr, ptr %i.mq, align 8
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i106 = icmp eq i64 %i.ov, 0
  br i1 %.not.i106, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.i, !llvm.loop !2126

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i96 = phi ptr [ %i.an, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.or, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.mo, %.preheader2.lr.ph.i ], [ %i.ou, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.mp, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.ov, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i108, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i108, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.mv, %.lr.ph.i108 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.my, %.lr.ph.i108 ]
  %.1.lcssa.i = phi ptr [ %.027.i96, %.preheader2.i ], [ %i.mw, %.lr.ph.i108 ] ; 2 uses
  br label %.preheader.i97

.lr.ph.i108:                                      ; preds = %.preheader2.i, %.lr.ph.i108
  %.16.i = phi ptr [ %i.mw, %.lr.ph.i108 ], [ %.027.i96, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.mv, %.lr.ph.i108 ], [ %.03621.i, %.preheader2.i ]
  %i.mv = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.mv
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !84 ; 2 uses
  %.not40.i = icmp eq i64 %i.my, 0
  br i1 %.not40.i, label %.lr.ph.i108, label %.preheader1.i, !llvm.loop !2127

.preheader.i97:                                   ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.or, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.ou, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.ot, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.ov, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i97, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.mz, %.lr.ph11.i ], [ %.13415.i, %.preheader.i97 ]
  %i.mz = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.mz
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !84 ; 2 uses
  %.not42.i = icmp eq i64 %i.nb, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !2128

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i97
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i97 ], [ %i.mz, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i97 ], [ %i.nb, %.lr.ph11.i ] ; 3 uses
  %i.nc = sub i64 0, %.2.lcssa.i
  %i.nd = and i64 %.2.lcssa.i, %i.nc              ; 2 uses
  %i.ne = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.nf = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !66  ; 3 uses
  %i.nh = icmp sgt i8 %i.ng, -1
  br i1 %i.nh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i
  %i.ni = zext nneg i8 %i.ng to i64
  %i.nj = mul nsw i64 %i.mt, %i.ni
  %i.nk = getelementptr [8 x i8], ptr %i.mu, i64 %i.nj
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %.235.lcssa.i
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !84
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.an:                                            ; preds = %._crit_edge.i
  %i.nn = getelementptr inbounds nuw [2048 x i8], ptr %i.ms, i64 %.235.lcssa.i ; 3 uses
  %i.no = sext i8 %i.ng to i64                    ; 7 uses
  %i.np = and i64 %i.no, 127
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i.i98 = icmp eq i64 %i.ns, 0
  br i1 %.not.i.i.i.i98, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nt = load i64, ptr %i.nq, align 8, !tbaa !2104
  %i.nu = icmp eq i64 %i.nt, %i.no
  br i1 %i.nu, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i99

.preheader.i.i.i.i99:                             ; preds = %bb.ao
  %i.nv = mul nsw i64 %i.no, 5
  %i.nw = add nsw i64 %i.no, 1
  %i.nx = add nsw i64 %i.nw, %i.nv
  %i.ny = and i64 %i.nx, 127                      ; 2 uses
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.ny ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !2102 ; 2 uses
  %.not1718.i.i.i.i100 = icmp eq i64 %i.ob, 0
  br i1 %.not1718.i.i.i.i100, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i101

.lr.ph.i.i.preheader.i.i101:                      ; preds = %.preheader.i.i.i.i99
  %i.oc = load i64, ptr %i.nz, align 8, !tbaa !2104
  %i.od = icmp eq i64 %i.oc, %i.no
  br i1 %i.od, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i.preheader.i.i101, %.lr.ph.i.i.i.i104
  %.019.i.i9.i.i = phi i64 [ %i.of, %.lr.ph.i.i.i.i104 ], [ %i.no, %.lr.ph.i.i.preheader.i.i101 ]
  %i.oe = phi i64 [ %i.oj, %.lr.ph.i.i.i.i104 ], [ %i.ny, %.lr.ph.i.i.preheader.i.i101 ]
  %i.of = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.og = mul nuw nsw i64 %i.oe, 5
  %i.oh = add nuw nsw i64 %i.of, 1
  %i.oi = add nuw nsw i64 %i.oh, %i.og
  %i.oj = and i64 %i.oi, 127                      ; 2 uses
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.oj ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !2102 ; 2 uses
  %.not17.i.i.i.i103 = icmp eq i64 %i.om, 0
  br i1 %.not17.i.i.i.i103, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i107, label %.lr.ph.i.i.i.i104, !llvm.loop !2105

.lr.ph.i.i.i.i104:                                ; preds = %.lr.ph.i.i102
  %i.on = load i64, ptr %i.ok, align 8, !tbaa !2104
  %i.oo = icmp eq i64 %i.on, %i.no
  br i1 %i.oo, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i102, !llvm.loop !2105

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i107: ; preds = %.lr.ph.i.i102
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, !llvm.loop !2105

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i: ; preds = %.lr.ph.i.i.i.i104, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i107, %.lr.ph.i.i.preheader.i.i101, %.preheader.i.i.i.i99, %bb.ao, %bb.an, %bb.am
  %.0.i.i105 = phi i64 [ %i.nm, %bb.am ], [ 0, %bb.an ], [ %i.ns, %bb.ao ], [ 0, %.preheader.i.i.i.i99 ], [ %i.ob, %.lr.ph.i.i.preheader.i.i101 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i107 ], [ %i.om, %.lr.ph.i.i.i.i104 ]
  %i.op = and i64 %.0.i.i105, %i.nd
  %.not43.i = icmp eq i64 %i.op, 0
  %i.oq = zext i1 %.not43.i to i64
  %i.or = add nsw i64 %.12718.i, %i.oq            ; 3 uses
  %i.os = add i64 %.23216.i, -1
  %i.ot = and i64 %i.os, %.23216.i                ; 2 uses
  %i.ou = xor i64 %i.nd, %.2.lcssa.i              ; 2 uses
  %i.ov = add nsw i64 %.13914.i, -1               ; 3 uses
  %.not41.i = icmp eq i64 %i.ot, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i97, !llvm.loop !2129

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %bb.al
  %.026.lcssa.i = phi i64 [ 0, %bb.al ], [ %i.or, %.loopexit.i ]
  %.not.i.i.i.i109 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i109, label %_ZNSt6vectorImSaImEED2Ev.exit.i110, label %bb.ap

bb.ap:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #29
  %.pre236 = load ptr, ptr %8, align 8, !tbaa !1818
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i110

_ZNSt6vectorImSaImEED2Ev.exit.i110:               ; preds = %bb.ap, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  %i.ow = phi ptr [ %.pre236, %bb.ap ], [ %i.jq, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit ] ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i1.i, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i110
  call void @_ZdlPv(ptr noundef nonnull %i.ow) #29
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i110, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i111, label %_ZNSt6vectorImSaImEED2Ev.exit.i112, label %bb.ar

bb.ar:                                            ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.oy) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i112

_ZNSt6vectorImSaImEED2Ev.exit.i112:               ; preds = %bb.ar, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  %i.oz = load ptr, ptr %7, align 8, !tbaa !2088  ; 2 uses
  %.not.i.i.i1.i113 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i1.i113, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i112
  call void @_ZdlPv(ptr noundef nonnull %i.oz) #29
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i112, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.at

bb.at:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %.246 = phi i64 [ %.012.lcssa.i, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ %.026.lcssa.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ]
  %.043 = phi i64 [ %i.gj, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ %i.mh, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ]
  %i.pa = sdiv i64 %.246, 2
  %i.pb = sitofp i64 %.043 to double              ; 3 uses
  %30 = insertelement <2 x double> poison, double %i.pb, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = insertelement <2 x double> poison, double %9, i64 0
  %33 = insertelement <2 x double> %32, double %i.j, i64 1
  %34 = fdiv <2 x double> %31, %33                ; 2 uses
  %35 = extractelement <2 x double> %34, i64 1
  %i.pc = fadd double %35, 0.000000e+00
  %36 = extractelement <2 x double> %34, i64 0
  %i.pd = fadd double %36, %i.pc
  %i.pe = sitofp i64 %i.pa to double
  %i.pf = fsub double %i.pb, %i.pe
  %i.pg = fdiv double %i.pf, %i.pb
  %i.ph = fadd double %i.pg, %i.pd
  %i.pi = fdiv double %i.ph, 3.000000e+00         ; 2 uses
  %i.pj = fcmp oge double %i.pi, %4
  %i.pk = select i1 %i.pj, double %i.pi, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.critedge:                                        ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.critedge50:                                      ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit94
  %.not.i.i.i.i115 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i115, label %_ZNSt6vectorImSaImEED2Ev.exit.i116, label %bb.au

bb.au:                                            ; preds = %.critedge50
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i116

_ZNSt6vectorImSaImEED2Ev.exit.i116:               ; preds = %bb.au, %.critedge50
  %i.pl = load ptr, ptr %8, align 8, !tbaa !1818  ; 2 uses
  %.not.i.i.i1.i117 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i1.i117, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i116
  call void @_ZdlPv(ptr noundef nonnull %i.pl) #29
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i116, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i.i119, label %_ZNSt6vectorImSaImEED2Ev.exit.i120, label %bb.aw

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118
  call void @_ZdlPv(ptr noundef nonnull %i.pn) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i120

_ZNSt6vectorImSaImEED2Ev.exit.i120:               ; preds = %bb.aw, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit118
  %i.po = load ptr, ptr %7, align 8, !tbaa !2088  ; 2 uses
  %.not.i.i.i1.i121 = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i1.i121, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120
  call void @_ZdlPv(ptr noundef nonnull %i.po) #29
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i120, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %bb.a, %bb.at, %.critedge, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.s, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.pk, %bb.at ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit123 ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.critedge ]
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

._crit_edge:                                      ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit, %_ZNSt6vectorImSaImEE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit
  %.015 = phi i64 [ %i.bt, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit ], [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit ] ; 4 uses
  %i.y = lshr i64 %.015, 6                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66   ; 3 uses
  %i.ab = and i64 %.015, 63
  %i.ac = shl nuw i64 1, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i8 %i.aa, -1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ae = zext nneg i8 %i.aa to i64
  %i.af = load i64, ptr %i.i, align 8, !tbaa !2094
  %i.ag = mul nsw i64 %i.af, %i.ae
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !1818
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !84
  %i.al = or i64 %i.ak, %i.ac
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !84
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

bb.f:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %0, align 8, !tbaa !2088
  %i.an = getelementptr inbounds nuw [2048 x i8], ptr %i.am, i64 %i.y ; 4 uses
  %i.ao = sext i8 %i.aa to i64                    ; 8 uses
  %i.ap = and i64 %i.ao, 127                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !2102 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !2104
  %i.au = icmp eq i64 %i.at, %i.ao
  br i1 %i.au, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g
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

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i: ; preds = %.lr.ph.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i, %.lr.ph.i.i.preheader.i, %.preheader.i.i.i, %bb.g, %bb.f
  %i.bp = phi i64 [ 0, %bb.f ], [ %i.as, %bb.g ], [ 0, %.preheader.i.i.i ], [ %i.bb, %.lr.ph.i.i.preheader.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i ], [ %i.bm, %.lr.ph.i.i.i ]
  %.015.i.i.i = phi i64 [ %i.ap, %bb.f ], [ %i.ap, %bb.g ], [ %i.ay, %.preheader.i.i.i ], [ %i.ay, %.lr.ph.i.i.preheader.i ], [ %i.bj, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i ], [ %i.bj, %.lr.ph.i.i.i ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.015.i.i.i ; 2 uses
  store i64 %i.ao, ptr %i.bq, align 8, !tbaa !2104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = or i64 %i.bp, %i.ac
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !2102
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit: ; preds = %bb.e, %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i
  %i.bt = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.c
end_hunk_3
