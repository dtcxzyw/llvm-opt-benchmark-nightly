inline.NumInlined: 29521
inline.NumDeleted: 7045
begin_hunk_0_@_ZN6duckdb20PartitionedTupleData7CombineERS0_
declare void @_ZN6duckdb20PartitionedTupleData7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb25HashedSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = load <2 x double>, ptr %3, align 8, !tbaa !64
  %5 = fmul <2 x double> %4, <double 5.000000e-01, double 1.000000e+00>
  store <2 x double> %5, ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !66, !range !68, !noundef !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZNK6duckdb25HashedSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE:bb.a
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !701, !nonnull !69, !align !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
end_hunk_1
begin_hunk_2_@_ZNK6duckdb25HashedSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.j
  %.sroa.012.030 = phi ptr [ %i.ab, %bb.j ], [ %i.j, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 4 uses
  %i.n = load ptr, ptr %.sroa.012.030, align 8, !tbaa !706
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.j, label %bb.c
end_hunk_2
begin_hunk_3_@_ZNK6duckdb25HashedSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE:bb.a
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8, !noalias !752
  %i.y = uitofp i64 %i.x to double
  %i.z = fmul nnan double %i.y, 5.000000e-01
  %6 = load double, ptr %0, align 8, !tbaa !85
  %i.aa = fadd double %6, %i.z
  store double %i.aa, ptr %0, align 8, !tbaa !85
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.d, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.030, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_3
begin_hunk_4_@_ZNK6duckdb25HashedSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.r, %bb.e ]
  %i.ad = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30 ; 0 uses
  resume { ptr, i32 } %.pn
}
end_hunk_4
begin_hunk_5_@_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_26TupleDataParallelScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE
declare void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_26TupleDataParallelScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(600), ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb10HashedSort15GetSinkProgressERNS_13ClientContextERNS_15GlobalSinkStateENS_12ProgressDataE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6duckdb25HashedSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE(ptr dead_on_unwind writable sret(%"struct.duckdb::ProgressData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr nonnull align 8 poison, ptr noundef nonnull byval(%"struct.duckdb::ProgressData") align 8 %4)
  ret void
end_hunk_5
