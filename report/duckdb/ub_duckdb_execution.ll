inline.NumInlined: 8268
inline.NumDeleted: 4059
begin_hunk_0_@_ZN6duckdb5Value7POINTEREm
declare void @_ZN6duckdb5Value7POINTEREm(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb25RadixPartitionedHashTable11GetProgressERNS_13ClientContextERNS_15GlobalSinkStateERNS_17GlobalSourceStateE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(512) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(81) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1709 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb25RadixPartitionedHashTable11GetProgressERNS_13ClientContextERNS_15GlobalSinkStateERNS_17GlobalSourceStateE:bb.a
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  %i.g = uitofp i64 %i.f to double
  %5 = load double, ptr %0, align 8, !tbaa !1935
  %i.h = fadd double %5, %i.g
  store double %i.h, ptr %0, align 8, !tbaa !1935
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1699
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !1698
end_hunk_1
begin_hunk_2_@_ZNK6duckdb25RadixPartitionedHashTable11GetProgressERNS_13ClientContextERNS_15GlobalSinkStateERNS_17GlobalSourceStateE:bb.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.w, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.s = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18AggregatePartitionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.012)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load atomic double, ptr %i.t seq_cst, align 8
  %6 = load double, ptr %0, align 8, !tbaa !1935
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double 2.000000e+00, double %6)
  store double %i.v, ptr %0, align 8, !tbaa !1935
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_2
