inline.NumInlined: 39107
inline.NumDeleted: 7522
begin_hunk_0_@_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SO_SK_:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit
  %.sroa.03.012 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.e = load i32, ptr %.sroa.03.012, align 4, !tbaa !3
  store i32 %i.e, ptr %i.a, align 4, !tbaa !3
  %.sroa.0.06.i = getelementptr inbounds i8, ptr %.sroa.03.012, i64 -4 ; 2 uses
  %i.f = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS7_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE_ZNKS7_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EclIiNS_17__normal_iteratorIPiSB_EEEEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr nonnull %.sroa.0.06.i)
  br i1 %i.f, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i.backedge
  %.sroa.0.08.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.backedge ], [ %.sroa.0.06.i, %bb.b ] ; 5 uses
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i.backedge ], [ %.sroa.03.012, %bb.b ]
  %i.g = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !3
  store i32 %i.g, ptr %.sroa.03.07.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.i = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !7857, !nonnull !59, !align !723
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7851
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !359  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = zext i32 %i.h to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !329
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  %i.u = zext i32 %i.i to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !329
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i.i11.i.i = icmp eq i64 %i.aa, 0
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i: ; preds = %bb.c, %.lr.ph.i
  %i.ab = phi i1 [ %.not.i.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ac = phi i1 [ %.not.i.i.i11.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !7859, !nonnull !59, !align !721
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.f, label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.125) #51
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i = and i1 %i.ab, %i.ac
  %i.af = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.ag = xor i1 %i.ab, %i.af
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.ag
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i.backedge

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.126) #51
  unreachable

.critedge.i.i:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !7860, !nonnull !59, !align !723
  %i.ai = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i32 noundef %i.h, i32 noundef %i.i)
  br i1 %i.ai, label %.lr.ph.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit

.lr.ph.i.backedge:                                ; preds = %bb.i, %bb.g
  br label %.lr.ph.i, !llvm.loop !7874

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.08.i, %bb.i ], [ %.sroa.0.08.i, %bb.g ]
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %i.aj, ptr %.sroa.03.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %1
  br i1 %i.al, label %._crit_edge, label %bb.b, !llvm.loop !7876
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS7_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE_ZNKS7_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EclIiNS_17__normal_iteratorIPiSB_EEEEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7857, !nonnull !59, !align !723
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7851
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !359  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.a to i64                     ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !329
  %i.k = and i64 %i.g, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = zext i32 %i.b to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !329
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i.i11.i = icmp eq i64 %i.t, 0
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.u = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.v = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7859, !nonnull !59, !align !721
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.125) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aa = xor i1 %i.u, %i.z
  %spec.select.i = xor i1 %i.aa, true
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.126) #51
  unreachable

.critedge.i:                                      ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7860, !nonnull !59, !align !723
  %i.ad = tail call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i32 noundef %i.a, i32 noundef %i.b)
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE0_clEii.exit

