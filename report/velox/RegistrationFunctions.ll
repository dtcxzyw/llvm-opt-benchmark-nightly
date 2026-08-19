inline.NumInlined: 21036
inline.NumDeleted: 6221
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED0Ev:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !5775
  br label %_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev.exit

_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #34, !inline_history !5775
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2965", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2965", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEESI_SI_SI_SL_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !5776

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_RSL_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_RSL_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2041 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02140 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02140, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2041, i64 -32 ; 3 uses
  %i.p = load i128, ptr %i.f, align 16, !tbaa !5195 ; 5 uses
  %i.q = load i128, ptr %i.n, align 16, !tbaa !5195 ; 5 uses
  %i.r = icmp slt i128 %i.p, %i.q
  %i.s = load i128, ptr %i.o, align 16, !tbaa !5195 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i128 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i128, ptr %0, align 16, !tbaa !560
  store i128 %i.q, ptr %0, align 16, !tbaa !560
  store i128 %i.u, ptr %i.n, align 16, !tbaa !560
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.w = load i128, ptr %i.g, align 16, !tbaa !560
  %i.x = load i128, ptr %i.v, align 16, !tbaa !560
  store i128 %i.x, ptr %i.g, align 16, !tbaa !560
  store i128 %i.w, ptr %i.v, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i128 %i.p, %i.s
  %i.z = load i128, ptr %0, align 16, !tbaa !560  ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i128 %i.s, ptr %0, align 16, !tbaa !560
  store i128 %i.z, ptr %i.o, align 16, !tbaa !560
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 2 uses
  %i.ab = load i128, ptr %i.g, align 16, !tbaa !560
  %i.ac = load i128, ptr %i.aa, align 16, !tbaa !560
  store i128 %i.ac, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ab, ptr %i.aa, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i128 %i.p, ptr %0, align 16, !tbaa !560
  store i128 %i.z, ptr %i.f, align 16, !tbaa !560
  %i.ad = load i128, ptr %i.g, align 16, !tbaa !560
  %i.ae = load i128, ptr %i.h, align 16, !tbaa !560
  store i128 %i.ae, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ad, ptr %i.h, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i128 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i128, ptr %0, align 16, !tbaa !560
  store i128 %i.p, ptr %0, align 16, !tbaa !560
  store i128 %i.ag, ptr %i.f, align 16, !tbaa !560
  %i.ah = load i128, ptr %i.g, align 16, !tbaa !560
  %i.ai = load i128, ptr %i.h, align 16, !tbaa !560
  store i128 %i.ai, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ah, ptr %i.h, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i128 %i.q, %i.s
  %i.ak = load i128, ptr %0, align 16, !tbaa !560 ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i128 %i.s, ptr %0, align 16, !tbaa !560
  store i128 %i.ak, ptr %i.o, align 16, !tbaa !560
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 2 uses
  %i.am = load i128, ptr %i.g, align 16, !tbaa !560
  %i.an = load i128, ptr %i.al, align 16, !tbaa !560
  store i128 %i.an, ptr %i.g, align 16, !tbaa !560
  store i128 %i.am, ptr %i.al, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i128 %i.q, ptr %0, align 16, !tbaa !560
  store i128 %i.ak, ptr %i.n, align 16, !tbaa !560
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ap = load i128, ptr %i.g, align 16, !tbaa !560
  %i.aq = load i128, ptr %i.ao, align 16, !tbaa !560
  store i128 %i.aq, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ap, ptr %i.ao, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader, %bb.o
  %.sroa.012.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i.preheader ]
  %i.ar = load i128, ptr %0, align 16, !tbaa !5195 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i128, ptr %.sroa.012.1.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.at = icmp slt i128 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !5777

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.av = load i128, ptr %.sroa.0.1.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.aw = icmp slt i128 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !5778

bb.n:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEESI_SI_SI_SL_.exit

