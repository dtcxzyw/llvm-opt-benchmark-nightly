inline.NumInlined: 558
inline.NumDeleted: 303
begin_hunk_0_@_ZN6google8protobuf4util21SimpleFieldComparator13SimpleCompareERKNS0_7MessageES5_PKNS0_15FieldDescriptorEiiPKNS1_12FieldContextE:bb.a
bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 14, ptr nonnull @.str.2)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fy = load i8, ptr %i.f, align 2, !tbaa !30
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !41
  store i32 %i.gb, ptr %i.a, align 4, !tbaa !41
  %i.gc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.aq

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  unreachable

bb.ap:                                            ; preds = %bb.am, %bb.ak, %bb.al
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  unreachable

bb.as:                                            ; preds = %bb.a, %bb.aj, %bb.ai, %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %i.af, %bb.g ], [ %i.aq, %bb.i ], [ %i.ay, %bb.j ], [ %i.bf, %bb.l ], [ %i.bj, %bb.m ], [ %i.bq, %bb.o ], [ %i.bu, %bb.p ], [ %i.cb, %bb.r ], [ %i.cf, %bb.s ], [ %not..i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %not..i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.fb, %bb.af ], [ %i.ff, %bb.ag ], [ %i.fm, %bb.ai ], [ %i.fq, %bb.aj ], [ 2, %bb.a ]
  ret i32 %.0

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn = phi { ptr, i32 } [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @_ZNK6google8protobuf4util21SimpleFieldComparator17ResultFromBooleanEb(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %not. = xor i1 %1, true
  %i.a = zext i1 %not. to i32
  ret i32 %i.a
}

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection15GetRepeatedBoolERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection7GetBoolERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator13CompareDoubleERKNS0_15FieldDescriptorEdd(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %2, double noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIdEEbRKNS0_15FieldDescriptorET_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %2, double noundef %3)
  ret i1 %i.a
}

declare noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef double @_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator11CompareEnumERKNS0_15FieldDescriptorEPKNS0_19EnumValueDescriptorES8_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

declare noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator12CompareFloatERKNS0_15FieldDescriptorEff(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, float noundef %2, float noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIfEEbRKNS0_15FieldDescriptorET_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, float noundef %2, float noundef %3)
  ret i1 %i.a
}

declare noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef float @_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection26GetRepeatedStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection18GetStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !41
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.f
}

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator22CompareWithDifferencerEPNS1_18MessageDifferencerERKNS0_7MessageES7_PKNS1_12FieldContextE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !58
  %i.f = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7CompareERKNS0_7MessageES5_iPSt6vectorINS2_13SpecificFieldESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7CompareERKNS0_7MessageES5_iPSt6vectorINS2_13SpecificFieldESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf4util21SimpleFieldComparator27SetDefaultFractionAndMarginEdd(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((13, 14), (16, 32)) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %i.a, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.b, align 1, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util21SimpleFieldComparator20SetFractionAndMarginEPKNS0_15FieldDescriptorEdd(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.58", align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !30
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %.off = add i32 %i.f, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 163, ptr noundef nonnull @.str.3) #30
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 53, ptr nonnull @.str.4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %6 = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.k = xor i64 %i.j, -1
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.j, ptr nonnull %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.58") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !71, !range !74, !alias.scope !75, !noundef !76
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

bb.f:                                             ; preds = %.critedge
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !75 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !62, !noalias !75
  store ptr %i.s, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit: ; preds = %.critedge, %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store double %2, ptr %i.u, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  store double %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf4util21SimpleFieldComparator20CompareDoubleOrFloatIdEEbRKNS0_15FieldDescriptorET_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %2, double noundef %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp oeq double %2, %3
  br i1 %i.a, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !25, !range !74, !noundef !76
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = fcmp uno double %2, 0.000000e+00
  %or.cond33 = and i1 %i.h, %i.g
  %i.i = fcmp uno double %3, 0.000000e+00
  %or.cond34 = and i1 %i.i, %or.cond33            ; 2 uses
  %brmerge = select i1 %i.d, i1 true, i1 %or.cond34
  %not. = xor i1 %i.d, true
  %or.cond34.mux = select i1 %not., i1 true, i1 %or.cond34
  br i1 %brmerge, label %_ZN6google8protobuf4util12_GLOBAL__N_122WithinFractionOrMarginIdEEbT_S4_S4_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26, !range !74, !noundef !76
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %.not.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !28 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !62
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28, !nonnull !76, !noundef !76
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.w, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 1, i32 1)
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29, !noalias !79
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i6.i = phi i64 [ %i.ak, %bb.g ], [ %i.bi, %bb.j ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.g ], [ %i.bh, %bb.j ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.o        ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.6.0.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !28 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.au, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.017.046.i.i = phi i16 [ %i.be, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.o                     ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %.thread32.i.i, label %bb.i, !prof !82

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = add i16 %.sroa.017.046.i.i, -1
  %i.be = and i16 %i.bd, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.bf = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %.not43.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not43.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i, !prof !83

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bh = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.6.0.i.i
  br label %bb.h, !llvm.loop !84

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bc, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.az, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE10find_largeIS8_EENSL_8iteratorERKT_m.exit.i ], [ %.fca.1.insert.i.i.i, %bb.f ], [ { ptr null, ptr undef }, %bb.e ], [ { ptr null, ptr undef }, %bb.d ] ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %.pn.i, 0
  %.not39 = icmp eq ptr %i.bj, null
  br i1 %.not39, label %bb.k, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit
  %i.bk = extractvalue { ptr, ptr } %.pn.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util21SimpleFieldComparator9ToleranceEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE4findIS8_EENSL_8iteratorERKT_.exit
  br i1 %i.l, label %bb.l, label %bb.o

end_hunk_0