_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE0_clEii.exit: ; preds = %bb.f, %bb.g, %bb.i
  %.0.i = phi i1 [ %i.ad, %bb.i ], [ false, %bb.f ], [ %spec.select.i, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEET_SO_SO_SK_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !7877

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_RSK_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_RSK_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1522 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01621 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.y, %bb.b ], [ %i.d, %.lr.ph ]
  %.sroa.0.0.copyload25 = load <3 x ptr>, ptr %3, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1522, i64 -4
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168") align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.0.0.copyload25, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.p, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.p, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.m, i32 noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.o, label %bb.d, label %.preheader.i.i, !llvm.loop !7878

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.s = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.q, i32 noundef %i.r)
  br i1 %i.s, label %.preheader.i.i, label %bb.e, !llvm.loop !7879

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEET_SO_SO_SK_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  %i.u = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  store i32 %i.t, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !7880

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEET_SO_SO_SK_.exit: ; preds = %bb.e
  %i.v = add nsw i64 %.01621, -1                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_SL_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1522, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168") align 8 %3)
  %i.w = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.x = sub i64 %i.w, %i.a
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 16
  br i1 %i.z, label %bb.b, label %.loopexit, !llvm.loop !7877

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEET_SO_SO_SK_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1170", align 8 ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1170", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1170", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.08.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.08.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.08.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.020.i.idx ; 6 uses
  %i.e = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.f = load i32, ptr %0, align 4, !tbaa !3
  %i.g = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.e, i32 noundef %i.f)
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.i = icmp samesign ugt i64 %.sroa.08.020.i.idx, 4
  br i1 %i.i, label %bb.d, label %bb.e, !prof !381

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.08.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  %i.k = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.k, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.l = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3 ; 3 uses
  %i.m = load i32, ptr %.pn19.i, align 4, !tbaa !3
  %i.n = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.m)
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i.ptr, %bb.f ]
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3
  store i32 %i.o, ptr %.sroa.04.08.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.q = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.p)
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i, !llvm.loop !7881

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.l, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.08.020.i.add = add nuw nsw i64 %.sroa.08.020.i.idx, 4 ; 2 uses
  %i.r = icmp eq i64 %.sroa.08.020.i.add, 64
  br i1 %i.r, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit, label %bb.b, !llvm.loop !7882

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.033.sroa.0.0.copyload38 = load <3 x ptr>, ptr %2, align 8
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %bb.o, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i7
  %.sroa.03.07.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i7 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.033.sroa.0.0.copyload38, ptr %5, align 8
  %i.u = load i32, ptr %.sroa.03.07.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.07.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.w = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.v)
  br i1 %i.w, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i7

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i9
  %.sroa.0.09.i.i10 = phi ptr [ %.sroa.0.0.i.i12, %.lr.ph.i.i9 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.04.08.i.i11 = phi ptr [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ], [ %.sroa.03.07.i, %.lr.ph.i6 ]
  %i.x = load i32, ptr %.sroa.0.09.i.i10, align 4, !tbaa !3
  store i32 %i.x, ptr %.sroa.04.08.i.i11, align 4, !tbaa !3
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i10, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i12, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i7, !llvm.loop !7881

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i7: ; preds = %.lr.ph.i.i9, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.03.07.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.u, ptr %.sroa.04.0.lcssa.i.i8, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %bb.o, label %.lr.ph.i6, !llvm.loop !7883

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ac = icmp eq ptr %0, %1
  %.sroa.08.018.i14 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.08.018.i14, %1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit26, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.h, %bb.n
  %.sroa.08.020.i16 = phi ptr [ %.sroa.08.0.i20, %bb.n ], [ %.sroa.08.018.i14, %bb.h ] ; 8 uses
  %.pn19.i17 = phi ptr [ %.sroa.08.020.i16, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.ae = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.af = load i32, ptr %0, align 4, !tbaa !3
  %i.ag = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ae, i32 noundef %i.af)
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i15
  %i.ah = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.ai = ptrtoint ptr %.sroa.08.020.i16 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %bb.k, !prof !381

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 8
  %i.an = sub nsw i64 0, %i.ak
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ao, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.aj, 4
  br i1 %i.ap, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 4
  %i.ar = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.ah, ptr %0, align 4, !tbaa !3
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.as = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3 ; 3 uses
  %i.at = load i32, ptr %.pn19.i17, align 4, !tbaa !3
  %i.au = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.at)
  br i1 %i.au, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i18

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %.sroa.0.09.i.i22 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i21 ], [ %.pn19.i17, %bb.m ] ; 4 uses
  %.sroa.04.08.i.i23 = phi ptr [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ], [ %.sroa.08.020.i16, %bb.m ]
  %i.av = load i32, ptr %.sroa.0.09.i.i22, align 4, !tbaa !3
  store i32 %i.av, ptr %.sroa.04.08.i.i23, align 4, !tbaa !3
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i22, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %.sroa.0.0.i.i24, align 4, !tbaa !3
  %i.ax = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.aw)
  br i1 %i.ax, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i18, !llvm.loop !7881

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i18: ; preds = %.lr.ph.i.i21, %bb.m
  %.sroa.04.0.lcssa.i.i19 = phi ptr [ %.sroa.08.020.i16, %bb.m ], [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.as, ptr %.sroa.04.0.lcssa.i.i19, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25
  %.sroa.08.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i16, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.08.0.i20, %1
  br i1 %i.ay, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit26, label %.lr.ph.i15, !llvm.loop !7882

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit26: ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_.exit.i7, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SK_.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1169", align 8 ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = add nsw i64 %i.j, -1
  %i.l = sdiv i64 %i.k, 2
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.034.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %i.y = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !7884

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.z = and i64 %i.i, 4
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ab = add nsw i64 %i.j, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i, %i.ac
  br i1 %i.ad, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7885
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7885
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.af, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.d ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ak, i32 noundef %i.f)
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !7886

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ao, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ap = icmp sgt i64 %i.i, 4
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !7887

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1169", align 8 ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1168", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.034.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.x, i32 noundef %i.y)
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7884

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.af, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7885
  %i.ag = icmp sgt i64 %.1.i, %.08
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_SK_SL_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SA_EUliE0_EEvT0_T1_S9_SA_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ai, i32 noundef %i.q)
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_SK_SL_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_SK_SL_T2_.exit, !llvm.loop !7886

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SH_EUliE0_EEvT0_T1_SG_SH_EUliiE_EEEvT_SK_SK_SL_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.an, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE0_EEEvT_SQ_SM_:bb.a
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i.backedge ], [ %.sroa.03.012, %bb.b ]
  %i.g = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !3
  store i32 %i.g, ptr %.sroa.03.07.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.i = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !8035, !nonnull !59, !align !723 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8028
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !359  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8030, !nonnull !59, !align !723
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !603  ; 2 uses
  %i.q = sext i32 %i.h to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = lshr i64 %i.t, 6
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !329
  %i.x = and i64 %i.t, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.y, %i.w
  %.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  %i.aa = sext i32 %i.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !329
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i11.i.i = icmp eq i64 %i.aj, 0
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i: ; preds = %bb.c, %.lr.ph.i
  %i.ak = phi i1 [ %.not.i.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.al = phi i1 [ %.not.i.i.i11.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !8037, !nonnull !59, !align !721
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.am, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %bb.f, label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.125) #51
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i = and i1 %i.ak, %i.al
  %i.ao = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.ap = xor i1 %i.ak, %i.ao
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.ap
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE0_EEEvT_SM_.exit, label %.lr.ph.i.backedge

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.126) #51
  unreachable

