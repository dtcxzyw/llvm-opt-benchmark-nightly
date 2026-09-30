Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ca, %bb.p ] ; 9 uses
  %i.bx = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !317
  %i.by = load ptr, ptr %0, align 8, !tbaa !317
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef %i.bx, ptr noundef %i.by), !inline_history !3198
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.p, label %.preheader.i.i, !llvm.loop !3199

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !317
  %i.cc = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !317
  %i.cd = tail call noundef zeroext i1 %3(ptr noundef %i.cb, ptr noundef %i.cc), !inline_history !3198
  br i1 %i.cd, label %.preheader.i.i, label %bb.q, !llvm.loop !3200

bb.q:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ce, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !317
  %i.cg = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !317
  store ptr %i.cg, ptr %.sroa.012.1.i.i, align 8, !tbaa !317
  store ptr %i.cf, ptr %.sroa.09.1.i.i, align 8, !tbaa !317
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !3201

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.av, ptr %3)
  %i.ch = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ci = sub i64 %i.ch, %i.a
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 16
  br i1 %i.ck, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !3193

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 5 uses
  %i.e = load ptr, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !317
  %i.f = load ptr, ptr %0, align 8, !tbaa !317
  %i.g = tail call noundef zeroext i1 %2(ptr noundef %i.e, ptr noundef %i.f), !inline_history !3202
  %i.h = load ptr, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !317 ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.i, label %bb.d, label %bb.e, !prof !434

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !317
  store ptr %i.k, ptr %i.j, align 8, !tbaa !317
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.pn20.i, align 8, !tbaa !317
  %i.m = tail call noundef zeroext i1 %2(ptr noundef %i.h, ptr noundef %i.l), !inline_history !3203
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  %i.n = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !317
  store ptr %i.n, ptr %.sroa.05.09.i.i, align 8, !tbaa !317
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.o = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !317
  %i.p = tail call noundef zeroext i1 %2(ptr noundef %i.h, ptr noundef %i.o), !inline_history !3203
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, !llvm.loop !3204

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.h, ptr %.sink.i, align 8, !tbaa !317
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit, label %bb.b, !llvm.loop !3205

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.q, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbPKS3_SD_EEEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbPKS3_SD_EEEEvT_T0_.exit.i ], [ %i.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit ] ; 5 uses
  %i.r = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !317 ; 3 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %.sroa.0.08.i.i, align 8, !tbaa !317
  %i.t = tail call noundef zeroext i1 %2(ptr noundef %i.r, ptr noundef %i.s), !inline_history !3206
  br i1 %i.t, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbPKS3_SD_EEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i12
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 4 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  %i.u = load ptr, ptr %.sroa.0.010.i.i13, align 8, !tbaa !317
  store ptr %i.u, ptr %.sroa.05.09.i.i14, align 8, !tbaa !317
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -8 ; 2 uses
  %i.v = load ptr, ptr %.sroa.0.0.i.i15, align 8, !tbaa !317
  %i.w = tail call noundef zeroext i1 %2(ptr noundef %i.r, ptr noundef %i.v), !inline_history !3206
  br i1 %i.w, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbPKS3_SD_EEEEvT_T0_.exit.i, !llvm.loop !3204

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbPKS3_SD_EEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store ptr %i.r, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i11 = icmp eq ptr %i.x, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit, label %.lr.ph.i10, !llvm.loop !3207

bb.g:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %0, %1
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  %or.cond = select i1 %i.y, i1 true, i1 %.not19.i18
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22 ], [ %.sroa.0.018.i17, %bb.g ] ; 7 uses
  %.pn20.i21 = phi ptr [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22 ], [ %0, %bb.g ] ; 4 uses
  %i.z = load ptr, ptr %.sroa.0.021.i20, align 8, !tbaa !317
  %i.aa = load ptr, ptr %0, align 8, !tbaa !317
  %i.ab = tail call noundef zeroext i1 %2(ptr noundef %i.z, ptr noundef %i.aa), !inline_history !3202
  %i.ac = load ptr, ptr %.sroa.0.021.i20, align 8, !tbaa !317 ; 3 uses
  br i1 %i.ab, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19
  %i.ad = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.ae = sub i64 %i.ad, %i.b                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !434

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 16
  %i.ai = sub nsw i64 0, %i.af
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ae, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22

