inline.NumInlined: 188
inline.NumDeleted: 90
begin_hunk_0_@_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.g

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc4, %bb.e
  %.0.i.i.i = phi i8 [ %i.u, %bb.e ], [ %i.y, %.noexc4 ]
end_hunk_0
begin_hunk_1_@_ZNK5arrow6Status4WarnEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  br i1 %i.d, label %bb.c, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit
end_hunk_1
begin_hunk_2_@_ZNK5arrow6Status4WarnEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !11
end_hunk_2
begin_hunk_3_@_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit
end_hunk_3
begin_hunk_4_@_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !11
end_hunk_4
begin_hunk_5_@_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit
  br i1 %i.p, label %bb.c, label %_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_.exit
end_hunk_5
begin_hunk_6_@_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc10 unwind label %bb.f

.noexc10:                                         ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.19, i64 noundef 2)
end_hunk_6
begin_hunk_7_@_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %bb.d
  br i1 %i.y, label %bb.e, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit15
end_hunk_7
begin_hunk_8_@_ZNK5arrow6Status4WarnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %bb.e
  %i.ad = load ptr, ptr %3, align 8, !tbaa !11
end_hunk_8
begin_hunk_9_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_9
begin_hunk_10_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_10
begin_hunk_11_@llvm.memset.p0.i64
!66 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!67 = !{!"p1 int", !10, i64 0}
!68 = !{!"p1 short", !10, i64 0}
!69 = distinct !{null}
end_hunk_11