.critedge.i.i:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i.i
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !8038, !nonnull !59, !align !723
  %i.ar = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i32 noundef %i.h, i32 noundef %i.i)
  br i1 %i.ar, label %.lr.ph.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE0_EEEvT_SM_.exit

.lr.ph.i.backedge:                                ; preds = %bb.i, %bb.g
  br label %.lr.ph.i, !llvm.loop !8053

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE0_EEEvT_SM_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.08.i, %bb.i ], [ %.sroa.0.08.i, %bb.g ]
  %i.as = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %i.as, ptr %.sroa.03.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.au = icmp eq ptr %i.at, %1
  br i1 %i.au, label %._crit_edge, label %bb.b, !llvm.loop !8055
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS7_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE_ZNKS7_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EclIiNS_17__normal_iteratorIPiSB_EEEEbRT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !8035, !nonnull !59, !align !723 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8028
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !359  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8030, !nonnull !59, !align !723
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !603  ; 2 uses
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !329
  %i.q = and i64 %i.m, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = sext i32 %i.b to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !329
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %i.z
  %.not.i.i.i11.i = icmp eq i64 %i.ac, 0
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.ad = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.ae = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8037, !nonnull !59, !align !721
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.125) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aj = xor i1 %i.ad, %i.ai
  %spec.select.i = xor i1 %i.aj, true
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.126) #51
  unreachable

