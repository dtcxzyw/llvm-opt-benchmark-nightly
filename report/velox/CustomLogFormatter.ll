inline.NumInlined: 978
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_:bb.a
  %.sroa.4.0.i.i = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.n ], [ %i.at, %bb.s ], [ %.021.i.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.n ], [ %i.as, %bb.s ], [ %i.as, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i ] ; 2 uses
  %i.bh = icmp eq ptr %.sroa.0.0.i.i, %.sroa.4.0.i.i
  %.pre133 = load i32, ptr %i.f, align 8, !tbaa !127 ; 2 uses
  br i1 %i.bh, label %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread, label %bb.y

_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread: ; preds = %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit
  %i.bi = phi ptr [ %i.ar, %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge ], [ %i.bg, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit ]
  %i.bj = phi i32 [ %.pre132, %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge ], [ %.pre133, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit ]
  %i.bk = icmp eq i32 %i.bj, -2
  br i1 %i.bk, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !132
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit, label %bb.u, !prof !137

bb.u:                                             ; preds = %bb.t
  call void @_ZNK5folly9FormatArg5errorIJRA55_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(55) @.str.43) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.t
  %i.bn = add nsw i32 %.050114, 1
  %i.bo = sext i32 %.050114 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8, !tbaa !22
  %i.bp = icmp ugt i64 %1, %i.bo
  br i1 %i.bp, label %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit, label %bb.v, !prof !137

bb.v:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA34_KcRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #24
  unreachable

_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !65 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit, label %bb.w, !prof !137

bb.w:                                             ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit
  call void @_ZNK5folly9FormatArg5errorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(46) @.str.44) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit: ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit
  store i32 %i.br, ptr %i.f, align 8, !tbaa !127
  br label %bb.x

bb.x:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread
  %.151 = phi i32 [ %i.bn, %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit ], [ %.050114, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread ] ; 2 uses
  %i.bt = add nsw i32 %.151, 1
  br label %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit

bb.y:                                             ; preds = %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit
  %i.bu = icmp eq i32 %.pre133, -2
  br i1 %i.bu, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bv = load i32, ptr %i.g, align 4, !tbaa !132 ; 2 uses
  %.not94 = icmp eq i32 %i.bv, -1
  br i1 %.not94, label %bb.aa, label %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65, !prof !79

bb.aa:                                            ; preds = %bb.z
  call void @_ZNK5folly9FormatArg5errorIJRA55_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(55) @.str.45) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65: ; preds = %bb.z
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  %i.bx = icmp ugt i64 %1, %i.bw
  br i1 %i.bx, label %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66, label %bb.ab, !prof !137

bb.ab:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65
  call void @_ZNK5folly9FormatArg5errorIJRA34_KcRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  unreachable

_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !65 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit67, label %bb.ac, !prof !137

bb.ac:                                            ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66
  call void @_ZNK5folly9FormatArg5errorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(46) @.str.44) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit67: ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66
  store i32 %i.bz, ptr %i.f, align 8, !tbaa !127
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit67, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.i.i, ptr %6, align 8, !noalias !138
  store ptr %.sroa.4.0.i.i, ptr %i.n, align 8, !noalias !138
  %i.cb = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %6) #23, !noalias !138 ; 2 uses
  %i.cc = and i64 %i.cb, 255
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ae, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !137

bb.ae:                                            ; preds = %bb.ad
  %.sroa.53.0.extract.shift.i.i = and i64 %i.cb, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !27, !noalias !141 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !27, !noalias !141 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %bb.af
  %.01115.i.i.i.i.i = phi ptr [ %i.ce, %bb.af ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.ae ] ; 2 uses
  %i.cf = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !20
  %i.cg = sext i8 %i.cf to i32
  %i.ch = call i32 @isspace(i32 noundef %i.cg) #26
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.ch, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.af, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit151

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.af, %.lr.ph.i.i.i.i.i, %bb.ae
  %i.ci = phi i1 [ true, %bb.ae ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.af ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.ae ], [ %.sroa.53.0.extract.shift.i.i, %bb.af ], [ 2560, %.lr.ph.i.i.i.i.i ] ; 2 uses
  br i1 %i.ci, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, label %.loopexit151, !prof !89

.loopexit151:                                     ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(31) @.str.46) #24
  unreachable

_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  %.sroa.670.0.extract.shift = lshr i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.sroa.670.0.extract.trunc = trunc nuw i64 %.sroa.670.0.extract.shift to i32
  %i.cj = icmp sgt i64 %.sroa.3.0.insert.insert.i.i.i.i, -1
  br i1 %i.cj, label %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit, label %bb.ag, !prof !137

bb.ag:                                            ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit
  call void @_ZNK5folly9FormatArg5errorIJRA36_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(36) @.str.47) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit: ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, %bb.x
  %i.ck = phi ptr [ %i.bi, %bb.x ], [ %i.bg, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ]
  %.059 = phi i32 [ %.151, %bb.x ], [ %.sroa.670.0.extract.trunc, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ]
  %.156 = phi i1 [ %.055112, %bb.x ], [ true, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ] ; 2 uses
  %.153 = phi i1 [ true, %bb.x ], [ %.052113, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ] ; 2 uses
  %.2 = phi i32 [ %i.bt, %bb.x ], [ %.050114, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ]
  %or.cond = select i1 %.153, i1 %.156, i1 false
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit
  call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJPKcEEEvDpT0_(ptr noundef nonnull @.str.48) #7
  unreachable

bb.ai:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit
  %i.cl = sext i32 %.059 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  %i.cm = icmp ugt i64 %1, %i.cl
  br i1 %i.cm, label %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68, label %bb.aj, !prof !137

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNK5folly9FormatArg5errorIJRA34_KcRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  unreachable

_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !146
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  %.257 = phi i1 [ %.055112, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %.156, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ]
  %.254 = phi i1 [ %.052113, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %.153, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ]
  %.3 = phi i32 [ %.050114, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %.2, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ]
  %.1 = phi ptr [ %i.aj, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %i.ck, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ] ; 2 uses
  %.not = icmp eq ptr %.1, %.sroa.4.0.copyload
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.ak, %bb.a, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

declare void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 17 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !134   ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 99, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i8, ptr %0, align 1, !tbaa !147     ; 5 uses
  %i.h = icmp slt i8 %i.g, 0
  %.1.i.i66.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %.1.i.i66.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.b, i64 66 ; 7 uses
  %.2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i8 0, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !149
  switch i8 %i.k, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.not = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.060 = phi i8 [ 45, %bb.b ], [ 0, %bb.e ], [ 32, %bb.d ], [ 43, %bb.c ]
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %i.e, label %bb.ah [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
    i8 0, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !150, !range !72, !noundef !73
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !151, !range !72, !noundef !73
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i8 %.0 to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %i.s) #23
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !27
  br label %bb.ai

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !150, !range !72, !noundef !73
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !79

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.ab = zext i8 %.0 to i64
  %i.ac = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ai

bb.m:                                             ; preds = %bb.f, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !150, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !79

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !151, !range !72, !noundef !73
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.0, ptr %i.an, align 1, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !27
  br label %bb.ai

bb.p:                                             ; preds = %bb.f, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !79

