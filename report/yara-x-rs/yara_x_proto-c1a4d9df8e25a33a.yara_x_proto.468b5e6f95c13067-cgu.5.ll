Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-c1a4d9df8e25a33a.yara_x_proto.468b5e6f95c13067-cgu.5?download=true
inline.NumInlined: 38
inline.NumDeleted: 1
begin_hunk_0_@_RINvNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9data_implNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessagelEBY_:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr %i.l, ptr %i.m, ptr nonnull align 8 @9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.d, 1
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VeclE8as_sliceCs5YNYYMCeUDn_8protobuf(ptr align 8 %i.n) #15
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RINvNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9data_implNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessagemEBY_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = tail call { i64, ptr } @_RINvNtNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9transmute19transmute_ref_if_eqINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEIB1i_mEEB1S_(ptr align 8 %0) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RINvNtCskKLDkoKarTP_4core3any9type_namemECs5YNYYMCeUDn_8protobuf() ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs2nizDKKJVD2_6chrono(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECs5YNYYMCeUDn_8protobuf(ptr nonnull @7, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr %i.l, ptr %i.m, ptr nonnull align 8 @9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.d, 1
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE8as_sliceCs5YNYYMCeUDn_8protobuf(ptr align 8 %i.n) #15
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RINvNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9data_implNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessagexEBY_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = tail call { i64, ptr } @_RINvNtNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9transmute19transmute_ref_if_eqINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEIB1i_xEEB1S_(ptr align 8 %0) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RINvNtCskKLDkoKarTP_4core3any9type_namexECs5YNYYMCeUDn_8protobuf() ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs2nizDKKJVD2_6chrono(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECs5YNYYMCeUDn_8protobuf(ptr nonnull @7, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr %i.l, ptr %i.m, ptr nonnull align 8 @9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.d, 1
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecxE8as_sliceCs5YNYYMCeUDn_8protobuf(ptr align 8 %i.n) #15
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RINvNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9data_implNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageyEBY_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = tail call { i64, ptr } @_RINvNtNtNtCs5YNYYMCeUDn_8protobuf7reflect8repeated9transmute19transmute_ref_if_eqINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEIB1i_yEEB1S_(ptr align 8 %0) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RINvNtCskKLDkoKarTP_4core3any9type_nameyECs5YNYYMCeUDn_8protobuf() ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs2nizDKKJVD2_6chrono(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECs5YNYYMCeUDn_8protobuf(ptr nonnull @7, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr %i.l, ptr %i.m, ptr nonnull align 8 @9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.d, 1
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE8as_sliceCs5YNYYMCeUDn_8protobuf(ptr align 8 %i.n) #15
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular5oneof45make_oneof_copy_has_get_set_simpler_accessorsNtNtCs63vnYBEjbPn_12yara_x_proto4yara16EnumValueOptionsdEB1S_(ptr sret([40 x i8]) align 8 %0, ptr %1, i64 %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call { ptr, ptr } @_RINvMNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singularNtB3_27SingularFieldAccessorHolder15new_has_get_setNtNtCs63vnYBEjbPn_12yara_x_proto4yara16EnumValueOptionsdEB1P_(ptr %3, ptr %4, ptr %5) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  store i64 0, ptr %i.a, align 8
  call void @_RNvMs_NtNtCs5YNYYMCeUDn_8protobuf7reflect3accNtB4_13FieldAccessor3new(ptr sret([40 x i8]) align 8 %0, ptr %1, i64 %2, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singular5oneof45make_oneof_copy_has_get_set_simpler_accessorsNtNtCs63vnYBEjbPn_12yara_x_proto4yara16EnumValueOptionsxEB1S_(ptr sret([40 x i8]) align 8 %0, ptr %1, i64 %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call { ptr, ptr } @_RINvMNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect3acc2v28singularNtB3_27SingularFieldAccessorHolder15new_has_get_setNtNtCs63vnYBEjbPn_12yara_x_proto4yara16EnumValueOptionsxEB1P_(ptr %3, ptr %4, ptr %5) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  store i64 0, ptr %i.a, align 8
  call void @_RNvMs_NtNtCs5YNYYMCeUDn_8protobuf7reflect3accNtB4_13FieldAccessor3new(ptr sret([40 x i8]) align 8 %0, ptr %1, i64 %2, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs5YNYYMCeUDn_8protobuf10descriptor19EnumDescriptorProtoEENCNvMs1_NtNtB1T_7reflect4fileNtB2X_14FileDescriptor5enums0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3M_4find5checkNtNtB2Z_5enums14EnumDescriptorNCNvCs63vnYBEjbPn_12yara_x_proto16get_field_format0E0INtNtNtBc_3ops12control_flow11ControlFlowB4Q_EEB5o_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs5YNYYMCeUDn_8protobuf10descriptor19EnumDescriptorProtoEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ENtNtNtB1C_7reflect5enums14EnumDescriptoruINtNtNtBb_3ops12control_flow11ControlFlowB3Q_ENCNvMs1_NtB3U_4fileNtB5n_14FileDescriptor5enums0NCINvNvB2y_4find5checkB3Q_NCNvCs63vnYBEjbPn_12yara_x_proto16get_field_format0E0E0B4v_EB6v_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, ptr nonnull align 8 %i.a) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB1n_ENtB2e_16RuntimeTypeTrait6as_refENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3X_10advance_byBN_NtB5h_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4E_EEB1r_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i64 @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1A_8adapters3map12map_try_foldRBJ_NtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_ref15ReflectValueRefB2i_INtNtBa_6option6OptionB2i_ENvYINtNtB3C_13runtime_types18RuntimeTypeMessageBJ_ENtB5h_16RuntimeTypeTrait6as_refNCNvXs_NvB1u_10advance_byINtB2T_3MapB3_B5b_ENtB6C_13SpecAdvanceBy15spec_advance_by0E0B4K_EBN_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #15
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB1n_ENtB2m_16RuntimeTypeTrait6as_refENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB45_10advance_byBN_NtB5p_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4M_EEB1r_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i64 @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1I_8adapters3map12map_try_foldRBJ_NtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_ref15ReflectValueRefB2q_INtNtBa_6option6OptionB2q_ENvYINtNtB3K_13runtime_types18RuntimeTypeMessageBJ_ENtB5p_16RuntimeTypeTrait6as_refNCNvXs_NvB1C_10advance_byINtB31_3MapB3_B5j_ENtB6K_13SpecAdvanceBy15spec_advance_by0E0B4S_EBN_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #15
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB1n_ENtB2m_16RuntimeTypeTrait6as_refENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB45_10advance_byBN_NtB5p_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4M_EEB1r_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i64 @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1I_8adapters3map12map_try_foldRBJ_NtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_ref15ReflectValueRefB2q_INtNtBa_6option6OptionB2q_ENvYINtNtB3K_13runtime_types18RuntimeTypeMessageBJ_ENtB5p_16RuntimeTypeTrait6as_refNCNvXs_NvB1C_10advance_byINtB31_3MapB3_B5j_ENtB6K_13SpecAdvanceBy15spec_advance_by0E0B4S_EBN_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #15
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB1E_ENtB2v_16RuntimeTypeTrait14into_value_boxENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4n_10advance_byBN_NtB5H_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB54_EEB1I_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call i64 @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1D_3num7nonzero7NonZerojENCINvNtNtB1B_8adapters3map12map_try_foldBK_NtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBoxB2z_INtNtB1D_6option6OptionB2z_ENvYINtNtB3T_13runtime_types18RuntimeTypeMessageBK_ENtB5z_16RuntimeTypeTrait14into_value_boxNCNvXs_NvB1v_10advance_byINtB3b_3MapB3_B5t_ENtB73_13SpecAdvanceBy15spec_advance_by0E0B51_EBO_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #15
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB1E_ENtB2D_16RuntimeTypeTrait14into_value_boxENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4v_10advance_byBN_NtB5P_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5c_EEB1I_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call i64 @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1L_3num7nonzero7NonZerojENCINvNtNtB1J_8adapters3map12map_try_foldBK_NtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBoxB2H_INtNtB1L_6option6OptionB2H_ENvYINtNtB41_13runtime_types18RuntimeTypeMessageBK_ENtB5H_16RuntimeTypeTrait14into_value_boxNCNvXs_NvB1D_10advance_byINtB3j_3MapB3_B5B_ENtB7b_13SpecAdvanceBy15spec_advance_by0E0B59_EBO_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #15
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB1E_ENtB2D_16RuntimeTypeTrait14into_value_boxENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4v_10advance_byBN_NtB5P_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB5c_EEB1I_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call i64 @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1L_3num7nonzero7NonZerojENCINvNtNtB1J_8adapters3map12map_try_foldBK_NtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBoxB2H_INtNtB1L_6option6OptionB2H_ENvYINtNtB41_13runtime_types18RuntimeTypeMessageBK_ENtB5H_16RuntimeTypeTrait14into_value_boxNCNvXs_NvB1D_10advance_byINtB3j_3MapB3_B5B_ENtB7b_13SpecAdvanceBy15spec_advance_by0E0B59_EBO_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #15
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs5YNYYMCeUDn_8protobuf10descriptor19EnumDescriptorProtoEENCNvMs1_NtNtB1N_7reflect4fileNtB2R_14FileDescriptor5enums0ENtNtNtBa_6traits8iterator8Iterator4findNCNvCs63vnYBEjbPn_12yara_x_proto16get_field_format0EB4n_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs5YNYYMCeUDn_8protobuf10descriptor19EnumDescriptorProtoEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ENtNtNtB1C_7reflect5enums14EnumDescriptoruINtNtNtBb_3ops12control_flow11ControlFlowB3Q_ENCNvMs1_NtB3U_4fileNtB5n_14FileDescriptor5enums0NCINvNvB2y_4find5checkB3Q_NCNvCs63vnYBEjbPn_12yara_x_proto16get_field_format0E0E0B4v_EB6v_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1, ptr align 8 %2, ptr nonnull align 8 %i.b) #15
  %i.c = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.c, 2                     ; 2 uses
  br i1 %.not, label %3, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %4

3:                                                ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %4

4:                                                ; preds = %3, %bb.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %4
  ret void

bb.d:                                             ; preds = %4
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums14EnumDescriptorEECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.a)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBoxINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2T_ENvYINtNtB1P_13runtime_types18RuntimeTypeMessageBZ_ENtB3W_16RuntimeTypeTrait14into_value_boxNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBZ_EB3Q_ENtB5q_13SpecAdvanceBy15spec_advance_by0E0B13_(ptr align 8 %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  call void @_RNvYNvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENtB8_16RuntimeTypeTrait14into_value_boxINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTB1g_EE8call_mutB1k_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %i.e, ptr nonnull align 8 %i.a) #15
  store i64 %1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = call i64 @_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB2n_ENtB3e_16RuntimeTypeTrait14into_value_boxENtB6_13SpecAdvanceBy15spec_advance_by0B2r_(ptr nonnull %i.d, i64 %1, ptr nonnull align 8 %i.f) #15
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBoxINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB31_ENvYINtNtB1X_13runtime_types18RuntimeTypeMessageBZ_ENtB44_16RuntimeTypeTrait14into_value_boxNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBZ_EB3Y_ENtB5y_13SpecAdvanceBy15spec_advance_by0E0B13_(ptr align 8 %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  call void @_RNvYNvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtB8_16RuntimeTypeTrait14into_value_boxINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTB1g_EE8call_mutB1k_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %i.e, ptr nonnull align 8 %i.a) #15
  store i64 %1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = call i64 @_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB2n_ENtB3m_16RuntimeTypeTrait14into_value_boxENtB6_13SpecAdvanceBy15spec_advance_by0B2r_(ptr nonnull %i.d, i64 %1, ptr nonnull align 8 %i.f) #15
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBoxINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB31_ENvYINtNtB1X_13runtime_types18RuntimeTypeMessageBZ_ENtB44_16RuntimeTypeTrait14into_value_boxNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainBZ_EB3Y_ENtB5y_13SpecAdvanceBy15spec_advance_by0E0B13_(ptr align 8 %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  call void @_RNvYNvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtB8_16RuntimeTypeTrait14into_value_boxINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTB1g_EE8call_mutB1k_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %i.e, ptr nonnull align 8 %i.a) #15
  store i64 %1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = call i64 @_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB2n_ENtB3m_16RuntimeTypeTrait14into_value_boxENtB6_13SpecAdvanceBy15spec_advance_by0B2r_(ptr nonnull %i.d, i64 %1, ptr nonnull align 8 %i.f) #15
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_ref15ReflectValueRefINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENvYINtNtB1Q_13runtime_types18RuntimeTypeMessageB10_ENtB3X_16RuntimeTypeTrait6as_refNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3R_ENtB5j_13SpecAdvanceBy15spec_advance_by0E0B14_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %0, align 8
  call void @_RNvYNvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENtB8_16RuntimeTypeTrait6as_refINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRB1g_EE8call_mutB1k_(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr %i.d, ptr align 8 %2) #15
  store i64 %1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters3map3MapINtNtNtBg_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto4yara8AclEntryENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB26_ENtB2X_16RuntimeTypeTrait6as_refENtB6_13SpecAdvanceBy15spec_advance_by0B2a_(ptr nonnull %i.c, i64 %1, ptr nonnull align 8 %i.e) #15
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_ref15ReflectValueRefINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB32_ENvYINtNtB1Y_13runtime_types18RuntimeTypeMessageB10_ENtB45_16RuntimeTypeTrait6as_refNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_ENtB5r_13SpecAdvanceBy15spec_advance_by0E0B14_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %0, align 8
  call void @_RNvYNvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtB8_16RuntimeTypeTrait6as_refINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRB1g_EE8call_mutB1k_(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr %i.d, ptr align 8 %2) #15
  store i64 %1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters3map3MapINtNtNtBg_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB26_ENtB35_16RuntimeTypeTrait6as_refENtB6_13SpecAdvanceBy15spec_advance_by0B2a_(ptr nonnull %i.c, i64 %1, ptr nonnull align 8 %i.e) #15
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_ref15ReflectValueRefINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB32_ENvYINtNtB1Y_13runtime_types18RuntimeTypeMessageB10_ENtB45_16RuntimeTypeTrait6as_refNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_ENtB5r_13SpecAdvanceBy15spec_advance_by0E0B14_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %0, align 8
  call void @_RNvYNvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtB8_16RuntimeTypeTrait6as_refINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRB1g_EE8call_mutB1k_(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr %i.d, ptr align 8 %2) #15
  store i64 %1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters3map3MapINtNtNtBg_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENvYINtNtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_types18RuntimeTypeMessageB26_ENtB35_16RuntimeTypeTrait6as_refENtB6_13SpecAdvanceBy15spec_advance_by0B2a_(ptr nonnull %i.c, i64 %1, ptr nonnull align 8 %i.e) #15
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTjRNtNtCs5YNYYMCeUDn_8protobuf10descriptor19EnumDescriptorProtoENtNtNtB16_7reflect5enums14EnumDescriptoruINtNtNtBa_3ops12control_flow11ControlFlowB21_ENCNvMs1_NtB25_4fileNtB3y_14FileDescriptor5enums0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB21_NCNvCs63vnYBEjbPn_12yara_x_proto16get_field_format0E0E0B5a_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void @_RNCNvMs1_NtNtCs5YNYYMCeUDn_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.d, i64 %2, ptr align 8 %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums14EnumDescriptorNCNvCs63vnYBEjbPn_12yara_x_proto16get_field_format0E0B2d_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.b) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_RNvMNtCskKLDkoKarTP_4core3stre8is_emptyCs63vnYBEjbPn_12yara_x_proto(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 4 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCs5YNYYMCeUDn_8protobuf15enum_or_unknown13EnumOrUnknownNtNtCs63vnYBEjbPn_12yara_x_proto9test_json4EnumEE6as_refB1J_(ptr nofree readonly align 4 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCs5YNYYMCeUDn_8protobuf15enum_or_unknown13EnumOrUnknownNtNtCs63vnYBEjbPn_12yara_x_proto9test_json4EnumEE7is_someB1J_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp eq i32 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeEE6as_mutB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEE6as_mutB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEE6as_mutB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCINvMs4_NtCs6he3ExG9sT3_9once_cell4syncINtBQ_8OnceCellNtNtCs5YNYYMCeUDn_8protobuf10descriptor19FileDescriptorProtoE11get_or_initNCNvNtCs63vnYBEjbPn_12yara_x_proto4yara21file_descriptor_proto0E0E16unwrap_uncheckedB2S_(i1 zeroext %0, ptr align 8 %1) unnamed_addr #4 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

end_hunk_0