bb.o:                                             ; preds = %bb.n
  store i128 %i.av, ptr %.sroa.012.1.i.i, align 16, !tbaa !560
  store i128 %i.as, ptr %.sroa.0.1.i.i, align 16, !tbaa !560
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 2 uses
  %i.az = load i128, ptr %i.ax, align 16, !tbaa !560
  %i.ba = load i128, ptr %i.ay, align 16, !tbaa !560
  store i128 %i.ba, ptr %i.ax, align 16, !tbaa !560
  store i128 %i.az, ptr %i.ay, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SI_SI_SL_.exit.i, !llvm.loop !5779

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEESI_SI_SI_SL_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bb = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bc = sub i64 %i.bb, %i.a
  %i.bd = ashr exact i64 %i.bc, 5                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.b, label %.loopexit, !llvm.loop !5776

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEESI_SI_SI_SL_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.019.i.idx = phi i64 [ %.sroa.08.019.i.add, %bb.d ], [ 32, %.lr.ph.i ] ; 3 uses
  %.pn18.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.08.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.019.i.idx ; 6 uses
  %i.f = load i128, ptr %.sroa.08.019.i.ptr, align 16, !tbaa !5195 ; 5 uses
  %i.g = load i128, ptr %0, align 16, !tbaa !5195
  %i.h = icmp slt i128 %i.f, %i.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.sroa.4.0.copyload.i = load i128, ptr %.sroa.4.0..sroa_idx.i, align 16 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %2 = add i64 %indvar, 1
  %i.i = lshr exact i64 %.sroa.08.019.i.idx, 5    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 64 ; 2 uses
  %xtraiter59 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter61 = phi i64 [ %prol.iter61.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.k = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -32 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -32 ; 3 uses
  %i.m = load i128, ptr %i.k, align 16, !tbaa !560
  store i128 %i.m, ptr %i.l, align 16, !tbaa !5195
  %i.n = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16
  %i.o = load i128, ptr %i.n, align 16, !tbaa !560
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16
  store i128 %i.o, ptr %i.p, align 16, !tbaa !5197
  %i.q = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter61.next = add i64 %prol.iter61, 1     ; 2 uses
  %prol.iter61.cmp.not = icmp eq i64 %prol.iter61.next, %xtraiter59
  br i1 %prol.iter61.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !5780

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %indvar, 3
  br i1 %i.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.u = load i128, ptr %i.s, align 16, !tbaa !560
  store i128 %i.u, ptr %i.t, align 16, !tbaa !5195
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.w = load i128, ptr %i.v, align 16, !tbaa !560
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  store i128 %i.w, ptr %i.x, align 16, !tbaa !5197
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64
  %i.aa = load i128, ptr %i.y, align 16, !tbaa !560
  store i128 %i.aa, ptr %i.z, align 16, !tbaa !5195
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ac = load i128, ptr %i.ab, align 16, !tbaa !560
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  store i128 %i.ac, ptr %i.ad, align 16, !tbaa !5197
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -96
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -96
  %i.ag = load i128, ptr %i.ae, align 16, !tbaa !560
  store i128 %i.ag, ptr %i.af, align 16, !tbaa !5195
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -80
  %i.ai = load i128, ptr %i.ah, align 16, !tbaa !560
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -80
  store i128 %i.ai, ptr %i.aj, align 16, !tbaa !5197
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.am = load i128, ptr %i.ak, align 16, !tbaa !560
  store i128 %i.am, ptr %i.al, align 16, !tbaa !5195
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -112
  %i.ao = load i128, ptr %i.an, align 16, !tbaa !560
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -112
  store i128 %i.ao, ptr %i.ap, align 16, !tbaa !5197
  %i.aq = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ar = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !5781

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i128 %i.f, ptr %0, align 16, !tbaa !5195
  store i128 %.sroa.4.0.copyload.i, ptr %i.e, align 16, !tbaa !5197
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = load i128, ptr %.pn18.i, align 16, !tbaa !5195 ; 2 uses
  %i.at = icmp slt i128 %i.f, %i.as
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i128 [ %i.ay, %.lr.ph.i.i ], [ %i.as, %bb.c ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.c ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.08.019.i.ptr, %bb.c ] ; 3 uses
  store i128 %i.au, ptr %.sroa.05.09.i.i, align 16, !tbaa !5195
  %i.av = getelementptr inbounds i8, ptr %.sroa.05.09.i.i, i64 -16
  %i.aw = load i128, ptr %i.av, align 16, !tbaa !560
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16
  store i128 %i.aw, ptr %i.ax, align 16, !tbaa !5197
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -32 ; 2 uses
  %i.ay = load i128, ptr %.sroa.0.0.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.az = icmp slt i128 %i.f, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i, !llvm.loop !5782

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.c ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ] ; 2 uses
  store i128 %i.f, ptr %.sroa.05.0.lcssa.i.i, align 16, !tbaa !5195
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 16
  store i128 %.sroa.4.0.copyload.i, ptr %i.ba, align 16, !tbaa !5197
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.019.i.add = add nuw nsw i64 %.sroa.08.019.i.idx, 32 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.08.019.i.add, 512
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bb, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit, label %bb.b, !llvm.loop !5783

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i13
  %.sroa.0.06.i = phi ptr [ %i.bn, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i128, ptr %.sroa.0.06.i, align 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 16
  %.sroa.5.0.copyload.i.i = load i128, ptr %.sroa.5.0..sroa_idx.i.i, align 16
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -32 ; 2 uses
  %i.be = load i128, ptr %.sroa.0.08.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.bf = icmp slt i128 %.sroa.03.0.copyload.i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i13

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i15
  %i.bg = phi i128 [ %i.bk, %.lr.ph.i.i15 ], [ %i.be, %.lr.ph.i12 ]
  %.sroa.0.010.i.i16 = phi ptr [ %.sroa.0.0.i.i18, %.lr.ph.i.i15 ], [ %.sroa.0.08.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.05.09.i.i17 = phi ptr [ %.sroa.0.010.i.i16, %.lr.ph.i.i15 ], [ %.sroa.0.06.i, %.lr.ph.i12 ] ; 3 uses
  store i128 %i.bg, ptr %.sroa.05.09.i.i17, align 16, !tbaa !5195
  %i.bh = getelementptr inbounds i8, ptr %.sroa.05.09.i.i17, i64 -16
  %i.bi = load i128, ptr %i.bh, align 16, !tbaa !560
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i17, i64 16
  store i128 %i.bi, ptr %i.bj, align 16, !tbaa !5197
  %.sroa.0.0.i.i18 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i16, i64 -32 ; 2 uses
  %i.bk = load i128, ptr %.sroa.0.0.i.i18, align 16, !tbaa !5195 ; 2 uses
  %i.bl = icmp slt i128 %.sroa.03.0.copyload.i.i, %i.bk
  br i1 %i.bl, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i13, !llvm.loop !5782

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_.exit.i13: ; preds = %.lr.ph.i.i15, %.lr.ph.i12
  %.sroa.05.0.lcssa.i.i14 = phi ptr [ %.sroa.0.06.i, %.lr.ph.i12 ], [ %.sroa.0.010.i.i16, %.lr.ph.i.i15 ] ; 2 uses
  store i128 %.sroa.03.0.copyload.i.i, ptr %.sroa.05.0.lcssa.i.i14, align 16, !tbaa !5195
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i14, i64 16
  store i128 %.sroa.5.0.copyload.i.i, ptr %i.bm, align 16, !tbaa !5197
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 32 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit, label %.lr.ph.i12, !llvm.loop !5784

bb.e:                                             ; preds = %bb.a
  %i.bp = icmp eq ptr %0, %1
  br i1 %i.bp, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.e
  %.sroa.08.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.08.017.i20, %1
  br i1 %i.bq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_SL_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i19
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i21
  %.sroa.08.019.i22 = phi ptr [ %.sroa.08.017.i20, %.lr.ph.i21 ], [ %.sroa.08.0.i28, %bb.i ] ; 8 uses
  %.pn18.i23 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.08.019.i22, %bb.i ] ; 4 uses
  %i.bs = load i128, ptr %.sroa.08.019.i22, align 16, !tbaa !5195 ; 5 uses
  %i.bt = load i128, ptr %0, align 16, !tbaa !5195
  %i.bu = icmp slt i128 %i.bs, %i.bt
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %.pn18.i23, i64 48
  %.sroa.4.0.copyload.i25 = load i128, ptr %.sroa.4.0..sroa_idx.i24, align 16 ; 2 uses
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = ptrtoint ptr %.sroa.08.019.i22 to i64
  %i.bw = sub i64 %i.bv, %i.b
  %i.bx = ashr exact i64 %i.bw, 5                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.preheader.i34, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33

.lr.ph.i.i.i.i.i.preheader.i34:                   ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn18.i23, i64 64 ; 2 uses
  %xtraiter = and i64 %i.bx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i.i35.prol

.lr.ph.i.i.i.i.i.i35.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i34, %.lr.ph.i.i.i.i.i.i35.prol
  %.010.i.i.i.i.i.i36.prol = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i35.prol ], [ %i.bx, %.lr.ph.i.i.i.i.i.preheader.i34 ]
  %.069.i.i.i.i.i.i37.prol = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i35.prol ], [ %i.bz, %.lr.ph.i.i.i.i.i.preheader.i34 ] ; 2 uses
  %.078.i.i.i.i.i.i38.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i35.prol ], [ %.sroa.08.019.i22, %.lr.ph.i.i.i.i.i.preheader.i34 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i35.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i34 ]
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.prol, i64 -32 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.prol, i64 -32 ; 3 uses
  %i.cc = load i128, ptr %i.ca, align 16, !tbaa !560
  store i128 %i.cc, ptr %i.cb, align 16, !tbaa !5195
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.prol, i64 -16
  %i.ce = load i128, ptr %i.cd, align 16, !tbaa !560
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.prol, i64 -16
  store i128 %i.ce, ptr %i.cf, align 16, !tbaa !5197
  %i.cg = add nsw i64 %.010.i.i.i.i.i.i36.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i.i35.prol, !llvm.loop !5785

