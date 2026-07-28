inline.NumInlined: 494
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_:bb.a
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
  store i8 %i.u, ptr %3, align 1, !tbaa !81
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84
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
  %i.q = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 91, i64 noundef %i.p) #25 ; 2 uses
  %.not22.i = icmp eq ptr %i.q, null
  br i1 %.not22.i, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(14) @.str.14) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i: ; preds = %bb.e
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.r, %i.n
  %i.t = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 46, i64 noundef %i.s) #25 ; 2 uses
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
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %.021.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ], [ %i.i, %bb.h ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ], [ %i.g, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.0.0.i, ptr %1, align 8, !noalias !85
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.sroa.4.0.i, ptr %i.v, align 8, !noalias !85
  %i.w = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %1) #22, !noalias !85 ; 2 uses
  %i.x = and i64 %i.w, 255
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !67

bb.i:                                             ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  %.sroa.53.0.extract.shift.i.i = and i64 %i.w, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !12, !noalias !88 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !12, !noalias !88 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.01115.i.i.i.i.i = phi ptr [ %i.z, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.aa = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !28
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @isspace(i32 noundef %i.ab) #25
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.ac, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.j, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.k

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %bb.i
  %i.ad = phi i1 [ true, %bb.i ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.j ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.i ], [ %.sroa.53.0.extract.shift.i.i, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i ]
  %.sroa.62.0.extract.shift = lshr exact i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.sroa.62.0.extract.trunc = trunc nuw i64 %.sroa.62.0.extract.shift to i32
  br i1 %i.ad, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, label %bb.k, !prof !77

bb.k:                                             ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) @.str.12) #24
  unreachable

_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %.sroa.62.0.extract.trunc, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.not21 = icmp ne i32 %i.c, -1
  %.pre = ptrtoint ptr %.sroa.7.0 to i64
  %.pre76 = sub i64 %.pre, %i.g                   ; 7 uses
  %i.m = zext nneg i32 %i.c to i64
  %i.n = icmp ult i64 %.pre76, %i.m
  %or.cond94 = select i1 %.not21, i1 %i.n, i1 false
  br i1 %or.cond94, label %bb.f, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !93    ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %spec.select = select i1 %i.q, i8 32, i8 %i.p
  %i.r = trunc nuw nsw i64 %.pre76 to i32
  %i.s = sub nsw i32 %i.c, %i.r                   ; 8 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.s, i32 128)
  %i.t = sext i32 %.sroa.speculated to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 %spec.select, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.v = load i8, ptr %i.u, align 1, !tbaa !94
  switch i8 %i.v, label %bb.r [
    i8 0, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
    i8 1, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
    i8 4, label %bb.g
    i8 2, label %.lr.ph.i25.preheader
    i8 3, label %.lr.ph.i25.preheader
  ]

.lr.ph.i25.preheader:                             ; preds = %bb.f, %bb.f
  br label %.lr.ph.i25

bb.g:                                             ; preds = %bb.f
  %.off = add i32 %i.s, 1
  %.not5.i = icmp ult i32 %.off, 3
  br i1 %.not5.i, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.w = sdiv i32 %i.s, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i
  %storemerge6.i = phi i32 [ %i.ao, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i ], [ %i.w, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %storemerge6.i, i32 128) ; 2 uses
  %i.x = sext i32 %.sroa.speculated.i to i64      ; 4 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27  ; 5 uses
  %i.ab = sub i64 9223372036854775807, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %.lr.ph.i
  %i.ad = add i64 %i.aa, %i.x                     ; 3 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !24  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ah = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.aj = phi i64 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ad, %i.aj
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %cond.i.i.i.i = icmp eq i32 %storemerge6.i, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %i.a, align 16, !tbaa !28
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 16 %i.a, i64 %i.x, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.x)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !27
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !28
  %i.ao = sub nsw i32 %storemerge6.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit, label %.lr.ph.i, !llvm.loop !95

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i, %bb.g
  %.neg = sdiv i32 %i.s, -2
  %i.ap = add i32 %.neg, %i.s
  br label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34
  %storemerge6.i26 = phi i32 [ %i.bh, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34 ], [ %i.s, %.lr.ph.i25.preheader ] ; 3 uses
  %.sroa.speculated.i27 = call i32 @llvm.smin.i32(i32 %storemerge6.i26, i32 128) ; 2 uses
  %i.aq = sext i32 %.sroa.speculated.i27 to i64   ; 4 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !27 ; 5 uses
  %i.au = sub i64 9223372036854775807, %i.at
  %i.av = icmp ult i64 %i.au, %i.aq
  br i1 %i.av, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28

