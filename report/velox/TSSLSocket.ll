inline.NumInlined: 742
inline.NumDeleted: 228
begin_hunk_0_@_ZN6apache6thrift9transportL11buildErrorsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii:bb.a
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.0, i64 noundef %i.p) ; 0 uses
  %i.u = call i64 @ERR_get_error()                ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !49

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %9 = load i32, ptr %i.a, align 4                ; 2 uses
  %i.y = icmp ne i32 %9, 0
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.i, label %bb.l
end_hunk_0
