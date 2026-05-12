inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0_@_ZN10duckdb_re27CEscapeB5cxx11ERKNS_11StringPieceE
define hidden void @_ZN10duckdb_re27CEscapeB5cxx11ERKNS_11StringPieceE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %i.d = shl i64 %i.c, 2
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #11 ; 12 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %2 = load i64, ptr %i.b, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %._crit_edge.i.i.thread, label %.lr.ph.i

._crit_edge.i.i.thread:                           ; preds = %bb.a
end_hunk_0
