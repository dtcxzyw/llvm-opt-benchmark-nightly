inline.NumInlined: 200
inline.NumDeleted: 78
begin_hunk_0_@_ZNK8facebook5velox6Status5abortERKSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.g

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc4, %bb.e
  %.0.i.i.i = phi i8 [ %i.s, %bb.e ], [ %i.w, %.noexc4 ]
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6Status4warnERKSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!48 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!49 = !{!"p1 int", !10, i64 0}
!50 = !{!"p1 short", !10, i64 0}
!51 = !{!13, !13, i64 0}
end_hunk_2