.lr.ph.i.i.i.i.i.i35.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i35.prol, %.lr.ph.i.i.i.i.i.preheader.i34
  %.010.i.i.i.i.i.i36.unr = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i35.prol ]
  %.069.i.i.i.i.i.i37.unr = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i35.prol ]
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SI_RSL_:bb.a
  store i128 %.sroa.016.0.copyload, ptr %i.au, align 16, !tbaa !5195
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i128 %.sroa.417.0.copyload, ptr %i.av, align 16, !tbaa !5197
  %.not = icmp eq i64 %.08, 0
  %i.aw = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !5789

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E_EEEvSI_SL_SL_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2968", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2968", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEESI_SI_SI_SL_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !5790

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_RSL_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_RSL_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2041 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02140 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02140, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2041, i64 -32 ; 3 uses
  %i.p = load i128, ptr %i.f, align 16, !tbaa !5195 ; 5 uses
  %i.q = load i128, ptr %i.n, align 16, !tbaa !5195 ; 5 uses
  %i.r = icmp slt i128 %i.p, %i.q
  %i.s = load i128, ptr %i.o, align 16, !tbaa !5195 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i128 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i128, ptr %0, align 16, !tbaa !560
  store i128 %i.q, ptr %0, align 16, !tbaa !560
  store i128 %i.u, ptr %i.n, align 16, !tbaa !560
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.w = load i128, ptr %i.g, align 16, !tbaa !560
  %i.x = load i128, ptr %i.v, align 16, !tbaa !560
  store i128 %i.x, ptr %i.g, align 16, !tbaa !560
  store i128 %i.w, ptr %i.v, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i128 %i.p, %i.s
  %i.z = load i128, ptr %0, align 16, !tbaa !560  ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i128 %i.s, ptr %0, align 16, !tbaa !560
  store i128 %i.z, ptr %i.o, align 16, !tbaa !560
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 2 uses
  %i.ab = load i128, ptr %i.g, align 16, !tbaa !560
  %i.ac = load i128, ptr %i.aa, align 16, !tbaa !560
  store i128 %i.ac, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ab, ptr %i.aa, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i128 %i.p, ptr %0, align 16, !tbaa !560
  store i128 %i.z, ptr %i.f, align 16, !tbaa !560
  %i.ad = load i128, ptr %i.g, align 16, !tbaa !560
  %i.ae = load i128, ptr %i.h, align 16, !tbaa !560
  store i128 %i.ae, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ad, ptr %i.h, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i128 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i128, ptr %0, align 16, !tbaa !560
  store i128 %i.p, ptr %0, align 16, !tbaa !560
  store i128 %i.ag, ptr %i.f, align 16, !tbaa !560
  %i.ah = load i128, ptr %i.g, align 16, !tbaa !560
  %i.ai = load i128, ptr %i.h, align 16, !tbaa !560
  store i128 %i.ai, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ah, ptr %i.h, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i128 %i.q, %i.s
  %i.ak = load i128, ptr %0, align 16, !tbaa !560 ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i128 %i.s, ptr %0, align 16, !tbaa !560
  store i128 %i.ak, ptr %i.o, align 16, !tbaa !560
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 2 uses
  %i.am = load i128, ptr %i.g, align 16, !tbaa !560
  %i.an = load i128, ptr %i.al, align 16, !tbaa !560
  store i128 %i.an, ptr %i.g, align 16, !tbaa !560
  store i128 %i.am, ptr %i.al, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i128 %i.q, ptr %0, align 16, !tbaa !560
  store i128 %i.ak, ptr %i.n, align 16, !tbaa !560
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ap = load i128, ptr %i.g, align 16, !tbaa !560
  %i.aq = load i128, ptr %i.ao, align 16, !tbaa !560
  store i128 %i.aq, ptr %i.g, align 16, !tbaa !560
  store i128 %i.ap, ptr %i.ao, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader, %bb.o
  %.sroa.012.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i.preheader ]
  %i.ar = load i128, ptr %0, align 16, !tbaa !5195 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i128, ptr %.sroa.012.1.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.at = icmp slt i128 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !5791

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.av = load i128, ptr %.sroa.0.1.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.aw = icmp slt i128 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !5792

