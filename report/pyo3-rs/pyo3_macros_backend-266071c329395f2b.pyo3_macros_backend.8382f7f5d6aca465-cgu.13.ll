Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.13?download=true
inline.NumInlined: 77
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCs1QQTzni0HOp_3syn4item7UseTreeNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1U_11PrivateIterBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsbi23obv45GP_19pyo3_macros_backend:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs1QQTzni0HOp_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item7UseTreeNtNtB9_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentNtNtBO_5token5CommaEE3mapRBK_NCNCNvXsx_NtBO_10punctuatedINtB25_11PrivateIterBK_B1s_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00ECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs1QQTzni0HOp_3syn10punctuatedINtB9_11PrivateIterNtNtBb_4path15GenericArgumentNtNtBb_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB23_11PrivateIterBK_B1s_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs1QQTzni0HOp_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4path15GenericArgumentNtNtB9_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCs1QQTzni0HOp_3syn5token2EqNtNtBO_4expr4ExprEE3mapB1f_NCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB1O_17FunctionSignature28from_arguments_and_attributes_0EB1S_(ptr nofree writeonly sret([176 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature28from_arguments_and_attributes_0Bb_(ptr nonnull sret([176 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapRBK_NCNCNvXsx_NtB1S_10punctuatedINtB2G_11PrivateIterBK_B1O_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00EBO_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs1QQTzni0HOp_3syn10punctuatedINtB9_11PrivateIterNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtBb_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00B12_(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapRBK_NCNvXsw_NtB1S_10punctuatedINtB2E_11PrivateIterBK_B1O_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBO_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs1QQTzni0HOp_3syn10punctuatedINtB7_11PrivateIterNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtB9_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0B10_(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapRBK_NCNCNvXsx_NtB1S_10punctuatedINtB2G_11PrivateIterBK_B1O_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00EBO_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs1QQTzni0HOp_3syn10punctuatedINtB9_11PrivateIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtBb_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00B12_(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapRBK_NCNvXsw_NtB1S_10punctuatedINtB2E_11PrivateIterBK_B1O_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBO_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs1QQTzni0HOp_3syn10punctuatedINtB7_11PrivateIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtB9_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0B10_(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapINtNtB24_10punctuated4PairRBK_RB20_ENCNvXsc_B2H_INtB2H_5PairsBK_B20_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBQ_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNCNvXsc_NtCs1QQTzni0HOp_3syn10punctuatedINtB7_5PairsNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtB9_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0BV_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapRBK_NCNCNvXsx_NtB24_10punctuatedINtB2S_11PrivateIterBK_B20_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00EBQ_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs1QQTzni0HOp_3syn10punctuatedINtB9_11PrivateIterNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtBb_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00B14_(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtCs1QQTzni0HOp_3syn5token5CommaEE3mapRBK_NCNvXsw_NtB24_10punctuatedINtB2Q_11PrivateIterBK_B20_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBQ_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs1QQTzni0HOp_3syn10punctuatedINtB7_11PrivateIterNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtB9_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0B12_(ptr nonnull align 8 %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE3mapNtCs3FigHW6Y7TR_11proc_macro25IdentNCNCNvMs4_NtCsbi23obv45GP_19pyo3_macros_backend6methodNtB1y_6FnSpec13parse_fn_types0_00EB1A_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((16, 17)) %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNCNCNvMs4_NtCsbi23obv45GP_19pyo3_macros_backend6methodNtB9_6FnSpec13parse_fn_types0_00Bb_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %3, ptr nonnull %1, i64 %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12remove_entryeECsbi23obv45GP_19pyo3_macros_backend(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.a, ptr %2, i64 %3)
  tail call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE12remove_entryNCINvNtB8_3map14equivalent_keyeBQ_uE0ECsbi23obv45GP_19pyo3_macros_backend(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i64 %i.b, ptr %2, i64 %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeeECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b, ptr %1, i64 %2)
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE12remove_entryNCINvNtB8_3map14equivalent_keyeBQ_uE0ECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %0, i64 %i.c, ptr %1, i64 %2)
  %i.d = load i64, ptr %i.a, align 8
  %.not1 = icmp ne i64 %i.d, -1                   ; 2 uses
  br i1 %.not1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %.not1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj1_ECsbi23obv45GP_19pyo3_macros_backend(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 1
  %.sroa.02.0.copyload = load i8, ptr %1, align 1
  store i8 %.sroa.02.0.copyload, ptr %0, align 1
  store i8 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj2_ECsbi23obv45GP_19pyo3_macros_backend(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 1
  %.sroa.02.0.copyload = load i16, ptr %1, align 1
  store i16 %.sroa.02.0.copyload, ptr %0, align 1
  store i16 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj4_ECsbi23obv45GP_19pyo3_macros_backend(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 1
  %.sroa.02.0.copyload = load i32, ptr %1, align 1
  store i32 %.sroa.02.0.copyload, ptr %0, align 1
  store i32 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsbi23obv45GP_19pyo3_macros_backend(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 1
  %.sroa.02.0.copyload = load i64, ptr %1, align 1
  store i64 %.sroa.02.0.copyload, ptr %0, align 1
  store i64 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCskKLDkoKarTP_4core3ptr19swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsbi23obv45GP_19pyo3_macros_backend(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2                    ; 2 uses
  %min.iters.check = icmp eq i64 %2, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.b
  br label %.lr.ph.i.i

vector.memcheck:                                  ; preds = %bb.b
  %i.b = shl i64 %2, 5                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep2 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep2
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.c, align 1, !alias.scope !12, !noalias !13
  %wide.load3 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !12, !noalias !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load4 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !13
  %wide.load5 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !13
  store <2 x i64> %wide.load4, ptr %i.c, align 1, !alias.scope !12, !noalias !13
  store <2 x i64> %wide.load5, ptr %i.e, align 1, !alias.scope !12, !noalias !13
  store <2 x i64> %wide.load, ptr %i.d, align 1, !alias.scope !13
  store <2 x i64> %wide.load3, ptr %i.f, align 1, !alias.scope !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %i.a
  br i1 %i.g, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCsbi23obv45GP_19pyo3_macros_backend.exit, label %vector.body, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i ] ; 4 uses
  %i.h = or disjoint i64 %.sroa.0.03.i.i, 1       ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 1
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.j, align 1
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.i, align 1
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %.sroa.0.03.i.i, 2       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.l, align 1
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.m, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.l, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.m, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not.i.i.1, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCsbi23obv45GP_19pyo3_macros_backend.exit, label %.lr.ph.i.i, !llvm.loop !11

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %vector.body, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs1QQTzni0HOp_3syn4attr9AttributeENCINvNtCsbi23obv45GP_19pyo3_macros_backend10attributes15take_attributesNCINvB2I_17take_pyo3_optionsNtNtB2K_10pyfunction16PyFunctionOptionE0E0EB21_INtNtB6_6result6ResultzNtNtB25_5error5ErrorENCINvXso_B52_IB50_INtB1p_3VecB21_EB5m_EINtNtNtB4_6traits7collect12FromIteratorIB50_B21_B5m_EE9from_iterBQ_E0B5Z_EB2K_(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [56 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  store i64 -1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeENtNtB1o_5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1W_EE9from_iterINtNtNtB2o_8adapters10filter_map9FilterMapINtNtBQ_5drain5DrainB1k_ENCINvNtCsbi23obv45GP_19pyo3_macros_backend10attributes15take_attributesNCINvB4z_17take_pyo3_optionsNtNtB4B_10pyfunction16PyFunctionOptionE0E0EE0B4B_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull %i.a, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread10, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %.thread10 ] ; 2 uses
  %.sroa.03.0 = phi i1 [ %.sroa.03.1, %bb.c ], [ true, %.thread10 ]
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, -1
  %or.cond = and i1 %.sroa.03.0, %i.h
  br i1 %or.cond, label %bb.k, label %.thread

bb.c:                                             ; preds = %bb.h, %bb.a
  %.sroa.03.1 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8
  %.not.not = icmp eq i64 %i.j, -1
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeENtNtB1l_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1T_EE13from_residualB1l_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @1)
          to label %bb.h unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCsbi23obv45GP_19pyo3_macros_backend(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %.thread10

.thread10:                                        ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.h
  ret void

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.e) #13
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.b
  %.pn9 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn, %bb.k ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCs1QQTzni0HOp_3syn5error5ErrorEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.f) #13
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs1QQTzni0HOp_3syn4attr9AttributeENCINvNtCsbi23obv45GP_19pyo3_macros_backend10attributes15take_attributesNCINvB2I_17take_pyo3_optionsNtNtB2K_6module18PyModulePyO3OptionE0E0EB21_INtNtB6_6result6ResultzNtNtB25_5error5ErrorENCINvXso_B4Z_IB4X_INtB1p_3VecB21_EB5j_EINtNtNtB4_6traits7collect12FromIteratorIB4X_B21_B5j_EE9from_iterBQ_E0B5W_EB2K_(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [56 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  store i64 -1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeENtNtB1o_5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1W_EE9from_iterINtNtNtB2o_8adapters10filter_map9FilterMapINtNtBQ_5drain5DrainB1k_ENCINvNtCsbi23obv45GP_19pyo3_macros_backend10attributes15take_attributesNCINvB4z_17take_pyo3_optionsNtNtB4B_6module18PyModulePyO3OptionE0E0EE0B4B_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull %i.a, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.c

end_hunk_0