.critedge.i:                                      ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8038, !nonnull !59, !align !723
  %i.am = tail call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i32 noundef %i.a, i32 noundef %i.b)
  br label %_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE0_clEii.exit

_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE0_clEii.exit: ; preds = %bb.f, %bb.g, %bb.i
  %.0.i = phi i1 [ %i.am, %bb.i ], [ false, %bb.f ], [ %spec.select.i, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_SN_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEET_SQ_SQ_SM_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !8056

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_RSM_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_RSM_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1522 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01621 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.y, %bb.b ], [ %i.d, %.lr.ph ]
  %.sroa.0.0.copyload25 = load <3 x ptr>, ptr %3, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1522, i64 -4
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_SQ_SM_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188") align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.0.0.copyload25, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.p, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.p, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.m, i32 noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.o, label %bb.d, label %.preheader.i.i, !llvm.loop !8057

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.s = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.q, i32 noundef %i.r)
  br i1 %i.s, label %.preheader.i.i, label %bb.e, !llvm.loop !8058

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEET_SQ_SQ_SM_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  %i.u = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  store i32 %i.t, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !8059

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEET_SQ_SQ_SM_.exit: ; preds = %bb.e
  %i.v = add nsw i64 %.01621, -1                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_SN_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1522, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188") align 8 %3)
  %i.w = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.x = sub i64 %i.w, %i.a
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 16
  br i1 %i.z, label %bb.b, label %.loopexit, !llvm.loop !8056

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEET_SQ_SQ_SM_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1190", align 8 ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1190", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1190", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.08.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.08.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.08.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.020.i.idx ; 6 uses
  %i.e = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.f = load i32, ptr %0, align 4, !tbaa !3
  %i.g = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.e, i32 noundef %i.f)
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.i = icmp samesign ugt i64 %.sroa.08.020.i.idx, 4
  br i1 %i.i, label %bb.d, label %bb.e, !prof !381

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.08.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  %i.k = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.k, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.l = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3 ; 3 uses
  %i.m = load i32, ptr %.pn19.i, align 4, !tbaa !3
  %i.n = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.m)
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i.ptr, %bb.f ]
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3
  store i32 %i.o, ptr %.sroa.04.08.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.q = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.p)
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i, !llvm.loop !8060

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.l, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.08.020.i.add = add nuw nsw i64 %.sroa.08.020.i.idx, 4 ; 2 uses
  %i.r = icmp eq i64 %.sroa.08.020.i.add, 64
  br i1 %i.r, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit, label %bb.b, !llvm.loop !8061

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.033.sroa.0.0.copyload38 = load <3 x ptr>, ptr %2, align 8
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %bb.o, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i7
  %.sroa.03.07.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i7 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.033.sroa.0.0.copyload38, ptr %5, align 8
  %i.u = load i32, ptr %.sroa.03.07.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.07.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.w = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.v)
  br i1 %i.w, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i7

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i9
  %.sroa.0.09.i.i10 = phi ptr [ %.sroa.0.0.i.i12, %.lr.ph.i.i9 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.04.08.i.i11 = phi ptr [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ], [ %.sroa.03.07.i, %.lr.ph.i6 ]
  %i.x = load i32, ptr %.sroa.0.09.i.i10, align 4, !tbaa !3
  store i32 %i.x, ptr %.sroa.04.08.i.i11, align 4, !tbaa !3
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i10, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i12, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i7, !llvm.loop !8060

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i7: ; preds = %.lr.ph.i.i9, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.03.07.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.u, ptr %.sroa.04.0.lcssa.i.i8, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %bb.o, label %.lr.ph.i6, !llvm.loop !8062

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ac = icmp eq ptr %0, %1
  %.sroa.08.018.i14 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.08.018.i14, %1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit26, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.h, %bb.n
  %.sroa.08.020.i16 = phi ptr [ %.sroa.08.0.i20, %bb.n ], [ %.sroa.08.018.i14, %bb.h ] ; 8 uses
  %.pn19.i17 = phi ptr [ %.sroa.08.020.i16, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.ae = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.af = load i32, ptr %0, align 4, !tbaa !3
  %i.ag = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ae, i32 noundef %i.af)
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i15
  %i.ah = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.ai = ptrtoint ptr %.sroa.08.020.i16 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %bb.k, !prof !381

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 8
  %i.an = sub nsw i64 0, %i.ak
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ao, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.aj, 4
  br i1 %i.ap, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 4
  %i.ar = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.ah, ptr %0, align 4, !tbaa !3
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.as = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3 ; 3 uses
  %i.at = load i32, ptr %.pn19.i17, align 4, !tbaa !3
  %i.au = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.at)
  br i1 %i.au, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i18

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %.sroa.0.09.i.i22 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i21 ], [ %.pn19.i17, %bb.m ] ; 4 uses
  %.sroa.04.08.i.i23 = phi ptr [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ], [ %.sroa.08.020.i16, %bb.m ]
  %i.av = load i32, ptr %.sroa.0.09.i.i22, align 4, !tbaa !3
  store i32 %i.av, ptr %.sroa.04.08.i.i23, align 4, !tbaa !3
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i22, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %.sroa.0.0.i.i24, align 4, !tbaa !3
  %i.ax = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.aw)
  br i1 %i.ax, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i18, !llvm.loop !8060

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i18: ; preds = %.lr.ph.i.i21, %bb.m
  %.sroa.04.0.lcssa.i.i19 = phi ptr [ %.sroa.08.020.i16, %bb.m ], [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.as, ptr %.sroa.04.0.lcssa.i.i19, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25
  %.sroa.08.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i16, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.08.0.i20, %1
  br i1 %i.ay, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit26, label %.lr.ph.i15, !llvm.loop !8061

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit26: ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_.exit.i7, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SM_.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_RSM_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1189", align 8 ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = add nsw i64 %i.j, -1
  %i.l = sdiv i64 %i.k, 2
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.034.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %i.y = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8063

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.z = and i64 %i.i, 4
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ab = add nsw i64 %i.j, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i, %i.ac
  br i1 %i.ad, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7885
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7885
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.af, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.d ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ak, i32 noundef %i.f)
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit, label %.lr.ph.i.i.i, !llvm.loop !8064

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ao, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ap = icmp sgt i64 %i.i, 4
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !8065

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_SQ_RSM_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SQ_RSM_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1189", align 8 ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1188", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_SM_SN_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_SM_SN_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.034.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.x, i32 noundef %i.y)
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8063

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.af, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7885
  %i.ag = icmp sgt i64 %.1.i, %.08
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_SM_SN_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKS4_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS4_11sortIndicesES9_SB_SC_EUliE0_EEvT0_T1_S9_SC_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ai, i32 noundef %i.q)
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_SM_SN_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_SM_SN_T2_.exit, !llvm.loop !8064

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE11sortIndicesILb1EZNKSE_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSE_11sortIndicesESG_SI_SJ_EUliE0_EEvT0_T1_SG_SJ_EUliiE_EEEvT_SM_SM_SN_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.an, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a

