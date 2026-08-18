inline.NumInlined: 496
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_:bb.a
bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = tail call noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %1)
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp ugt i64 %i.s, %i.m
  br i1 %.not.i, label %_ZNK5folly5RangeIPKcE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.11) #5
  unreachable

_ZNK5folly5RangeIPKcE2atEm.exit:                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28
  store i8 %i.u, ptr %3, align 1, !tbaa !80
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE2atEm.exit, %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Range", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  br label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !12
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 5 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = icmp eq i8 %i.l, 93
  %i.n = ptrtoint ptr %i.g to i64                 ; 2 uses
  br i1 %i.m, label %bb.f, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.o, %i.n
  %i.q = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 91, i64 noundef %i.p) #26 ; 2 uses
  %.not22.i = icmp eq ptr %i.q, null
  br i1 %.not22.i, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(14) @.str.14) #25
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i: ; preds = %bb.e
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.r, %i.n
  %i.t = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 46, i64 noundef %i.s) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i, %bb.f
  %.021.i = phi ptr [ %i.t, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i ], [ %i.q, %bb.f ] ; 2 uses
  %.01620.i = phi ptr [ %i.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i ], [ %i.k, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store ptr %i.u, ptr %i.f, align 8, !tbaa !64
  store ptr %.01620.i, ptr %i.h, align 8, !tbaa !65
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.h:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit: ; preds = %bb.c, %bb.d, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, %bb.h
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %i.g, %bb.h ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ]
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %i.i, %bb.h ], [ %.021.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.0.0.i, ptr %1, align 8, !noalias !84
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.sroa.4.0.i, ptr %i.v, align 8, !noalias !84
  %i.w = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %1) #23, !noalias !84 ; 2 uses
  %i.x = and i64 %i.w, 255
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !67

bb.i:                                             ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !12, !noalias !87 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !12, !noalias !87 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread16, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread16, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.0915.i.i.i.i.i = phi ptr [ %i.z, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.aa = load i8, ptr %.0915.i.i.i.i.i, align 1, !tbaa !28
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @isspace(i32 noundef %i.ab) #26
  %.not12.not.i.i.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not12.not.i.i.not.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %bb.j

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread16: ; preds = %bb.j, %bb.i
  %.sroa.62.0.extract.shift22 = lshr i64 %i.w, 32
  %.sroa.62.0.extract.trunc23 = trunc nuw i64 %.sroa.62.0.extract.shift22 to i32
  br label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread
  call void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) @.str.12) #25
  unreachable

_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread16, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %.sroa.62.0.extract.trunc23, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread16 ]
  ret i32 %.0
}

declare void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(84) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52   ; 4 uses
  %or.cond = icmp slt i32 %i.c, -1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJPKcEEEvDpT0_(ptr noundef nonnull @.str.9) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %or.cond23 = icmp slt i32 %i.e, -1
  br i1 %or.cond23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJPKcEEEvDpT0_(ptr noundef nonnull @.str.10) #5
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not20 = icmp eq i32 %i.e, -1
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = zext nneg i32 %i.e to i64                ; 2 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.l = select i1 %.not20, i1 true, i1 %i.j
  %.sroa.7.0 = select i1 %i.l, ptr %1, ptr %i.k   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not21 = icmp ne i32 %i.c, -1
  %.pre = ptrtoint ptr %.sroa.7.0 to i64
  %.pre76 = sub i64 %.pre, %i.g                   ; 7 uses
  %i.m = zext nneg i32 %i.c to i64
  %i.n = icmp ult i64 %.pre76, %i.m
  %or.cond93 = select i1 %.not21, i1 %i.n, i1 false
  br i1 %or.cond93, label %bb.f, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !92    ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %spec.select = select i1 %i.q, i8 32, i8 %i.p
  %i.r = trunc nuw nsw i64 %.pre76 to i32
  %i.s = sub nuw nsw i32 %i.c, %i.r               ; 8 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.s, i32 128)
  %4 = zext nneg i32 %.sroa.speculated to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 %spec.select, i64 %4, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.u = load i8, ptr %i.t, align 1, !tbaa !93
  switch i8 %i.u, label %bb.r [
    i8 0, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
    i8 1, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
    i8 4, label %bb.g
    i8 2, label %.lr.ph.i25.preheader
    i8 3, label %.lr.ph.i25.preheader
  ]

