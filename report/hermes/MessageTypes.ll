inline.NumInlined: 13240
inline.NumDeleted: 6779
begin_hunk_0_@_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorINS2_12heapProfiler23SamplingHeapProfileNodeESaIS6_EEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEPKN6hermes6parser9JSONValueE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 168
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 3 uses
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !727
  store ptr %i.j, ptr %i.h, align 8, !tbaa !729
  %i.k = getelementptr inbounds nuw [168 x i8], ptr %i.j, i64 %i.e
  store ptr %i.k, ptr %i.g, align 8, !tbaa !730
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre.pre, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not27 = icmp eq i64 %.pre.pre, 0
  br i1 %.not27, label %.thread23, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE7reserveEm.exit, %bb.e
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorIxSaIxEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = shl nuw nsw i64 %i.e, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 3 uses
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !2147 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !812
  store ptr %i.j, ptr %i.h, align 8, !tbaa !2336
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  store ptr %i.k, ptr %i.g, align 8, !tbaa !815
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %.pre.pre, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not30 = icmp eq i64 %.pre.pre, 0
  br i1 %.not30, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE7reserveEm.exit
end_hunk_1