bb.j:                                             ; preds = %bb.h
  %i.ak = icmp eq i64 %i.ae, 8
  br i1 %i.ak, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.am = load ptr, ptr %0, align 8, !tbaa !317
  store ptr %i.am, ptr %i.al, align 8, !tbaa !317
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22

bb.l:                                             ; preds = %.lr.ph.i19
  %i.an = load ptr, ptr %.pn20.i21, align 8, !tbaa !317
  %i.ao = tail call noundef zeroext i1 %2(ptr noundef %i.ac, ptr noundef %i.an), !inline_history !3203
  br i1 %i.ao, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.l, %.lr.ph.i.i26
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.l ] ; 4 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.l ]
  %i.ap = load ptr, ptr %.sroa.0.010.i.i27, align 8, !tbaa !317
  store ptr %i.ap, ptr %.sroa.05.09.i.i28, align 8, !tbaa !317
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %.sroa.0.0.i.i29, align 8, !tbaa !317
  %i.ar = tail call noundef zeroext i1 %2(ptr noundef %i.ac, ptr noundef %i.aq), !inline_history !3203
  br i1 %i.ar, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22, !llvm.loop !3204

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i23 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.021.i20, %bb.l ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store ptr %i.ac, ptr %.sink.i23, align 8, !tbaa !317
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit, label %.lr.ph.i19, !llvm.loop !3205

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbPKS3_SD_EEEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !317  ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !305 ; 2 uses
  %i.q = icmp slt i64 %.09.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !317
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !317
  %i.y = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.w, ptr noundef %i.x), !inline_history !3208
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !317
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !317
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !59

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !317
  %i.ag = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.af, ptr noundef %i.p), !inline_history !3209
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !317
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !317
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !60

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store ptr %i.p, ptr %i.ak, align 8, !tbaa !317
  %.not.us = icmp eq i64 %.09.us, 0
  %i.al = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3210

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit
  %.09 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !317 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !305 ; 2 uses
  %i.ao = icmp slt i64 %.09, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ap = shl i64 %.036.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !317
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !317
  %i.aw = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.au, ptr noundef %i.av), !inline_history !3208
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !317
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !317
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !317
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !317
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.09
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !317
  %i.bg = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.bf, ptr noundef %i.an), !inline_history !3209
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !317
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !317
  %i.bj = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, !llvm.loop !60

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store ptr %i.an, ptr %i.bk, align 8, !tbaa !317
  %.not = icmp eq i64 %.09, 0
  %i.bl = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !3210

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers8FieldDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers10ServiceDefESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.427", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.343", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers10ServiceDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !25

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers10ServiceDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers10ServiceDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #32 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !252
  %i.y = call noundef zeroext i1 %3(ptr noundef %i.w, ptr noundef %i.x), !inline_history !3257
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !252
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !61

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !252
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !252
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !252
  %i.ap = call noundef zeroext i1 %3(ptr noundef %i.ao, ptr noundef %i.j), !inline_history !3258
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !252
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !252
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.as, align 8, !tbaa !252
  %i.at = icmp sgt i64 %i.m, 8
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !3259

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1929 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02028 = phi i64 [ %i.av, %bb.b ], [ %2, %.lr.ph ]
  %i.au = phi i64 [ %i.cj, %bb.b ], [ %i.d, %.lr.ph ]
  %i.av = add nsw i64 %.02028, -1                 ; 3 uses
  %i.aw = lshr i64 %i.au, 1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %storemerge1929, i64 -8 ; 7 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !252
  %i.bb = tail call noundef zeroext i1 %3(ptr noundef %i.az, ptr noundef %i.ba), !inline_history !3260
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !252 ; 2 uses
  br i1 %i.bb, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph30
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !252
  %i.be = tail call noundef zeroext i1 %3(ptr noundef %i.bd, ptr noundef %i.bc), !inline_history !3260
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %0, align 8, !tbaa !252
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !252
  store ptr %i.bg, ptr %0, align 8, !tbaa !252
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !252
  %i.bj = tail call noundef zeroext i1 %3(ptr noundef %i.bh, ptr noundef %i.bi), !inline_history !3260
  %i.bk = load ptr, ptr %0, align 8, !tbaa !252   ; 2 uses
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !252
  store ptr %i.bl, ptr %0, align 8, !tbaa !252
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !252
  store ptr %i.bm, ptr %0, align 8, !tbaa !252
  store ptr %i.bk, ptr %i.f, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph30
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.bo = tail call noundef zeroext i1 %3(ptr noundef %i.bn, ptr noundef %i.bc), !inline_history !3260
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load <2 x ptr>, ptr %0, align 8, !tbaa !252
  %i.bq = shufflevector <2 x ptr> %i.bp, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bq, ptr %0, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !252
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !252
  %i.bt = tail call noundef zeroext i1 %3(ptr noundef %i.br, ptr noundef %i.bs), !inline_history !3260
  %i.bu = load ptr, ptr %0, align 8, !tbaa !252   ; 2 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !252
  store ptr %i.bv, ptr %0, align 8, !tbaa !252
  store ptr %i.bu, ptr %i.ay, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !252
  store ptr %i.bw, ptr %0, align 8, !tbaa !252
  store ptr %i.bu, ptr %i.ax, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.r
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.r ], [ %storemerge1929, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ca, %bb.p ] ; 9 uses
  %i.bx = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !252
  %i.by = load ptr, ptr %0, align 8, !tbaa !252
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef %i.bx, ptr noundef %i.by), !inline_history !3261
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.p, label %.preheader.i.i, !llvm.loop !3262

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !252
  %i.cc = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !252
  %i.cd = tail call noundef zeroext i1 %3(ptr noundef %i.cb, ptr noundef %i.cc), !inline_history !3261
  br i1 %i.cd, label %.preheader.i.i, label %bb.q, !llvm.loop !3263

