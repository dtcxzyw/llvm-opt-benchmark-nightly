Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69836
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 319
loop-unroll.NumUnrolled: 355
begin_hunk_0_@"_ZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS1_9TreeEntryEENK3$_1clEPKS2_":bb.a
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %.us-phi.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val, %bb.e ] ; 5 uses
  switch i64 %.pre-phi89.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.thread.i.i.i.i.i.i" [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.val33.val.i.i.i.i.i.i = load ptr, ptr %.8.val, align 8, !tbaa !579
  %.val33.val.val.i.i.i.i.i.i = load i8, ptr %.val33.val.i.i.i.i.i.i, align 8, !tbaa !391
  %i.ch = icmp eq i8 %.val33.val.val.i.i.i.i.i.i, 1
  br i1 %i.ch, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.i.i.i.i.i.i": ; preds = %bb.f
  %.029.val.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.val, i64 4880
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !670
  store ptr %i.cj, ptr %3, align 8, !tbaa !1097
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.cl, align 8, !tbaa !1571
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 1, ptr %i.cm, align 1, !tbaa !1575
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 58
  store i8 0, ptr %i.cn, align 2, !tbaa !1576
  %i.co = call noundef zeroext i1 @_ZN4llvm18isKnownNonNegativeEPKNS_5ValueERKNS_13SimplifyQueryEj(ptr noundef %.029.val.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef 0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %i.co, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.thread.i.i.i.i.i.i", label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.i.i.i.i.i.i", %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.cp, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.val31.val.i.i.i.i.i.i = load ptr, ptr %.8.val, align 8, !tbaa !579
  %.val31.val.val.i.i.i.i.i.i = load i8, ptr %.val31.val.i.i.i.i.i.i, align 8, !tbaa !391
  %i.cq = icmp eq i8 %.val31.val.val.i.i.i.i.i.i, 1
  br i1 %i.cq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.i.i.i.i.i.i": ; preds = %bb.g
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.val, i64 4880
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !670
  store ptr %i.cs, ptr %2, align 8, !tbaa !1097
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.cu, align 8, !tbaa !1571
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 57
  store i8 1, ptr %i.cv, align 1, !tbaa !1575
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 58
  store i8 0, ptr %i.cw, align 2, !tbaa !1576
  %i.cx = call noundef zeroext i1 @_ZN4llvm18isKnownNonNegativeEPKNS_5ValueERKNS_13SimplifyQueryEj(ptr noundef %.1.val.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef 0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %i.cx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.thread.i.i.i.i.i.i", label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.i.i.i.i.i.i", %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.cy, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.val.val.i.i.i.i.i.i = load ptr, ptr %.8.val, align 8, !tbaa !579
  %.val.val.val.i.i.i.i.i.i = load i8, ptr %.val.val.i.i.i.i.i.i, align 8, !tbaa !391
  %i.cz = icmp eq i8 %.val.val.val.i.i.i.i.i.i, 1
  br i1 %i.cz, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.i.i.i.i.i.i": ; preds = %bb.h
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.da = getelementptr inbounds nuw i8, ptr %.0.val, i64 4880
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !670
  store ptr %i.db, ptr %1, align 8, !tbaa !1097
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.dd, align 8, !tbaa !1571
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 1, ptr %i.de, align 1, !tbaa !1575
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 0, ptr %i.df, align 2, !tbaa !1576
  %i.dg = call noundef zeroext i1 @_ZN4llvm18isKnownNonNegativeEPKNS_5ValueERKNS_13SimplifyQueryEj(ptr noundef %.2.val.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(59) %1, i32 noundef 0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %i.dg, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.thread.i.i.i.i.i.i", label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.i.i.i.i.i.i", %bb.h, %._crit_edge.i.i.i.i.i.i
  br label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit48.i.i.i.i.i.i"
  %i.dh = getelementptr inbounds nuw i8, ptr %.02976.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit25": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit50.i.i.i.i.i.i"
  %i.di = getelementptr inbounds nuw i8, ptr %.02976.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit27": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit52.i.i.i.i.i.i"
  %i.dj = getelementptr inbounds nuw i8, ptr %.02976.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit.i.i.i.i.i.i", %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit25", %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit27", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.thread.i.i.i.i.i.i"
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit56.i.i.i.i.i.i" ], [ %i.aq, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.thread.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit58.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit54.i.i.i.i.i.i" ], [ %i.dj, %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit27" ], [ %i.dh, %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.di, %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit.loopexit.split.loop.exit25" ], [ %.02976.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP13vectorizeTreeEPNS4_9TreeEntryEENK3$_1clEPKS5_EUlPNS2_5ValueEE_EclIPKSB_EEbT_.exit.i.i.i.i.i.i" ]
  %i.dk = icmp ne ptr %i.aq, %.028.i.i.i.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit", %bb.d
  %.0 = phi i1 [ %i.an, %bb.d ], [ %i.dk, %"_ZN4llvm6any_ofIRKNS_11SmallVectorIPNS_5ValueELj8EEEZZNS_13slpvectorizer7BoUpSLP13vectorizeTreeEPNS8_9TreeEntryEENK3$_1clEPKS9_EUlS3_E_EEbOT_T0_.exit" ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL38transformScalarShuffleIndiciesToVectorjRN4llvm15SmallVectorImplIiEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.242", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !371  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = zext i32 %0 to i64                       ; 2 uses
  %i.e = mul nuw i64 %i.c, %i.d                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !359
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !371
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 12, ptr %i.h, align 4, !tbaa !372
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.e, 12
  br i1 %i.j, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 4) #31
  %.pre.i.i.i = load i32, ptr %i.g, align 8, !tbaa !371
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.e, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.f, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %.pre-phi.i.i3.i
  %i.m = sub i64 %i.e, %.pre-phi.i.i3.i
  %i.n = shl i64 %i.m, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.n, i1 false), !tbaa !380
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.o = trunc i64 %i.e to i32
  store i32 %i.o, ptr %i.g, align 8, !tbaa !371
  %.pre = load i32, ptr %i.a, align 8, !tbaa !371 ; 2 uses
  %.pre44 = zext i32 %.pre to i64
  br label %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit

_ZN4llvm11SmallVectorIiLj12EEC2Em.exit:           ; preds = %bb.a, %.sink.split.i.i.i
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre44, %.sink.split.i.i.i ]
  %i.p = phi i32 [ %i.b, %bb.a ], [ %.pre, %.sink.split.i.i.i ]
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !359
  %.idx = shl nuw nsw i64 %i.d, 2                 ; 2 uses
  %.not3637 = icmp eq i32 %0, 0
  %i.r = add nsw i64 %.idx, -4                    ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 28
  %n.vec = and i64 %i.t, 9223372036854775800      ; 4 uses
  %i.u = shl i64 %n.vec, 2
  %i.v = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br label %bb.d

._crit_edge43:                                    ; preds = %._crit_edge, %_ZN4llvm11SmallVectorIiLj12EEC2Em.exit
  call void @_ZN4llvm15SmallVectorImplIiE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.w = load ptr, ptr %2, align 8, !tbaa !359    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.f
  br i1 %i.x, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge43
  call void @free(ptr noundef %i.w) #31
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %._crit_edge43, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.d:                                             ; preds = %.lr.ph42, %._crit_edge
  %.sroa.031.041 = phi i64 [ 0, %.lr.ph42 ], [ %i.ar, %._crit_edge ] ; 4 uses
  %i.y = shl i64 %.sroa.031.041, 2
  %i.z = trunc i64 %.sroa.031.041 to i32
  %i.aa = mul i32 %0, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %i.q, i64 %i.ab ; 6 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx  ; 2 uses
  br i1 %.not3637, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ae = load ptr, ptr %1, align 8, !tbaa !359   ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.031.041 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.ag, i64 4
  %bound0 = icmp ult ptr %i.ac, %scevgep
  %bound1 = icmp ult ptr %i.af, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.u
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !380, !alias.scope !7311 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1                   ; 2 uses
  %i.ak = mul i32 %i.ai, %0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.al ; 2 uses
  %i.am = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.an = select i1 %i.aj, <4 x i32> splat (i32 -1), <4 x i32> %i.am
  %i.ao = select i1 %i.aj, <4 x i32> splat (i32 -1), <4 x i32> %.reass
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.an, ptr %next.gep, align 4, !tbaa !380, !alias.scope !7312, !noalias !7311
  store <4 x i32> %i.ao, ptr %i.ap, align 4, !tbaa !380, !alias.scope !7312, !noalias !7311
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !7309

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.020.039.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph ], [ %i.ah, %middle.block ]
  %.sroa.7.038.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.v, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.ar = add nuw nsw i64 %.sroa.031.041, 1       ; 2 uses
  %.not = icmp eq i64 %i.ar, %.pre-phi
  br i1 %.not, label %._crit_edge43, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.020.039 = phi ptr [ %i.ay, %scalar.ph ], [ %.sroa.020.039.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.038 = phi i32 [ %i.ax, %scalar.ph ], [ %.sroa.7.038.ph, %scalar.ph.preheader ] ; 2 uses
  %i.as = load i32, ptr %i.af, align 4, !tbaa !380 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  %i.au = mul i32 %i.as, %0
  %i.av = add i32 %i.au, %.sroa.7.038
  %i.aw = select i1 %i.at, i32 -1, i32 %i.av
  store i32 %i.aw, ptr %.sroa.020.039, align 4, !tbaa !380
  %i.ax = add nuw i32 %.sroa.7.038, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.039, i64 4 ; 2 uses
  %.not36 = icmp eq ptr %i.ay, %i.ad
  br i1 %.not36, label %._crit_edge, label %scalar.ph, !llvm.loop !7310
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !580
  %i.c = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.b) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1651, !nonnull !369, !align !655 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !361
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %1, ptr noundef %i.c, ptr %2, i64 %3) #31, !inline_history !1652 ; 2 uses
  %.not.not.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i, label %bb.b, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull %1, ptr noundef %i.c, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1653, !nonnull !369, !align !655 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !361
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #31, !inline_history !92
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL18createInsertVectorRN4llvm13IRBuilderBaseEPNS_5ValueES3_jNS_12function_refIFS3_S3_S3_NS_8ArrayRefIiEEEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readonly captures(address_is_null) %4, i64 %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.242", align 8 ; 10 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::SmallVector.242", align 8 ; 9 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !391
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 8, !tbaa !391
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !580
  %i.g = tail call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef %i.f) #31 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !580
  %i.j = tail call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef %i.i) #31 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.k = zext i32 %i.j to i64                     ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !359
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.m, align 8, !tbaa !371
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 12, ptr %i.n, align 4, !tbaa !372
  %i.o = icmp ugt i32 %i.j, 12                    ; 2 uses
  br i1 %i.o, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.l, i64 noundef %i.k, i64 noundef 4) #31
  %i.p = load ptr, ptr %8, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.c
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.thread, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit:        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit
  %.sink = phi ptr [ %i.p, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit ], [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i ] ; 9 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !380
  store i32 %i.j, ptr %i.m, align 8, !tbaa !371
  %i.q = load i8, ptr %1, align 8, !tbaa !391
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %bb.d

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.thread: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  store i32 %i.j, ptr %i.m, align 8, !tbaa !371
  %i.s = load i8, ptr %1, align 8, !tbaa !391
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt4iotaIPiiEvT_S1_T0_.exit23

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.thread, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit
  %i.u = phi ptr [ %i.l, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.thread ], [ %.sink, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit ] ; 2 uses
  %i.v = zext i32 %3 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 4 uses
  %i.x = zext i32 %i.g to i64                     ; 2 uses
  %.idx155 = shl nuw nsw i64 %i.x, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx155
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = add nuw nsw i64 %i.x, 4611686018427387903
  %i.aa = and i64 %i.z, 4611686018427387903       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check140 = icmp samesign ult i64 %i.aa, 7
  br i1 %min.iters.check140, label %.lr.ph.i.preheader156, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.i.preheader
  %n.vec142 = and i64 %i.ab, 9223372036854775800  ; 4 uses
end_hunk_0
