inline.NumInlined: 203
inline.NumDeleted: 123
begin_hunk_0_@_ZN5folly6detail8function5call_IZNS_17InitThreadFactory9newThreadEONS_8FunctionIFvvEEEEUlvE_Lb0ELb0EvJEEET2_DpT3_RNS1_4DataE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !30
  invoke void %i.g(ptr noundef nonnull align 16 dereferenceable(80) %i.a)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit.i unwind label %bb.c, !inline_history !1178

_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly6detail8function5call_IZNS_17InitThreadFactory9newThreadEONS_8FunctionIFvvEEEEUlvE_Lb0ELb0EvJEEET2_DpT3_RNS1_4DataE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !30
  invoke void %i.k(ptr noundef nonnull align 16 dereferenceable(48) %i.i)
          to label %_ZZN5folly17InitThreadFactory9newThreadEONS_8FunctionIFvvEEEENUlvE_clEv.exit unwind label %bb.b, !inline_history !1178

bb.b:                                             ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit.i
  %i.l = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN5folly6detail8function5call_IZNS_17InitThreadFactory9newThreadEONS_8FunctionIFvvEEEEUlvE_Lb0ELb0EvJEEET2_DpT3_RNS1_4DataE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !30
  invoke void %i.r(ptr noundef nonnull align 16 dereferenceable(48) %i.p)
          to label %_ZN5folly6detail14ScopeGuardImplIZZNS_17InitThreadFactory9newThreadEONS_8FunctionIFvvEEEENUlvE_clEvEUlvE_Lb1EED2Ev.exit2.i unwind label %bb.d, !inline_history !1178

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
!1175 = !{!"_ZTSSt9type_info", !1167, i64 8}
!1176 = distinct !{null}
!1177 = distinct !{null, null}
!1178 = distinct !{null}
end_hunk_3
