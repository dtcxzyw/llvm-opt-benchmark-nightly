Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/URLFunctionsRegistration?download=true
inline.NumInlined: 16520
inline.NumDeleted: 4258
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !681, !range !140, !noundef !141
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = sub nsw i32 0, %i.bu
  %i.ca = select i1 %i.by, i32 %i.bu, i32 %i.bz
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.backedge:                                ; preds = %.split, %bb.e
  br label %.lr.ph.i, !llvm.loop !77

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %.split, %bb.e, %.lr.ph.i.us, %.lr.ph.i.us.us, %._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit_crit_edge
  %i.cc = phi i32 [ %.pre29, %._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit_crit_edge ], [ %i.ag, %.lr.ph.i.us ], [ %i.w, %.lr.ph.i.us.us ], [ %i.aq, %bb.e ], [ %i.aq, %.split ]
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.018, %._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit_crit_edge ], [ %.sroa.0.08.i.us, %.lr.ph.i.us ], [ %.sroa.0.08.i.us.us, %.lr.ph.i.us.us ], [ %.sroa.0.08.i, %bb.e ], [ %.sroa.0.08.i, %.split ]
  store i32 %i.cc, ptr %.sroa.03.0.lcssa.i, align 4, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.018, i64 4 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %1
  br i1 %i.ce, label %._crit_edge, label %bb.b, !llvm.loop !2665
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclIiNS_17__normal_iteratorIPiS9_EEEEbRT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !130    ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !130    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !761, !nonnull !141, !align !224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !754
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !590  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.a to i64                     ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !187
  %i.k = and i64 %i.g, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = zext i32 %i.b to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !187
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i.i11.i = icmp eq i64 %i.t, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.u = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.v = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !762, !nonnull !141, !align !495
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aa = xor i1 %i.u, %i.z
  %spec.select.i = xor i1 %i.aa, true
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i:                                      ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !763, !nonnull !141, !align !224 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !756, !nonnull !141, !align !224
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !758
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !728 ; 2 uses
  %i.ah = sext i32 %i.a to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !187
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !187
  %i.an = tail call i32 @llvm.ucmp.i32.i64(i64 %i.aj, i64 %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !759, !nonnull !141, !align !495
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !681, !range !140, !noundef !141
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = sub nsw i32 0, %i.an
  %i.au = select i1 %i.as, i32 %i.an, i32 %i.at
  %i.av = icmp slt i32 %i.au, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit: ; preds = %bb.f, %bb.g, %bb.i
  %.0.i = phi i1 [ %i.av, %bb.i ], [ false, %bb.f ], [ %spec.select.i, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph.preheader, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SM_SI_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph36
  %i.g = icmp eq i64 %i.t, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph36, !llvm.loop !2666

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.h = add nsw i64 %.lcssa, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.09.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, i32 noundef %i.k, ptr %3, ptr %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.l = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.b, !llvm.loop !2667

.lr.ph.i9.i:                                      ; preds = %bb.b, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !130
  %i.o = load i32, ptr %0, align 4, !tbaa !130
  store i32 %i.o, ptr %i.m, align 4, !tbaa !130
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr %3, ptr %4)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SM_SI_.exit, !llvm.loop !2668

.lr.ph36:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge2235 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02334 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.02334, -1                  ; 3 uses
  %i.u = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SI_(ptr %0, ptr %storemerge2235, ptr %3, ptr %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.u, ptr %storemerge2235, i64 noundef %i.t, ptr %3, ptr %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SM_SI_.exit, !llvm.loop !2666

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SM_SI_.exit: ; preds = %.lr.ph36, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !758 ; 2 uses
  %.pre27.i = load i8, ptr %i.e, align 1, !tbaa !681, !range !140 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %i.f = phi i8 [ %.pre27.i, %.lr.ph.i ], [ %i.at, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %4 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.g = phi i8 [ %.pre27.i, %.lr.ph.i ], [ %i.au, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.h = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.av, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 5 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 5 uses
  %i.i = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !130 ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !130    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !728  ; 5 uses
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !187  ; 4 uses
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !187
  %i.s = tail call i32 @llvm.ucmp.i32.i64(i64 %i.o, i64 %i.r) ; 2 uses
  %i.t = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.u = sub nsw i32 0, %i.s
  %i.v = select i1 %i.t, i32 %i.s, i32 %i.u
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.x, label %bb.d, label %bb.e, !prof !226

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !758 ; 2 uses
  %.pre26.i = load i8, ptr %i.e, align 1, !tbaa !681, !range !140 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.j, ptr %i.y, align 4, !tbaa !130
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.z = load i32, ptr %.pn21.i, align 4, !tbaa !130 ; 3 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !187
  %i.ad = tail call i32 @llvm.ucmp.i32.i64(i64 %i.o, i64 %i.ac) ; 2 uses
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = select i1 %i.t, i32 %i.ad, i32 %i.ae
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  br i1 %i.t, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %i.ah = phi i32 [ %i.ai, %.lr.ph.split.us.i.i ], [ %i.z, %.lr.ph.i.i ]
  %.sroa.0.010.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.pn21.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.05.09.us.i.i = phi ptr [ %.sroa.0.010.us.i.i, %.lr.ph.split.us.i.i ], [ %.sroa.0.022.i.ptr, %.lr.ph.i.i ]
  store i32 %i.ah, ptr %.sroa.05.09.us.i.i, align 4, !tbaa !130
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.us.i.i, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.0.us.i.i, align 4, !tbaa !130 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !187
  %i.am = icmp ult i64 %i.o, %i.al
  br i1 %i.am, label %.lr.ph.split.us.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2669

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.split.i.i
  %i.an = phi i32 [ %i.ao, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.i.i ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ], [ %.pn21.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.split.i.i ], [ %.sroa.0.022.i.ptr, %.lr.ph.i.i ]
  store i32 %i.an, ptr %.sroa.05.09.i.i, align 4, !tbaa !130
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !130 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !187
  %i.as = icmp ugt i64 %i.o, %i.ar
  br i1 %i.as, label %.lr.ph.split.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2669

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %bb.f, %bb.e, %bb.d
  %i.at = phi i8 [ %i.f, %bb.e ], [ %.pre26.i, %bb.d ], [ %i.f, %.lr.ph.split.us.i.i ], [ %i.f, %bb.f ], [ %i.f, %.lr.ph.split.i.i ] ; 2 uses
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %.lr.ph.split.us.i.i ], [ %4, %bb.f ], [ %4, %.lr.ph.split.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.010.us.i.i, %.lr.ph.split.us.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.split.i.i ]
  %i.au = phi i8 [ %i.g, %bb.e ], [ %.pre26.i, %bb.d ], [ 1, %.lr.ph.split.us.i.i ], [ %i.g, %bb.f ], [ 0, %.lr.ph.split.i.i ]
  %i.av = phi ptr [ %i.h, %bb.e ], [ %.pre.i, %bb.d ], [ %i.h, %.lr.ph.split.us.i.i ], [ %i.h, %bb.f ], [ %i.h, %.lr.ph.split.i.i ]
  store i32 %i.i, ptr %.sink.i, align 4, !tbaa !130
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %i.aw, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %bb.b, !llvm.loop !2670

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !728 ; 6 uses
  %i.bb = trunc nuw i8 %i.at to i1
  br i1 %i.bb, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i12, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.us.i
  %.sroa.0.010.us.i = phi ptr [ %i.br, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.us.i ], [ %i.ax, %.lr.ph.i12 ] ; 5 uses
  %i.bc = load i32, ptr %.sroa.0.010.us.i, align 4, !tbaa !130 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.08.i.us.i = getelementptr inbounds i8, ptr %.sroa.0.010.us.i, i64 -4 ; 2 uses
  %i.bg = load i32, ptr %.sroa.0.08.i.us.i, align 4, !tbaa !130 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !187
  %i.bk = icmp ult i64 %i.bf, %i.bj
  br i1 %i.bk, label %.lr.ph.split.us.i.us.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.us.i
  %i.bl = phi i32 [ %i.bm, %.lr.ph.split.us.i.us.i ], [ %i.bg, %.lr.ph.split.us.i ]
  %.sroa.0.010.us.i.us.i = phi ptr [ %.sroa.0.0.us.i.us.i, %.lr.ph.split.us.i.us.i ], [ %.sroa.0.08.i.us.i, %.lr.ph.split.us.i ] ; 3 uses
  %.sroa.05.09.us.i.us.i = phi ptr [ %.sroa.0.010.us.i.us.i, %.lr.ph.split.us.i.us.i ], [ %.sroa.0.010.us.i, %.lr.ph.split.us.i ]
  store i32 %i.bl, ptr %.sroa.05.09.us.i.us.i, align 4, !tbaa !130
  %.sroa.0.0.us.i.us.i = getelementptr inbounds i8, ptr %.sroa.0.010.us.i.us.i, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %.sroa.0.0.us.i.us.i, align 4, !tbaa !130 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !187
  %i.bq = icmp ult i64 %i.bf, %i.bp
  br i1 %i.bq, label %.lr.ph.split.us.i.us.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.us.i, !llvm.loop !2669

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.us.i: ; preds = %.lr.ph.split.us.i.us.i, %.lr.ph.split.us.i
  %.sroa.05.0.lcssa.i.us.i = phi ptr [ %.sroa.0.010.us.i, %.lr.ph.split.us.i ], [ %.sroa.0.010.us.i.us.i, %.lr.ph.split.us.i.us.i ]
  store i32 %i.bc, ptr %.sroa.05.0.lcssa.i.us.i, align 4, !tbaa !130
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i, i64 4 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %1
  br i1 %i.bs, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %.lr.ph.split.us.i, !llvm.loop !2671

.lr.ph.split.i:                                   ; preds = %.lr.ph.i12, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i
  %.sroa.0.010.i = phi ptr [ %i.ci, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i ], [ %i.ax, %.lr.ph.i12 ] ; 5 uses
  %i.bt = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !130 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !130 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !187
  %i.cb = icmp ugt i64 %i.bw, %i.ca
  br i1 %i.cb, label %.lr.ph.split.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i

.lr.ph.split.i.i13:                               ; preds = %.lr.ph.split.i, %.lr.ph.split.i.i13
  %i.cc = phi i32 [ %i.cd, %.lr.ph.split.i.i13 ], [ %i.bx, %.lr.ph.split.i ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.split.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.split.i ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.split.i.i13 ], [ %.sroa.0.010.i, %.lr.ph.split.i ]
  store i32 %i.cc, ptr %.sroa.05.09.i.i15, align 4, !tbaa !130
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %.sroa.0.0.i.i16, align 4, !tbaa !130 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !187
  %i.ch = icmp ugt i64 %i.bw, %i.cg
  br i1 %i.ch, label %.lr.ph.split.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i, !llvm.loop !2669

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i: ; preds = %.lr.ph.split.i.i13, %.lr.ph.split.i
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %.lr.ph.split.i ], [ %.sroa.0.010.i.i14, %.lr.ph.split.i.i13 ]
  store i32 %i.bt, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !130
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %1
  br i1 %i.cj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %.lr.ph.split.i, !llvm.loop !2671

bb.g:                                             ; preds = %bb.a
  %i.ck = icmp eq ptr %0, %1
  br i1 %i.ck, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.g
  %.sroa.0.020.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cl = icmp eq ptr %.sroa.0.020.i18, %1
  br i1 %i.cl, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre25.i20 = load ptr, ptr %2, align 8, !tbaa !758
  %.pre27.i21 = load i8, ptr %i.cm, align 1, !tbaa !681, !range !140
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24, %.lr.ph.i19
  %i.cn = phi i8 [ %.pre27.i21, %.lr.ph.i19 ], [ %i.eh, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24 ] ; 4 uses
  %i.co = phi ptr [ %.pre25.i20, %.lr.ph.i19 ], [ %i.ei, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24 ] ; 6 uses
  %.sroa.0.022.i22 = phi ptr [ %.sroa.0.020.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24 ] ; 7 uses
  %.pn21.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.022.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24 ] ; 5 uses
  %i.cp = load i32, ptr %.sroa.0.022.i22, align 4, !tbaa !130 ; 2 uses
  %i.cq = load i32, ptr %0, align 4, !tbaa !130   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !728 ; 5 uses
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !187 ; 4 uses
  %i.cw = sext i32 %i.cq to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !187
  %i.cz = tail call i32 @llvm.ucmp.i32.i64(i64 %i.cv, i64 %i.cy) ; 2 uses
  %i.da = trunc nuw i8 %i.cn to i1                ; 3 uses
  %i.db = sub nsw i32 0, %i.cz
  %i.dc = select i1 %i.da, i32 %i.cz, i32 %i.db
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.de = ptrtoint ptr %.sroa.0.022.i22 to i64
  %i.df = sub i64 %i.de, %i.b                     ; 3 uses
  %i.dg = ashr exact i64 %i.df, 2                 ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 1
  br i1 %i.dh, label %bb.j, label %bb.k, !prof !226

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %.pn21.i23, i64 8
  %i.dj = sub nsw i64 0, %i.dg
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dk, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.df, i1 false)
  %.pre.i36 = load ptr, ptr %2, align 8, !tbaa !758
  %.pre26.i37 = load i8, ptr %i.cm, align 1, !tbaa !681, !range !140
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