bb.q:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ce, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !252
  %i.cg = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !252
  store ptr %i.cg, ptr %.sroa.012.1.i.i, align 8, !tbaa !252
  store ptr %i.cf, ptr %.sroa.09.1.i.i, align 8, !tbaa !252
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !3264

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.av, ptr %3)
  %i.ch = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ci = sub i64 %i.ch, %i.a
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 16
  br i1 %i.ck, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !3256

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !252  ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !305 ; 2 uses
  %i.q = icmp slt i64 %.09.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !252
  %i.y = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.w, ptr noundef %i.x), !inline_history !3265
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !252
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !61

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !252
  %i.ag = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.af, ptr noundef %i.p), !inline_history !3266
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !252
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !252
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !62

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store ptr %i.p, ptr %i.ak, align 8, !tbaa !252
  %.not.us = icmp eq i64 %.09.us, 0
  %i.al = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3267

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit
  %.09 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !252 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !305 ; 2 uses
  %i.ao = icmp slt i64 %.09, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ap = shl i64 %.036.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !252
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !252
  %i.aw = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.au, ptr noundef %i.av), !inline_history !3265
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !252
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !252
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !252
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !252
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.09
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bg = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.bf, ptr noundef %i.an), !inline_history !3266
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !252
  %i.bj = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, !llvm.loop !62

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store ptr %i.an, ptr %i.bk, align 8, !tbaa !252
  %.not = icmp eq i64 %.09, 0
  %i.bl = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !3267

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers9StructDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_111compareNameINS_7EnumDefEEEbPKT_S5_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  call void @_ZNK11flatbuffers9Namespace21GetFullyQualifiedNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1000)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293
  invoke void @_ZNK11flatbuffers9Namespace21GetFullyQualifiedNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1000)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !82 ; 3 uses
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !82
  %i.k = call i32 @memcmp(ptr noundef %i.j, ptr noundef %.pre.pre, i64 noundef %.sroa.speculated.i.i) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  %i.l = sub i64 %i.f, %i.h
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre.pre, %i.m
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.o = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.o)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.p = load i64, ptr %i.m, align 8, !tbaa !81
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.r = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !81
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.w = icmp slt i32 %.0.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.w

