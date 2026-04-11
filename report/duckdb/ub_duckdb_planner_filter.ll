inline.NumInlined: 2417
inline.NumDeleted: 1450
begin_hunk_0_@_ZNK6duckdb30SelectivityOptionalFilterState16SelectivityStats14GetSelectivityEv
define noundef double @_ZNK6duckdb30SelectivityOptionalFilterState16SelectivityStats14GetSelectivityEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !582  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %1 = load i64, ptr %0, align 8
  %2 = uitofp i64 %1 to double
  %3 = uitofp i64 %i.b to double
  %i.d = fdiv double %2, %3
  %.0 = select i1 %i.c, double 1.000000e+00, double %i.d
  ret double %.0
}
end_hunk_0
