Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-c1a4d9df8e25a33a.yara_x_proto.468b5e6f95c13067-cgu.7?download=true
inline.NumInlined: 147
inline.NumDeleted: 33
begin_hunk_0_@_RNvXs4_NtCs5YNYYMCeUDn_8protobuf13message_fieldRINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB18_
define align 8 ptr @_RNvXs4_NtCs5YNYYMCeUDn_8protobuf13message_fieldRINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB18_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEE6as_refB1k_(ptr align 8 %0) #22
  %i.b = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEE3mapRB1i_NCNvMNtCs5YNYYMCeUDn_8protobuf13message_fieldINtB2q_12MessageFieldB1i_E6as_ref0EB1m_(ptr align 8 %i.a) #22
  %i.c = tail call align 8 ptr @_RNvXs8_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr align 8 %i.b) #22
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i, %bb.b
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBK_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.c) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBO_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECs63vnYBEjbPn_12yara_x_proto(ptr align 8 %1, ptr nonnull align 8 %i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.h, 1
  %i.l = call zeroext i1 @_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.k, ptr nonnull align 8 %i.j) #22
  %i.m = xor i1 %i.l, true
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi i1 [ %i.m, %bb.e ], [ true, %bb.d ]
  %i.n = call zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCs1bwT8MhFwPb_10num_traits(i1 zeroext %.sroa.0.0.i.i.i) #22
  br i1 %i.n, label %bb.g, label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.o = call zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCs1bwT8MhFwPb_10num_traits() #22
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBU_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1A_3all5checkTRBU_B31_ENCNvXs4_B6_INtB6_7HashMapBU_BU_ENtNtB1I_3cmp9PartialEq2eq0E0INtNtNtB1I_3ops12control_flow11ControlFlowuEECs63vnYBEjbPn_12yara_x_proto.exit

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs63vnYBEjbPn_12yara_x_proto.exit.i
  %i.p = call zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uzEE13from_residualCs1bwT8MhFwPb_10num_traits() #22
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBU_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1A_3all5checkTRBU_B31_ENCNvXs4_B6_INtB6_7HashMapBU_BU_ENtNtB1I_3cmp9PartialEq2eq0E0INtNtNtB1I_3ops12control_flow11ControlFlowuEECs63vnYBEjbPn_12yara_x_proto.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBU_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1A_3all5checkTRBU_B31_ENCNvXs4_B6_INtB6_7HashMapBU_BU_ENtNtB1I_3cmp9PartialEq2eq0E0INtNtNtB1I_3ops12control_flow11ControlFlowuEECs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.p, %bb.g ], [ %i.o, %bb.f ]
  %i.q = zext i1 %.sroa.0.0.in.i to i8
  store i8 %i.q, ptr %i.a, align 1
  %i.r = call zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs1bwT8MhFwPb_10num_traits(ptr nonnull %i.a, ptr nonnull @26) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBU_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1A_3all5checkTRBU_B31_ENCNvXs4_B6_INtB6_7HashMapBU_BU_ENtNtB1I_3cmp9PartialEq2eq0E0INtNtNtB1I_3ops12control_flow11ControlFlowuEECs63vnYBEjbPn_12yara_x_proto.exit
  %.sroa.0.0 = phi i1 [ %i.r, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBU_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1A_3all5checkTRBU_B31_ENCNvXs4_B6_INtB6_7HashMapBU_BU_ENtNtB1I_3cmp9PartialEq2eq0E0INtNtNtB1I_3ops12control_flow11ControlFlowuEECs63vnYBEjbPn_12yara_x_proto.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs5_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB17_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeEENtNtB7_5clone5Clone5cloneB1n_(ptr align 8 %0) #22
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs5_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB17_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEENtNtB7_5clone5Clone5cloneB1n_(ptr align 8 %0) #22
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs5_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB17_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEENtNtB7_5clone5Clone5cloneB1n_(ptr align 8 %0) #22
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs6_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB17_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @27, i64 12, ptr nonnull %i.a, ptr nonnull align 8 @28)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs6_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB17_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @27, i64 12, ptr nonnull %i.a, ptr nonnull align 8 @29)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs6_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB17_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @27, i64 12, ptr nonnull %i.a, ptr nonnull align 8 @30)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr align 8 %1)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.d = call align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsexYYUdYSQU6_5alloc6string6StringB12_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B13_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.e = call zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr align 8 %i.d)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs7_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core7default7Default7defaultCs63vnYBEjbPn_12yara_x_proto(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7defaultCs63vnYBEjbPn_12yara_x_proto() #22 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs9_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB17_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara17DeprecationNoticeEENtNtB7_3cmp9PartialEq2eqB1n_(ptr align 8 %0, ptr align 8 %1) #22
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs9_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB17_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEENtNtB7_3cmp9PartialEq2eqB1n_(ptr align 8 %0, ptr align 8 %1) #22
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs9_NtCs5YNYYMCeUDn_8protobuf13message_fieldINtB5_12MessageFieldNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB17_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs63vnYBEjbPn_12yara_x_proto9test_yaml10SubMessageEENtNtB7_3cmp9PartialEq2eqB1n_(ptr align 8 %0, ptr align 8 %1) #22
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmtCs63vnYBEjbPn_12yara_x_proto(ptr align 4 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr align 4 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr align 4 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr align 4 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs63vnYBEjbPn_12yara_x_proto4yara18enum_value_optionsNtB4_5ValueNtNtCs5YNYYMCeUDn_8protobuf10oneof_full9OneofFull10descriptor(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_RINvMNtCs5YNYYMCeUDn_8protobuf4lazyINtB3_4LazyNtNtNtB5_7reflect5oneof15OneofDescriptorE3getNCNvXs_NtNtCs63vnYBEjbPn_12yara_x_proto4yara18enum_value_optionsNtB1y_5ValueNtNtB5_10oneof_full9OneofFull10descriptor0EB1C_(ptr nonnull align 8 @_RNvNvXs_NtNtCs63vnYBEjbPn_12yara_x_proto4yara18enum_value_optionsNtB6_5ValueNtNtCs5YNYYMCeUDn_8protobuf10oneof_full9OneofFull10descriptor10descriptor) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.b = tail call { i64, ptr } @_RNvXs4_NtNtCs5YNYYMCeUDn_8protobuf7reflect4fileNtB5_14FileDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %i.a) #22, !noalias !10 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !10
  store i64 %i.c, ptr %0, align 8, !alias.scope !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8, !alias.scope !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !10
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsENtB4_14MessageFactory12new_instanceB1r_(ptr nofree readnone captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @_RNvXs16_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_11EnumOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB8_(ptr nonnull sret([48 x i8]) align 8 %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.c = invoke ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs63vnYBEjbPn_12yara_x_proto(i64 8, i64 48)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE3newBI_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsEBF_(ptr nonnull align 8 %i.a) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @35, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsENtB4_14MessageFactory16default_instanceB1r_(ptr nofree readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXsu_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB5_11EnumOptionsNtNtCs5YNYYMCeUDn_8protobuf7message7Message16default_instance()
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @35, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsENtB4_14MessageFactory2eqB1r_(ptr nofree readnone captures(none) %0, ptr %1, ptr align 8 %2, ptr %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = tail call align 8 ptr @_RINvMs_NtCs5YNYYMCeUDn_8protobuf11message_dynDNtB5_10MessageDynEL_12downcast_refNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsEB1k_(ptr %1, ptr align 8 %2)
  %i.d = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE6expectBM_(ptr align 8 %i.c, ptr nonnull @36, i64 18, ptr nonnull align 8 @38) #22
  store ptr %i.d, ptr %i.b, align 8
  %i.e = tail call align 8 ptr @_RINvMs_NtCs5YNYYMCeUDn_8protobuf11message_dynDNtB5_10MessageDynEL_12downcast_refNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsEB1k_(ptr %3, ptr align 8 %4)
  %i.f = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE6expectBM_(ptr align 8 %i.e, ptr nonnull @36, i64 18, ptr nonnull align 8 @39) #22
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsNtB7_9PartialEq2eqBH_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #22
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsENtB4_14MessageFactory5cloneB1r_(ptr nofree readnone captures(none) %0, ptr %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = tail call align 8 ptr @_RINvMs_NtCs5YNYYMCeUDn_8protobuf11message_dynDNtB5_10MessageDynEL_12downcast_refNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsEB1k_(ptr %1, ptr align 8 %2)
  %i.c = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE6expectBM_(ptr align 8 %i.b, ptr nonnull @36, i64 18, ptr nonnull align 8 @40) #22
  call void @_RNvXs15_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_11EnumOptionsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneB8_(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr align 8 %i.c) #22
  %i.d = invoke ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs63vnYBEjbPn_12yara_x_proto(i64 8, i64 48)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE3newBI_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsEBF_(ptr nonnull align 8 %i.a) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara11EnumOptionsE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @35, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsENtB4_14MessageFactory12new_instanceB1r_(ptr nofree readnone captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 3 uses
  %i.b = alloca [104 x i8], align 8               ; 2 uses
  call void @_RNvXsM_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB5_12FieldOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr nonnull sret([104 x i8]) align 8 %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  %i.c = invoke ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs63vnYBEjbPn_12yara_x_proto(i64 8, i64 104)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE3newBI_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsEBF_(ptr nonnull align 8 %i.a) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @43, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsENtB4_14MessageFactory16default_instanceB1r_(ptr nofree readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs6_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB5_12FieldOptionsNtNtCs5YNYYMCeUDn_8protobuf7message7Message16default_instance()
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsENtB4_14MessageFactory2eqB1r_(ptr nofree readnone captures(none) %0, ptr %1, ptr align 8 %2, ptr %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = tail call align 8 ptr @_RINvMs_NtCs5YNYYMCeUDn_8protobuf11message_dynDNtB5_10MessageDynEL_12downcast_refNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsEB1k_(ptr %1, ptr align 8 %2)
  %i.d = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE6expectBM_(ptr align 8 %i.c, ptr nonnull @36, i64 18, ptr nonnull align 8 @38) #22
  store ptr %i.d, ptr %i.b, align 8
  %i.e = tail call align 8 ptr @_RINvMs_NtCs5YNYYMCeUDn_8protobuf11message_dynDNtB5_10MessageDynEL_12downcast_refNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsEB1k_(ptr %3, ptr align 8 %4)
  %i.f = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE6expectBM_(ptr align 8 %i.e, ptr nonnull @36, i64 18, ptr nonnull align 8 @39) #22
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsNtB7_9PartialEq2eqBH_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #22
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsENtB4_14MessageFactory5cloneB1r_(ptr nofree readnone captures(none) %0, ptr %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 3 uses
  %i.b = tail call align 8 ptr @_RINvMs_NtCs5YNYYMCeUDn_8protobuf11message_dynDNtB5_10MessageDynEL_12downcast_refNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsEB1k_(ptr %1, ptr align 8 %2)
  %i.c = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE6expectBM_(ptr align 8 %i.b, ptr nonnull @36, i64 18, ptr nonnull align 8 @40) #22
  call void @_RNvXsL_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB5_12FieldOptionsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr align 8 %i.c) #22
  %i.d = invoke ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs63vnYBEjbPn_12yara_x_proto(i64 8, i64 104)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE3newBI_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsEBF_(ptr nonnull align 8 %i.a) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara12FieldOptionsE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @43, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs5YNYYMCeUDn_8protobuf7reflect7message9generatedINtB4_18MessageFactoryImplNtNtCs63vnYBEjbPn_12yara_x_proto4yara13ModuleOptionsENtB4_14MessageFactory12new_instanceB1r_(ptr nofree readnone captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 3 uses
  %i.b = alloca [88 x i8], align 8                ; 2 uses
  call void @_RNvXsH_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB5_13ModuleOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr nonnull sret([88 x i8]) align 8 %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  %i.c = invoke ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs63vnYBEjbPn_12yara_x_proto(i64 8, i64 88)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs63vnYBEjbPn_12yara_x_proto4yara13ModuleOptionsE3newBI_.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs63vnYBEjbPn_12yara_x_proto4yara13ModuleOptionsEBF_(ptr nonnull align 8 %i.a) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
end_hunk_0
begin_hunk_1_@_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas3_0B9_

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas4_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas5_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas6_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas7_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas8_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas9_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 4 ptr @_RNCNvMs5_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB7_7Message33generated_message_descriptor_datas_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_13ModuleOptions33generated_message_descriptor_data0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_13ModuleOptions33generated_message_descriptor_datas0_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_13ModuleOptions33generated_message_descriptor_datas1_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_13ModuleOptions33generated_message_descriptor_datas2_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_13ModuleOptions33generated_message_descriptor_datas3_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB6_13ModuleOptions33generated_message_descriptor_datas_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 4 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB6_10SubMessage33generated_message_descriptor_data0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB6_10SubMessage33generated_message_descriptor_datas0_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB6_10SubMessage33generated_message_descriptor_datas1_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB6_10SubMessage33generated_message_descriptor_datas2_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB6_10SubMessage33generated_message_descriptor_datas3_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 4 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB6_10SubMessage33generated_message_descriptor_datas_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 4 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB6_10SubMessage33generated_message_descriptor_data0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB6_10SubMessage33generated_message_descriptor_datas0_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB6_10SubMessage33generated_message_descriptor_datas1_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB6_10SubMessage33generated_message_descriptor_datas2_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB6_10SubMessage33generated_message_descriptor_datas3_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 4 ptr @_RNCNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB6_10SubMessage33generated_message_descriptor_datas_0B8_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_data0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas0_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas1_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas2_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas3_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas4_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas5_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsb_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_8AclEntry33generated_message_descriptor_datas_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsh_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_17DeprecationNotice33generated_message_descriptor_data0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsh_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_17DeprecationNotice33generated_message_descriptor_datas0_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsh_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_17DeprecationNotice33generated_message_descriptor_datas1_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsh_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_17DeprecationNotice33generated_message_descriptor_datas2_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsh_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_17DeprecationNotice33generated_message_descriptor_datas3_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsh_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_17DeprecationNotice33generated_message_descriptor_datas_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsn_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_14MessageOptions33generated_message_descriptor_data0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMsn_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_14MessageOptions33generated_message_descriptor_datas_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMst_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_11EnumOptions33generated_message_descriptor_data0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNCNvMst_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_11EnumOptions33generated_message_descriptor_datas0_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNCNvMst_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_11EnumOptions33generated_message_descriptor_datas1_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCNvMst_NtCs63vnYBEjbPn_12yara_x_proto4yaraNtB7_11EnumOptions33generated_message_descriptor_datas_0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNcNtNtNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5value9value_box15ReflectValueBox7Message0Cs63vnYBEjbPn_12yara_x_proto(ptr sret([32 x i8]) align 8, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB4_10SubMessage3new(ptr sret([96 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs63vnYBEjbPn_12yara_x_proto9test_yamlNtB4_10SubMessage3new(ptr sret([96 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtNtCs5YNYYMCeUDn_8protobuf7reflect13runtime_typesNtB5_17RuntimeTypeStringNtB5_16RuntimeTypeTrait6as_ref(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #14

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { inlinehint }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline noreturn }
attributes #26 = { noreturn }
attributes #27 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!8 = distinct !{!8, i1 false, !"_RNvXs2_NtNtCs5YNYYMCeUDn_8protobuf7reflect5oneofNtB5_15OneofDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto"}
!9 = distinct !{!9, !8, !"_RNvXs2_NtNtCs5YNYYMCeUDn_8protobuf7reflect5oneofNtB5_15OneofDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto: argument 0"}
!10 = !{!9}
end_hunk_1