bb.k:                                             ; preds = %bb.i
  %i.dl = icmp eq i64 %i.df, 4
  br i1 %i.dl, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

bb.l:                                             ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn21.i23, i64 4
  store i32 %i.cq, ptr %i.dm, align 4, !tbaa !130
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

bb.m:                                             ; preds = %bb.h
  %i.dn = load i32, ptr %.pn21.i23, align 4, !tbaa !130 ; 3 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !187
  %i.dr = tail call i32 @llvm.ucmp.i32.i64(i64 %i.cv, i64 %i.dq) ; 2 uses
  %i.ds = sub nsw i32 0, %i.dr
  %i.dt = select i1 %i.da, i32 %i.dr, i32 %i.ds
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i27, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

.lr.ph.i.i27:                                     ; preds = %bb.m
  br i1 %i.da, label %.lr.ph.split.us.i.i32, label %.lr.ph.split.i.i28

.lr.ph.split.us.i.i32:                            ; preds = %.lr.ph.i.i27, %.lr.ph.split.us.i.i32
  %i.dv = phi i32 [ %i.dw, %.lr.ph.split.us.i.i32 ], [ %i.dn, %.lr.ph.i.i27 ]
  %.sroa.0.010.us.i.i33 = phi ptr [ %.sroa.0.0.us.i.i35, %.lr.ph.split.us.i.i32 ], [ %.pn21.i23, %.lr.ph.i.i27 ] ; 3 uses
  %.sroa.05.09.us.i.i34 = phi ptr [ %.sroa.0.010.us.i.i33, %.lr.ph.split.us.i.i32 ], [ %.sroa.0.022.i22, %.lr.ph.i.i27 ]
  store i32 %i.dv, ptr %.sroa.05.09.us.i.i34, align 4, !tbaa !130
  %.sroa.0.0.us.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.010.us.i.i33, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %.sroa.0.0.us.i.i35, align 4, !tbaa !130 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !187
  %i.ea = icmp ult i64 %i.cv, %i.dz
  br i1 %i.ea, label %.lr.ph.split.us.i.i32, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24, !llvm.loop !2669