bb.n:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEESI_SI_SI_SL_.exit

bb.o:                                             ; preds = %bb.n
  store i128 %i.av, ptr %.sroa.012.1.i.i, align 16, !tbaa !560
  store i128 %i.as, ptr %.sroa.0.1.i.i, align 16, !tbaa !560
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 2 uses
  %i.az = load i128, ptr %i.ax, align 16, !tbaa !560
  %i.ba = load i128, ptr %i.ay, align 16, !tbaa !560
  store i128 %i.ba, ptr %i.ax, align 16, !tbaa !560
  store i128 %i.az, ptr %i.ay, align 16, !tbaa !560
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SI_SI_SL_.exit.i, !llvm.loop !5793

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEESI_SI_SI_SL_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bb = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bc = sub i64 %i.bb, %i.a
  %i.bd = ashr exact i64 %i.bc, 5                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.b, label %.loopexit, !llvm.loop !5790

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEESI_SI_SI_SL_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.019.i.idx = phi i64 [ %.sroa.08.019.i.add, %bb.d ], [ 32, %.lr.ph.i ] ; 3 uses
  %.pn18.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.08.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.019.i.idx ; 6 uses
  %i.f = load i128, ptr %.sroa.08.019.i.ptr, align 16, !tbaa !5195 ; 5 uses
  %i.g = load i128, ptr %0, align 16, !tbaa !5195
  %i.h = icmp slt i128 %i.f, %i.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.sroa.4.0.copyload.i = load i128, ptr %.sroa.4.0..sroa_idx.i, align 16 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %2 = add i64 %indvar, 1
  %i.i = lshr exact i64 %.sroa.08.019.i.idx, 5    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 64 ; 2 uses
  %xtraiter59 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter61 = phi i64 [ %prol.iter61.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.k = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -32 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -32 ; 3 uses
  %i.m = load i128, ptr %i.k, align 16, !tbaa !560
  store i128 %i.m, ptr %i.l, align 16, !tbaa !5195
  %i.n = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16
  %i.o = load i128, ptr %i.n, align 16, !tbaa !560
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16
  store i128 %i.o, ptr %i.p, align 16, !tbaa !5197
  %i.q = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter61.next = add i64 %prol.iter61, 1     ; 2 uses
  %prol.iter61.cmp.not = icmp eq i64 %prol.iter61.next, %xtraiter59
  br i1 %prol.iter61.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !5794

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %indvar, 3
  br i1 %i.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.u = load i128, ptr %i.s, align 16, !tbaa !560
  store i128 %i.u, ptr %i.t, align 16, !tbaa !5195
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.w = load i128, ptr %i.v, align 16, !tbaa !560
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  store i128 %i.w, ptr %i.x, align 16, !tbaa !5197
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64
  %i.aa = load i128, ptr %i.y, align 16, !tbaa !560
  store i128 %i.aa, ptr %i.z, align 16, !tbaa !5195
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ac = load i128, ptr %i.ab, align 16, !tbaa !560
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  store i128 %i.ac, ptr %i.ad, align 16, !tbaa !5197
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -96
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -96
  %i.ag = load i128, ptr %i.ae, align 16, !tbaa !560
  store i128 %i.ag, ptr %i.af, align 16, !tbaa !5195
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -80
  %i.ai = load i128, ptr %i.ah, align 16, !tbaa !560
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -80
  store i128 %i.ai, ptr %i.aj, align 16, !tbaa !5197
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.am = load i128, ptr %i.ak, align 16, !tbaa !560
  store i128 %i.am, ptr %i.al, align 16, !tbaa !5195
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -112
  %i.ao = load i128, ptr %i.an, align 16, !tbaa !560
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -112
  store i128 %i.ao, ptr %i.ap, align 16, !tbaa !5197
  %i.aq = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ar = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !5781

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i128 %i.f, ptr %0, align 16, !tbaa !5195
  store i128 %.sroa.4.0.copyload.i, ptr %i.e, align 16, !tbaa !5197
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = load i128, ptr %.pn18.i, align 16, !tbaa !5195 ; 2 uses
  %i.at = icmp slt i128 %i.f, %i.as
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i128 [ %i.ay, %.lr.ph.i.i ], [ %i.as, %bb.c ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.c ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.08.019.i.ptr, %bb.c ] ; 3 uses
  store i128 %i.au, ptr %.sroa.05.09.i.i, align 16, !tbaa !5195
  %i.av = getelementptr inbounds i8, ptr %.sroa.05.09.i.i, i64 -16
  %i.aw = load i128, ptr %i.av, align 16, !tbaa !560
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16
  store i128 %i.aw, ptr %i.ax, align 16, !tbaa !5197
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -32 ; 2 uses
  %i.ay = load i128, ptr %.sroa.0.0.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.az = icmp slt i128 %i.f, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i, !llvm.loop !5795

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.c ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ] ; 2 uses
  store i128 %i.f, ptr %.sroa.05.0.lcssa.i.i, align 16, !tbaa !5195
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 16
  store i128 %.sroa.4.0.copyload.i, ptr %i.ba, align 16, !tbaa !5197
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.019.i.add = add nuw nsw i64 %.sroa.08.019.i.idx, 32 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.08.019.i.add, 512
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bb, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit, label %bb.b, !llvm.loop !5796

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i13
  %.sroa.0.06.i = phi ptr [ %i.bn, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i128, ptr %.sroa.0.06.i, align 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 16
  %.sroa.5.0.copyload.i.i = load i128, ptr %.sroa.5.0..sroa_idx.i.i, align 16
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -32 ; 2 uses
  %i.be = load i128, ptr %.sroa.0.08.i.i, align 16, !tbaa !5195 ; 2 uses
  %i.bf = icmp slt i128 %.sroa.03.0.copyload.i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i13

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i15
  %i.bg = phi i128 [ %i.bk, %.lr.ph.i.i15 ], [ %i.be, %.lr.ph.i12 ]
  %.sroa.0.010.i.i16 = phi ptr [ %.sroa.0.0.i.i18, %.lr.ph.i.i15 ], [ %.sroa.0.08.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.05.09.i.i17 = phi ptr [ %.sroa.0.010.i.i16, %.lr.ph.i.i15 ], [ %.sroa.0.06.i, %.lr.ph.i12 ] ; 3 uses
  store i128 %i.bg, ptr %.sroa.05.09.i.i17, align 16, !tbaa !5195
  %i.bh = getelementptr inbounds i8, ptr %.sroa.05.09.i.i17, i64 -16
  %i.bi = load i128, ptr %i.bh, align 16, !tbaa !560
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i17, i64 16
  store i128 %i.bi, ptr %i.bj, align 16, !tbaa !5197
  %.sroa.0.0.i.i18 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i16, i64 -32 ; 2 uses
  %i.bk = load i128, ptr %.sroa.0.0.i.i18, align 16, !tbaa !5195 ; 2 uses
  %i.bl = icmp slt i128 %.sroa.03.0.copyload.i.i, %i.bk
  br i1 %i.bl, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i13, !llvm.loop !5795

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SL_.exit.i13: ; preds = %.lr.ph.i.i15, %.lr.ph.i12
  %.sroa.05.0.lcssa.i.i14 = phi ptr [ %.sroa.0.06.i, %.lr.ph.i12 ], [ %.sroa.0.010.i.i16, %.lr.ph.i.i15 ] ; 2 uses
  store i128 %.sroa.03.0.copyload.i.i, ptr %.sroa.05.0.lcssa.i.i14, align 16, !tbaa !5195
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i14, i64 16
  store i128 %.sroa.5.0.copyload.i.i, ptr %i.bm, align 16, !tbaa !5197
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 32 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit, label %.lr.ph.i12, !llvm.loop !5797

bb.e:                                             ; preds = %bb.a
  %i.bp = icmp eq ptr %0, %1
  br i1 %i.bp, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.e
  %.sroa.08.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.08.017.i20, %1
  br i1 %i.bq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions19IsPrivateIPFunctionINSC_4exec10VectorExecEE30generatePrivateIPAddressRangesEbEUlRKT_RKT0_E0_EEEvSI_SI_SL_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i19
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i21
  %.sroa.08.019.i22 = phi ptr [ %.sroa.08.017.i20, %.lr.ph.i21 ], [ %.sroa.08.0.i28, %bb.i ] ; 8 uses
  %.pn18.i23 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.08.019.i22, %bb.i ] ; 4 uses
  %i.bs = load i128, ptr %.sroa.08.019.i22, align 16, !tbaa !5195 ; 5 uses
  %i.bt = load i128, ptr %0, align 16, !tbaa !5195
  %i.bu = icmp slt i128 %i.bs, %i.bt
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %.pn18.i23, i64 48
  %.sroa.4.0.copyload.i25 = load i128, ptr %.sroa.4.0..sroa_idx.i24, align 16 ; 2 uses
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = ptrtoint ptr %.sroa.08.019.i22 to i64
  %i.bw = sub i64 %i.bv, %i.b
  %i.bx = ashr exact i64 %i.bw, 5                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.preheader.i34, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairInnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33

.lr.ph.i.i.i.i.i.preheader.i34:                   ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn18.i23, i64 64 ; 2 uses
  %xtraiter = and i64 %i.bx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i.i35.prol

.lr.ph.i.i.i.i.i.i35.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i34, %.lr.ph.i.i.i.i.i.i35.prol
  %.010.i.i.i.i.i.i36.prol = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i35.prol ], [ %i.bx, %.lr.ph.i.i.i.i.i.preheader.i34 ]
  %.069.i.i.i.i.i.i37.prol = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i35.prol ], [ %i.bz, %.lr.ph.i.i.i.i.i.preheader.i34 ] ; 2 uses
  %.078.i.i.i.i.i.i38.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i35.prol ], [ %.sroa.08.019.i22, %.lr.ph.i.i.i.i.i.preheader.i34 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i35.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i34 ]
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.prol, i64 -32 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.prol, i64 -32 ; 3 uses
  %i.cc = load i128, ptr %i.ca, align 16, !tbaa !560
  store i128 %i.cc, ptr %i.cb, align 16, !tbaa !5195
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.prol, i64 -16
  %i.ce = load i128, ptr %i.cd, align 16, !tbaa !560
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.prol, i64 -16
  store i128 %i.ce, ptr %i.cf, align 16, !tbaa !5197
  %i.cg = add nsw i64 %.010.i.i.i.i.i.i36.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i.i35.prol, !llvm.loop !5798

.lr.ph.i.i.i.i.i.i35.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i35.prol, %.lr.ph.i.i.i.i.i.preheader.i34
  %.010.i.i.i.i.i.i36.unr = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i35.prol ]
  %.069.i.i.i.i.i.i37.unr = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i35.prol ]
end_hunk_1