end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !253
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !253
  %i.y = call noundef zeroext i1 %3(ptr noundef %i.w, ptr noundef %i.x), !inline_history !3269
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !253
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !253
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !63

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !253
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !253
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !253
  %i.ap = call noundef zeroext i1 %3(ptr noundef %i.ao, ptr noundef %i.j), !inline_history !3270
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !253
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !253
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.as, align 8, !tbaa !253
  %i.at = icmp sgt i64 %i.m, 8
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !3271

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1929 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02028 = phi i64 [ %i.av, %bb.b ], [ %2, %.lr.ph ]
  %i.au = phi i64 [ %i.cj, %bb.b ], [ %i.d, %.lr.ph ]
  %i.av = add nsw i64 %.02028, -1                 ; 3 uses
  %i.aw = lshr i64 %i.au, 1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %storemerge1929, i64 -8 ; 7 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !253
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !253
  %i.bb = tail call noundef zeroext i1 %3(ptr noundef %i.az, ptr noundef %i.ba), !inline_history !3272
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !253 ; 2 uses
  br i1 %i.bb, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph30
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !253
  %i.be = tail call noundef zeroext i1 %3(ptr noundef %i.bd, ptr noundef %i.bc), !inline_history !3272
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %0, align 8, !tbaa !253
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !253
  store ptr %i.bg, ptr %0, align 8, !tbaa !253
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !253
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !253
  %i.bj = tail call noundef zeroext i1 %3(ptr noundef %i.bh, ptr noundef %i.bi), !inline_history !3272
  %i.bk = load ptr, ptr %0, align 8, !tbaa !253   ; 2 uses
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !253
  store ptr %i.bl, ptr %0, align 8, !tbaa !253
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !253
  store ptr %i.bm, ptr %0, align 8, !tbaa !253
  store ptr %i.bk, ptr %i.f, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph30
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !253
  %i.bo = tail call noundef zeroext i1 %3(ptr noundef %i.bn, ptr noundef %i.bc), !inline_history !3272
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load <2 x ptr>, ptr %0, align 8, !tbaa !253
  %i.bq = shufflevector <2 x ptr> %i.bp, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bq, ptr %0, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !253
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !253
  %i.bt = tail call noundef zeroext i1 %3(ptr noundef %i.br, ptr noundef %i.bs), !inline_history !3272
  %i.bu = load ptr, ptr %0, align 8, !tbaa !253   ; 2 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !253
  store ptr %i.bv, ptr %0, align 8, !tbaa !253
  store ptr %i.bu, ptr %i.ay, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !253
  store ptr %i.bw, ptr %0, align 8, !tbaa !253
  store ptr %i.bu, ptr %i.ax, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.r
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.r ], [ %storemerge1929, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ca, %bb.p ] ; 9 uses
  %i.bx = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !253
  %i.by = load ptr, ptr %0, align 8, !tbaa !253
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef %i.bx, ptr noundef %i.by), !inline_history !3273
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.p, label %.preheader.i.i, !llvm.loop !3274

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !253
  %i.cc = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !253
  %i.cd = tail call noundef zeroext i1 %3(ptr noundef %i.cb, ptr noundef %i.cc), !inline_history !3273
  br i1 %i.cd, label %.preheader.i.i, label %bb.q, !llvm.loop !3275

