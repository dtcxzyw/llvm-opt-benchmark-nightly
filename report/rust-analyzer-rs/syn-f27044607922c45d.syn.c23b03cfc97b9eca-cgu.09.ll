Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syn-f27044607922c45d.syn.c23b03cfc97b9eca-cgu.09?download=true
inline.NumInlined: 61
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvMsjf_NtCsgFSQ9XOTBNe_3syn5tokenNtB7_5Paren8surroundNCNvXsw_NtNtB9_4expr8printingNtB11_9ExprTupleNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens0EB9_:bb.a
bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token10UnderscoreNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token2GtNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token2LtNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token3AndNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token3DotNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token3MutNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXNtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB2_9IntoSpansBr_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token5BraceNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @_RNvXs5_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB5_9IntoSpansNtNtBw_5extra9DelimSpanE10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.a, i32 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token5BraceNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanEB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @_RNvXs6_NtCsgFSQ9XOTBNe_3syn4spanNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanINtB5_9IntoSpansBu_E10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token5ColonNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token5CommaNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtCsgFSQ9XOTBNe_3syn5token5GroupNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXNtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB2_9IntoSpansBr_E10into_spans(i32 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token5ParenNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @_RNvXs5_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB5_9IntoSpansNtNtBw_5extra9DelimSpanE10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.a, i32 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token5ParenNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanEB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @_RNvXs6_NtCsgFSQ9XOTBNe_3syn4spanNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanINtB5_9IntoSpansBu_E10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtCsgFSQ9XOTBNe_3syn5token6DotDotNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvXs0_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB5_9IntoSpansABu_j2_E10into_spans(i32 %0)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token7BracketNtCs1K5DUQUZc67_11proc_macro24SpanEB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @_RNvXs5_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB5_9IntoSpansNtNtBw_5extra9DelimSpanE10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.a, i32 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token7BracketNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanEB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @_RNvXs6_NtCsgFSQ9XOTBNe_3syn4spanNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanINtB5_9IntoSpansBu_E10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCsgFSQ9XOTBNe_3syn5token8DotDotEqANtCs1K5DUQUZc67_11proc_macro24Spanj3_EB4_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @_RNvXs4_NtCsgFSQ9XOTBNe_3syn4spanANtCs1K5DUQUZc67_11proc_macro24Spanj3_INtB5_9IntoSpansBu_E10into_spans(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtNtCs1K5DUQUZc67_11proc_macro25probe15proc_macro_span7subspanINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEECsgFSQ9XOTBNe_3syn(ptr align 4 %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RINvMsP_CsiwvLk4GMN8X_10proc_macroNtB6_7Literal7subspanINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEECsgFSQ9XOTBNe_3syn(ptr align 4 %0, i64 %1, i64 %2)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXs2_NtCsgFSQ9XOTBNe_3syn5tokenNtB7_10UnderscoreNtNtB9_5parse5Parse5parse0B9_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = tail call align 8 ptr @_RNvXs3_NtCsgFSQ9XOTBNe_3syn5parseNtB5_10StepCursorNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr align 8 %1) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void @_RNvMs_NtCsgFSQ9XOTBNe_3syn6bufferNtB4_6Cursor5ident(ptr nonnull sret([40 x i8]) align 8 %i.f, ptr %i.h, ptr %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i8, ptr %i.k, align 8
  %.not = icmp eq i8 %i.l, -1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load <2 x ptr>, ptr %i.m, align 8
  %i.o = invoke zeroext i1 @_RNvXsz_Cs1K5DUQUZc67_11proc_macro2NtB5_5IdentINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eqCsgFSQ9XOTBNe_3syn(ptr nonnull align 8 %i.e, ptr nonnull align 8 @1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.e) #11
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.e)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.q = invoke i32 @_RNvMsx_Cs1K5DUQUZc67_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.r = invoke i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %i.q)
          to label %_RINvNtCsgFSQ9XOTBNe_3syn5token10UnderscoreNtCs1K5DUQUZc67_11proc_macro24SpanEB4_.exit unwind label %bb.c

_RINvNtCsgFSQ9XOTBNe_3syn5token10UnderscoreNtCs1K5DUQUZc67_11proc_macro24SpanEB4_.exit: ; preds = %bb.g
  %.sroa.0.0.insert.ext = zext i32 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.insert.ext, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.e)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgFSQ9XOTBNe_3syn5token10UnderscoreNtCs1K5DUQUZc67_11proc_macro24SpanEB4_.exit, %bb.n, %bb.m
  ret void

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