bb.q:                                             ; preds = %bb.p
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.as, ptr %i.c, align 8, !tbaa !27
  %i.at = zext i8 %.0 to i64
  %i.au = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  store i8 %i.aw, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !20
  %i.ax = icmp ugt i8 %.0, 7
  br i1 %i.ax, label %bb.r, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.r:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  store i8 %i.az, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !20
  %i.ba = icmp ugt i8 %.0, 63
  br i1 %i.ba, label %bb.s, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !20
  store i8 %i.bb, ptr %.2.i.sroa.gep, align 16, !tbaa !20
  br label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit:     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %bb.r, %bb.s
  %.2.i.sroa.phi = phi ptr [ %.2.i.sroa.gep, %bb.s ], [ %.1.i.i66.sroa.gep, %bb.r ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !150, !range !72, !noundef !73
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit
  %i.bf = getelementptr inbounds i8, ptr %.2.i.sroa.phi, i64 -1 ; 2 uses
  store i8 48, ptr %i.bf, align 1, !tbaa !20
  br label %bb.ai

bb.u:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !151, !range !72, !noundef !73
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !27
  %i.bk = zext i8 %.0 to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  store i8 %i.bn, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !20
  %i.bo = icmp ugt i8 %.0, 15
  br i1 %i.bo, label %bb.w, label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

bb.w:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !20
  store i8 %i.bp, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %bb.w
  %.1.i.i.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.w ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !150, !range !72, !noundef !73
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit
  %i.bt = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -1
  store i8 120, ptr %i.bt, align 1, !tbaa !20
  %i.bu = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.bu, align 1, !tbaa !20
  br label %bb.ai

bb.y:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !151, !range !72, !noundef !73
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !79

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.by, ptr %i.c, align 8, !tbaa !27
  %i.bz = zext i8 %.0 to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20
  store i8 %i.cc, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !20
  %i.cd = icmp ugt i8 %.0, 15
  br i1 %i.cd, label %bb.aa, label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

bb.aa:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !20
  store i8 %i.ce, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %bb.aa
  %.1.i.i66.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.aa ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !150, !range !72, !noundef !73
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit
  %i.ci = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -1
  store i8 88, ptr %i.ci, align 1, !tbaa !20
  %i.cj = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.cj, align 1, !tbaa !20
  br label %bb.ai

bb.ac:                                            ; preds = %bb.f, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !151, !range !72, !noundef !73
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ad, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67, !prof !79

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67: ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !27
  %i.co = icmp eq i8 %.0, 0
  br i1 %i.co, label %bb.ae, label %.preheader18.split.us.i

.preheader18.split.us.i:                          ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cq = zext i8 %.0 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 1
  store i64 %i.cs, ptr %i.cp, align 1
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67
  store i8 48, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !20
  br label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit

bb.af:                                            ; preds = %bb.af, %.preheader18.split.us.i
  %.1.i = phi i64 [ %i.cw, %bb.af ], [ 59, %.preheader18.split.us.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !20
  %i.cv = icmp eq i8 %i.cu, 48
  %i.cw = add i64 %.1.i, 1
  br i1 %i.cv, label %bb.af, label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, !llvm.loop !152

_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit:    ; preds = %bb.af, %bb.ae
  %.0.i = phi i64 [ 66, %bb.ae ], [ %.1.i, %bb.af ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !150, !range !72, !noundef !73
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -1
  store i8 %i.e, ptr %i.db, align 1, !tbaa !20
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 -2 ; 2 uses
  store i8 48, ptr %i.dc, align 1, !tbaa !20
  br label %bb.ai

bb.ah:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

bb.ai:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, %bb.ag, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit, %bb.x, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit, %bb.t, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, %bb.l, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.z, %bb.l ], [ %i.z, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ %i.an, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.bf, %bb.t ], [ %.2.i.sroa.phi, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ %i.bu, %bb.x ], [ %.1.i.i.sroa.phi, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ %i.cj, %bb.ab ], [ %.1.i.i66.sroa.phi, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ %i.dc, %bb.ag ], [ %i.cx, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.l ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.t ], [ 0, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ 2, %bb.ag ], [ 0, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.dd, align 1, !tbaa !20
  %i.de = add nuw nsw i32 %.057, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.159 = phi ptr [ %i.dd, %bb.aj ], [ %.058, %bb.ai ]
  %.1 = phi i32 [ %i.de, %bb.aj ], [ %.057, %bb.ai ]
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !27
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.df, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %i.a = load i8, ptr %2, align 1, !tbaa !20
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(20) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(2) %3) #7
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.a, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !153   ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.b, align 1, !tbaa !153
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %2, 0
  %i.e = icmp eq i8 %i.c, 3
  %or.cond = and i1 %.not, %i.e
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %2 to i64                       ; 3 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.f) ; 5 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !124, !nonnull !73, !align !115 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35   ; 5 uses
  %i.m = sub i64 9223372036854775807, %i.l
  %i.n = icmp ult i64 %i.m, %.sroa.speculated.i
  br i1 %i.n, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.o = add i64 %i.l, %.sroa.speculated.i        ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.o, %i.u
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %1, %0
  br i1 %.not8.i.i.i, label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %cond.i.i.i = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %0, align 1, !tbaa !20
  store i8 %i.w, ptr %i.v, align 1, !tbaa !20
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %0, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 0, ptr noundef %0, i64 noundef %.sroa.speculated.i)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.o, ptr %i.k, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store i8 0, ptr %i.y, align 1, !tbaa !20
  %i.z = icmp ult i64 %i.i, %i.f
  br i1 %i.z, label %bb.k, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !79

bb.k:                                             ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.34) #7
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !127
  %i.ad = sub nsw i32 %i.ac, %2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  store i32 %.sroa.speculated, ptr %i.ab, align 8, !tbaa !127
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %0, %bb.b ], [ %i.aa, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %0, %bb.c ]
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0, ptr %1, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %i.a = load i8, ptr %2, align 1, !tbaa !20
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(31) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #7
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %0, ptr %1, ptr noundef %2, i8 noundef signext %3, ptr noundef %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.folly::BadFormatArg", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %2, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 %3, ptr %i.b, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %4, ptr %i.c, align 8, !tbaa !27
  call void @_ZN5folly12BadFormatArgC2IJPKccS3_EEENS0_11ErrorStrTagENS_5RangeIS3_EEDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  invoke void @_ZN5folly15throw_exceptionINS_12BadFormatArgEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_12BadFormatArgEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_:bb.a

bb.s:                                             ; preds = %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit37
  %i.bn = add i64 %i.bk, %.pre76                  ; 3 uses
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.br = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !20
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
  %i.bv = load i8, ptr %0, align 1, !tbaa !20
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !20
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %0, i64 %.pre76, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef %i.bk, i64 noundef 0, ptr noundef %0, i64 noundef %.pre76)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.t, %bb.v, %bb.w, %bb.x
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !35
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bn
  store i8 0, ptr %i.bx, align 1, !tbaa !20
  %.not22 = icmp eq i32 %.1, 0
  br i1 %.not22, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48
  %storemerge6.i40 = phi i32 [ %i.cp, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48 ], [ %.1, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ] ; 3 uses
  %.sroa.speculated.i41 = call i32 @llvm.smin.i32(i32 %storemerge6.i40, i32 128) ; 2 uses
  %i.by = sext i32 %.sroa.speculated.i41 to i64   ; 4 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !124, !nonnull !73, !align !115 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !35 ; 5 uses
  %i.cc = sub i64 9223372036854775807, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.by
  br i1 %i.cd, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42

bb.y:                                             ; preds = %.lr.ph.i39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42: ; preds = %.lr.ph.i39
  %i.ce = add i64 %i.cb, %i.by                    ; 3 uses
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !14 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42
  %i.ci = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i42
  %i.cj = load i64, ptr %i.cg, align 8, !tbaa !20
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
  %i.cm = load i8, ptr %i.a, align 16, !tbaa !20
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !20
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.by, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.cb, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.by)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48: ; preds = %bb.ac, %bb.ab, %bb.aa
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !35
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce
  store i8 0, ptr %i.co, align 1, !tbaa !20
  %i.cp = sub nsw i32 %storemerge6.i40, %.sroa.speculated.i41 ; 2 uses
  %.not.i49 = icmp eq i32 %i.cp, 0
  br i1 %.not.i49, label %_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51, label %.lr.ph.i39, !llvm.loop !158

_ZZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_ENKUliE_clEi.exit51: ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit.i48, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 2 uses
  tail call void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #24
  unreachable
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadFormatArg", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNSt16invalid_argumentC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly12BadFormatArgE, i64 16), ptr %1, align 8, !tbaa !12
  invoke void @_ZN5folly15throw_exceptionINS_12BadFormatArgEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt16invalid_argumentC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIivE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 31 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !134   ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i32, ptr %0, align 4, !tbaa !159    ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i32 0, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !149
  switch i8 %i.k, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.not = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.060 = phi i8 [ 45, %bb.b ], [ 0, %bb.e ], [ 32, %bb.d ], [ 43, %bb.c ]
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %i.e, label %bb.ag [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
    i8 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !150, !range !72, !noundef !73
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !151, !range !72, !noundef !73
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i32 %.0 to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %i.s) #23
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !27
  br label %bb.ah

bb.j:                                             ; preds = %bb.f, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !150, !range !72, !noundef !73
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !79

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.ab = zext i32 %.0 to i64
  %i.ac = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ah

bb.m:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !150, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !79

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !151, !range !72, !noundef !73
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.ao = trunc i32 %.0 to i8
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !27
  br label %bb.ah

bb.p:                                             ; preds = %bb.f, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !151, !range !72, !noundef !73
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !79

bb.q:                                             ; preds = %bb.p
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.at, ptr %i.c, align 8, !tbaa !27
  %i.au = icmp ult i32 %.0, 512
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %.lr.ph.i
  %.028.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %.02527.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 3 uses
  %i.av = and i32 %.02527.i, 511
  %i.aw = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.ax ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20
  %i.bh = getelementptr i8, ptr %i.bd, i64 -1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !20
  %i.bi = lshr i32 %.02527.i, 9                   ; 2 uses
  %i.bj = icmp ult i32 %.02527.i, 262144
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !161

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %.025.lcssa.i = phi i32 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.bi, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.aw, %.lr.ph.i ] ; 3 uses
  %i.bk = zext nneg i32 %.025.lcssa.i to i64
  %i.bl = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.bo = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !20
  %i.bq = icmp samesign ugt i32 %.025.lcssa.i, 7
  br i1 %i.bq, label %bb.r, label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

bb.r:                                             ; preds = %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bt = add i64 %.0.lcssa.i, -2                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !20
  %i.bv = icmp samesign ugt i32 %.025.lcssa.i, 63
  br i1 %i.bv, label %bb.s, label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