bb.q:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ce, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !253
  %i.cg = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !253
  store ptr %i.cg, ptr %.sroa.012.1.i.i, align 8, !tbaa !253
  store ptr %i.cf, ptr %.sroa.09.1.i.i, align 8, !tbaa !253
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !3276

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.av, ptr %3)
  %i.ch = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ci = sub i64 %i.ch, %i.a
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 16
  br i1 %i.ck, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !3268

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253  ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !305 ; 2 uses
  %i.q = icmp slt i64 %.09.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !253
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !253
  %i.y = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.w, ptr noundef %i.x), !inline_history !3277
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !253
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !253
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !63

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !253
  %i.ag = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.af, ptr noundef %i.p), !inline_history !3278
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !253
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !253
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !64

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store ptr %i.p, ptr %i.ak, align 8, !tbaa !253
  %.not.us = icmp eq i64 %.09.us, 0
  %i.al = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3279

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit
  %.09 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !253 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !305 ; 2 uses
  %i.ao = icmp slt i64 %.09, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ap = shl i64 %.036.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !253
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !253
  %i.aw = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.au, ptr noundef %i.av), !inline_history !3277
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !253
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !253
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !253
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !253
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.09
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !253
  %i.bg = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.bf, ptr noundef %i.an), !inline_history !3278
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !253
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !253
  %i.bj = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, !llvm.loop !64

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store ptr %i.an, ptr %i.bk, align 8, !tbaa !253
  %.not = icmp eq i64 %.09, 0
  %i.bl = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !3279

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumDefESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStringsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEENS_6OffsetINS_6VectorINSH_INS_6StringEEEjEEEET_SN_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 4 uses
  %i.e = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp ugt i64 %i.e, %i.m
  br i1 %i.n, label %bb.b, label %_ZN11flatbuffers15vector_downwardIjE12ensure_spaceEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.e)
  br label %_ZN11flatbuffers15vector_downwardIjE12ensure_spaceEm.exit

_ZN11flatbuffers15vector_downwardIjE12ensure_spaceEm.exit: ; preds = %bb.a, %bb.b
  %.not2223 = icmp eq ptr %1, %2
  br i1 %.not2223, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN11flatbuffers15vector_downwardIjE12ensure_spaceEm.exit
  tail call void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.d, i64 noundef 4, i64 noundef 4)
  br label %._crit_edge29

.lr.ph:                                           ; preds = %_ZN11flatbuffers15vector_downwardIjE12ensure_spaceEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_6OffsetINS_6StringEEEEEvRKT_.exit
  tail call void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.d, i64 noundef 4, i64 noundef 4)
  br label %.lr.ph28

bb.c:                                             ; preds = %.lr.ph, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_6OffsetINS_6StringEEEEEvRKT_.exit
  %.sroa.014.024 = phi ptr [ %1, %.lr.ph ], [ %i.ac, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_6OffsetINS_6StringEEEEEvRKT_.exit ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.014.024, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !79
  tail call void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.p, i64 noundef %i.r)
  %i.s = load i32, ptr %i.o, align 8, !tbaa !354
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !365  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = and i64 %i.x, 4294967292
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_6OffsetINS_6StringEEEEEvRKT_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 4)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !365
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_6OffsetINS_6StringEEEEEvRKT_.exit

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_6OffsetINS_6StringEEEEEvRKT_.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi ptr [ %i.u, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  store i32 %i.s, ptr %i.aa, align 4, !tbaa !221
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !365
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 32 ; 2 uses
  %.not22 = icmp eq ptr %i.ac, %2
  br i1 %.not22, label %._crit_edge, label %bb.c, !llvm.loop !3280

._crit_edge29:                                    ; preds = %.lr.ph28, %._crit_edge.thread
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.ae = sub nsw i64 0, %i.e
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae ; 3 uses
end_hunk_2
