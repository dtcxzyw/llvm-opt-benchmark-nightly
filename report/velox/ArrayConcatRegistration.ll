Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArrayConcatRegistration?download=true
inline.NumInlined: 51831
inline.NumDeleted: 13829
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 348
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_:bb.a
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.be
  br i1 %or.cond.demorgan, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, label %bb.j

.loopexit25:                                      ; preds = %bb.g, %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.117) #42
  unreachable

.critedge.i.i:                                    ; preds = %.loopexit26
  tail call void @_ZSt27__throw_bad_optional_accessv() #42
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %.sroa.07.022, align 4, !tbaa !336
  %i.bg = ptrtoint ptr %.sroa.07.022 to i64
  %i.bh = sub i64 %i.bg, %i.e                     ; 3 uses
  %i.bi = ashr exact i64 %i.bh, 2                 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !444

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn21, i64 8
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bm, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.bn = icmp eq i64 %i.bh, 4
  br i1 %i.bn, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn21, i64 4
  %i.bp = load i32, ptr %0, align 4, !tbaa !336
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !336
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.bf, ptr %0, align 4, !tbaa !336
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, %bb.i
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_(ptr nonnull %.sroa.07.022, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter.563") align 8 %2)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.022, i64 4 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.07.0, %1
  br i1 %i.bq, label %.loopexit, label %.peel.next, !llvm.loop !4239

.loopexit:                                        ; preds = %bb.n, %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_(ptr %0, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter.563") align 8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !336    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !832, !nonnull !348, !align !432
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !834
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !786  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !348, !align !756 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_.exit.thread, label %.split

.split:                                           ; preds = %bb.a
  %i.h = zext i32 %i.a to i64                     ; 2 uses
  %i.i = and i64 %i.h, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = lshr i64 %i.h, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !395
  %i.n = and i64 %i.m, %i.j
  %.fr = freeze i64 %i.n
  %.not.i.i.i.i.i = icmp eq i64 %.fr, 0           ; 2 uses
  %.sroa.0.017 = getelementptr inbounds i8, ptr %0, i64 -4 ; 3 uses
  %i.o = load i32, ptr %.sroa.0.017, align 4, !tbaa !336 ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !395
  %i.t = and i64 %i.p, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = and i64 %i.u, %i.s
  %.not.i.i.i11.i.i18 = icmp eq i64 %i.v, 0       ; 2 uses
  %or.cond.i.i19 = or i1 %.not.i.i.i.i.i, %.not.i.i.i11.i.i18
  br i1 %or.cond.i.i19, label %.lr.ph, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_.exit.thread

.lr.ph:                                           ; preds = %.split
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29
  %i.w = phi i32 [ %i.z, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29 ], [ %i.o, %.lr.ph ]
  %.not.i.i.i11.i.i22.us = phi i1 [ %.not.i.i.i11.i.i.us, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29 ], [ %.not.i.i.i11.i.i18, %.lr.ph ]
  %.sroa.0.021.us = phi ptr [ %.sroa.0.0.us30, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29 ], [ %.sroa.0.017, %.lr.ph ] ; 2 uses
  %.sroa.04.020.us = phi ptr [ %.sroa.0.021.us, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29 ], [ %0, %.lr.ph ] ; 2 uses
  %.sroa.0.0.copyload.i.i.us24 = load i64, ptr %i.g, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i.us25 = lshr i64 %.sroa.0.0.copyload.i.i.us24, 32
  %.sroa.37.0.extract.trunc.i.i.i.us26 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i.us25 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i.us26, label %.split13 [
    i32 1, label %.split15
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.x = trunc i64 %.sroa.0.0.copyload.i.i.us24 to i1
  %i.y = xor i1 %i.x, true
  %or.cond.demorgan.us28 = or i1 %.not.i.i.i11.i.i22.us, %i.y
  br i1 %or.cond.demorgan.us28, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_.exit.thread, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us29: ; preds = %bb.b
  store i32 %i.w, ptr %.sroa.04.020.us, align 4, !tbaa !336
  %.sroa.0.0.us30 = getelementptr inbounds i8, ptr %.sroa.0.021.us, i64 -4 ; 2 uses
  %i.z = load i32, ptr %.sroa.0.0.us30, align 4, !tbaa !336 ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !395
  %i.ae = and i64 %i.aa, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = and i64 %i.af, %i.ad
  %.not.i.i.i11.i.i.us = icmp eq i64 %i.ag, 0
  br label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.ah = phi i32 [ %i.ak, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ], [ %i.o, %.lr.ph ]
  %.sroa.0.021 = phi ptr [ %.sroa.0.0, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ], [ %.sroa.0.017, %.lr.ph ] ; 3 uses
  %.sroa.04.020 = phi ptr [ %.sroa.0.021, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ], [ %0, %.lr.ph ] ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %.split13 [
    i32 1, label %.split15
    i32 0, label %bb.d
  ]

.split15:                                         ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi33 = phi i64 [ %.sroa.0.0.copyload.i.i.us24, %.lr.ph.split.us ], [ %.sroa.0.0.copyload.i.i, %.lr.ph.split ]
  %i.ai = and i64 %.us-phi33, 65536
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i

bb.c:                                             ; preds = %.split15
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.116) #42
  unreachable

bb.d:                                             ; preds = %.lr.ph.split
  %i.aj = trunc i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_.exit.thread, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

.split13:                                         ; preds = %.lr.ph.split, %.lr.ph.split.us
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.117) #42
  unreachable

.critedge.i.i:                                    ; preds = %.split15
  tail call void @_ZSt27__throw_bad_optional_accessv() #42
  unreachable

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.d
  store i32 %i.ah, ptr %.sroa.04.020, align 4, !tbaa !336
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.0.021, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %.sroa.0.0, align 4, !tbaa !336 ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 6
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !395
  %i.ap = and i64 %i.al, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.ao
  %.not.i.i.i11.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i11.i.i, label %.lr.ph.split, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_.exit.thread, !llvm.loop !4240

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_.exit.thread: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, %bb.d, %bb.b, %bb.a, %.split
  %.us-phi = phi ptr [ %.sroa.04.020.us, %bb.b ], [ %0, %.split ], [ %0, %bb.a ], [ %.sroa.04.020, %bb.d ], [ %.sroa.0.021, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ]
  store i32 %i.a, ptr %.us-phi, align 4, !tbaa !336
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_SK_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i.i27 = freeze i64 %i.c                  ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i.i27, 2           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph64

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEET_SN_SN_SJ_.exit
  %i.h = icmp eq i64 %i.bs, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph64, !llvm.loop !4241

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i30.lcssa = phi i64 [ %.fr.i.i.i27, %.lr.ph ], [ %.fr.i.i.i, %bb.b ] ; 3 uses
  %storemerge28.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.0.lcssa.i.i, %bb.b ]
  %i.i = lshr exact i64 %.fr.i.i.i30.lcssa, 2     ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i30.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %._crit_edge.i.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.ac, %._crit_edge.i.us.i.i.i ], [ %i.k, %._crit_edge ] ; 6 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !336
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.035.i.us.i.i.i = phi i64 [ %i.w, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.035.i.us.i.i.i, 1
  %i.w = add i64 %i.v, 2                          ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !336
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us.i.i.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !336
  %i.aa = icmp slt i64 %i.w, %i.m
  br i1 %i.aa, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !4242

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %i.w, %.lr.ph.i.us.i.i.i ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.us.i.i.i
  store i32 %i.t, ptr %i.ab, align 4, !tbaa !336
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ac = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit.i, label %.split.us.i.i.i, !llvm.loop !4243

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 6 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !336
  %i.af = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ag = shl i64 %.035.i.i.i.i, 1
  %i.ah = add i64 %i.ag, 2                        ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !336
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !336
  %i.al = icmp slt i64 %i.ah, %i.m
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4242

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.am, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i32, ptr %i.q, align 4, !tbaa !336
  store i32 %i.an, ptr %i.r, align 4, !tbaa !336
  br label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit.i.i.i

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit.i.i.i: ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.1.i.i.i.i
  store i32 %i.ae, ptr %i.ao, align 4, !tbaa !336
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ap = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit.i, label %.split.i.i.i, !llvm.loop !4243

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit.i: ; preds = %._crit_edge.i.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit.i.i.i
  %5 = icmp sgt i64 %.fr.i.i.i30.lcssa, 4
  br i1 %5, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.aq, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i ], [ %storemerge28.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit.i ]
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !336
  %i.as = load i32, ptr %0, align 4, !tbaa !336
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !336
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i9.i

