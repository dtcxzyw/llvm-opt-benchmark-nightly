inline.NumInlined: 2799
inline.NumDeleted: 1236
begin_hunk_0_@_ZN6google8protobuf8compiler4java28GetExperimentalJavaFieldTypeEPKNS0_15FieldDescriptorE
define hidden noundef i32 @_ZN6google8protobuf8compiler4java28GetExperimentalJavaFieldTypeEPKNS0_15FieldDescriptorE(ptr noundef nonnull %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 3 uses
  %i.b = select i1 %i.a, i32 256, i32 0           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !7
  %i.e = icmp eq i8 %i.d, 9
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4java28GetExperimentalJavaFieldTypeEPKNS0_15FieldDescriptorE:bb.a
  br i1 %i.y, label %_ZN6google8protobuf8compiler4java9CheckUtf8EPKNS0_15FieldDescriptorE.exit.thread, label %_ZN6google8protobuf8compiler4java9CheckUtf8EPKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf8compiler4java9CheckUtf8EPKNS0_15FieldDescriptorE.exit.thread: ; preds = %_ZNK6google8protobuf10FeatureSet12GetExtensionINS0_8internal17MessageTypeTraitsIN2pb12JavaFeaturesEEELh11ELb0ETnNSt9enable_ifIXsrT_14kLifetimeBoundEiE4typeELi0EEENS9_8Singular9ConstTypeERKNS3_19ExtensionIdentifierIS1_S9_XT0_EXT1_EEE.exit.i, %bb.e
  %2 = select i1 %i.a, i32 768, i32 512
  br label %bb.f

_ZN6google8protobuf8compiler4java9CheckUtf8EPKNS0_15FieldDescriptorE.exit: ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4java28GetExperimentalJavaFieldTypeEPKNS0_15FieldDescriptorE:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 134
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !30, !range !47, !noundef !48
  %3 = trunc nuw i8 %i.ae to i1
  %4 = select i1 %i.a, i32 768, i32 512
  %spec.select = select i1 %3, i32 %4, i32 %i.b
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8compiler4java9CheckUtf8EPKNS0_15FieldDescriptorE.exit, %_ZN6google8protobuf8compiler4java9CheckUtf8EPKNS0_15FieldDescriptorE.exit.thread, %bb.a
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler4java28GetExperimentalJavaFieldTypeEPKNS0_15FieldDescriptorE:bb.a
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ak = or disjoint i32 %.030, 1024
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
end_hunk_3