bb.m:                                             ; preds = %.lr.ph.i25
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28: ; preds = %.lr.ph.i25
  %i.aw = add i64 %i.at, %i.aq                    ; 3 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28
  %i.ba = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.ba)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i28
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36
  %i.bc = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i36 ]
  %.not.i.i.i.i31 = icmp ugt i64 %i.aw, %i.bc
  br i1 %.not.i.i.i.i31, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at ; 2 uses
  %cond.i.i.i.i33 = icmp eq i32 %storemerge6.i26, 1
  br i1 %cond.i.i.i.i33, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = load i8, ptr %i.a, align 16, !tbaa !28
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.aq, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.aq)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34: ; preds = %bb.q, %bb.p, %bb.o
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !27
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw
  store i8 0, ptr %i.bg, align 1, !tbaa !28
  %i.bh = sub nsw i32 %storemerge6.i26, %.sroa.speculated.i27 ; 2 uses
  %.not.i35 = icmp eq i32 %i.bh, 0
  br i1 %.not.i35, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37, label %.lr.ph.i25, !llvm.loop !95

bb.r:                                             ; preds = %bb.f
  tail call void @abort() #26
  unreachable

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34, %bb.e, %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit, %bb.f, %bb.f
  %.1 = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ], [ %i.ap, %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit ], [ %i.s, %bb.f ], [ 0, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i34 ] ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !27 ; 5 uses
  %i.bl = sub i64 9223372036854775807, %i.bk
  %i.bm = icmp ult i64 %i.bl, %.pre76
  br i1 %i.bm, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.s:                                             ; preds = %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
  %i.bn = add i64 %i.bk, %.pre76                  ; 3 uses
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.br = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bt = phi i64 [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bn, %i.bt
  br i1 %.not.i.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.7.0, %0
  br i1 %.not8.i.i.i, label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk ; 2 uses
  %cond.i.i.i = icmp eq i64 %.pre76, 1
  br i1 %cond.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %0, i64 %.pre76, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.bk, i64 noundef 0, ptr noundef %0, i64 noundef %.pre76)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.t, %bb.v, %bb.w, %bb.x
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !27
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bn
  store i8 0, ptr %i.bx, align 1, !tbaa !28
  %.not22 = icmp eq i32 %.1, 0
  br i1 %.not22, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48
  %storemerge6.i40 = phi i32 [ %i.cp, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48 ], [ %.1, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ] ; 3 uses
  %.sroa.speculated.i41 = call i32 @llvm.smin.i32(i32 %storemerge6.i40, i32 128) ; 2 uses
  %i.by = sext i32 %.sroa.speculated.i41 to i64   ; 4 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !27 ; 5 uses
  %i.cc = sub i64 9223372036854775807, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.by
  br i1 %i.cd, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42

bb.y:                                             ; preds = %.lr.ph.i39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42: ; preds = %.lr.ph.i39
  %i.ce = add i64 %i.cb, %i.by                    ; 3 uses
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42
  %i.ci = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42
  %i.cj = load i64, ptr %i.cg, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50 ]
  %.not.i.i.i.i45 = icmp ugt i64 %i.ce, %i.ck
  br i1 %.not.i.i.i.i45, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cb ; 2 uses
  %cond.i.i.i.i47 = icmp eq i32 %storemerge6.i40, 1
  br i1 %cond.i.i.i.i47, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i8, ptr %i.a, align 16, !tbaa !28
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.by, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.cb, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.by)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48: ; preds = %bb.ac, %bb.ab, %bb.aa
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !27
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce
  store i8 0, ptr %i.co, align 1, !tbaa !28
  %i.cp = sub nsw i32 %storemerge6.i40, %.sroa.speculated.i41 ; 2 uses
  %.not.i49 = icmp eq i32 %i.cp, 0
  br i1 %.not.i49, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51, label %.lr.ph.i39, !llvm.loop !95

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  %i.a = load i8, ptr %2, align 1, !tbaa !28
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(20) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(2) %3) #5
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %0, ptr %1, ptr noundef %2, i8 noundef signext %3, ptr noundef %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.folly::BadFormatArg", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %2, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i8 %3, ptr %i.b, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %4, ptr %i.c, align 8, !tbaa !12
  call void @_ZN5folly12BadFormatArgC2IJPKccS3_EEENS0_11ErrorStrTagENS_5RangeIS3_EEDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  invoke void @_ZN5folly15throw_exceptionINS_12BadFormatArgEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #5
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_12BadFormatArgEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 2 uses
  tail call void @_ZN5folly12BadFormatArgC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly12BadFormatArgE, ptr nonnull @_ZNSt16invalid_argumentD2Ev) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12BadFormatArgC2IJPKccS3_EEENS0_11ErrorStrTagENS_5RangeIS3_EEDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.folly::Range", align 8      ; 5 uses
  %7 = alloca %"class.folly::Range", align 8      ; 5 uses
  %8 = alloca %"class.folly::Range", align 8      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %6, align 8, !noalias !96
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !96
  store ptr @.str.5, ptr %7, align 8, !noalias !96
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.5, i64 25), ptr %i.b, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !96
  store ptr @.str.6, ptr %8, align 8, !noalias !96
end_hunk_0