.lr.ph.i.i.i12.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i12.i
  %.035.i.i.i13.i = phi i64 [ %i.ba, %.lr.ph.i.i.i12.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.035.i.i.i13.i, 1
  %i.ba = add i64 %i.az, 2                        ; 4 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !336
  %i.bd = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i13.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !336
  %i.be = icmp slt i64 %i.ba, %i.ax
  br i1 %i.be, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i9.i, !llvm.loop !4242

._crit_edge.i.i.i9.i:                             ; preds = %.lr.ph.i.i.i12.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i10.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %.lr.ph.i.i.i12.i ] ; 5 uses
  %i.bf = and i64 %i.au, 4
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i9.i
  %i.bh = add nsw i64 %i.av, -2
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i10.i, %i.bi
  br i1 %i.bj, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bk = shl nuw nsw i64 %.0.lcssa.i.i.i10.i, 1
  %i.bl = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !336
  %i.bo = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i10.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !336
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i9.i
  %.1.i.i.i11.i = phi i64 [ %i.bl, %bb.e ], [ %.0.lcssa.i.i.i10.i, %bb.d ], [ %.0.lcssa.i.i.i10.i, %._crit_edge.i.i.i9.i ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %.1.i.i.i11.i
  store i32 %i.ar, ptr %i.bp, align 4, !tbaa !336
  %i.bq = icmp sgt i64 %i.au, 4
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit, !llvm.loop !4244

.lr.ph64:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2863 = phi ptr [ %.sroa.013.0.lcssa.i.i, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %.02962 = phi i64 [ %i.bs, %bb.b ], [ %2, %.lr.ph ]
  %i.br = phi i64 [ %i.cf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bs = add nsw i64 %.02962, -1                 ; 3 uses
  %i.bt = lshr i64 %i.br, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %0, align 4, !tbaa !336
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !336
  store i32 %i.bw, ptr %0, align 4, !tbaa !336
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !336
  %i.bx = getelementptr inbounds i8, ptr %storemerge2863, i64 -4 ; 2 uses
  %.not16.i.i = icmp ult ptr %i.f, %i.bx
  br i1 %.not16.i.i, label %.lr.ph.i.i16, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEET_SN_SN_SJ_.exit

.lr.ph.i.i16:                                     ; preds = %.lr.ph64, %.lr.ph.i.i16
  %i.by = phi ptr [ %i.cc, %.lr.ph.i.i16 ], [ %i.bx, %.lr.ph64 ] ; 3 uses
  %.sroa.013.017.i.i = phi ptr [ %i.cb, %.lr.ph.i.i16 ], [ %i.f, %.lr.ph64 ] ; 3 uses
  %i.bz = load i32, ptr %.sroa.013.017.i.i, align 4, !tbaa !336
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !336
  store i32 %i.ca, ptr %.sroa.013.017.i.i, align 4, !tbaa !336
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !336
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cb, %i.cc
  br i1 %.not.i.i, label %.lr.ph.i.i16, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEET_SN_SN_SJ_.exit, !llvm.loop !4245

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEET_SN_SN_SJ_.exit: ; preds = %.lr.ph.i.i16, %.lr.ph64
  %.sroa.013.0.lcssa.i.i = phi ptr [ %i.f, %.lr.ph64 ], [ %i.cb, %.lr.ph.i.i16 ] ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_SK_(ptr nonnull %.sroa.013.0.lcssa.i.i, ptr %storemerge2863, i64 noundef %i.bs, ptr %3, ptr %4)
  %i.cd = ptrtoint ptr %.sroa.013.0.lcssa.i.i to i64
  %i.ce = sub i64 %i.cd, %i.a
  %.fr.i.i.i = freeze i64 %i.ce                   ; 2 uses
  %i.cf = ashr exact i64 %.fr.i.i.i, 2            ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 16
  br i1 %i.cg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit, !llvm.loop !4241

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEET_SN_SN_SJ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SJ_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.572, align 8            ; 9 uses
  %8 = alloca %class.anon.567, align 8            ; 3 uses
  %9 = alloca %class.anon.568, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 3 uses
  %11 = alloca %class.anon.571, align 8           ; 8 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr %8, ptr %11, align 8, !tbaa !335
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !838
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %10, ptr %i.d, align 8, !tbaa !820
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !786
  %.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %5, align 8, !tbaa !559    ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !559  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 2
  %i.o = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = xor i64 %i.p, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %i.g, ptr %i.i, i64 noundef %i.q, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.573") align 8 %7)
  %i.r = icmp sgt i64 %i.m, 64
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr %i.g, ptr nonnull %i.s, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.573") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr nonnull %i.s, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.573") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.573") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %i.g, %i.i
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.576") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.576") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.580, align 8            ; 9 uses
  %8 = alloca %class.anon.569, align 8            ; 4 uses
  %9 = alloca %class.anon.570, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 4 uses
  %11 = alloca %class.anon.579, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr %8, ptr %11, align 8, !tbaa !335
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !820
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !786
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !559    ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !559  ; 8 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.581") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.581") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.581") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.581") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_12UnknownValueEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.573") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.573", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.573", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !4246

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
end_hunk_0
begin_hunk_1_@_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_:bb.a
.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader
  %i.k = load i32, ptr %.sroa.0.06.i, align 4, !tbaa !336
  store i32 %i.k, ptr %.sroa.03.015, align 4, !tbaa !336
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_.exit

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !849, !nonnull !348, !align !432
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !559  ; 2 uses
  %.pre = load i32, ptr %.sroa.0.06.i, align 4, !tbaa !336
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %bb.e
  %i.o = phi i32 [ %i.p, %bb.e ], [ %.pre, %.lr.ph.i.preheader.split ]
  %.sroa.0.08.i = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.06.i, %.lr.ph.i.preheader.split ] ; 4 uses
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %bb.e ], [ %.sroa.03.015, %.lr.ph.i.preheader.split ]
  store i32 %i.o, ptr %.sroa.03.07.i, align 4, !tbaa !336
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !336 ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !336
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !336
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !395
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.z, %i.x                      ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0          ; 2 uses
  %i.ab = sext i32 %i.p to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !336
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !395
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.aj, %i.ah                    ; 2 uses
  %.not.i.i.i11.i.i = icmp eq i64 %i.ak, 0
  %or.cond.i.i = or i1 %.not.i.i.i.i.i, %.not.i.i.i11.i.i
  br i1 %or.cond.i.i, label %bb.c, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %.split [
    i32 1, label %.split13
    i32 0, label %bb.e
  ]

