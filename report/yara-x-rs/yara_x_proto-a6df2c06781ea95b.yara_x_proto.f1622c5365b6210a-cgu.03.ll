Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-a6df2c06781ea95b.yara_x_proto.f1622c5365b6210a-cgu.03?download=true
inline.NumInlined: 180
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB4_10SubMessage7set_str:bb.a
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB4_10SubMessage9clear_str(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !141, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  store i64 -1, ptr %0, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCskIStwd7HrDO_12yara_x_proto9test_json15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtCskIStwd7HrDO_12yara_x_proto9test_json15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2v_(ptr noundef nonnull align 8 @_RNvNvNtCskIStwd7HrDO_12yara_x_proto9test_json15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtCskIStwd7HrDO_12yara_x_proto9test_json21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtCskIStwd7HrDO_12yara_x_proto9test_json21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2x_(ptr noundef nonnull align 8 @_RNvNvNtCskIStwd7HrDO_12yara_x_proto9test_json21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn14descriptor_dynBI_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs1_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB2D_10SubMessageNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2F_(ptr noundef nonnull align 8 @_RNvNvXs1_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor), !noalias !144 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noalias !144, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %_RNvXs1_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !144, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !144
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvXs1_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXs1_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0.i = load ptr, ptr %i.c, align 8, !noalias !144, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !144, !noundef !5
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %i.j, align 8, !alias.scope !144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8, !alias.scope !144
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn14merge_from_dynBI_(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn16compute_size_dynBI_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn18is_initialized_dynBI_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn18special_fields_dynBI_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn22mut_special_fields_dynBI_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_10MessageDyn30write_to_with_cached_sizes_dynBI_(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn14descriptor_dynBI_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs7_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB2D_7MessageNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2F_(ptr noundef nonnull align 8 @_RNvNvXs7_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_7MessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor), !noalias !147 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noalias !147, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %_RNvXs7_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !147, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !147
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvXs7_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXs7_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0.i = load ptr, ptr %i.c, align 8, !noalias !147, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !147, !noundef !5
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !147
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %i.j, align 8, !alias.scope !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8, !alias.scope !147
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn14merge_from_dynBI_(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs6_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn16compute_size_dynBI_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs6_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn18is_initialized_dynBI_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !5
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %_RNvXs6_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message14is_initialized.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !range !9, !noundef !5
  %1 = trunc nuw i32 %i.d to i1
  br label %_RNvXs6_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message14is_initialized.exit

_RNvXs6_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message14is_initialized.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %1, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn18special_fields_dynBI_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn22mut_special_fields_dynBI_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(160) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_10MessageDyn30write_to_with_cached_sizes_dynBI_(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs6_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXNtCskIStwd7HrDO_12yara_x_proto9test_jsonRNtB2_10SubMessageNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageE15get_or_try_initNCINvB2_11get_or_initNvMs_BS_BQ_3newE0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBU_(ptr noundef nonnull align 8 @_RNvNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance8instance)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @32, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtNtCskIStwd7HrDO_12yara_x_proto9test_json7MessageNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @33, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 16 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #26
  %i.n = load i32, ptr %i.m, align 8, !range !9, !noundef !5
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.sroa.381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.381.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.484.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.617.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.720.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit138

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.ae = load i32, ptr %i.p, align 4, !range !9, !noundef !5
  %i.af = load i32, ptr %i.q, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ag = trunc nuw i32 %i.ae to i1
  br i1 %i.ag, label %bb.c, label %.loopexit138

bb.c:                                             ; preds = %bb.b
  switch i32 %i.af, label %bb.d [
    i32 8, label %bb.e
    i32 18, label %bb.f
    i32 26, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) ; 2 uses
  %.not99 = icmp eq ptr %i.ah, null
  br i1 %.not99, label %bb.y, label %.loopexit138

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ai = load i32, ptr %i.l, align 8, !range !9, !noundef !5
  %i.aj = trunc nuw i32 %i.ai to i1
  br i1 %i.aj, label %bb.w, label %bb.x

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ak = load i64, ptr %i.k, align 8, !range !4, !noundef !5 ; 3 uses
  %i.al = icmp eq i64 %i.ak, -1
  %i.am = load ptr, ptr %.sroa.477.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.al, label %bb.z, label %bb.aa

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.an = load ptr, ptr %1, align 8, !alias.scope !162, !nonnull !5, !noundef !5
  %i.ao = load i64, ptr %i.r, align 8, !alias.scope !162, !noundef !5 ; 4 uses
  %i.ap = load i64, ptr %i.s, align 8, !alias.scope !162, !noundef !5 ; 2 uses
  %i.aq = sub nuw i64 %i.ap, %i.ao                ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %.not.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not11.i.i = icmp eq i64 %i.aq, 1
  br i1 %.not11.i.i, label %_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint32.exit, label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !163, !noalias !164, !noundef !5 ; 3 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.t, label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  br label %_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint32.exit

bb.k:                                             ; preds = %bb.r
  %i.au = icmp samesign eq i64 %i.aq, 2
  br i1 %i.au, label %_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = and i8 %i.bx, 127
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 7
  %i.ay = zext nneg i8 %i.bz to i32
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !166, !noalias !164, !noundef !5 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.bd = and i8 %i.bb, 127
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 14
  %i.bg = or disjoint i32 %i.bf, %i.az            ; 2 uses
  %i.bh = icmp sgt i8 %i.bb, -1
  br i1 %i.bh, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp samesign eq i64 %i.aq, 3
  br i1 %i.bi, label %_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint32.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load i8, ptr %i.bc, align 1, !alias.scope !166, !noalias !164, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bl = and i8 %i.bj, 127
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 21
  %i.bo = or disjoint i32 %i.bn, %i.bg            ; 2 uses
  %i.bp = icmp sgt i8 %i.bj, -1
  br i1 %i.bp, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp samesign eq i64 %i.aq, 4
  br i1 %i.bq, label %_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint32.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtCskIStwd7HrDO_12yara_x_proto9test_json4EnumEENtNtB7_3fmt5Debug3fmtB1M_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !9, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionbENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !12, !noundef !5
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionfENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !9, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !9, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !9, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionxENtNtB7_3fmt5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !223, !noundef !5
  %i.c = icmp ne i8 %i.b, 1
  %. = zext i1 %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB2y_4EnumNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2A_(ptr noundef nonnull align 8 @_RNvNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !224 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !range !10, !noalias !224, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.b, label %_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !224, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !224
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]       ; 3 uses
  %.sroa.5.0.i = load ptr, ptr %i.f, align 8, !noalias !224, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !224, !noundef !5
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !224
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.n, align 8, !alias.scope !224
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.o, align 8, !alias.scope !224
  invoke void @_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %.)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %2 = trunc nuw i64 %i.k to i1
  br i1 %2, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %.sroa.5.0.i, i64 -1 release, align 8, !noalias !225
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit unwind label %bb.j

bb.g:                                             ; preds = %_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  %3 = trunc nuw i64 %i.k to i1
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2

bb.h:                                             ; preds = %bb.g
  %i.s = atomicrmw add ptr %.sroa.5.0.i, i64 -1 release, align 8, !noalias !226
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB2y_4EnumNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2A_(ptr noundef nonnull align 8 @_RNvNvXsb_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_4EnumNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !249, !noundef !5
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull10descriptor, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB2y_5FlagsNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2A_(ptr noundef nonnull align 8 @_RNvNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !250 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noalias !250, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.a, label %_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.a:                                             ; preds = %switch.lookup
  %i.i = load ptr, ptr %i.g, align 8, !noalias !250, !nonnull !5, !noundef !5
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !250
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit: ; preds = %switch.lookup, %bb.a
  %i.l = phi i64 [ 0, %switch.lookup ], [ 1, %bb.a ] ; 3 uses
  %.sroa.5.0.i = load ptr, ptr %i.g, align 8, !noalias !250, !nonnull !5, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !250, !noundef !5
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !250
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.o, align 8, !alias.scope !250
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %i.p, align 8, !alias.scope !250
  invoke void @_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %switch.ext)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %2 = trunc nuw i64 %i.l to i1
  br i1 %2, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw add ptr %.sroa.5.0.i, i64 -1 release, align 8, !noalias !251
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw add ptr %.sroa.5.0.i, i64 -1 release, align 8, !noalias !252
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit2: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB2y_5FlagsNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2A_(ptr noundef nonnull align 8 @_RNvNvXsf_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_5FlagsNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.m, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @55, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @60, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @56, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @61, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @62, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @63, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @64, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @65, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @55, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @66, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @67, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.a, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @58, ptr %i.aj, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @69, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageNtB5_5Debug3fmtBz_(ptr noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noalias !257, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskIStwd7HrDO_12yara_x_proto.exit, label %bb.b, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECskIStwd7HrDO_12yara_x_proto(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskIStwd7HrDO_12yara_x_proto.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvYNCNvMs5_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_data0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs5_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs5_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBO_EE9call_onceBc_(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(160) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvMs5_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtBa_7Message33generated_message_descriptor_datas2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBO_EE9call_onceBc_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

end_hunk_1
