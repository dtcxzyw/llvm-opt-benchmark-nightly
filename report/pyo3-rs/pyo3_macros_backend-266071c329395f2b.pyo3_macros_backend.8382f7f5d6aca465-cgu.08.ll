Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.08?download=true
inline.NumInlined: 78
inline.NumDeleted: 14
begin_hunk_0_@_RNvXs0_NtNtCskKLDkoKarTP_4core5array4iterANtCs3FigHW6Y7TR_11proc_macro211TokenStreamj6_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.36, i64 192, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs15_Cs3FigHW6Y7TR_11proc_macro2NtB6_5IdentNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXsG_NtCs3FigHW6Y7TR_11proc_macro23impNtB5_5IdentNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs2_NtCs3FigHW6Y7TR_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3FigHW6Y7TR_11proc_macro23imp5IdentEBF_(ptr nonnull align 8 %i.a) #18
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_13SignatureItemNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature21SignatureItemArgumentENtB5_8ToTokens9to_tokensB1g_(ptr nonnull align 8 %i.b, ptr align 8 %1)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvXscE_NtCs1QQTzni0HOp_3syn5tokenNtB6_5SlashNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.c, ptr align 8 %1)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.d, ptr align 8 %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.e, ptr align 8 %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsq_NtCs4yLFsuhaAhE_5quote9to_tokensNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.f, ptr align 8 %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.g, ptr align 8 %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.h, ptr align 8 %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXsq_NtCs4yLFsuhaAhE_5quote9to_tokensNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.i, ptr align 8 %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtCsbi23obv45GP_19pyo3_macros_backend6pyimpl18get_cfg_attributes0INtB7_5FnMutTRRNtNtCs1QQTzni0HOp_3syn4attr9AttributeEE8call_mutBU_(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = tail call align 8 ptr @_RNvMNtCs1QQTzni0HOp_3syn4attrNtB2_9Attribute4path(ptr align 8 %.val)
  %i.b = tail call zeroext i1 @_RINvMs_NtCs1QQTzni0HOp_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.a, ptr nonnull @24, i64 3)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_21SignatureItemArgumentNtNtCs1QQTzni0HOp_3syn5parse5Parse5parse(ptr sret([224 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [176 x i8], align 8               ; 2 uses
  %i.g = alloca [176 x i8], align 8               ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.3 = alloca [168 x i8], align 8           ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 3 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtCs3FigHW6Y7TR_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.o, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCs3FigHW6Y7TR_11proc_macro25IdentNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o) #20
  %i.r = load i64, ptr %i.p, align 8
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature21SignatureItemArgumentNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB28_EE13from_residualBQ_(ptr sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @174) #20
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = invoke zeroext i1 @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ColonNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.q, %bb.e
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ae, %bb.q ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.q) #18
          to label %bb.ag unwind label %bb.af

bb.e:                                             ; preds = %.invoke, %bb.ad, %bb.m, %bb.l, %bb.i, %bb.g, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr align 8 %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f, %bb.p
  %.sink = phi ptr [ %i.ad, %bb.p ], [ null, %bb.f ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sink, ptr %.sroa.2.0..sroa_idx, align 8
  %i.w = invoke zeroext i1 @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.r unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token5ColonNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.x, -1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %.invoke

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.y, align 8
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationEB10_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr align 8 %1)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.n unwind label %bb.e

bb.n:                                             ; preds = %bb.m
  %i.z = load i64, ptr %i.k, align 8
  %.not20.a = icmp eq i64 %i.z, -1
  br i1 %.not20.a, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.o
  %i.aa = phi ptr [ %i.c, %bb.o ], [ %i.b, %bb.k ]
  %i.ab = phi ptr [ @172, %bb.o ], [ @173, %bb.k ]
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature21SignatureItemArgumentNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB28_EE13from_residualBQ_(ptr sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ab)
          to label %bb.ae unwind label %bb.e

bb.p:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  store i32 %.sroa.02.0.copyload, ptr %i.n, align 8
  br label %bb.h

bb.q:                                             ; preds = %.invoke23, %bb.y, %bb.x, %bb.u, %bb.s, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1QQTzni0HOp_3syn5token5ColonNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationEEEB1C_(ptr nonnull align 8 %i.n) #18
          to label %bb.d unwind label %bb.af

bb.r:                                             ; preds = %bb.h
  br i1 %i.w, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr align 8 %1)
          to label %bb.u unwind label %bb.q

bb.t:                                             ; preds = %bb.r, %bb.ab
  %.sroa.25.0 = phi i64 [ %.sroa.012.0.insert.ext, %bb.ab ], [ undef, %bb.r ]
  %.sroa.03.0 = phi i64 [ %i.ah, %bb.ab ], [ -1, %bb.r ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i64 %.sroa.25.0, ptr %0, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %.sroa.210.0..sroa_idx, align 8
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.311.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.3, i64 168, i1 false)
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token2EqNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.v unwind label %bb.q