bb.k:                                             ; preds = %bb.a, %bb.e
  %i.u = call align 8 ptr @_RNvXs3_NtCsgFSQ9XOTBNe_3syn5parseNtB5_10StepCursorNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr align 8 %1) ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void @_RNvMs_NtCsgFSQ9XOTBNe_3syn6bufferNtB4_6Cursor5punct(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr %i.v, ptr %i.x)
  %i.y = load i32, ptr %i.d, align 8
  %.not12 = icmp eq i32 %i.y, -1
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load <2 x ptr>, ptr %i.z, align 8
  %i.ab = call i32 @_RNvMsu_Cs1K5DUQUZc67_11proc_macro2NtB5_5Punct7as_char(ptr nonnull align 4 %i.c)
  %i.ac = icmp eq i32 %i.ab, 95
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvMs6_NtCsgFSQ9XOTBNe_3syn5parseNtB6_10StepCursor5errorReEB8_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull @2, i64 12)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.n:                                             ; preds = %bb.l
  %i.ae = call i32 @_RNvMsu_Cs1K5DUQUZc67_11proc_macro2NtB5_5Punct4span(ptr nonnull align 4 %i.c)
  %i.af = call i32 @_RNvXs_NtCsgFSQ9XOTBNe_3syn4spanNtCs1K5DUQUZc67_11proc_macro24SpanINtB4_9IntoSpansABt_j1_E10into_spans(i32 %i.ae)
  %.sroa.03.0.insert.ext = zext i32 %i.af to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0.insert.ext, ptr %i.ag, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.aa, ptr %.sroa.24.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCshzWfHUSfYae_4core10intrinsics9cold_pathCsgFSQ9XOTBNe_3syn() unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn5token2OrNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing5punct(ptr nonnull @220, i64 1, ptr align 4 %i.a, i64 1, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn5token4PlusNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing5punct(ptr nonnull @244, i64 1, ptr align 4 %i.a, i64 1, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn5token5CommaNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing5punct(ptr nonnull @209, i64 1, ptr align 4 %i.a, i64 1, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn5token7PathSepNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing5punct(ptr nonnull @226, i64 2, ptr align 4 %i.a, i64 2, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRRNtNtCsgFSQ9XOTBNe_3syn5token5CommaNtB2_8ToTokens9to_tokensBE_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing5punct(ptr nonnull @209, i64 1, ptr align 4 %i.b, i64 1, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRRNtNtCsgFSQ9XOTBNe_3syn5token7PathSepNtB2_8ToTokens9to_tokensBE_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing5punct(ptr nonnull @226, i64 2, ptr align 4 %i.b, i64 2, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs10_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_5AsyncNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr nofree readnone align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @3, i64 5)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXs12_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_5AsyncNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr nofree readnone align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs14_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_5AsyncNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing7keyword(ptr nonnull @4, i64 5, i32 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs15_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_5AsyncNtNtB8_5parse5Parse5parse(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token7parsing7keyword(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull @4, i64 5)
  call void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro24SpanNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #13
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token5AsyncNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @6) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs16_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_5AsyncNtB6_5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvNtNtCsgFSQ9XOTBNe_3syn5token7parsing12peek_keyword(ptr %0, ptr %1, ptr nonnull @4, i64 5)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs16_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_5AsyncNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @7, i64 7 }
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXs18_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_4AutoNtNtCshzWfHUSfYae_4core7default7Default7default() unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1B_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_6BecomeNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token8printing7keyword(ptr nonnull @8, i64 6, i32 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1C_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_6BecomeNtNtB8_5parse5Parse5parse(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCsgFSQ9XOTBNe_3syn5token7parsing7keyword(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull @8, i64 6)
  call void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro24SpanNtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #13
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token6BecomeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1j_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @6) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1D_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_6BecomeNtB6_5Token4peek(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvNtNtCsgFSQ9XOTBNe_3syn5token7parsing12peek_keyword(ptr %0, ptr %1, ptr nonnull @8, i64 6)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs1D_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_6BecomeNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @9, i64 8 }
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXs1F_NtCsgFSQ9XOTBNe_3syn5tokenNtB6_3BoxNtNtCshzWfHUSfYae_4core7default7Default7default() unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1G_NtCshzWfHUSfYae_4core3fmtTNtNtCsgFSQ9XOTBNe_3syn5token2AsNtCs1K5DUQUZc67_11proc_macro25IdentENtB6_5Debug3fmtBA_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1, ptr nonnull inttoptr (i64 1 to ptr), i64 0)
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr nonnull align 8 %i.c, ptr nonnull %i.b, ptr nonnull align 8 @10) ; 0 uses
end_hunk_0
