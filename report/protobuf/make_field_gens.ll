inline.NumInlined: 601
inline.NumDeleted: 500
begin_hunk_0_@_ZN6google8protobuf8compiler4java32MakeImmutableFieldLiteGeneratorsEPKNS0_10DescriptorEPNS2_7ContextE:bb.a
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #16
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33

_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33: ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i, %bb.am
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4java32MakeImmutableFieldLiteGeneratorsEPKNS0_10DescriptorEPNS2_7ContextE:bb.a
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !17
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.f, label %._crit_edge, !llvm.loop !87

bb.an:                                            ; preds = %.noexc28, %.noexc27, %bb.s, %bb.q, %bb.o, %bb.m, %.noexc22, %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4java32MakeImmutableFieldLiteGeneratorsEPKNS0_10DescriptorEPNS2_7ContextE:bb.a
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #16
  br label %.body

_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i38: ; preds = %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler4java32MakeImmutableFieldLiteGeneratorsEPKNS0_10DescriptorEPNS2_7ContextE:bb.a
  %i.bs = load ptr, ptr %.sink.i, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %.sink.i) #16
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i35, %bb.ao, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.an, %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i38
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEE3AddEPKNS0_15FieldDescriptorESt10unique_ptrIS4_St14default_deleteIS4_EE:bb.a
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.h, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEED2Ev
define linkonce_odr hidden void @_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

end_hunk_5
begin_hunk_6_@llvm.assume
!84 = !{!"vtable pointer", !6, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorE", !10, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!90, !9, i64 32}
!90 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !19, i64 0, !20, i64 1, !20, i64 1, !20, i64 1, !20, i64 1, !20, i64 1, !20, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !20, i64 3, !20, i64 3, !5, i64 3, !4, i64 4, !22, i64 8, !24, i64 16, !91, i64 24, !9, i64 32, !5, i64 40, !5, i64 48, !92, i64 56, !26, i64 64, !26, i64 72, !5, i64 80}
!91 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !10, i64 0}
!92 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !10, i64 0}
!93 = !{!9, !9, i64 0}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!15, !15, i64 0}
end_hunk_6