.split13:                                         ; preds = %bb.c
  %i.al = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.split13
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.116) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.am = or i64 %i.aa, %i.ak
  %or.cond.i.i.i = icmp eq i64 %i.am, 0
  %i.an = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.ao = xor i1 %.not.i.i.i.i.i, %i.an
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.ao
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_.exit, label %.lr.ph.i, !llvm.loop !53

.split:                                           ; preds = %bb.c
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.117) #42
  unreachable

.critedge.i.i:                                    ; preds = %.split13
  call void @_ZSt27__throw_bad_optional_accessv() #42
  unreachable

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_.exit: ; preds = %bb.e, %.lr.ph.i, %.lr.ph.i.us, %bb.b
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.015, %bb.b ], [ %.sroa.0.06.i, %.lr.ph.i.us ], [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.08.i, %bb.e ]
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !336
  store i32 %i.ap, ptr %.sroa.03.0.lcssa.i, align 4, !tbaa !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.015, i64 4 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %._crit_edge, label %bb.b, !llvm.loop !4272
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !851, !nonnull !348, !align !432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !848
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !786  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !336
  %i.f = load i32, ptr %1, align 4, !tbaa !336
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !849, !nonnull !348, !align !432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !559  ; 2 uses
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !336
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !395
  %i.q = and i64 %i.m, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = sext i32 %i.e to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !336
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !395
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %i.z
  %.not.i.i.i11.i = icmp eq i64 %i.ac, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.ad = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.ae = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.c, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !852, !nonnull !348, !align !756
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.116) #42
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aj = xor i1 %i.ad, %i.ai
  %spec.select.i = xor i1 %i.aj, true
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.117) #42
  unreachable