bb.v:                                             ; preds = %bb.u
  %i.af = load i64, ptr %i.i, align 8
  %.not21 = icmp eq i64 %i.af, -1
  br i1 %.not21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %.invoke23

bb.x:                                             ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.015.0.copyload = load i32, ptr %i.ag, align 8
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.f, ptr align 8 %1)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %bb.y
  %i.ah = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.ai, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  br label %.invoke23

.invoke23:                                        ; preds = %bb.w, %bb.aa
  %i.ak = phi ptr [ %i.e, %bb.aa ], [ %i.d, %bb.w ]
  %i.al = phi ptr [ @170, %bb.aa ], [ @171, %bb.w ]
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature21SignatureItemArgumentNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB28_EE13from_residualBQ_(ptr sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.al)
          to label %bb.ad unwind label %bb.q

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(168) %i.aj, i64 168, i1 false)
  %.sroa.012.0.insert.ext = zext i32 %.sroa.015.0.copyload to i64
  br label %bb.t

bb.ac:                                            ; preds = %bb.ae, %bb.t, %bb.b
  ret void

bb.ad:                                            ; preds = %.invoke23
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1QQTzni0HOp_3syn5token5ColonNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationEEEB1C_(ptr nonnull align 8 %i.n)
          to label %bb.ae unwind label %bb.e

bb.ae:                                            ; preds = %.invoke, %bb.ad
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.q)
  br label %bb.ac

bb.af:                                            ; preds = %bb.q, %bb.d
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ag:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_21SignatureItemArgumentNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_RNvXsq_NtCs4yLFsuhaAhE_5quote9to_tokensNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.a, ptr align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RNvXsao_NtCs1QQTzni0HOp_3syn5tokenNtB6_5ColonNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.d, ptr align 8 %1)
  tail call void @_RNvXNtNtCs1QQTzni0HOp_3syn3lit8printingNtB4_6LitStrNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.b, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not1 = icmp eq i64 %i.f, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXsaQ_NtCs1QQTzni0HOp_3syn5tokenNtB6_2EqNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %0, ptr align 8 %1)
  tail call void @_RNvXsP_NtCs1QQTzni0HOp_3syn4exprNtB5_4ExprNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.e, ptr align 8 %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_23SignatureItemVarargsSepNtNtCs1QQTzni0HOp_3syn5parse5Parse5parse(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4StarEB8_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token4StarNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #20
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemVarargsSepNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2a_EE13from_residualBQ_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @175) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.copyload, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_23SignatureItemVarargsSepNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 4 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 4 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_20SignatureItemVarargsNtNtCs1QQTzni0HOp_3syn5parse5Parse5parse(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemVarargsSepEB10_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemVarargsSepNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l) #20
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature20SignatureItemVarargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB27_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @179) #20
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 8
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtCs3FigHW6Y7TR_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCs3FigHW6Y7TR_11proc_macro25IdentNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i) #20
  %i.p = load i64, ptr %i.j, align 8
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature20SignatureItemVarargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB27_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @178) #20
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.s = invoke zeroext i1 @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ColonNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.invoke, %bb.n, %bb.m, %bb.j, %bb.h, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.k) #18
          to label %bb.u unwind label %bb.t

bb.g:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr align 8 %1)
          to label %bb.j unwind label %bb.f

bb.i:                                             ; preds = %bb.g, %bb.q
  %.sroa.03.0 = phi i64 [ %.sroa.06.0.insert.ext, %bb.q ], [ undef, %bb.g ]
  %.sroa.2.0 = phi ptr [ %i.aa, %bb.q ], [ null, %bb.g ]
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 %.sroa.03.0, ptr %0, align 8
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0, ptr %.sroa.02.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.0.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token5ColonNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.u = load i64, ptr %i.h, align 8
  %.not11 = icmp eq i64 %i.u, -1
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %.invoke

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.08.0.copyload = load i32, ptr %i.v, align 8
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationEB10_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %1)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %bb.n
  %i.w = load i64, ptr %i.f, align 8
  %.not12 = icmp eq i64 %i.w, -1
  br i1 %.not12, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %bb.p
  %i.x = phi ptr [ %i.d, %bb.p ], [ %i.c, %bb.l ]
  %i.y = phi ptr [ @176, %bb.p ], [ @177, %bb.l ]
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature20SignatureItemVarargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB27_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.y)
          to label %bb.s unwind label %bb.f

bb.q:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %.sroa.06.0.insert.ext = zext i32 %.sroa.08.0.copyload to i64
  br label %bb.i

bb.r:                                             ; preds = %bb.s, %bb.i, %bb.d, %bb.b
  ret void

bb.s:                                             ; preds = %.invoke
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.k)
  br label %bb.r