.preheader25:                                     ; preds = %bb.b, %bb.g
  %.sroa.06.0.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.022, %bb.b ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.06.0.i, i64 -4 ; 3 uses
  %i.ac = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  %i.ad = load ptr, ptr %2, align 8, !tbaa !8473
  %i.ae = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ad, i32 noundef %i.r) ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !8473
  %i.ag = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.af, i32 noundef %i.ac) ; 2 uses
  %i.ah = xor i1 %i.ae, true
  %i.ai = and i1 %i.ag, %i.ah
  %i.aj = xor i1 %i.ae, %i.ag
  %i.ak = load i8, ptr %i.c, align 1, !tbaa !2377, !range !58, !noundef !59
  %i.al = trunc nuw i8 %i.ak to i1
  %not..i.i.i = xor i1 %i.al, true
  %i.am = and i1 %i.aj, %not..i.i.i
  %i.an = xor i1 %i.ai, %i.am
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %.preheader25
  %i.ao = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.ao, ptr %.sroa.06.0.i, align 4, !tbaa !3
  br label %.preheader25, !llvm.loop !8490

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.preheader25, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.06.0.i, %.preheader25 ]
  store i32 %i.r, ptr %.sink, align 4, !tbaa !3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 4 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.ap, label %.loopexit, label %bb.b, !llvm.loop !8500

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.1257, align 8           ; 7 uses
  %8 = alloca %class.anon.1252, align 8           ; 3 uses
  %9 = alloca %class.anon.1253, align 8           ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 3 uses
  %11 = alloca %class.anon.1256, align 8          ; 8 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  store ptr %8, ptr %11, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !8501
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %10, ptr %i.d, align 8, !tbaa !2374
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !359
  %.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %5, align 8, !tbaa !603    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !603  ; 8 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %i.o = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = xor i64 %i.p, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.q, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258") align 8 %7)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %i.g, %i.i
  br i1 %i.r, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = xor i64 %i.x, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1261") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1261") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.e, %bb.d, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.1265, align 8           ; 9 uses
  %8 = alloca %class.anon.1254, align 8           ; 5 uses
  %9 = alloca %class.anon.1255, align 8           ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %11 = alloca %class.anon.1264, align 8          ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  store ptr %8, ptr %11, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !2374
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !359
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !603    ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !603  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1266") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1266") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1266") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1266") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SK_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !8503

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1522 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01621 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.y, %bb.b ], [ %i.d, %.lr.ph ]
  %.sroa.0.0.copyload25 = load <3 x ptr>, ptr %3, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1522, i64 -4
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258") align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.0.0.copyload25, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.p, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.p, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.m, i32 noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.o, label %bb.d, label %.preheader.i.i, !llvm.loop !8504

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.s = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.q, i32 noundef %i.r)
  br i1 %i.s, label %.preheader.i.i, label %bb.e, !llvm.loop !8505

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SK_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  %i.u = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.012.1.i.i, align 4, !tbaa !3
  store i32 %i.t, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !8506

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SK_.exit: ; preds = %bb.e
  %i.v = add nsw i64 %.01621, -1                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1522, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258") align 8 %3)
  %i.w = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.x = sub i64 %i.w, %i.a
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 16
  br i1 %i.z, label %bb.b, label %.loopexit, !llvm.loop !8503

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SK_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1260", align 8 ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1260", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1260", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.08.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.08.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.08.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.020.i.idx ; 6 uses
  %i.e = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.f = load i32, ptr %0, align 4, !tbaa !3
  %i.g = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.e, i32 noundef %i.f)
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3
  %i.i = icmp samesign ugt i64 %.sroa.08.020.i.idx, 4
  br i1 %i.i, label %bb.d, label %bb.e, !prof !381

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.08.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  %i.k = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.k, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.l = load i32, ptr %.sroa.08.020.i.ptr, align 4, !tbaa !3 ; 3 uses
  %i.m = load i32, ptr %.pn19.i, align 4, !tbaa !3
  %i.n = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.m)
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i.ptr, %bb.f ]
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3
  store i32 %i.o, ptr %.sroa.04.08.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.q = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.l, i32 noundef %i.p)
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i, !llvm.loop !8507

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.l, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.08.020.i.add = add nuw nsw i64 %.sroa.08.020.i.idx, 4 ; 2 uses
  %i.r = icmp eq i64 %.sroa.08.020.i.add, 64
  br i1 %i.r, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, label %bb.b, !llvm.loop !8508

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.033.sroa.0.0.copyload38 = load <3 x ptr>, ptr %2, align 8
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %bb.o, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7
  %.sroa.03.07.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x ptr> %.sroa.033.sroa.0.0.copyload38, ptr %5, align 8
  %i.u = load i32, ptr %.sroa.03.07.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.07.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.w = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.v)
  br i1 %i.w, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i9
  %.sroa.0.09.i.i10 = phi ptr [ %.sroa.0.0.i.i12, %.lr.ph.i.i9 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.04.08.i.i11 = phi ptr [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ], [ %.sroa.03.07.i, %.lr.ph.i6 ]
  %i.x = load i32, ptr %.sroa.0.09.i.i10, align 4, !tbaa !3
  store i32 %i.x, ptr %.sroa.04.08.i.i11, align 4, !tbaa !3
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i10, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i12, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph.i.i9, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7, !llvm.loop !8507

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7: ; preds = %.lr.ph.i.i9, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.03.07.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i10, %.lr.ph.i.i9 ]
  store i32 %i.u, ptr %.sroa.04.0.lcssa.i.i8, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %bb.o, label %.lr.ph.i6, !llvm.loop !8509

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ac = icmp eq ptr %0, %1
  %.sroa.08.018.i14 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.08.018.i14, %1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.h, %bb.n
  %.sroa.08.020.i16 = phi ptr [ %.sroa.08.0.i20, %bb.n ], [ %.sroa.08.018.i14, %bb.h ] ; 8 uses
  %.pn19.i17 = phi ptr [ %.sroa.08.020.i16, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.ae = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.af = load i32, ptr %0, align 4, !tbaa !3
  %i.ag = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ae, i32 noundef %i.af)
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i15
  %i.ah = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3
  %i.ai = ptrtoint ptr %.sroa.08.020.i16 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %bb.k, !prof !381

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 8
  %i.an = sub nsw i64 0, %i.ak
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ao, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.aj, 4
  br i1 %i.ap, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 4
  %i.ar = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.ah, ptr %0, align 4, !tbaa !3
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.as = load i32, ptr %.sroa.08.020.i16, align 4, !tbaa !3 ; 3 uses
  %i.at = load i32, ptr %.pn19.i17, align 4, !tbaa !3
  %i.au = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.at)
  br i1 %i.au, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18

