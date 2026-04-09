inline.NumInlined: 498
inline.NumDeleted: 384
begin_hunk_0_@_ZN6google8protobuf8compiler4rust23GenerateAccessorExternCERNS2_7ContextERKNS0_15FieldDescriptorE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc5 unwind label %.thread

.noexc5:                                          ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust23GenerateAccessorThunkCcERNS2_7ContextERKNS0_15FieldDescriptorE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc5 unwind label %.thread

.noexc5:                                          ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite4TypeEEERS2_RKT_:bb.a
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io7Printer3SubD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !86, !range !92, !noundef !64
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !86
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf2io7Printer3SubD2Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf2io7Printer3SubD2Ev:bb.a

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit, label %bb.f

end_hunk_5
begin_hunk_6_@llvm.assume
!87 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE", !5, i64 0, !45, i64 64}
!88 = !{!8, !12, i64 16}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !10, i64 0}
!92 = !{i8 0, i8 2}
!93 = !{!94, !95, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!95 = !{!"p1 int", !10, i64 0}
!96 = !{!94, !95, i64 16}
!97 = !{!98, !10, i64 16}
!98 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
end_hunk_6