.critedge.i:                                      ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #42
  unreachable

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, %bb.f, %bb.g
  %.0.i = phi i1 [ false, %bb.f ], [ false, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i ], [ %spec.select.i, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i.i27 = freeze i64 %i.c                  ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i.i27, 2           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph64

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEET_SP_SP_SL_.exit
  %i.h = icmp eq i64 %i.bs, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph64, !llvm.loop !4273

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i30.lcssa = phi i64 [ %.fr.i.i.i27, %.lr.ph ], [ %.fr.i.i.i, %bb.b ] ; 3 uses
  %storemerge28.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.0.lcssa.i.i, %bb.b ]
  %i.i = lshr exact i64 %.fr.i.i.i30.lcssa, 2     ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i30.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %._crit_edge.i.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.ac, %._crit_edge.i.us.i.i.i ], [ %i.k, %._crit_edge ] ; 6 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !336
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.035.i.us.i.i.i = phi i64 [ %i.w, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.035.i.us.i.i.i, 1
  %i.w = add i64 %i.v, 2                          ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !336
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us.i.i.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !336
  %i.aa = icmp slt i64 %i.w, %i.m
  br i1 %i.aa, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !4274

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %i.w, %.lr.ph.i.us.i.i.i ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.us.i.i.i
  store i32 %i.t, ptr %i.ab, align 4, !tbaa !336
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ac = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit.i, label %.split.us.i.i.i, !llvm.loop !4275

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 6 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !336
  %i.af = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ag = shl i64 %.035.i.i.i.i, 1
  %i.ah = add i64 %i.ag, 2                        ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !336
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !336
  %i.al = icmp slt i64 %i.ah, %i.m
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4274

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.am, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i32, ptr %i.q, align 4, !tbaa !336
  store i32 %i.an, ptr %i.r, align 4, !tbaa !336
  br label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit.i.i.i

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit.i.i.i: ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.1.i.i.i.i
  store i32 %i.ae, ptr %i.ao, align 4, !tbaa !336
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ap = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit.i, label %.split.i.i.i, !llvm.loop !4275

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit.i: ; preds = %._crit_edge.i.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit.i.i.i
  %5 = icmp sgt i64 %.fr.i.i.i30.lcssa, 4
  br i1 %5, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.aq, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i ], [ %storemerge28.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit.i ]
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !336
  %i.as = load i32, ptr %0, align 4, !tbaa !336
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !336
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i9.i