.lr.ph.i.i21:                                     ; preds = %bb.m, %.lr.ph.i.i21
  %.sroa.0.09.i.i22 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i21 ], [ %.pn19.i17, %bb.m ] ; 4 uses
  %.sroa.04.08.i.i23 = phi ptr [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ], [ %.sroa.08.020.i16, %bb.m ]
  %i.av = load i32, ptr %.sroa.0.09.i.i22, align 4, !tbaa !3
  store i32 %i.av, ptr %.sroa.04.08.i.i23, align 4, !tbaa !3
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i22, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %.sroa.0.0.i.i24, align 4, !tbaa !3
  %i.ax = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %i.aw)
  br i1 %i.ax, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18, !llvm.loop !8507

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18: ; preds = %.lr.ph.i.i21, %bb.m
  %.sroa.04.0.lcssa.i.i19 = phi ptr [ %.sroa.08.020.i16, %bb.m ], [ %.sroa.0.09.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.as, ptr %.sroa.04.0.lcssa.i.i19, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25
  %.sroa.08.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i16, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.08.0.i20, %1
  br i1 %i.ay, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26, label %.lr.ph.i15, !llvm.loop !8508

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26: ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit.i7, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1259", align 8 ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = add nsw i64 %i.j, -1
  %i.l = sdiv i64 %i.k, 2
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.034.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %i.y = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8510

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.z = and i64 %i.i, 4
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ab = add nsw i64 %i.j, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i, %i.ac
  br i1 %i.ad, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7582
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7582
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.af, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.d ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ak, i32 noundef %i.f)
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !8511

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ao, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ap = icmp sgt i64 %i.i, 4
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !8512

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1259", align 8 ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1258", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.034.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.x, i32 noundef %i.y)
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8510

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.af, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !7582
  %i.ag = icmp sgt i64 %.1.i, %.08
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ai, i32 noundef %i.q)
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, !llvm.loop !8511

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.an, align 4, !tbaa !3
end_hunk_2