bb.s:                                             ; preds = %bb.r
  %i.bw = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bx = add i64 %.0.lcssa.i, -3                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !20
  br label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit:     ; preds = %._crit_edge.i, %bb.r, %bb.s
  %.2.i = phi i64 [ %i.bx, %bb.s ], [ %i.bt, %bb.r ], [ %i.bo, %._crit_edge.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !150, !range !72, !noundef !73
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 2 uses
  store i8 48, ptr %i.cd, align 1, !tbaa !20
  br label %bb.ah

bb.u:                                             ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !151, !range !72, !noundef !73
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !27
  %i.ci = icmp ult i32 %.0, 256
  br i1 %i.ci, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 2 uses
  %.02223.i.i = phi i32 [ %i.ct, %.lr.ph.i.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.cj = and i32 %.02223.i.i, 255
  %i.ck = add nsw i64 %.024.i.i, -2               ; 3 uses
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !20
  %i.cr = getelementptr i8, ptr %i.b, i64 %.024.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !20
  %i.ct = lshr i32 %.02223.i.i, 8                 ; 2 uses
  %i.cu = icmp ult i32 %.02223.i.i, 65536
  br i1 %i.cu, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !162

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %.022.lcssa.i.i = phi i32 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.ct, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.ck, %.lr.ph.i.i ] ; 2 uses
  %i.cv = zext nneg i32 %.022.lcssa.i.i to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.cz = add i64 %.0.lcssa.i.i, -1               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !20
  %i.db = icmp samesign ugt i32 %.022.lcssa.i.i, 15
  br i1 %i.db, label %bb.w, label %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.dd = add i64 %.0.lcssa.i.i, -2               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dd
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit:  ; preds = %._crit_edge.i.i, %bb.w
  %.1.i.i = phi i64 [ %i.dd, %bb.w ], [ %i.cz, %._crit_edge.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !150, !range !72, !noundef !73
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 -1
  store i8 120, ptr %i.dj, align 1, !tbaa !20
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 -2 ; 2 uses
  store i8 48, ptr %i.dk, align 1, !tbaa !20
  br label %bb.ah

bb.y:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !151, !range !72, !noundef !73
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !79

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.do, ptr %i.c, align 8, !tbaa !27
  %i.dp = icmp ult i32 %.0, 256
  br i1 %i.dp, label %._crit_edge.i.i69, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %.lr.ph.i.i66
  %.024.i.i67 = phi i64 [ %i.dr, %.lr.ph.i.i66 ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 2 uses
  %.02223.i.i68 = phi i32 [ %i.ea, %.lr.ph.i.i66 ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.dq = and i32 %.02223.i.i68, 255
  %i.dr = add nsw i64 %.024.i.i67, -2             ; 3 uses
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dr
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !20
  %i.dy = getelementptr i8, ptr %i.b, i64 %.024.i.i67
  %i.dz = getelementptr i8, ptr %i.dy, i64 -1
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !20
  %i.ea = lshr i32 %.02223.i.i68, 8               ; 2 uses
  %i.eb = icmp ult i32 %.02223.i.i68, 65536
  br i1 %i.eb, label %._crit_edge.i.i69, label %.lr.ph.i.i66, !llvm.loop !162

._crit_edge.i.i69:                                ; preds = %.lr.ph.i.i66, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %.022.lcssa.i.i70 = phi i32 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ], [ %i.ea, %.lr.ph.i.i66 ] ; 2 uses
  %.0.lcssa.i.i71 = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ], [ %i.dr, %.lr.ph.i.i66 ] ; 2 uses
  %i.ec = zext nneg i32 %.022.lcssa.i.i70 to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !20
  %i.eg = add i64 %.0.lcssa.i.i71, -1             ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eg
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !20
  %i.ei = icmp samesign ugt i32 %.022.lcssa.i.i70, 15
  br i1 %i.ei, label %bb.aa, label %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit

bb.aa:                                            ; preds = %._crit_edge.i.i69
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !20
  %i.ek = add i64 %.0.lcssa.i.i71, -2             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ek
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit:  ; preds = %._crit_edge.i.i69, %bb.aa
  %.1.i.i72 = phi i64 [ %i.ek, %bb.aa ], [ %i.eg, %._crit_edge.i.i69 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i72 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !150, !range !72, !noundef !73
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 -1
  store i8 88, ptr %i.eq, align 1, !tbaa !20
  %i.er = getelementptr inbounds i8, ptr %i.em, i64 -2 ; 2 uses
  store i8 48, ptr %i.er, align 1, !tbaa !20
  br label %bb.ah

bb.ac:                                            ; preds = %bb.f, %bb.f
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.et = load i8, ptr %i.es, align 4, !tbaa !151, !range !72, !noundef !73
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ad, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73, !prof !79

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73: ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.ev, ptr %i.c, align 8, !tbaa !27
  %i.ew = icmp eq i32 %.0, 0
  br i1 %i.ew, label %bb.ae, label %.preheader19.i

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 48, ptr %i.ex, align 2, !tbaa !20
  br label %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit

.preheader19.i:                                   ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73, %.preheader19.i
  %.01621.i = phi i64 [ %i.ez, %.preheader19.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73 ]
  %.01720.i = phi i32 [ %i.fe, %.preheader19.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73 ] ; 2 uses
  %i.ey = and i32 %.01720.i, 255
  %i.ez = add nsw i64 %.01621.i, -8               ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ez
  %i.fb = zext nneg i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 1
  store i64 %i.fd, ptr %i.fa, align 1
  %i.fe = lshr i32 %.01720.i, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !163

.preheader.i:                                     ; preds = %.preheader19.i, %.preheader.i
  %.1.i = phi i64 [ %i.fi, %.preheader.i ], [ %i.ez, %.preheader19.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = icmp eq i8 %i.fg, 48
  %i.fi = add i64 %.1.i, 1
  br i1 %i.fh, label %.preheader.i, label %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit, !llvm.loop !164

_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit:    ; preds = %.preheader.i, %bb.ae
  %.0.i = phi i64 [ 66, %bb.ae ], [ %.1.i, %.preheader.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !150, !range !72, !noundef !73
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 -1
  store i8 %i.e, ptr %i.fn, align 1, !tbaa !20
  %i.fo = getelementptr inbounds i8, ptr %i.fj, i64 -2 ; 2 uses
  store i8 48, ptr %i.fo, align 1, !tbaa !20
  br label %bb.ah

bb.ag:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

bb.ah:                                            ; preds = %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit, %bb.af, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit, %bb.x, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit, %bb.t, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, %bb.l, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.z, %bb.l ], [ %i.z, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ %i.an, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.cd, %bb.t ], [ %i.bz, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ %i.dk, %bb.x ], [ %i.df, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ %i.er, %bb.ab ], [ %i.em, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ %i.fo, %bb.af ], [ %i.fj, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.l ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.t ], [ 0, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ 2, %bb.af ], [ 0, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.fp, align 1, !tbaa !20
  %i.fq = add nuw nsw i32 %.057, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.159 = phi ptr [ %i.fp, %bb.ai ], [ %.058, %bb.ah ]
  %.1 = phi i32 [ %i.fq, %bb.ai ], [ %.057, %bb.ah ]
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !27
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.fr, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIlvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 31 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !134   ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i64, ptr %0, align 8, !tbaa !165    ; 5 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 0, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !149
  switch i8 %i.k, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.not = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.060 = phi i8 [ 45, %bb.b ], [ 0, %bb.e ], [ 32, %bb.d ], [ 43, %bb.c ]
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %i.e, label %bb.ag [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
    i8 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !150, !range !72, !noundef !73
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !151, !range !72, !noundef !73
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %.0) #23
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store ptr %i.u, ptr %i.c, align 8, !tbaa !27
  br label %bb.ah

bb.j:                                             ; preds = %bb.f, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.w = load i8, ptr %i.v, align 1, !tbaa !150, !range !72, !noundef !73
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !79

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.aa = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %.0)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c)
  br label %bb.ah

bb.m:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !150, !range !72, !noundef !73
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !79

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.am = trunc i64 %.0 to i8
  store i8 %i.am, ptr %i.al, align 1, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.an, ptr %i.c, align 8, !tbaa !27
  br label %bb.ah

bb.p:                                             ; preds = %bb.f, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !151, !range !72, !noundef !73
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !79

bb.q:                                             ; preds = %bb.p
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !27
  %i.as = icmp ult i64 %.0, 512
  br i1 %i.as, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %.lr.ph.i
  %.028.i = phi i64 [ %i.au, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %.02527.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 3 uses
  %i.at = and i64 %.02527.i, 511
  %i.au = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.av = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.at ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20
  %i.be = getelementptr i8, ptr %i.ba, i64 -1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !20
  %i.bf = lshr i64 %.02527.i, 9                   ; 2 uses
  %i.bg = icmp ult i64 %.02527.i, 262144
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !167

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %.025.lcssa.i = phi i64 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.au, %.lr.ph.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %.025.lcssa.i ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  %i.bk = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !20
  %i.bm = icmp samesign ugt i64 %.025.lcssa.i, 7
  br i1 %i.bm, label %bb.r, label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

bb.r:                                             ; preds = %._crit_edge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !20
  %i.bp = add i64 %.0.lcssa.i, -2                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bp
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !20
  %i.br = icmp samesign ugt i64 %.025.lcssa.i, 63
  br i1 %i.br, label %bb.s, label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bt = add i64 %.0.lcssa.i, -3                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !20
  br label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

_ZN5folly6detail11uintToOctalImEEmPcmT_.exit:     ; preds = %._crit_edge.i, %bb.r, %bb.s
  %.2.i = phi i64 [ %i.bt, %bb.s ], [ %i.bp, %bb.r ], [ %i.bk, %._crit_edge.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !150, !range !72, !noundef !73
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -1 ; 2 uses
  store i8 48, ptr %i.bz, align 1, !tbaa !20
  br label %bb.ah

bb.u:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !151, !range !72, !noundef !73
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !27
  %i.ce = icmp ult i64 %.0, 256
  br i1 %i.ce, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 2 uses
  %.02223.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.cf = and i64 %.02223.i.i, 255
  %i.cg = add nsw i64 %.024.i.i, -2               ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cf ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !20
  %i.cm = getelementptr i8, ptr %i.b, i64 %.024.i.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !20
  %i.co = lshr i64 %.02223.i.i, 8                 ; 2 uses
  %i.cp = icmp ult i64 %.02223.i.i, 65536
  br i1 %i.cp, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !168

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %.022.lcssa.i.i = phi i64 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.co, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %.022.lcssa.i.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20
  %i.ct = add i64 %.0.lcssa.i.i, -1               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !20
  %i.cv = icmp samesign ugt i64 %.022.lcssa.i.i, 15
  br i1 %i.cv, label %bb.w, label %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !20
  %i.cx = add i64 %.0.lcssa.i.i, -2               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cx
  store i8 %i.cw, ptr %i.cy, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit:  ; preds = %._crit_edge.i.i, %bb.w
  %.1.i.i = phi i64 [ %i.cx, %bb.w ], [ %i.ct, %._crit_edge.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.db = load i8, ptr %i.da, align 1, !tbaa !150, !range !72, !noundef !73
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 -1
  store i8 120, ptr %i.dd, align 1, !tbaa !20
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 -2 ; 2 uses
  store i8 48, ptr %i.de, align 1, !tbaa !20
  br label %bb.ah

bb.y:                                             ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dg = load i8, ptr %i.df, align 4, !tbaa !151, !range !72, !noundef !73
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !79

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.di, ptr %i.c, align 8, !tbaa !27
  %i.dj = icmp ult i64 %.0, 256
  br i1 %i.dj, label %._crit_edge.i.i69, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %.lr.ph.i.i66
  %.024.i.i67 = phi i64 [ %i.dl, %.lr.ph.i.i66 ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 2 uses
  %.02223.i.i68 = phi i64 [ %i.dt, %.lr.ph.i.i66 ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.dk = and i64 %.02223.i.i68, 255
  %i.dl = add nsw i64 %.024.i.i67, -2             ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.dk ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dl
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = getelementptr i8, ptr %i.b, i64 %.024.i.i67
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !20
  %i.dt = lshr i64 %.02223.i.i68, 8               ; 2 uses
  %i.du = icmp ult i64 %.02223.i.i68, 65536
  br i1 %i.du, label %._crit_edge.i.i69, label %.lr.ph.i.i66, !llvm.loop !168

._crit_edge.i.i69:                                ; preds = %.lr.ph.i.i66, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %.022.lcssa.i.i70 = phi i64 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ], [ %i.dt, %.lr.ph.i.i66 ] ; 2 uses
  %.0.lcssa.i.i71 = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ], [ %i.dl, %.lr.ph.i.i66 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %.022.lcssa.i.i70 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !20
  %i.dy = add i64 %.0.lcssa.i.i71, -1             ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dy
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !20
  %i.ea = icmp samesign ugt i64 %.022.lcssa.i.i70, 15
  br i1 %i.ea, label %bb.aa, label %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit

bb.aa:                                            ; preds = %._crit_edge.i.i69
  %i.eb = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.ec = add i64 %.0.lcssa.i.i71, -2             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ec
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit:  ; preds = %._crit_edge.i.i69, %bb.aa
  %.1.i.i72 = phi i64 [ %i.ec, %bb.aa ], [ %i.dy, %._crit_edge.i.i69 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i72 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !150, !range !72, !noundef !73
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 -1
  store i8 88, ptr %i.ei, align 1, !tbaa !20
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 -2 ; 2 uses
  store i8 48, ptr %i.ej, align 1, !tbaa !20
  br label %bb.ah

bb.ac:                                            ; preds = %bb.f, %bb.f
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !151, !range !72, !noundef !73
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ad, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73, !prof !79

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73: ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.en, ptr %i.c, align 8, !tbaa !27
  %i.eo = icmp eq i64 %.0, 0
  br i1 %i.eo, label %bb.ae, label %.preheader19.i

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 48, ptr %i.ep, align 2, !tbaa !20
  br label %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit

.preheader19.i:                                   ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73, %.preheader19.i
  %.01621.i = phi i64 [ %i.er, %.preheader19.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73 ]
  %.01720.i = phi i64 [ %i.ev, %.preheader19.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73 ] ; 2 uses
  %i.eq = and i64 %.01720.i, 255
  %i.er = add nsw i64 %.01621.i, -8               ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.eq
  %i.eu = load i64, ptr %i.et, align 1
  store i64 %i.eu, ptr %i.es, align 1
  %i.ev = lshr i64 %.01720.i, 8                   ; 2 uses
  %.not.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !169

.preheader.i:                                     ; preds = %.preheader19.i, %.preheader.i
  %.1.i = phi i64 [ %i.ez, %.preheader.i ], [ %i.er, %.preheader19.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !20
  %i.ey = icmp eq i8 %i.ex, 48
  %i.ez = add i64 %.1.i, 1
  br i1 %i.ey, label %.preheader.i, label %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit, !llvm.loop !170

_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit:    ; preds = %.preheader.i, %bb.ae
  %.0.i = phi i64 [ 66, %bb.ae ], [ %.1.i, %.preheader.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !150, !range !72, !noundef !73
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 -1
  store i8 %i.e, ptr %i.fe, align 1, !tbaa !20
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 -2 ; 2 uses
  store i8 48, ptr %i.ff, align 1, !tbaa !20
  br label %bb.ah

bb.ag:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

bb.ah:                                            ; preds = %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit, %bb.af, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit, %bb.x, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit, %bb.t, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, %bb.l, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.y, %bb.l ], [ %i.y, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ %i.al, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.bz, %bb.t ], [ %i.bv, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ %i.de, %bb.x ], [ %i.cz, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ %i.ej, %bb.ab ], [ %i.ee, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ %i.ff, %bb.af ], [ %i.fa, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.l ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.t ], [ 0, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ 2, %bb.af ], [ 0, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.fg, align 1, !tbaa !20
  %i.fh = add nuw nsw i32 %.057, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.159 = phi ptr [ %i.fg, %bb.ai ], [ %.058, %bb.ah ]
  %.1 = phi i32 [ %i.fh, %bb.ai ], [ %.057, %bb.ah ]
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !27
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.fi, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueImvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 31 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !134   ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i64, ptr %0, align 8, !tbaa !171    ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !149
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, label %bb.b, !prof !137

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg5errorIJRA52_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(52) @.str.37) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %i.e, label %bb.ac [
    i8 110, label %bb.c
    i8 100, label %bb.f
    i8 99, label %bb.i
    i8 111, label %bb.l
    i8 79, label %bb.l
    i8 120, label %bb.q
    i8 88, label %bb.u
    i8 98, label %bb.y
    i8 66, label %bb.y
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !150, !range !72, !noundef !73
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i8, ptr %i.n, align 4, !tbaa !151, !range !72, !noundef !73
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.e:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %i.g) #23
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !27
  br label %bb.ad

bb.f:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.v = load i8, ptr %i.u, align 1, !tbaa !150, !range !72, !noundef !73
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.z = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %i.g)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.x, ptr noundef nonnull %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %bb.ad

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !150, !range !72, !noundef !73
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !79

bb.j:                                             ; preds = %bb.i
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !151, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.k:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.al = trunc i64 %i.g to i8
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !27
  br label %bb.ad

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.m, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !79

bb.m:                                             ; preds = %bb.l
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !27
  %i.ar = icmp ult i64 %i.g, 512
  br i1 %i.ar, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, %.lr.ph.i
  %.028.i = phi i64 [ %i.at, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 2 uses
  %.02527.i = phi i64 [ %i.be, %.lr.ph.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 3 uses
  %i.as = and i64 %.02527.i, 511
  %i.at = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.au = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.as ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -2
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = getelementptr i8, ptr %i.az, i64 -1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !20
  %i.be = lshr i64 %.02527.i, 9                   ; 2 uses
  %i.bf = icmp ult i64 %.02527.i, 262144
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !167

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %.025.lcssa.i = phi i64 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ], [ %i.be, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ], [ %i.at, %.lr.ph.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %.025.lcssa.i ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !20
  %i.bl = icmp samesign ugt i64 %.025.lcssa.i, 7
  br i1 %i.bl, label %bb.n, label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.bo = add i64 %.0.lcssa.i, -2                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !20
  %i.bq = icmp samesign ugt i64 %.025.lcssa.i, 63
  br i1 %i.bq, label %bb.o, label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

bb.o:                                             ; preds = %bb.n
  %i.br = load i8, ptr %i.bg, align 1, !tbaa !20
  %i.bs = add i64 %.0.lcssa.i, -3                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !20
  br label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

_ZN5folly6detail11uintToOctalImEEmPcmT_.exit:     ; preds = %._crit_edge.i, %bb.n, %bb.o
  %.2.i = phi i64 [ %i.bs, %bb.o ], [ %i.bo, %bb.n ], [ %i.bj, %._crit_edge.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !150, !range !72, !noundef !73
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -1 ; 2 uses
  store i8 48, ptr %i.by, align 1, !tbaa !20
  br label %bb.ad

bb.q:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !151, !range !72, !noundef !73
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.r, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !79

bb.r:                                             ; preds = %bb.q
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !27
  %i.cd = icmp ult i64 %i.g, 256
  br i1 %i.cd, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %.02223.i.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 3 uses
  %i.ce = and i64 %.02223.i.i, 255
  %i.cf = add nsw i64 %.024.i.i, -2               ; 3 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.ce ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %i.cl = getelementptr i8, ptr %i.b, i64 %.024.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !20
  %i.cn = lshr i64 %.02223.i.i, 8                 ; 2 uses
  %i.co = icmp ult i64 %.02223.i.i, 65536
  br i1 %i.co, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !168

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %.022.lcssa.i.i = phi i64 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.cn, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.cf, %.lr.ph.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %.022.lcssa.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20
  %i.cs = add i64 %.0.lcssa.i.i, -1               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cs
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !20
  %i.cu = icmp samesign ugt i64 %.022.lcssa.i.i, 15
  br i1 %i.cu, label %bb.s, label %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cv = load i8, ptr %i.cp, align 1, !tbaa !20
  %i.cw = add i64 %.0.lcssa.i.i, -2               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit:  ; preds = %._crit_edge.i.i, %bb.s
  %.1.i.i = phi i64 [ %i.cw, %bb.s ], [ %i.cs, %._crit_edge.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !150, !range !72, !noundef !73
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -1
  store i8 120, ptr %i.dc, align 1, !tbaa !20
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -2 ; 2 uses
  store i8 48, ptr %i.dd, align 1, !tbaa !20
  br label %bb.ad

bb.u:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.df = load i8, ptr %i.de, align 4, !tbaa !151, !range !72, !noundef !73
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !27
  %i.di = icmp ult i64 %i.g, 256
  br i1 %i.di, label %._crit_edge.i.i68, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %.lr.ph.i.i65
  %.024.i.i66 = phi i64 [ %i.dk, %.lr.ph.i.i65 ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 2 uses
  %.02223.i.i67 = phi i64 [ %i.ds, %.lr.ph.i.i65 ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.dj = and i64 %.02223.i.i67, 255
  %i.dk = add nsw i64 %.024.i.i66, -2             ; 3 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.dj ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dk
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %i.dq = getelementptr i8, ptr %i.b, i64 %.024.i.i66
  %i.dr = getelementptr i8, ptr %i.dq, i64 -1
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !20
  %i.ds = lshr i64 %.02223.i.i67, 8               ; 2 uses
  %i.dt = icmp ult i64 %.02223.i.i67, 65536
  br i1 %i.dt, label %._crit_edge.i.i68, label %.lr.ph.i.i65, !llvm.loop !168

._crit_edge.i.i68:                                ; preds = %.lr.ph.i.i65, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %.022.lcssa.i.i69 = phi i64 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.ds, %.lr.ph.i.i65 ] ; 2 uses
  %.0.lcssa.i.i70 = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.dk, %.lr.ph.i.i65 ] ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %.022.lcssa.i.i69 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = add i64 %.0.lcssa.i.i70, -1             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dx
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !20
  %i.dz = icmp samesign ugt i64 %.022.lcssa.i.i69, 15
  br i1 %i.dz, label %bb.w, label %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit

bb.w:                                             ; preds = %._crit_edge.i.i68
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !20
  %i.eb = add i64 %.0.lcssa.i.i70, -2             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eb
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit:  ; preds = %._crit_edge.i.i68, %bb.w
  %.1.i.i71 = phi i64 [ %i.eb, %bb.w ], [ %i.dx, %._crit_edge.i.i68 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i71 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !150, !range !72, !noundef !73
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 -1
  store i8 88, ptr %i.eh, align 1, !tbaa !20
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 -2 ; 2 uses
  store i8 48, ptr %i.ei, align 1, !tbaa !20
  br label %bb.ad

bb.y:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !151, !range !72, !noundef !73
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72, !prof !79

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72: ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !27
  %i.en = icmp eq i64 %i.g, 0
  br i1 %i.en, label %bb.aa, label %.preheader19.i

bb.aa:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 48, ptr %i.eo, align 2, !tbaa !20
  br label %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit

.preheader19.i:                                   ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72, %.preheader19.i
  %.01621.i = phi i64 [ %i.eq, %.preheader19.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72 ]
  %.01720.i = phi i64 [ %i.eu, %.preheader19.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72 ] ; 2 uses
  %i.ep = and i64 %.01720.i, 255
  %i.eq = add nsw i64 %.01621.i, -8               ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.ep
  %i.et = load i64, ptr %i.es, align 1
  store i64 %i.et, ptr %i.er, align 1
  %i.eu = lshr i64 %.01720.i, 8                   ; 2 uses
  %.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !169

.preheader.i:                                     ; preds = %.preheader19.i, %.preheader.i
  %.1.i = phi i64 [ %i.ey, %.preheader.i ], [ %i.eq, %.preheader19.i ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !20
  %i.ex = icmp eq i8 %i.ew, 48
  %i.ey = add i64 %.1.i, 1
  br i1 %i.ex, label %.preheader.i, label %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit, !llvm.loop !170

_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit:    ; preds = %.preheader.i, %bb.aa
  %.0.i = phi i64 [ 66, %bb.aa ], [ %.1.i, %.preheader.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !150, !range !72, !noundef !73
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 -1
  store i8 %i.e, ptr %i.fd, align 1, !tbaa !20
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 -2 ; 2 uses
  store i8 48, ptr %i.fe, align 1, !tbaa !20
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

bb.ad:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %bb.h, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60, %bb.p, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit, %bb.t, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit, %bb.x, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit
  %i.ff = phi ptr [ %i.t, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %.pre, %bb.h ], [ %i.aa, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60 ], [ %i.am, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.aq, %bb.p ], [ %i.aq, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ %i.cc, %bb.t ], [ %i.cc, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ %i.dh, %bb.x ], [ %i.dh, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ %i.em, %bb.ab ], [ %i.em, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ]
  %.058 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.h ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.p ], [ 0, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ 2, %bb.t ], [ 0, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ]
  %.0 = phi ptr [ %i.q, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.x, %bb.h ], [ %i.x, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60 ], [ %i.ak, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.by, %bb.p ], [ %i.bu, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ %i.dd, %bb.t ], [ %i.cy, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ %i.ei, %bb.x ], [ %i.ed, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ %i.fe, %bb.ab ], [ %i.ez, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ]
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.0, ptr %i.ff, i32 noundef %.058, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA52_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(52) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(52) %1) #7
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::BadFormatArg", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %2, ptr %i.a, align 8, !tbaa !27
  call void @_ZN5folly12BadFormatArgC2IJPKcEEENS0_11ErrorStrTagENS_5RangeIS3_EEDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  invoke void @_ZN5folly15throw_exceptionINS_12BadFormatArgEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt16invalid_argumentD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12BadFormatArgC2IJPKcEEENS0_11ErrorStrTagENS_5RangeIS3_EEDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::Range", align 8      ; 5 uses
  %5 = alloca %"class.folly::Range", align 8      ; 5 uses
  %6 = alloca %"class.folly::Range", align 8      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8, !noalias !173
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !173
  store ptr @.str.32, ptr %5, align 8, !noalias !173
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.32, i64 25), ptr %i.b, align 8, !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !173
  store ptr @.str.33, ptr %6, align 8, !noalias !173
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.33, i64 3), ptr %i.c, align 8, !noalias !173
  call void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJNS_5RangeIPKcEESA_SA_S9_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZNSt16invalid_argumentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %7, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly12BadFormatArgE, i64 16), ptr %0, align 8, !tbaa !12
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !14     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !20
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJNS_5RangeIPKcEESA_SA_S9_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %0, ptr %i.a, align 8, !tbaa !56
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !27
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !27
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !27
  %i.f = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail15reserveInTargetINS_5RangeIPKcEES5_JS5_S4_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #26
  br label %_ZN5folly6detail15reserveInTargetINS_5RangeIPKcEES5_JS5_S4_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i

_ZN5folly6detail15reserveInTargetINS_5RangeIPKcEES5_JS5_S4_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.i = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i to i64
  %i.j = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %i.k = ptrtoint <2 x ptr> %i.e to <2 x i64>
  %i.l = ptrtoint <2 x ptr> %i.d to <2 x i64>
  %i.m = add <2 x i64> %i.l, %i.k                 ; 2 uses
  %i.n = extractelement <2 x i64> %i.m, i64 0
  %i.o = add i64 %i.n, %i.j
  %i.p = extractelement <2 x i64> %i.m, i64 1
  %i.q = sub i64 %i.p, %i.o
  %i.r = add i64 %i.q, %i.i
  %i.s = add i64 %i.r, %i.h
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN5folly6detail15reserveInTargetINS_5RangeIPKcEES5_JS5_S4_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNS_5RangeIPKcEES9_S9_S8_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJNS_5RangeIPKcEES4_S4_S3_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit unwind label %bb.c

_ZN5folly11toAppendFitIJNS_5RangeIPKcEES4_S4_S3_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.c:                                             ; preds = %.noexc, %_ZN5folly6detail15reserveInTargetINS_5RangeIPKcEES5_JS5_S4_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.u = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.b, align 8, !tbaa !20
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNS_5RangeIPKcEES9_S9_S8_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !56     ; 14 uses
  %.sroa.0.0.copyload.i18 = load ptr, ptr %0, align 8, !tbaa !27 ; 5 uses
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !27 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.2.0.copyload.i20 to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i18 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.g = sub i64 9223372036854775807, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
end_hunk_1
begin_hunk_2_@_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_:bb.a
  tail call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.b, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = tail call noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %1)
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.p = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp ugt i64 %i.s, %i.m
  br i1 %.not.i, label %_ZNK5folly5RangeIPKcE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.34) #7
  unreachable

_ZNK5folly5RangeIPKcE2atEm.exit:                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  store i8 %i.u, ptr %3, align 1, !tbaa !147
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE2atEm.exit, %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Range", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !135
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  br label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 5 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = icmp eq i8 %i.l, 93
  %i.n = ptrtoint ptr %i.g to i64                 ; 2 uses
  br i1 %i.m, label %bb.f, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.o, %i.n
  %i.q = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 91, i64 noundef %i.p) #26 ; 2 uses
  %.not22.i = icmp eq ptr %i.q, null
  br i1 %.not22.i, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, !prof !79

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(14) @.str.40) #24
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
  store ptr %i.u, ptr %i.f, align 8, !tbaa !69
  store ptr %.01620.i, ptr %i.h, align 8, !tbaa !68
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.h:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit: ; preds = %bb.c, %bb.d, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, %bb.h
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %.021.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ], [ %i.i, %bb.h ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ], [ %i.g, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.0.0.i, ptr %1, align 8, !noalias !178
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.sroa.4.0.i, ptr %i.v, align 8, !noalias !178
  %i.w = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %1) #23, !noalias !178 ; 2 uses
  %i.x = and i64 %i.w, 255
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !137

bb.i:                                             ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  %.sroa.53.0.extract.shift.i.i = and i64 %i.w, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !27, !noalias !181 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !27, !noalias !181 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.01115.i.i.i.i.i = phi ptr [ %i.z, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.aa = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !20
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @isspace(i32 noundef %i.ab) #26
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
  br i1 %i.ad, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, label %bb.k, !prof !89

bb.k:                                             ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) @.str.38) #24
  unreachable

_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %.sroa.62.0.extract.trunc, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(14) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(14) %1) #7
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(21) %1) #7
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIjvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 31 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !134   ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i32, ptr %0, align 4, !tbaa !186    ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !149
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, label %bb.b, !prof !137

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg5errorIJRA52_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(52) @.str.37) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %i.e, label %bb.ac [
    i8 110, label %bb.c
    i8 100, label %bb.f
    i8 99, label %bb.i
    i8 111, label %bb.l
    i8 79, label %bb.l
    i8 120, label %bb.q
    i8 88, label %bb.u
    i8 98, label %bb.y
    i8 66, label %bb.y
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !150, !range !72, !noundef !73
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i8, ptr %i.n, align 4, !tbaa !151, !range !72, !noundef !73
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.e:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.r = zext i32 %i.g to i64
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %i.r) #23
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !27
  br label %bb.ad

bb.f:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.w = load i8, ptr %i.v, align 1, !tbaa !150, !range !72, !noundef !73
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60, !prof !79

bb.g:                                             ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.aa = zext i32 %i.g to i64
  %i.ab = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !151, !range !72, !noundef !73
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %bb.ad

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !150, !range !72, !noundef !73
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !79

bb.j:                                             ; preds = %bb.i
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !151, !range !72, !noundef !73
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !79

bb.k:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.an = trunc i32 %i.g to i8
  store i8 %i.an, ptr %i.am, align 1, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !27
  br label %bb.ad

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !151, !range !72, !noundef !73
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !79

bb.m:                                             ; preds = %bb.l
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !27
  %i.at = icmp ult i32 %i.g, 512
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, %.lr.ph.i
  %.028.i = phi i64 [ %i.av, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 2 uses
  %.02527.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 3 uses
  %i.au = and i32 %.02527.i, 511
  %i.av = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.aw ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !20
  %i.bc = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = getelementptr i8, ptr %i.bc, i64 -1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !20
  %i.bh = lshr i32 %.02527.i, 9                   ; 2 uses
  %i.bi = icmp ult i32 %.02527.i, 262144
  br i1 %i.bi, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !161

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %.025.lcssa.i = phi i32 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ], [ %i.bh, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ], [ %i.av, %.lr.ph.i ] ; 3 uses
  %i.bj = zext nneg i32 %.025.lcssa.i to i64
  %i.bk = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !20
  %i.bp = icmp samesign ugt i32 %.025.lcssa.i, 7
  br i1 %i.bp, label %bb.n, label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !20
  %i.bs = add i64 %.0.lcssa.i, -2                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !20
  %i.bu = icmp samesign ugt i32 %.025.lcssa.i, 63
  br i1 %i.bu, label %bb.o, label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

bb.o:                                             ; preds = %bb.n
  %i.bv = load i8, ptr %i.bk, align 1, !tbaa !20
  %i.bw = add i64 %.0.lcssa.i, -3                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !20
  br label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit:     ; preds = %._crit_edge.i, %bb.n, %bb.o
  %.2.i = phi i64 [ %i.bw, %bb.o ], [ %i.bs, %bb.n ], [ %i.bn, %._crit_edge.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !150, !range !72, !noundef !73
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -1 ; 2 uses
  store i8 48, ptr %i.cc, align 1, !tbaa !20
  br label %bb.ad

bb.q:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !151, !range !72, !noundef !73
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.r, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !79

bb.r:                                             ; preds = %bb.q
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !27
  %i.ch = icmp ult i32 %i.g, 256
  br i1 %i.ch, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %.02223.i.i = phi i32 [ %i.cs, %.lr.ph.i.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 3 uses
  %i.ci = and i32 %.02223.i.i, 255
  %i.cj = add nsw i64 %.024.i.i, -2               ; 3 uses
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !20
  %i.cq = getelementptr i8, ptr %i.b, i64 %.024.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !20
  %i.cs = lshr i32 %.02223.i.i, 8                 ; 2 uses
  %i.ct = icmp ult i32 %.02223.i.i, 65536
  br i1 %i.ct, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !162

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %.022.lcssa.i.i = phi i32 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.cs, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.cj, %.lr.ph.i.i ] ; 2 uses
  %i.cu = zext nneg i32 %.022.lcssa.i.i to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = add i64 %.0.lcssa.i.i, -1               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cy
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !20
  %i.da = icmp samesign ugt i32 %.022.lcssa.i.i, 15
  br i1 %i.da, label %bb.s, label %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.dc = add i64 %.0.lcssa.i.i, -2               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dc
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit:  ; preds = %._crit_edge.i.i, %bb.s
  %.1.i.i = phi i64 [ %i.dc, %bb.s ], [ %i.cy, %._crit_edge.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !150, !range !72, !noundef !73
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 -1
  store i8 120, ptr %i.di, align 1, !tbaa !20
  %i.dj = getelementptr inbounds i8, ptr %i.de, i64 -2 ; 2 uses
  store i8 48, ptr %i.dj, align 1, !tbaa !20
  br label %bb.ad

bb.u:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !151, !range !72, !noundef !73
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !79

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !27
  %i.do = icmp ult i32 %i.g, 256
  br i1 %i.do, label %._crit_edge.i.i68, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %.lr.ph.i.i65
  %.024.i.i66 = phi i64 [ %i.dq, %.lr.ph.i.i65 ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 2 uses
  %.02223.i.i67 = phi i32 [ %i.dz, %.lr.ph.i.i65 ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.dp = and i32 %.02223.i.i67, 255
  %i.dq = add nsw i64 %.024.i.i66, -2             ; 3 uses
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.dr ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dq
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = getelementptr i8, ptr %i.b, i64 %.024.i.i66
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !20
  %i.dz = lshr i32 %.02223.i.i67, 8               ; 2 uses
  %i.ea = icmp ult i32 %.02223.i.i67, 65536
  br i1 %i.ea, label %._crit_edge.i.i68, label %.lr.ph.i.i65, !llvm.loop !162

._crit_edge.i.i68:                                ; preds = %.lr.ph.i.i65, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %.022.lcssa.i.i69 = phi i32 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.dz, %.lr.ph.i.i65 ] ; 2 uses
  %.0.lcssa.i.i70 = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.dq, %.lr.ph.i.i65 ] ; 2 uses
  %i.eb = zext nneg i32 %.022.lcssa.i.i69 to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !20
  %i.ef = add i64 %.0.lcssa.i.i70, -1             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !20
  %i.eh = icmp samesign ugt i32 %.022.lcssa.i.i69, 15
  br i1 %i.eh, label %bb.w, label %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit

bb.w:                                             ; preds = %._crit_edge.i.i68
  %i.ei = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.ej = add i64 %.0.lcssa.i.i70, -2             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ej
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !20
  br label %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit:  ; preds = %._crit_edge.i.i68, %bb.w
  %.1.i.i71 = phi i64 [ %i.ej, %bb.w ], [ %i.ef, %._crit_edge.i.i68 ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i71 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.en = load i8, ptr %i.em, align 1, !tbaa !150, !range !72, !noundef !73
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 -1
  store i8 88, ptr %i.ep, align 1, !tbaa !20
  %i.eq = getelementptr inbounds i8, ptr %i.el, i64 -2 ; 2 uses
  store i8 48, ptr %i.eq, align 1, !tbaa !20
  br label %bb.ad

bb.y:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.es = load i8, ptr %i.er, align 4, !tbaa !151, !range !72, !noundef !73
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72, !prof !79

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72: ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.eu, ptr %i.c, align 8, !tbaa !27
  %i.ev = icmp eq i32 %i.g, 0
  br i1 %i.ev, label %bb.aa, label %.preheader19.i

bb.aa:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 48, ptr %i.ew, align 2, !tbaa !20
  br label %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit

.preheader19.i:                                   ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72, %.preheader19.i
  %.01621.i = phi i64 [ %i.ey, %.preheader19.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72 ]
  %.01720.i = phi i32 [ %i.fd, %.preheader19.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72 ] ; 2 uses
  %i.ex = and i32 %.01720.i, 255
  %i.ey = add nsw i64 %.01621.i, -8               ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ey
  %i.fa = zext nneg i32 %i.ex to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 1
  store i64 %i.fc, ptr %i.ez, align 1
  %i.fd = lshr i32 %.01720.i, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !163

.preheader.i:                                     ; preds = %.preheader19.i, %.preheader.i
  %.1.i = phi i64 [ %i.fh, %.preheader.i ], [ %i.ey, %.preheader19.i ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !20
  %i.fg = icmp eq i8 %i.ff, 48
  %i.fh = add i64 %.1.i, 1
  br i1 %i.fg, label %.preheader.i, label %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit, !llvm.loop !164

_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit:    ; preds = %.preheader.i, %bb.aa
  %.0.i = phi i64 [ 66, %bb.aa ], [ %.1.i, %.preheader.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !150, !range !72, !noundef !73
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -1
  store i8 %i.e, ptr %i.fm, align 1, !tbaa !20
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 -2 ; 2 uses
  store i8 48, ptr %i.fn, align 1, !tbaa !20
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

bb.ad:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %bb.h, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60, %bb.p, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit, %bb.t, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit, %bb.x, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit
  %i.fo = phi ptr [ %i.u, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %.pre, %bb.h ], [ %i.ac, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60 ], [ %i.ao, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.as, %bb.p ], [ %i.as, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ %i.cg, %bb.t ], [ %i.cg, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ %i.dn, %bb.x ], [ %i.dn, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ %i.eu, %bb.ab ], [ %i.eu, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ]
  %.058 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.h ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.p ], [ 0, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ 2, %bb.t ], [ 0, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ]
  %.0 = phi ptr [ %i.q, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.y, %bb.h ], [ %i.y, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60 ], [ %i.am, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.cc, %bb.p ], [ %i.by, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ %i.dj, %bb.t ], [ %i.de, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ %i.eq, %bb.x ], [ %i.el, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ %i.fn, %bb.ab ], [ %i.fi, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ]
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.0, ptr %i.fo, i32 noundef %.058, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE6formatINS_6detail27BaseFormatterAppendToStringIS6_EEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !135
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !134
  switch i8 %i.k, label %bb.c [
    i8 115, label %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
    i8 0, label %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ], !prof !176

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.b, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = tail call noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %1)
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.p = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp ugt i64 %i.s, %i.m
  br i1 %.not.i, label %_ZNK5folly5RangeIPKcE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.34) #7
  unreachable

_ZNK5folly5RangeIPKcE2atEm.exit:                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  store i8 %i.u, ptr %3, align 1, !tbaa !147
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE2atEm.exit, %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_ENKUlNS_5RangeIPKcEEE_clESU_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not42 = icmp eq ptr %1, %2
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.q
  %i.b = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.b, %2
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01743 = phi ptr [ %1, %.lr.ph ], [ %i.b, %bb.b ] ; 9 uses
  %i.c = ptrtoint ptr %.01743 to i64              ; 2 uses
  %i.d = sub i64 %i.a, %i.c                       ; 6 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %.01743, i32 noundef 125, i64 noundef %i.d) #26 ; 3 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !73, !align !115
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124, !nonnull !73, !align !115 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.l = add i64 %i.i, %i.d                       ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %.01743, align 1, !tbaa !20
  store i8 %i.t, ptr %i.s, align 1, !tbaa !20
  br label %.thread

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.01743, i64 %i.d, i1 false)
  br label %.thread

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.i, i64 noundef 0, ptr noundef %.01743, i64 noundef %i.d)
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !35
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !20
  br label %.loopexit

bb.j:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !73, !align !115
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124, !nonnull !73, !align !115 ; 5 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.z, %i.c                      ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23: ; preds = %bb.j
  %i.af = add i64 %i.ac, %i.aa                    ; 3 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !14  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29 ]
end_hunk_2