.lr.ph.i25.preheader:                             ; preds = %bb.f, %bb.f
  br label %.lr.ph.i25

bb.g:                                             ; preds = %bb.f
  %.not5.i = icmp samesign ult i32 %i.s, 2
  br i1 %.not5.i, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %5 = lshr i32 %i.s, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i
  %storemerge6.i = phi i32 [ %i.al, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i ], [ %5, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %storemerge6.i, i32 128) ; 2 uses
  %6 = zext nneg i32 %.sroa.speculated.i to i64   ; 4 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27   ; 5 uses
  %i.y = sub i64 9223372036854775807, %i.x
  %i.z = icmp ult i64 %i.y, %6
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %.lr.ph.i
  %i.aa = add i64 %i.x, %6                        ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ae = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.aa, %i.ag
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x ; 2 uses
  %cond.i.i.i.i = icmp eq i32 %storemerge6.i, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.a, align 16, !tbaa !28
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 16 %i.a, i64 %6, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.x, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %6)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !27
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  store i8 0, ptr %i.ak, align 1, !tbaa !28
  %i.al = sub nsw i32 %storemerge6.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit, label %.lr.ph.i, !llvm.loop !94

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i, %bb.g
  %.neg = sdiv i32 %i.s, -2
  %i.am = add nsw i32 %.neg, %i.s
  br label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34
  %storemerge6.i26 = phi i32 [ %i.be, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34 ], [ %i.s, %.lr.ph.i25.preheader ] ; 3 uses
  %.sroa.speculated.i27 = call i32 @llvm.smin.i32(i32 %storemerge6.i26, i32 128) ; 2 uses
  %i.an = sext i32 %.sroa.speculated.i27 to i64   ; 4 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27 ; 5 uses
  %i.ar = sub i64 9223372036854775807, %i.aq
  %i.as = icmp ult i64 %i.ar, %i.an
  br i1 %i.as, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28

bb.m:                                             ; preds = %.lr.ph.i25
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28: ; preds = %.lr.ph.i25
  %i.at = add i64 %i.aq, %i.an                    ; 3 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28
  %i.ax = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ax)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36
  %i.az = phi i64 [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36 ]
  %.not.i.i.i.i31 = icmp ugt i64 %i.at, %i.az
  br i1 %.not.i.i.i.i31, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq ; 2 uses
  %cond.i.i.i.i33 = icmp eq i32 %storemerge6.i26, 1
  br i1 %cond.i.i.i.i33, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = load i8, ptr %i.a, align 16, !tbaa !28
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.an, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 noundef %i.aq, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.an)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34: ; preds = %bb.q, %bb.p, %bb.o
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !27
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store i8 0, ptr %i.bd, align 1, !tbaa !28
  %i.be = sub nsw i32 %storemerge6.i26, %.sroa.speculated.i27 ; 2 uses
  %.not.i35 = icmp eq i32 %i.be, 0
  br i1 %.not.i35, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37, label %.lr.ph.i25, !llvm.loop !94

bb.r:                                             ; preds = %bb.f
  tail call void @abort() #27
  unreachable

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34, %bb.e, %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit, %bb.f, %bb.f
  %.1 = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ], [ %i.am, %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit ], [ %i.s, %bb.f ], [ 0, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34 ] ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !27 ; 5 uses
  %i.bi = sub i64 9223372036854775807, %i.bh
  %i.bj = icmp ult i64 %i.bi, %.pre76
  br i1 %i.bj, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.s:                                             ; preds = %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
  %i.bk = add i64 %i.bh, %.pre76                  ; 3 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bo = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bk, %i.bq
  br i1 %.not.i.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.7.0, %0
  br i1 %.not8.i.i.i, label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh ; 2 uses
  %cond.i.i.i = icmp eq i64 %.pre76, 1
  br i1 %cond.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %0, i64 %.pre76, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bh, i64 noundef 0, ptr noundef %0, i64 noundef %.pre76)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.t, %bb.v, %bb.w, %bb.x
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !27
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bk
  store i8 0, ptr %i.bu, align 1, !tbaa !28
  %.not22 = icmp eq i32 %.1, 0
  br i1 %.not22, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48
  %storemerge6.i40 = phi i32 [ %i.cm, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48 ], [ %.1, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ] ; 3 uses
  %.sroa.speculated.i41 = call i32 @llvm.smin.i32(i32 %storemerge6.i40, i32 128) ; 2 uses
  %i.bv = sext i32 %.sroa.speculated.i41 to i64   ; 4 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !27 ; 5 uses
  %i.bz = sub i64 9223372036854775807, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bv
  br i1 %i.ca, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42