bb.t:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.u:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_20SignatureItemVarargsNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.a, ptr align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsq_NtCs4yLFsuhaAhE_5quote9to_tokensNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.b, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtCs3FigHW6Y7TR_11proc_macro25IdentINtB7_9PartialEqRReE2eqCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call zeroext i1 @_RNvXsz_Cs3FigHW6Y7TR_11proc_macro2NtB5_5IdentINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eqCs1QQTzni0HOp_3syn(ptr align 8 %i.a, ptr align 8 %i.b)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtCs3FigHW6Y7TR_11proc_macro25IdentNtB7_9PartialEq2neCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call zeroext i1 @_RNvXsy_Cs3FigHW6Y7TR_11proc_macro2NtB5_5IdentNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr align 8 %i.a, ptr align 8 %i.b)
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_19SignatureItemKwargsNtNtCs1QQTzni0HOp_3syn5parse5Parse5parse(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4StarEB8_(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token4StarNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o) #20
  %i.q = load i64, ptr %i.p, align 8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature19SignatureItemKwargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @184) #20
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.03.0.copyload = load i32, ptr %i.r, align 8
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4StarEB8_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token4StarNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m) #20
  %i.s = load i64, ptr %i.n, align 8
  %.not14 = icmp eq i64 %i.s, -1
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature19SignatureItemKwargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @183) #20
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.04.0.copyload = load i32, ptr %i.t, align 8
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtCs3FigHW6Y7TR_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCs3FigHW6Y7TR_11proc_macro25IdentNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j) #20
  %i.u = load i64, ptr %i.k, align 8
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature19SignatureItemKwargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @182) #20
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.x = invoke zeroext i1 @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ColonNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.invoke, %bb.p, %bb.o, %bb.l, %bb.j, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.l) #18
          to label %bb.w unwind label %bb.v

bb.i:                                             ; preds = %bb.g
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr align 8 %1)
          to label %bb.l unwind label %bb.h

bb.k:                                             ; preds = %bb.i, %bb.s
  %.sroa.05.0 = phi i64 [ %.sroa.09.0.insert.ext, %bb.s ], [ undef, %bb.i ]
  %.sroa.27.0 = phi ptr [ %i.af, %bb.s ], [ null, %bb.i ]
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 %.sroa.05.0, ptr %0, align 8
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.0, ptr %.sroa.02.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.03.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.04.0.copyload, ptr %.sroa.3.0..sroa_idx, align 4
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCs1QQTzni0HOp_3syn5token5ColonNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.i, align 8
  %.not15 = icmp eq i64 %i.z, -1
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %.invoke

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.011.0.copyload = load i32, ptr %i.aa, align 8
  invoke void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationEB10_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr align 8 %1)
          to label %bb.p unwind label %bb.h

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature16PyTypeAnnotationNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %bb.p
  %i.ab = load i64, ptr %i.g, align 8
  %.not16 = icmp eq i64 %i.ab, -1
  br i1 %.not16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.r
  %i.ac = phi ptr [ %i.e, %bb.r ], [ %i.d, %bb.n ]
  %i.ad = phi ptr [ @180, %bb.r ], [ @181, %bb.n ]
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature19SignatureItemKwargsNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualBQ_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad)
          to label %bb.u unwind label %bb.h

bb.s:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %.sroa.09.0.insert.ext = zext i32 %.sroa.011.0.copyload to i64
  br label %bb.k

bb.t:                                             ; preds = %bb.u, %bb.k, %bb.f, %bb.d, %bb.b
  ret void

bb.u:                                             ; preds = %.invoke
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.l)
  br label %bb.t

bb.v:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.w:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_19SignatureItemKwargsNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.a, ptr align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.b, ptr align 8 %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsq_NtCs4yLFsuhaAhE_5quote9to_tokensNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.c, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsK_Cs3FigHW6Y7TR_11proc_macro2NtB5_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvXsz_NtCs3FigHW6Y7TR_11proc_macro23impNtB5_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs2_NtCs3FigHW6Y7TR_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3FigHW6Y7TR_11proc_macro23imp11TokenStreamEBF_(ptr nonnull align 8 %i.a) #18
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_RNvXsN_Cs3FigHW6Y7TR_11proc_macro2NtB5_4SpanNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsT_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_15PythonSignatureNtNtCskKLDkoKarTP_4core7default7Default7defaultB9_(ptr noalias nofree nonnull writeonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core7default7Default7defaultCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.e)
  invoke void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprENtNtCskKLDkoKarTP_4core7default7Default7defaultCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.e ], [ %i.f, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.e) #18
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_7default7Default7defaultCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.c)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.g, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d) #18
          to label %bb.b unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEENtNtB16_7default7Default7defaultCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.b)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.h, %bb.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1QQTzni0HOp_3syn(ptr nonnull align 8 %i.c) #18
          to label %bb.e unwind label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_7default7Default7defaultCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b) #18
          to label %bb.h unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtCs1QQTzni0HOp_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated12IterMutTraitNtNtB6_4data5FieldEp4ItemQB1g_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr align 8 %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
end_hunk_0