.lr.ph.i.i.i12.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i12.i
  %.035.i.i.i13.i = phi i64 [ %i.ba, %.lr.ph.i.i.i12.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.035.i.i.i13.i, 1
  %i.ba = add i64 %i.az, 2                        ; 4 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !336
  %i.bd = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i13.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !336
  %i.be = icmp slt i64 %i.ba, %i.ax
  br i1 %i.be, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i9.i, !llvm.loop !4274

._crit_edge.i.i.i9.i:                             ; preds = %.lr.ph.i.i.i12.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i10.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %.lr.ph.i.i.i12.i ] ; 5 uses
  %i.bf = and i64 %i.au, 4
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i9.i
  %i.bh = add nsw i64 %i.av, -2
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i10.i, %i.bi
  br i1 %i.bj, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bk = shl nuw nsw i64 %.0.lcssa.i.i.i10.i, 1
  %i.bl = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !336
  %i.bo = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i10.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !336
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i9.i
  %.1.i.i.i11.i = phi i64 [ %i.bl, %bb.e ], [ %.0.lcssa.i.i.i10.i, %bb.d ], [ %.0.lcssa.i.i.i10.i, %._crit_edge.i.i.i9.i ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %.1.i.i.i11.i
  store i32 %i.ar, ptr %i.bp, align 4, !tbaa !336
  %i.bq = icmp sgt i64 %i.au, 4
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit, !llvm.loop !4276

.lr.ph64:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2863 = phi ptr [ %.sroa.013.0.lcssa.i.i, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %.02962 = phi i64 [ %i.bs, %bb.b ], [ %2, %.lr.ph ]
  %i.br = phi i64 [ %i.cf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bs = add nsw i64 %.02962, -1                 ; 3 uses
  %i.bt = lshr i64 %i.br, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %0, align 4, !tbaa !336
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !336
  store i32 %i.bw, ptr %0, align 4, !tbaa !336
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !336
  %i.bx = getelementptr inbounds i8, ptr %storemerge2863, i64 -4 ; 2 uses
  %.not16.i.i = icmp ult ptr %i.f, %i.bx
  br i1 %.not16.i.i, label %.lr.ph.i.i16, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEET_SP_SP_SL_.exit

.lr.ph.i.i16:                                     ; preds = %.lr.ph64, %.lr.ph.i.i16
  %i.by = phi ptr [ %i.cc, %.lr.ph.i.i16 ], [ %i.bx, %.lr.ph64 ] ; 3 uses
  %.sroa.013.017.i.i = phi ptr [ %i.cb, %.lr.ph.i.i16 ], [ %i.f, %.lr.ph64 ] ; 3 uses
  %i.bz = load i32, ptr %.sroa.013.017.i.i, align 4, !tbaa !336
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !336
  store i32 %i.ca, ptr %.sroa.013.017.i.i, align 4, !tbaa !336
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !336
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cb, %i.cc
  br i1 %.not.i.i, label %.lr.ph.i.i16, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEET_SP_SP_SL_.exit, !llvm.loop !4277

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEET_SP_SP_SL_.exit: ; preds = %.lr.ph.i.i16, %.lr.ph64
  %.sroa.013.0.lcssa.i.i = phi ptr [ %i.f, %.lr.ph64 ], [ %i.cb, %.lr.ph.i.i16 ] ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr nonnull %.sroa.013.0.lcssa.i.i, ptr %storemerge2863, i64 noundef %i.bs, ptr %3, ptr %4)
  %i.cd = ptrtoint ptr %.sroa.013.0.lcssa.i.i to i64
  %i.ce = sub i64 %i.cd, %i.a
  %.fr.i.i.i = freeze i64 %i.ce                   ; 2 uses
  %i.cf = ashr exact i64 %.fr.i.i.i, 2            ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 16
  br i1 %i.cg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit, !llvm.loop !4273

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEET_SP_SP_SL_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SL_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEES2_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.116", align 16 ; 5 uses
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"struct.fmt::v11::detail::format_arg_store.548", align 16 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4325, !nonnull !348, !align !432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !816   ; 2 uses
  switch i8 %i.d, label %bb.ai [
    i8 0, label %bb.b
    i8 3, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.k
    i8 4, label %bb.n
    i8 10, label %bb.q
    i8 5, label %bb.t
    i8 6, label %bb.w
    i8 7, label %bb.z
    i8 8, label %bb.ac
    i8 9, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIb, i64 8), align 8, !tbaa !350 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !321
  %i.g = icmp eq i8 %i.f, 42
  %.idx.i.i = zext i1 %i.g to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34, !noalias !4326
  store ptr %i.h, ptr %22, align 16, !tbaa !321, !alias.scope !4327, !noalias !4326
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @_ZTSN8facebook5velox12UnknownValueE, ptr %i.i, align 16, !tbaa !321, !alias.scope !4327, !noalias !4326
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.122, i64 140, i64 204, ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34, !noalias !4326
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE25hashValueAtWithCustomTypeILNS0_8TypeKindE0EEEmRKSt10shared_ptrIKNS0_4TypeEERKS2_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr nonnull @.str.122) #42
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %23, align 8, !tbaa !314   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !321
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29 ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i38 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIi, i64 8), align 8, !tbaa !350 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !321
  %i.r = icmp eq i8 %i.q, 42
  %.idx.i.i3 = zext i1 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i3
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34, !noalias !4328
  store ptr %i.s, ptr %20, align 16, !tbaa !321, !alias.scope !4329, !noalias !4328
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @_ZTSN8facebook5velox12UnknownValueE, ptr %i.t, align 16, !tbaa !321, !alias.scope !4329, !noalias !4328
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nonnull @.str.122, i64 140, i64 204, ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34, !noalias !4328
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE25hashValueAtWithCustomTypeILNS0_8TypeKindE3EEEmRKSt10shared_ptrIKNS0_4TypeEERKS2_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr nonnull @.str.122) #42
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %21, align 8, !tbaa !314   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !321
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %common.resume

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIa, i64 8), align 8, !tbaa !350 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !321
  %i.ac = icmp eq i8 %i.ab, 42
  %.idx.i.i7 = zext i1 %i.ac to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34, !noalias !4330
  store ptr %i.ad, ptr %18, align 16, !tbaa !321, !alias.scope !4331, !noalias !4330
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @_ZTSN8facebook5velox12UnknownValueE, ptr %i.ae, align 16, !tbaa !321, !alias.scope !4331, !noalias !4330
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.122, i64 140, i64 204, ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34, !noalias !4330
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE25hashValueAtWithCustomTypeILNS0_8TypeKindE1EEEmRKSt10shared_ptrIKNS0_4TypeEERKS2_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.122) #42
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %19, align 8, !tbaa !314  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !321
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIs, i64 8), align 8, !tbaa !350 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !321
  %i.an = icmp eq i8 %i.am, 42
  %.idx.i.i11 = zext i1 %i.an to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34, !noalias !4332
  store ptr %i.ao, ptr %16, align 16, !tbaa !321, !alias.scope !4333, !noalias !4332
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @_ZTSN8facebook5velox12UnknownValueE, ptr %i.ap, align 16, !tbaa !321, !alias.scope !4333, !noalias !4332
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.122, i64 140, i64 204, ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34, !noalias !4332
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE25hashValueAtWithCustomTypeILNS0_8TypeKindE2EEEmRKSt10shared_ptrIKNS0_4TypeEERKS2_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr nonnull @.str.122) #42
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %17, align 8, !tbaa !314  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !321
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %common.resume

end_hunk_1