bb.y:                                             ; preds = %.lr.ph.i39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42: ; preds = %.lr.ph.i39
  %i.cb = add i64 %i.by, %i.bv                    ; 3 uses
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42
  %i.cf = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50
  %i.ch = phi i64 [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50 ]
  %.not.i.i.i.i45 = icmp ugt i64 %i.cb, %i.ch
  br i1 %.not.i.i.i.i45, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.by ; 2 uses
  %cond.i.i.i.i47 = icmp eq i32 %storemerge6.i40, 1
  br i1 %cond.i.i.i.i47, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.a, align 16, !tbaa !28
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.bv, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 noundef %i.by, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.bv)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48: ; preds = %bb.ac, %bb.ab, %bb.aa
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !27
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cb
  store i8 0, ptr %i.cl, align 1, !tbaa !28
  %i.cm = sub nsw i32 %storemerge6.i40, %.sroa.speculated.i41 ; 2 uses
  %.not.i49 = icmp eq i32 %i.cm, 0
  br i1 %.not.i49, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51, label %.lr.ph.i39, !llvm.loop !94

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5EEEE4callIJNS_5RangeIPKcEES9_S9_S8_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a
  %.not8.i.i.i44 = icmp eq i64 %i.ba, 0
  br i1 %.not8.i.i.i44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb ; 2 uses
  %cond.i.i.i45 = icmp eq i64 %i.ba, 1
  br i1 %cond.i.i.i45, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !28
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i42
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bb, i64 noundef 0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  store i64 %i.be, ptr %i.e, align 8, !tbaa !27
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 0, ptr %i.bn, align 1, !tbaa !28
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bo = load i64, ptr %4, align 8, !tbaa !68
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.bo, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i, !prof !66

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !107
  br label %bb.c

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 39
  %i.f = lshr i64 %i.e, 7                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i, %.lr.ph.i.i.i
  %.0.i4.i2.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ] ; 2 uses
  %.014.i.i1.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ]
  %i.m = add i64 %.014.i.i1.i.i.i, -2             ; 4 uses
  %i.n = udiv i64 %.0.i4.i2.i.i.i, 100            ; 2 uses
  %i.o = urem i64 %.0.i4.i2.i.i.i, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !112

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i
  %.014.i.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i4.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i4.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !107  ; 3 uses
  %i.v = icmp eq i64 %.014.i.i.lcssa.i.i.i, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.u, ptr %i.a, align 16
  %i.w = trunc i16 %i.u to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.x = phi i16 [ %i.b, %._crit_edge.thread.i.i.i ], [ %i.u, %._crit_edge.i.i.i ]
  %.0.i.i712.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.k, %._crit_edge.i.i.i ]
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8                 ; 2 uses
  store i8 %i.z, ptr %i.a, align 16, !tbaa !28
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i.i711.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i.i712.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i.i711.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i.i711.i.i.i         ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.af, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i.i711.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i.i711.i.i.i, 1
  br i1 %cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !27
  %i.an = load ptr, ptr %1, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(46) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(46) %1) #5
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA31_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(31) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(31) %1) #5
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA36_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(36) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(36) %1) #5
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN5folly7sformatIJRPKcS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES9_NS_5RangeIS2_EEDpOT_: argument 0"}
!18 = distinct !{!18, !"_ZN5folly7sformatIJRPKcS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES9_NS_5RangeIS2_EEDpOT_"}
!19 = !{!20, !20, i64 0}
!20 = !{!"p2 omnipotent char", !21, i64 0}
!21 = !{!"any p2 pointer", !14, i64 0}
!22 = !{!23, !13, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!24 = !{!25, !13, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !26, i64 8, !10, i64 16}
!26 = !{!"long", !10, i64 0}
!27 = !{!25, !26, i64 8}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 int", !14, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRPKcS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEELb0ESt16integer_sequenceImJLm0ELm1ELm2ELm3EEEJS4_S4_SA_SB_EE3strEv: argument 0"}
!33 = distinct !{!33, !"_ZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRPKcS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEELb0ESt16integer_sequenceImJLm0ELm1ELm2ELm3EEEJS4_S4_SA_SB_EE3strEv"}
!34 = !{!32, !17}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!37 = !{!38, !20, i64 0}
!38 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm0ERPKcEE", !20, i64 0}
!39 = !{}
!40 = !{i64 8}
!41 = !{!42, !20, i64 0}
!42 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm1ERPKcEE", !20, i64 0}
!43 = !{!44, !30, i64 0}
!44 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm3ERiEE", !30, i64 0}
!45 = !{i64 4}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTSN5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !14, i64 0}
!48 = !{!49, !36, i64 0}
!49 = !{!"_ZTSN5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !36, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !9, i64 24}
!53 = !{!"_ZTSN5folly9FormatArgE", !54, i64 0, !10, i64 16, !55, i64 17, !56, i64 18, !57, i64 19, !57, i64 20, !57, i64 21, !9, i64 24, !9, i64 28, !9, i64 32, !10, i64 36, !54, i64 40, !9, i64 56, !54, i64 64, !58, i64 80}
!54 = !{!"_ZTSN5folly5RangeIPKcEE", !13, i64 0, !13, i64 8}
!55 = !{!"_ZTSN5folly9FormatArg5AlignE", !10, i64 0}
!56 = !{!"_ZTSN5folly9FormatArg4SignE", !10, i64 0}
!57 = !{!"bool", !10, i64 0}
!58 = !{!"_ZTSN5folly9FormatArg11NextKeyModeE", !10, i64 0}
!59 = !{!53, !9, i64 28}
!60 = !{!53, !9, i64 32}
!61 = !{!53, !10, i64 36}
!62 = !{!53, !58, i64 80}
!63 = !{!"branch_weights", i32 428638165, i32 1717128, i32 1717128355}
!64 = !{!54, !13, i64 0}
!65 = !{!54, !13, i64 8}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = !{!26, !26, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
!71 = distinct !{!71, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_"}
!72 = !{!73, !75, !70}
!73 = distinct !{!73, !74, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_: argument 0"}
!74 = distinct !{!74, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_"}
!75 = distinct !{!75, !76, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_: argument 0"}
!76 = distinct !{!76, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_"}
!77 = !{!14, !14, i64 0}
!78 = !{!79, !13, i64 0}
!79 = !{!"_ZTSN5folly11FormatValueIPKcvEE", !13, i64 0}
!80 = !{!81, !10, i64 0}
!81 = !{!"_ZTSN5folly11FormatValueIcvEE", !10, i64 0}
!82 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!83 = !{!53, !9, i64 56}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
!86 = distinct !{!86, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_"}
!87 = !{!88, !90, !85}
!88 = distinct !{!88, !89, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_: argument 0"}
!89 = distinct !{!89, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_"}
!90 = distinct !{!90, !91, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_: argument 0"}
!91 = distinct !{!91, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_"}
!92 = !{!53, !10, i64 16}
!93 = !{!53, !55, i64 17}
!94 = distinct !{!94, !51}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5folly12BadFormatArg3strIJPKccS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_: argument 0"}
!97 = distinct !{!97, !"_ZN5folly12BadFormatArg3strIJPKccS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_"}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !11, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN5folly12BadFormatArg3strIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_: argument 0"}
!102 = distinct !{!102, !"_ZN5folly12BadFormatArg3strIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_"}
!103 = !{!53, !56, i64 18}
!104 = !{!53, !57, i64 19}
!105 = !{i8 0, i8 2}
!106 = !{!53, !57, i64 20}
!107 = !{!108, !108, i64 0}
!108 = !{!"short", !10, i64 0}
!109 = distinct !{!109, !51}
!110 = !{!111, !9, i64 0}
!111 = !{!"_ZTSN5folly11FormatValueIivEE", !9, i64 0}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !51}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !51}
!116 = distinct !{!116, !51}
!117 = !{!118, !47, i64 0}
!118 = !{!"_ZTSZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_EUlNS_5RangeIPKcEEE_", !47, i64 0}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN5folly12BadFormatArg3strIJPKcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_: argument 0"}
!121 = distinct !{!121, !"_ZN5folly12BadFormatArg3strIJPKcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_"}
end_hunk_1
