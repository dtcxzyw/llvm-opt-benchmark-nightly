Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.13?download=true
inline.NumInlined: 77
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCs1QQTzni0HOp_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend:bb.a
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCs1QQTzni0HOp_3syn4item7UseTreeENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintBR_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintBR_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBT_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintBT_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCs1QQTzni0HOp_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCs1QQTzni0HOp_3syn4item5FnArgENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCs1QQTzni0HOp_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCs1QQTzni0HOp_3syn4item7UseTreeENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenBN_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.017 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.127, %bb.m ] ; 4 uses
  %.sroa.6.016 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.126, %bb.m ] ; 7 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCsG258MDvU3F_3std3sys5stdio4unixNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.017, i64 %.sroa.6.016) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = invoke zeroext i1 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interruptedCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c)
          to label %bb.j unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.6.016, %i.h
  br i1 %i.k, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.l = sub nuw i64 %.sroa.6.016, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 %i.h
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 %i.h, i64 %.sroa.6.016, i64 %.sroa.6.016, ptr nonnull align 8 @7) #16
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.j
  %.pre = load i64, ptr %i.a, align 8
  %i.n = trunc nuw i64 %.pre to i1
  br i1 %i.n, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.c, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.a, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.n, label %bb.o

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.d, %bb.a, %bb.k
  %.sroa.07.0 = phi ptr [ %i.q, %bb.k ], [ null, %bb.a ], [ null, %bb.m ], [ @5, %bb.d ]
  ret ptr %.sroa.07.0

bb.l:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c)
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.g
  %.sroa.0.127 = phi ptr [ %i.m, %.thread ], [ %.sroa.0.017, %bb.l ], [ %.sroa.0.017, %bb.g ]
  %.sroa.6.126 = phi i64 [ %i.l, %.thread ], [ %.sroa.6.016, %bb.l ], [ %.sroa.6.016, %bb.g ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.6.126, 0
  br i1 %i.r, label %.loopexit, label %bb.b

bb.n:                                             ; preds = %bb.h
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c) #13
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments23as_statically_known_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.a) #12 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr nonnull %i.d, i64 %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrECsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr %i.g, ptr %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8
  %.not.i.i = icmp eq i8 %i.d, -1
  br i1 %.not.i.i, label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB2_8ToTokens9to_tokensB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB2_8ToTokens9to_tokensB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB2_8ToTokens9to_tokensB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens17into_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i, label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i, label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB2_8ToTokens9to_tokensB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw11constructorNtNtNtB7_10pyfunction9signature9SignatureENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB2_8ToTokens9to_tokensB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB2_8ToTokens9to_tokensB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens17into_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load i64, ptr %1, align 8
  %.not.i.i.i = icmp eq i64 %i.b, -1
  br i1 %.not.i.i.i, label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw11constructorNtNtNtB7_10pyfunction9signature9SignatureENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw3newNtBI_25NewImplTypeAttributeValueEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw3newNtB1e_25NewImplTypeAttributeValueEENtB2_8ToTokens9to_tokensB1g_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw3newNtB5_25NewImplTypeAttributeValueENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 4 %i.e, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw3newNtB1e_25NewImplTypeAttributeValueEENtB2_8ToTokens9to_tokensB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw3newNtB1e_25NewImplTypeAttributeValueEENtB2_8ToTokens9to_tokensB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
end_hunk_0