.lr.ph.split.i.i28:                               ; preds = %.lr.ph.i.i27, %.lr.ph.split.i.i28
  %i.eb = phi i32 [ %i.ec, %.lr.ph.split.i.i28 ], [ %i.dn, %.lr.ph.i.i27 ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.split.i.i28 ], [ %.pn21.i23, %.lr.ph.i.i27 ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.split.i.i28 ], [ %.sroa.0.022.i22, %.lr.ph.i.i27 ]
  store i32 %i.eb, ptr %.sroa.05.09.i.i30, align 4, !tbaa !130
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -4 ; 2 uses
  %i.ec = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !130 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !187
  %i.eg = icmp ugt i64 %i.cv, %i.ef
  br i1 %i.eg, label %.lr.ph.split.i.i28, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24, !llvm.loop !2669

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24: ; preds = %.lr.ph.split.i.i28, %.lr.ph.split.us.i.i32, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i25 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.sroa.0.022.i22, %bb.m ], [ %.sroa.0.010.us.i.i33, %.lr.ph.split.us.i.i32 ], [ %.sroa.0.010.i.i29, %.lr.ph.split.i.i28 ]
  %i.eh = phi i8 [ %i.cn, %bb.l ], [ %.pre26.i37, %bb.j ], [ %i.cn, %bb.k ], [ %i.cn, %bb.m ], [ 1, %.lr.ph.split.us.i.i32 ], [ 0, %.lr.ph.split.i.i28 ]
  %i.ei = phi ptr [ %i.co, %bb.l ], [ %.pre.i36, %bb.j ], [ %i.co, %bb.k ], [ %i.co, %bb.m ], [ %i.co, %.lr.ph.split.us.i.i32 ], [ %i.co, %.lr.ph.split.i.i28 ]
  store i32 %i.cp, ptr %.sink.i25, align 4, !tbaa !130
  %.sroa.0.0.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i22, i64 4 ; 2 uses
  %i.ej = icmp eq ptr %.sroa.0.0.i26, %1
  br i1 %i.ej, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %bb.h, !llvm.loop !2670

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.us.i, %.preheader.i17, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SI_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !130  ; 3 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !130  ; 3 uses
end_hunk_0
