Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/derive_where-6567573bf0f58ec7.derive_where.3c4b0b299126a9ae-cgu.07?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [72 x i8] c"internal error: entered unreachable code: enum variants cannot be unions", align 1, !guid !4
@1 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/derive-where-1.6.1/src/trait_/common_ord.rs\00", align 1, !guid !4
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00\82\01\00\00\22\00\00\00" }>, align 8, !guid !4
@3 = private unnamed_addr constant [4 x i8] c"core", align 1, !guid !4
@4 = private unnamed_addr constant [3 x i8] c"cmp", align 1, !guid !4
@5 = private unnamed_addr constant [8 x i8] c"Ordering", align 1, !guid !4
@6 = private unnamed_addr constant [5 x i8] c"Equal", align 1, !guid !4
@7 = private unnamed_addr constant [6 x i8] c"option", align 1, !guid !4
@8 = private unnamed_addr constant [6 x i8] c"Option", align 1, !guid !4
@9 = private unnamed_addr constant [4 x i8] c"Some", align 1, !guid !4
@10 = private unnamed_addr constant [11 x i8] c"partial_cmp", align 1, !guid !4
@11 = private unnamed_addr constant [5 x i8] c"match", align 1, !guid !4
@12 = private unnamed_addr constant [5 x i8] c"__cmp", align 1, !guid !4
@13 = private unnamed_addr constant [74 x i8] c"internal error: entered unreachable code: unsupported trait in `build_ord`", align 1, !guid !4
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00`\01\00\00\0E\00\00\00" }>, align 8, !guid !4
@15 = private unnamed_addr constant [6 x i8] c"unsafe", align 1, !guid !4
@16 = private unnamed_addr constant [4 x i8] c"hint", align 1, !guid !4
@17 = private unnamed_addr constant [21 x i8] c"unreachable_unchecked", align 1, !guid !4
@18 = private unnamed_addr constant [4 x i8] c"self", align 1, !guid !4
@19 = private unnamed_addr constant [7 x i8] c"__other", align 1, !guid !4
@20 = private unnamed_addr constant [28 x i8] c"there should be > 1 variants", align 1, !guid !4
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00V\00\00\001\00\00\00" }>, align 8, !guid !4
@22 = private unnamed_addr constant [2 x i8] c"if", align 1, !guid !4
@23 = private unnamed_addr constant [7 x i8] c"matches", align 1, !guid !4
@24 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !4
@25 = private unnamed_addr constant [4 x i8] c"else", align 1, !guid !4
@26 = private unnamed_addr constant [98 x i8] c"internal error: entered unreachable code: we should only generate this code with multiple variants", align 1, !guid !4
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00\91\00\00\00\1D\00\00\00" }>, align 8, !guid !4
@28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !4
@29 = private unnamed_addr constant [5 x i8] c"clone", align 1, !guid !4
@30 = private unnamed_addr constant [2 x i8] c"as", align 1, !guid !4
@31 = private unnamed_addr constant [9 x i8] c"primitive", align 1, !guid !4
@32 = private unnamed_addr constant [5 x i8] c"isize", align 1, !guid !4
@33 = private unnamed_addr constant [5 x i8] c"const", align 1, !guid !4
@34 = private unnamed_addr constant [4 x i8] c"from", align 1, !guid !4
@35 = private unnamed_addr constant [4 x i8] c"cast", align 1, !guid !4
@36 = private unnamed_addr constant [3 x i8] c"let", align 1, !guid !4
@37 = private unnamed_addr constant [11 x i8] c"__self_disc", align 1, !guid !4
@38 = private unnamed_addr constant [3 x i8] c"mem", align 1, !guid !4
@39 = private unnamed_addr constant [12 x i8] c"discriminant", align 1, !guid !4
@40 = private unnamed_addr constant [12 x i8] c"__other_disc", align 1, !guid !4
@41 = private unnamed_addr constant [76 x i8] c"internal error: entered unreachable code: unsupported trait in `prepare_ord`", align 1, !guid !4
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00p\00\00\00\1A\00\00\00" }>, align 8, !guid !4
@43 = private unnamed_addr constant [6 x i8] c"return", align 1, !guid !4
@44 = private unnamed_addr constant [2 x i8] c"fn", align 1, !guid !4
@45 = private unnamed_addr constant [14 x i8] c"__discriminant", align 1, !guid !4
@46 = private unnamed_addr constant [6 x i8] c"__this", align 1, !guid !4
@47 = private unnamed_addr constant [1 x i8] c"0", align 1, !guid !4
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00'\01\00\00\1E\00\00\00" }>, align 8, !guid !4
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00'\01\00\00B\00\00\00" }>, align 8, !guid !4
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00)\01\00\00\16\00\00\00" }>, align 8, !guid !4
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00\1F\01\00\00\1E\00\00\00" }>, align 8, !guid !4
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00\1F\01\00\00S\00\00\00" }>, align 8, !guid !4
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00!\01\00\00\16\00\00\00" }>, align 8, !guid !4
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00\15\01\00\00.\00\00\00" }>, align 8, !guid !4
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"p\00\00\00\00\00\00\00\18\01\00\00\15\00\00\00" }>, align 8, !guid !4

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord19build_ord_signature0B7_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 !guid !7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call ptr %i.e(ptr %i.a) #6
  %i.g = load i8, ptr %i.f, align 1
  %i.h = tail call zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data8is_empty(ptr align 8 %1, i8 %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15is_incomparable(ptr align 8 %1)
  %i.j = xor i1 %i.i, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord24build_discriminant_order0B7_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [176 x i8], align 8               ; 4 uses
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %i.e, i64 176, i1 false)
  %i.f = invoke align 8 ptr @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data12self_pattern(ptr align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.c ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.c) #7
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn3pat3PatNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #7
          to label %bb.b unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.a)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs0_NtCslCbDOIcU2Dw_5quote9to_tokensINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtB5_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.c)
  ret void

bb.j:                                             ; preds = %bb.f, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord26build_incomparable_patterns_0B7_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 408
  store ptr %i.i, ptr %i.h, align 8
  %i.j = tail call { i64, ptr } @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11simple_type(ptr align 8 %2)
  %i.k = extractvalue { i64, ptr } %i.j, 0
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4path4PathNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4path4PathNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.d)
          to label %bb.r unwind label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.l = tail call { ptr, ptr } @_RNvMs2_NtCshzWfHUSfYae_4core3fmtNtB5_9Arguments17from_str_nonconstCs5aWdnx8MJVa_12derive_where(ptr nonnull @0, i64 72) #6 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr %i.m, ptr %i.n, ptr nonnull align 8 @2) #9
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4path4PathNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.a)
          to label %bb.m unwind label %bb.v

bb.g:                                             ; preds = %bb.k, %bb.h
  %.pn2 = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.p, %bb.k ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.g) #7
          to label %bb.o unwind label %bb.n

bb.h:                                             ; preds = %bb.l, %bb.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.c
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_dot2(ptr nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.e) #7
          to label %bb.g unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.g, i8 1, ptr nonnull align 8 %i.f)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l, %bb.f, %bb.u
  %.sink = phi ptr [ %i.d, %bb.u ], [ %i.a, %bb.f ], [ %i.g, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  ret void

bb.n:                                             ; preds = %bb.v, %bb.t, %bb.p, %bb.k, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.o:                                             ; preds = %bb.v, %bb.p, %bb.g
  %.pn2.pn = phi { ptr, i32 } [ %.pn2, %bb.g ], [ %.pn, %bb.p ], [ %i.t, %bb.v ]
  resume { ptr, i32 } %.pn2.pn

bb.p:                                             ; preds = %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %i.r, %bb.q ], [ %i.s, %bb.t ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.d) #7
          to label %bb.o unwind label %bb.n

bb.q:                                             ; preds = %bb.u, %bb.r, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.d
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_dot2(ptr nonnull align 8 %i.b)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.b) #7
          to label %bb.p unwind label %bb.n

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.d, i8 0, ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %bb.q

bb.v:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #7
          to label %bb.o unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord14build_ord_body(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, ptr nofree readonly align 8 captures(none) %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !10 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = alloca [64 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [64 x i8], align 8                ; 2 uses
  %i.o = alloca [64 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 2 uses
  %i.v = alloca [32 x i8], align 8                ; 12 uses
  %i.w = alloca [32 x i8], align 8                ; 3 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 11 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !nonnull !5
  call void %i.ac(ptr nonnull sret([48 x i8]) align 8 %i.aa, ptr %1) #6
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.y)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.n, %bb.e, %bb.c
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.n ], [ %i.ad, %bb.c ], [ %i.ae, %bb.e ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.aa) #7
          to label %bb.cl unwind label %bb.w

bb.c:                                             ; preds = %bb.bh, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.y)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.y) #7
          to label %bb.b unwind label %bb.w

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.y, ptr nonnull @3, i64 4)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.y)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.y, ptr nonnull @4, i64 3)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.y)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.y, ptr nonnull @5, i64 8)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.y)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.y, ptr nonnull @6, i64 5)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5 ; 3 uses
  %i.ah = invoke ptr %i.ag(ptr %1)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.aq, %bb.ap, %bb.am, %bb.y, %bb.u, %bb.o
  %.pn10 = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %.pn7.pn, %bb.aq ], [ %i.al, %bb.u ], [ %i.aq, %bb.ap ], [ %i.ap, %bb.am ], [ %.pn, %bb.y ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.z) #7
          to label %bb.b unwind label %bb.w

bb.o:                                             ; preds = %bb.cj, %bb.bg, %bb.an, %bb.s, %bb.r, %bb.q, %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %i.ah, align 1
  switch i8 %i.aj, label %bb.q [
    i8 6, label %bb.r
    i8 8, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ak = invoke { ptr, ptr } @_RNvMs2_NtCshzWfHUSfYae_4core3fmtNtB5_9Arguments17from_str_nonconstCs5aWdnx8MJVa_12derive_where(ptr nonnull @13, i64 74)
          to label %bb.cj unwind label %bb.o      ; 2 uses

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.r)
          to label %bb.t unwind label %bb.o

bb.s:                                             ; preds = %bb.p
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.v)
          to label %bb.x unwind label %bb.o

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @4, i64 3)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.r) #7
          to label %bb.n unwind label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.ao
  %.sink = phi ptr [ %i.s, %bb.ao ], [ %i.r, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.p)
          to label %bb.as unwind label %bb.ar

bb.w:                                             ; preds = %bb.bx, %bb.br, %bb.bk, %.loopexit.split-lp, %bb.at, %bb.aq, %bb.ap, %bb.aj, %bb.y, %bb.u, %bb.n, %bb.e, %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.x:                                             ; preds = %bb.s
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.v)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.aj, %bb.z
  %.pn = phi { ptr, i32 } [ %i.an, %bb.z ], [ %i.ao, %bb.aj ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.v) #7
          to label %bb.n unwind label %bb.w

bb.z:                                             ; preds = %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.v, ptr nonnull @3, i64 4)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.v)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.v, ptr nonnull @7, i64 6)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.v)
          to label %bb.ae unwind label %bb.z

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.v, ptr nonnull @8, i64 6)
          to label %bb.af unwind label %bb.z

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.v)
          to label %bb.ag unwind label %bb.z

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.v, ptr nonnull @9, i64 4)
          to label %bb.ah unwind label %bb.z

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.t)
          to label %bb.ai unwind label %bb.z

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.t)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.t) #7
          to label %bb.y unwind label %bb.w

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.v, i8 0, ptr nonnull align 8 %i.u)
          to label %bb.al unwind label %bb.z

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.z)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  br label %bb.n

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.s)
          to label %bb.ao unwind label %bb.o

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.s, ptr nonnull @10, i64 11)
          to label %bb.v unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.s) #7
          to label %bb.n unwind label %bb.w

bb.aq:                                            ; preds = %.loopexit.split-lp, %bb.at, %bb.ar
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %.loopexit.split-lp ], [ %i.as, %bb.at ], [ %i.ar, %bb.ar ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.x) #7
          to label %bb.n unwind label %bb.w

bb.ar:                                            ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.v
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.p)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.p) #7
          to label %bb.aq unwind label %bb.w

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.at = invoke ptr %i.ag(ptr %1)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch, %bb.bk
  %.pn7 = phi { ptr, i32 } [ %i.bd, %bb.ch ], [ %.pn5, %bb.bk ], [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.q) #7
          to label %bb.aq unwind label %bb.w

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %i.au = load i8, ptr %i.at, align 1
  invoke void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15iter_self_ident(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr align 8 %3, i8 %i.au)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1G_NtB1G_4Data11iter_fields0ENCNvB2w_15iter_self_ident0ENtNtNtB9_6traits8iterator8Iterator3revB1I_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.av = invoke ptr %i.ag(ptr %1)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.aw = load i8, ptr %i.av, align 1
  invoke void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data16iter_other_ident(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr align 8 %3, i8 %i.aw)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1G_NtB1G_4Data11iter_fields0ENCNvB2w_16iter_other_ident0ENtNtNtB9_6traits8iterator8Iterator3revB1I_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtB8_3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1X_NtB1X_4Data11iter_fields0ENCNvB2N_15iter_self_ident0EENtNtNtBa_6traits8iterator8Iterator3zipIB4_IBS_B17_NCNvB2N_16iter_other_ident0EEEB1Z_(ptr nonnull sret([64 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3zip3ZipINtNtBQ_3rev3RevINtNtBQ_3map3MapINtNtBQ_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB2y_NtB2y_4Data11iter_fields0ENCNvB3o_15iter_self_ident0EEIB1d_IB1t_B1I_NCNvB3o_16iter_other_ident0EEENtB2_12IntoIterator9into_iterB2A_(ptr nonnull sret([64 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ci, %bb.bc
  %i.ax = invoke { ptr, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevINtNtB6_3map3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB2h_NtB2h_4Data11iter_fields0ENCNvB37_15iter_self_ident0EEIBW_IB1c_B1r_NCNvB37_16iter_other_ident0EEENtNtNtB8_6traits8iterator8Iterator4nextB2j_(ptr nonnull align 8 %i.i)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0      ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.az = extractvalue { ptr, ptr } %i.ax, 1
  store ptr %i.ay, ptr %i.h, align 8, !captures !6
  store ptr %i.az, ptr %i.g, align 8, !captures !6
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.x)
          to label %bb.bh unwind label %bb.o

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.z)
          to label %bb.bi unwind label %bb.c

bb.bi:                                            ; preds = %bb.bh
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.aa)
  ret void

bb.bj:                                            ; preds = %bb.bf
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.e, ptr nonnull @11, i64 5)
          to label %bb.bm unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bx, %bb.br, %bb.bl
  %.pn5 = phi { ptr, i32 } [ %i.ba, %bb.bl ], [ %i.bc, %bb.bx ], [ %i.bb, %bb.br ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.e) #7
          to label %.loopexit.split-lp unwind label %bb.w

bb.bl:                                            ; preds = %bb.cf, %bb.bv, %bb.bu, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bj
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bm:                                            ; preds = %bb.bj
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.e)
          to label %bb.bn unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.e)
          to label %bb.bo unwind label %bb.bl

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.e)
          to label %bb.bp unwind label %bb.bl

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.bq unwind label %bb.bl

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.c)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bs, %bb.bq
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.c) #7
          to label %bb.bk unwind label %bb.w

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.c)
          to label %bb.bt unwind label %bb.br

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.c)
          to label %bb.bu unwind label %bb.br

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 0, ptr nonnull align 8 %i.d)
          to label %bb.bv unwind label %bb.bl

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.bw unwind label %bb.bl

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.a)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #7
          to label %bb.bk unwind label %bb.w

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.a)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.a)
          to label %bb.ca unwind label %bb.bx

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.a)
          to label %bb.cb unwind label %bb.bx

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @12, i64 5)
          to label %bb.cc unwind label %bb.bx

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.a)
          to label %bb.cd unwind label %bb.bx

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @12, i64 5)
          to label %bb.ce unwind label %bb.bx

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.a)
          to label %bb.cf unwind label %bb.bx

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 1, ptr nonnull align 8 %i.b)
          to label %bb.cg unwind label %bb.bl

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.q)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %.loopexit.split-lp

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.bd

bb.cj:                                            ; preds = %bb.q
  %i.be = extractvalue { ptr, ptr } %i.ak, 0
  %i.bf = extractvalue { ptr, ptr } %i.ak, 1
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr %i.be, ptr %i.bf, ptr nonnull align 8 @14) #10
          to label %bb.ck unwind label %bb.o

bb.ck:                                            ; preds = %bb.cj
  unreachable

bb.cl:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord19build_ord_signature(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3, ptr %4, ptr align 8 %5, ptr align 8 %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !11 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 33 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [32 x i8], align 8                ; 19 uses
  %i.v = alloca [32 x i8], align 8                ; 2 uses
  %i.w = alloca [32 x i8], align 8                ; 2 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 2 uses
  %i.z = alloca [32 x i8], align 8                ; 19 uses
  %i.aa = alloca [32 x i8], align 8               ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 11 uses
  %i.ac = alloca [32 x i8], align 8               ; 2 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [8 x i8], align 8                ; 3 uses
  %i.af = alloca [32 x i8], align 8               ; 2 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 2 uses
  %i.ai = alloca [32 x i8], align 8               ; 19 uses
  %i.aj = alloca [32 x i8], align 8               ; 2 uses
  %i.ak = alloca [32 x i8], align 8               ; 2 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 2 uses
  %i.an = alloca [32 x i8], align 8               ; 19 uses
  %i.ao = alloca [32 x i8], align 8               ; 2 uses
  %i.ap = alloca [32 x i8], align 8               ; 11 uses
  %i.aq = alloca [32 x i8], align 8               ; 2 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 2 uses
  %i.au = alloca [32 x i8], align 8               ; 9 uses
  %i.av = alloca [32 x i8], align 8               ; 2 uses
  %i.aw = alloca [32 x i8], align 8               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 2 uses
  %i.ay = alloca [32 x i8], align 8               ; 9 uses
  %i.az = alloca [32 x i8], align 8               ; 2 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [32 x i8], align 8               ; 2 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [48 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 2 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 2 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [32 x i8], align 8               ; 2 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [8 x i8], align 8                ; 7 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [32 x i8], align 8               ; 2 uses
  %i.bo = alloca [32 x i8], align 8               ; 14 uses
  %i.bp = alloca [32 x i8], align 8               ; 2 uses
  %i.bq = alloca [32 x i8], align 8               ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 2 uses
  %i.bs = alloca [32 x i8], align 8               ; 14 uses
  %i.bt = alloca [32 x i8], align 8               ; 2 uses
  %i.bu = alloca [32 x i8], align 8               ; 8 uses
  %i.bv = alloca [32 x i8], align 8               ; 2 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [48 x i8], align 8               ; 5 uses
  %i.by = alloca [32 x i8], align 8               ; 12 uses
  %i.bz = alloca [32 x i8], align 8               ; 2 uses
  %i.ca = alloca [32 x i8], align 8               ; 12 uses
  %i.cb = alloca [32 x i8], align 8               ; 2 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [32 x i8], align 8               ; 2 uses
  %i.ce = alloca [32 x i8], align 8               ; 7 uses
  %i.cf = alloca [32 x i8], align 8               ; 7 uses
  %i.cg = alloca [32 x i8], align 8               ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 4 uses
  %i.ci = alloca [32 x i8], align 8               ; 10 uses
  %i.cj = alloca [48 x i8], align 8               ; 10 uses
  %i.ck = alloca [32 x i8], align 8               ; 13 uses
  %i.cl = alloca [32 x i8], align 8               ; 2 uses
  %i.cm = alloca [32 x i8], align 8               ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 2 uses
  %i.co = alloca [32 x i8], align 8               ; 6 uses
  %i.cp = alloca [32 x i8], align 8               ; 2 uses
  %i.cq = alloca [32 x i8], align 8               ; 2 uses
  %i.cr = alloca [32 x i8], align 8               ; 3 uses
  %i.cs = alloca [32 x i8], align 8               ; 5 uses
  %i.ct = alloca [32 x i8], align 8               ; 3 uses
  %i.cu = alloca [32 x i8], align 8               ; 2 uses
  %i.cv = alloca [32 x i8], align 8               ; 2 uses
  %i.cw = alloca [32 x i8], align 8               ; 4 uses
  %i.cx = alloca [32 x i8], align 8               ; 2 uses
  %i.cy = alloca [32 x i8], align 8               ; 2 uses
  %i.cz = alloca [32 x i8], align 8               ; 3 uses
  %i.da = alloca [32 x i8], align 8               ; 18 uses
  %i.db = alloca [32 x i8], align 8               ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 2 uses
  %i.dd = alloca [32 x i8], align 8               ; 3 uses
  %i.de = alloca [32 x i8], align 8               ; 4 uses
  %i.df = alloca [32 x i8], align 8               ; 2 uses
  %i.dg = alloca [32 x i8], align 8               ; 11 uses
  %i.dh = alloca [32 x i8], align 8               ; 2 uses
  %i.di = alloca [32 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 2 uses
  %i.dk = alloca [32 x i8], align 8               ; 6 uses
  %i.dl = alloca [32 x i8], align 8               ; 2 uses
  %i.dm = alloca [32 x i8], align 8               ; 20 uses
  %i.dn = alloca [32 x i8], align 8               ; 2 uses
  %i.do = alloca [32 x i8], align 8               ; 2 uses
  %i.dp = alloca [32 x i8], align 8               ; 5 uses
  %i.dq = alloca [32 x i8], align 8               ; 2 uses
  %i.dr = alloca [32 x i8], align 8               ; 5 uses
  %i.ds = alloca [16 x i8], align 8               ; 4 uses
  %i.dt = alloca [32 x i8], align 8               ; 4 uses
  %i.du = alloca [32 x i8], align 8               ; 8 uses
  %i.dv = alloca [32 x i8], align 8               ; 2 uses
  %i.dw = alloca [32 x i8], align 8               ; 6 uses
  %i.dx = alloca [32 x i8], align 8               ; 2 uses
  %i.dy = alloca [32 x i8], align 8               ; 6 uses
  %i.dz = alloca [32 x i8], align 8               ; 2 uses
  %i.ea = alloca [32 x i8], align 8               ; 10 uses
  %i.eb = alloca [32 x i8], align 8               ; 2 uses
  %i.ec = alloca [32 x i8], align 8               ; 5 uses
  %i.ed = alloca [32 x i8], align 8               ; 4 uses
  %i.ee = alloca [32 x i8], align 8               ; 8 uses
  %i.ef = alloca [32 x i8], align 8               ; 2 uses
  %i.eg = alloca [32 x i8], align 8               ; 6 uses
  %i.eh = alloca [32 x i8], align 8               ; 2 uses
  %i.ei = alloca [32 x i8], align 8               ; 6 uses
  %i.ej = alloca [16 x i8], align 8               ; 3 uses
  %i.ek = alloca [32 x i8], align 8               ; 10 uses
  %i.el = alloca [32 x i8], align 8               ; 11 uses
  %i.em = alloca [32 x i8], align 8               ; 4 uses
  %i.en = alloca [32 x i8], align 8               ; 2 uses
  %i.eo = alloca [32 x i8], align 8               ; 12 uses
  %i.ep = alloca [32 x i8], align 8               ; 3 uses
  %i.eq = alloca [32 x i8], align 8               ; 11 uses
  %i.er = alloca [32 x i8], align 8               ; 11 uses
  %i.es = alloca [8 x i8], align 8                ; 4 uses
  store ptr %6, ptr %i.es, align 8
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.eq)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eq)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.eq) #7
          to label %bb.xh unwind label %bb.ag

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eq, ptr nonnull @3, i64 4)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eq)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eq, ptr nonnull @4, i64 3)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eq)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eq, ptr nonnull @5, i64 8)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eq)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eq, ptr nonnull @6, i64 5)
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i64 32, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !invariant.load !5, !nonnull !5 ; 5 uses
  %i.ew = invoke ptr %i.ev(ptr %4)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.we, %.thread173, %.thread132, %bb.l
  %.sroa.026.0 = phi i8 [ %.sroa.026.3128, %bb.we ], [ %.sroa.026.1, %bb.l ], [ %.sroa.026.3128, %.thread173 ], [ %.sroa.026.3, %.thread132 ]
  %.pn116 = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn130, %bb.we ], [ %i.ey, %bb.l ], [ %.pn107.pn.pn.pn.pn.pn130, %.thread173 ], [ %.pn107.pn.pn.pn.pn.pn, %.thread132 ] ; 2 uses
  %i.ex = trunc nuw i8 %.sroa.026.0 to i1
  br i1 %i.ex, label %.thread, label %bb.xh

bb.l:                                             ; preds = %bb.wi, %bb.wh, %bb.wf, %bb.um, %bb.cf, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.o, %bb.n, %bb.j
  %.sroa.026.1 = phi i8 [ 1, %bb.aj ], [ 1, %bb.wi ], [ 1, %bb.wh ], [ 1, %bb.wf ], [ 1, %bb.ak ], [ %.sroa.026.9151, %bb.um ], [ 1, %bb.aw ], [ 1, %bb.cf ], [ 1, %bb.av ], [ 1, %bb.at ], [ 1, %bb.as ], [ 1, %bb.aq ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.al ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.j ]
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.ez = load i8, ptr %i.ew, align 1
  %i.fa = icmp eq i8 %i.ez, 8
  br i1 %i.fa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.eo)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.af, %bb.m
  %i.fb = invoke zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item15is_incomparable(ptr align 8 %1)
          to label %bb.ah unwind label %bb.l

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eo)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.ab, %bb.r
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.r ], [ %i.fd, %bb.ab ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.eo) #7
          to label %.thread unwind label %bb.ag

bb.r:                                             ; preds = %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eo, ptr nonnull @3, i64 4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eo)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eo, ptr nonnull @7, i64 6)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eo)
          to label %bb.w unwind label %bb.r

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eo, ptr nonnull @8, i64 6)
          to label %bb.x unwind label %bb.r

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.eo)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.eo, ptr nonnull @9, i64 4)
          to label %bb.z unwind label %bb.r

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.em)
          to label %bb.aa unwind label %bb.r

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.er, ptr nonnull align 8 %i.em)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.em) #7
          to label %bb.q unwind label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.eo, i8 0, ptr nonnull align 8 %i.en)
          to label %bb.ad unwind label %bb.r

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.er)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 32, i1 false)
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 32, i1 false)
  br label %bb.o

bb.ag:                                            ; preds = %.thread, %bb.wz, %bb.wx, %bb.wu, %bb.wo, %bb.wk, %bb.we, %bb.wd, %bb.wc, %bb.wb, %bb.vp, %bb.vj, %bb.ux, %bb.uo, %bb.uf, %bb.ub, %bb.ty, %bb.tt, %bb.tk, %bb.sw, %bb.sj, %bb.sg, %bb.rr, %bb.rg, %bb.qq, %bb.qf, %bb.qa, %bb.pu, %bb.pn, %bb.pe, %bb.pa, %bb.ou, %bb.on, %bb.oh, %bb.ny, %bb.ns, %bb.no, %bb.ni, %bb.nf, %bb.mq, %bb.mf, %bb.lp, %bb.le, %bb.kz, %bb.kt, %bb.kb, %bb.jn, %bb.jj, %bb.jd, %bb.ir, %bb.il, %bb.hx, %bb.hr, %bb.hn, %bb.hh, %bb.he, %bb.gs, %bb.gm, %bb.gj, %bb.gc, %bb.fz, %.loopexit.split-lp, %.thread163, %bb.fh, %bb.ev, %bb.ep, %bb.ed, %bb.du, %bb.dr, %bb.dk, %bb.cs, %bb.cm, %bb.ci, %bb.bz, %bb.bt, %bb.bp, %bb.bm, %bb.bc, %bb.ay, %bb.ab, %bb.q, %bb.b
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.ah:                                            ; preds = %bb.o
  br i1 %i.fb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.fg, -1
  br i1 %.not, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.el)
          to label %bb.wy unwind label %bb.l

bb.ak:                                            ; preds = %bb.am, %bb.ai
  %i.fh = invoke ptr %i.ev(ptr %4)
          to label %bb.wf unwind label %bb.l

bb.al:                                            ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.fk = invoke i64 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs5aWdnx8MJVa_12derive_where4data4DataE3lenBI_(ptr nonnull align 8 %i.fj)
          to label %bb.am unwind label %bb.l

bb.am:                                            ; preds = %bb.al
  %i.fl = icmp ugt i64 %i.fk, 1
  br i1 %i.fl, label %bb.an, label %bb.ak

bb.an:                                            ; preds = %bb.am
  %i.fm = invoke ptr %i.ev(ptr %4)
          to label %bb.ao unwind label %bb.l

bb.ao:                                            ; preds = %bb.an
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = invoke zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item8is_empty(ptr nonnull align 8 %1, i8 %i.fn)
          to label %bb.ap unwind label %bb.l

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.fo, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.fj)
          to label %bb.as unwind label %bb.l      ; 2 uses

bb.ar:                                            ; preds = %bb.ap
  store i64 -2, ptr %i.ek, align 8
  br label %bb.cg

bb.as:                                            ; preds = %bb.aq
  %i.fq = extractvalue { ptr, i64 } %i.fp, 0
  %i.fr = extractvalue { ptr, i64 } %i.fp, 1
  %i.fs = invoke { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs5aWdnx8MJVa_12derive_where4data4Data4iterBy_(ptr align 8 %i.fq, i64 %i.fr)
          to label %bb.at unwind label %bb.l      ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.ft = extractvalue { ptr, ptr } %i.fs, 0
  %i.fu = extractvalue { ptr, ptr } %i.fs, 1
  store ptr %i.ft, ptr %i.ej, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.fu, ptr %i.fv, align 8
  %i.fw = invoke zeroext i1 @_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtBU_6trait_10common_ord19build_ord_signature0EBU_(ptr nonnull align 8 %i.ej, ptr %4, ptr nonnull align 8 %5)
          to label %bb.au unwind label %bb.l

bb.au:                                            ; preds = %bb.at
  br i1 %i.fw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ec)
          to label %bb.ax unwind label %bb.l

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ei)
          to label %bb.ch unwind label %bb.l

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ec, ptr nonnull @15, i64 6)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.bc, %bb.az
  %.pn34 = phi { ptr, i32 } [ %i.fx, %bb.az ], [ %i.fy, %bb.bc ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ec) #7
          to label %.thread unwind label %bb.ag

bb.az:                                            ; preds = %bb.bk, %bb.ba, %bb.ax
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ea)
          to label %bb.bb unwind label %bb.az

end_hunk_0
begin_hunk_1_@_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord19build_ord_signature:bb.a
          to label %bb.em unwind label %bb.dv

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_bang(ptr nonnull align 8 %i.dm)
          to label %bb.en unwind label %bb.dv

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.di)
          to label %bb.eo unwind label %bb.dv

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.di, ptr nonnull @19, i64 7)
          to label %bb.eq unwind label %bb.ep

bb.ep:                                            ; preds = %bb.er, %bb.eq, %bb.eo
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.di) #7
          to label %bb.du unwind label %bb.ag

bb.eq:                                            ; preds = %bb.eo
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.di)
          to label %bb.er unwind label %bb.ep

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.di)
          to label %bb.es unwind label %bb.ep

bb.es:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.dm, i8 0, ptr nonnull align 8 %i.dj)
          to label %bb.et unwind label %bb.dv

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.dg)
          to label %bb.eu unwind label %bb.dv

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.dg)
          to label %bb.ew unwind label %bb.ev

bb.ev:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.eu
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.dg) #7
          to label %bb.du unwind label %bb.ag

bb.ew:                                            ; preds = %bb.eu
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.dg, ptr nonnull @3, i64 4)
          to label %bb.ex unwind label %bb.ev

bb.ex:                                            ; preds = %bb.ew
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.dg)
          to label %bb.ey unwind label %bb.ev

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.dg, ptr nonnull @7, i64 6)
          to label %bb.ez unwind label %bb.ev

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.dg)
          to label %bb.fa unwind label %bb.ev

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.dg, ptr nonnull @8, i64 6)
          to label %bb.fb unwind label %bb.ev

bb.fb:                                            ; preds = %bb.fa
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.dg)
          to label %bb.fc unwind label %bb.ev

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.dg, ptr nonnull @24, i64 4)
          to label %bb.fd unwind label %bb.ev

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.dm, i8 1, ptr nonnull align 8 %i.dh)
          to label %bb.fe unwind label %bb.dv

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.dm, ptr nonnull @25, i64 4)
          to label %bb.ff unwind label %bb.dv

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.de)
          to label %bb.fg unwind label %bb.dv

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.de)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.de) #7
          to label %bb.du unwind label %bb.ag

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.dm, i8 1, ptr nonnull align 8 %i.df)
          to label %bb.fj unwind label %bb.dv

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.dp)
          to label %bb.fk unwind label %bb.dl

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.dr)
          to label %bb.fl unwind label %bb.db

bb.fl:                                            ; preds = %bb.fk
  %i.hh = trunc nuw i8 %.sroa.022.6 to i1
  br i1 %i.hh, label %.thread147, label %.thread183

bb.fm:                                            ; preds = %bb.dh
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.da)
          to label %bb.fo unwind label %bb.wc

bb.fn:                                            ; preds = %bb.uk
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false)
  invoke void @_RNvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtNtCslCbDOIcU2Dw_5quote9___private3ext14RepIteratorExt15quote_into_iterCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([32 x i8]) align 8 %i.cy, ptr nonnull align 8 %i.cx)
          to label %bb.fp unwind label %.thread170

.thread163:                                       ; preds = %.loopexit.split-lp, %.thread170, %bb.wb
  %.pn107.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp169, %bb.wb ], [ %lpad.thr_comm168, %.thread170 ], [ %.pn107, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.da) #7
          to label %.thread173 unwind label %bb.ag

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false)
  invoke void @_RNvXs0_NtCslCbDOIcU2Dw_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCshzWfHUSfYae_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %bb.fq unwind label %bb.wb

.thread170:                                       ; preds = %bb.fo, %bb.fv, %bb.fq
  %lpad.thr_comm168 = landingpad { ptr, i32 }
          cleanup
  br label %.thread163

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false)
  invoke void @_RNvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtNtCslCbDOIcU2Dw_5quote9___private3ext14RepIteratorExt15quote_into_iterCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([32 x i8]) align 8 %i.cv, ptr nonnull align 8 %i.cu)
          to label %bb.fr unwind label %.thread170

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i64 32, i1 false)
  invoke void @_RNvXs1_NtCslCbDOIcU2Dw_5quote9___privateINtB5_11HasIteratorKb1_ENtNtNtCshzWfHUSfYae_4core3ops3bit5BitOr5bitor()
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.uo
  %.pn107 = phi { ptr, i32 } [ %.pn103, %bb.uo ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.cw) #7
          to label %.thread163 unwind label %bb.ag

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fu, %bb.wa, %.preheader, %bb.fs, %bb.fr
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvYINtNtCslCbDOIcU2Dw_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBQ_E5checkCs5aWdnx8MJVa_12derive_where()
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.fs, %bb.wa
  invoke void @_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([32 x i8]) align 8 %i.ct, ptr nonnull align 8 %i.cw)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ft:                                            ; preds = %.preheader
  %i.hj = load i64, ptr %i.ct, align 8
  %.not48 = icmp eq i64 %i.hj, -2
  br i1 %.not48, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 32, i1 false)
  invoke void @_RNvMs3_NtCslCbDOIcU2Dw_5quote9___privateINtB5_9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamE4nextCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([32 x i8]) align 8 %i.cr, ptr nonnull align 8 %i.cq)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %bb.fw, %bb.ft
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.cw)
          to label %bb.fy unwind label %.thread170

bb.fw:                                            ; preds = %bb.fu
  %i.hk = load i64, ptr %i.cr, align 8
  %.not49 = icmp eq i64 %i.hk, -2
  br i1 %.not49, label %bb.fv, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.da, ptr nonnull @22, i64 2)
          to label %bb.uq unwind label %bb.up

bb.fy:                                            ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.da, i64 32, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.hm(ptr nonnull sret([48 x i8]) align 8 %i.cj, ptr %4)
          to label %bb.gb unwind label %bb.ga

bb.fz:                                            ; preds = %bb.gc, %bb.ga
  %.sroa.024.10 = phi i8 [ %.sroa.024.12, %bb.gc ], [ %.sroa.024.11, %bb.ga ]
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.gc ], [ %i.hn, %bb.ga ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.db) #7
          to label %.thread173 unwind label %bb.ag

bb.ga:                                            ; preds = %bb.uj, %bb.fy
  %.sroa.024.11 = phi i8 [ %.sroa.024.18, %bb.uj ], [ 1, %bb.fy ]
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gb:                                            ; preds = %bb.fy
  %i.ho = invoke ptr %i.ev(ptr %4)
          to label %bb.ge unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gs, %bb.gm, %bb.gj, %bb.gd
  %.sroa.024.12 = phi i8 [ %.sroa.024.13, %bb.gd ], [ %.sroa.024.14, %bb.gs ], [ 1, %bb.gj ], [ 1, %bb.gm ]
  %.pn100 = phi { ptr, i32 } [ %i.hp, %bb.gd ], [ %.pn98, %bb.gs ], [ %i.hs, %bb.gj ], [ %i.hv, %bb.gm ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.cj) #7
          to label %bb.fz unwind label %bb.ag

bb.gd:                                            ; preds = %bb.un, %bb.ui, %bb.gh, %bb.gg, %bb.gf, %bb.gb
  %.sroa.024.13 = phi i8 [ 1, %bb.un ], [ 1, %bb.gf ], [ %.sroa.024.18, %bb.ui ], [ 1, %bb.gg ], [ 1, %bb.gh ], [ 1, %bb.gb ]
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ge:                                            ; preds = %bb.gb
  %i.hq = load i8, ptr %i.ho, align 1
  switch i8 %i.hq, label %bb.gf [
    i8 6, label %bb.gg
    i8 8, label %bb.gh
  ]

bb.gf:                                            ; preds = %bb.ge
  %i.hr = invoke { ptr, ptr } @_RNvMs2_NtCshzWfHUSfYae_4core3fmtNtB5_9Arguments17from_str_nonconstCs5aWdnx8MJVa_12derive_where(ptr nonnull @41, i64 76)
          to label %bb.un unwind label %bb.gd     ; 2 uses

bb.gg:                                            ; preds = %bb.ge
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.cg)
          to label %bb.gi unwind label %bb.gd

bb.gh:                                            ; preds = %bb.ge
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ch)
          to label %bb.gl unwind label %bb.gd

bb.gi:                                            ; preds = %bb.gg
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.cg, ptr nonnull @4, i64 3)
          to label %bb.gk unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.cg) #7
          to label %bb.gc unwind label %bb.ag

bb.gk:                                            ; preds = %bb.gi, %bb.gl
  %.sink = phi ptr [ %i.ch, %bb.gl ], [ %i.cg, %bb.gi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  %i.ht = load i8, ptr %i.fi, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  switch i8 %i.ht, label %bb.gn [
    i8 0, label %bb.go
    i8 1, label %bb.gp
    i8 2, label %.invoke191
    i8 3, label %bb.gq
    i8 4, label %bb.gr
  ]

bb.gl:                                            ; preds = %bb.gh
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ch, ptr nonnull @10, i64 11)
          to label %bb.gk unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ch) #7
          to label %bb.gc unwind label %bb.ag

bb.gn:                                            ; preds = %bb.gk
  unreachable

bb.go:                                            ; preds = %bb.gk
  %i.hw = invoke { ptr, ptr } @_RNvMs2_NtCshzWfHUSfYae_4core3fmtNtB5_9Arguments17from_str_nonconstCs5aWdnx8MJVa_12derive_where(ptr nonnull @26, i64 98)
          to label %bb.gu unwind label %bb.gt     ; 2 uses

bb.gp:                                            ; preds = %bb.gk
  %i.hx = invoke zeroext i1 @_RNvMs_NtNtCs5aWdnx8MJVa_12derive_where4attr4itemNtB4_11DeriveWhere8contains(ptr align 8 %3, i8 1)
          to label %bb.gw unwind label %bb.gt

bb.gq:                                            ; preds = %bb.gk
  store ptr %i.hu, ptr %i.bl, align 8
  %i.hy = invoke zeroext i1 @_RNvMs_NtNtCs5aWdnx8MJVa_12derive_where4attr4itemNtB4_11DeriveWhere8contains(ptr align 8 %3, i8 1)
          to label %bb.km unwind label %bb.gt

bb.gr:                                            ; preds = %bb.gk
  store ptr %i.hu, ptr %i.ae, align 8
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ad)
          to label %bb.pt unwind label %bb.gt

bb.gs:                                            ; preds = %bb.ub, %bb.pu, %bb.ou, %bb.nf, %bb.kt, %bb.jd, %bb.he, %bb.gt
  %.sroa.024.14 = phi i8 [ %.sroa.024.15, %bb.gt ], [ %.sroa.024.16, %bb.ub ], [ 1, %bb.jd ], [ 1, %bb.he ], [ 1, %bb.ou ], [ 1, %bb.nf ], [ 1, %bb.kt ], [ 1, %bb.pu ]
  %.pn98 = phi { ptr, i32 } [ %i.hz, %bb.gt ], [ %.pn96, %bb.ub ], [ %.pn90, %bb.jd ], [ %.pn85.pn, %bb.he ], [ %.pn77, %bb.ou ], [ %.pn72.pn, %bb.nf ], [ %.pn64, %bb.kt ], [ %.pn56, %bb.pu ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ci) #7
          to label %bb.gc unwind label %bb.ag

bb.gt:                                            ; preds = %.invoke185, %.invoke191, %.invoke, %bb.ud, %bb.nd, %bb.kr, %bb.kq, %bb.ko, %bb.kn, %bb.hc, %bb.ha, %bb.gy, %bb.gx, %bb.gu, %bb.gr, %bb.gq, %bb.gp, %bb.go
  %.sroa.024.15 = phi i8 [ 1, %bb.gu ], [ 1, %bb.go ], [ %.sroa.024.18, %bb.ud ], [ 1, %bb.gy ], [ 1, %bb.gr ], [ 1, %bb.hc ], [ 1, %bb.ha ], [ 1, %bb.gq ], [ 1, %.invoke191 ], [ 1, %bb.gx ], [ 1, %bb.gp ], [ 1, %.invoke185 ], [ 1, %bb.kn ], [ 1, %bb.ko ], [ 1, %.invoke ], [ 1, %bb.nd ], [ 1, %bb.kr ], [ 1, %bb.kq ]
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gu:                                            ; preds = %bb.go
  %i.ia = extractvalue { ptr, ptr } %i.hw, 0
  %i.ib = extractvalue { ptr, ptr } %i.hw, 1
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr %i.ia, ptr %i.ib, ptr nonnull align 8 @27) #10
          to label %bb.gv unwind label %bb.gt

bb.gv:                                            ; preds = %bb.un, %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gp
  br i1 %i.hx, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ic = invoke zeroext i1 @_RNvMs_NtNtCs5aWdnx8MJVa_12derive_where4attr4itemNtB4_11DeriveWhere8contains(ptr align 8 %3, i8 0)
          to label %bb.gz unwind label %bb.gt

bb.gy:                                            ; preds = %bb.gw
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ce)
          to label %bb.jc unwind label %bb.gt

bb.gz:                                            ; preds = %bb.gx
  br i1 %i.ic, label %bb.ha, label %.invoke191

.invoke191:                                       ; preds = %bb.gk, %bb.gz
  %i.id = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.fj)
          to label %.invoke185 unwind label %bb.gt ; 2 uses

bb.ha:                                            ; preds = %bb.gz
  %i.ie = invoke { ptr, ptr } @_RNvXs_NtCs5aWdnx8MJVa_12derive_where6trait_NtB4_11DeriveTraitNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr nonnull @28)
          to label %bb.hc unwind label %bb.gt     ; 2 uses

.sink.split:                                      ; preds = %bb.sd, %bb.ps, %bb.nc, %bb.kl
  %.sink186 = phi ptr [ %i.bk, %bb.ps ], [ %i.ar, %bb.nc ], [ %i.ce, %bb.kl ], [ %i.ad, %bb.sd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %.sink186, i64 32, i1 false)
  br label %bb.hb

bb.hb:                                            ; preds = %.invoke185, %.sink.split, %.invoke
  %i.if = load i64, ptr %i.ek, align 8
  %.not92 = icmp eq i64 %i.if, -2
  br i1 %.not92, label %bb.sf, label %bb.se

bb.hc:                                            ; preds = %bb.ha
  %i.ig = extractvalue { ptr, ptr } %i.ie, 0
  %i.ih = extractvalue { ptr, ptr } %i.ie, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ij(ptr nonnull sret([48 x i8]) align 8 %i.bx, ptr %i.ig)
          to label %bb.hd unwind label %bb.gt

bb.hd:                                            ; preds = %bb.hc
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bw)
          to label %bb.hg unwind label %bb.hf

bb.he:                                            ; preds = %bb.hh, %bb.hf
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %bb.hh ], [ %i.ik, %bb.hf ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.bx) #7
          to label %bb.gs unwind label %bb.ag

bb.hf:                                            ; preds = %bb.hd
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hg:                                            ; preds = %bb.hd
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.bw)
          to label %bb.hj unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hn, %bb.hi
  %.pn85 = phi { ptr, i32 } [ %i.il, %bb.hi ], [ %.pn83, %bb.hn ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bw) #7
          to label %bb.he unwind label %bb.ag

bb.hi:                                            ; preds = %bb.jb, %bb.hl, %bb.hk, %bb.hj, %bb.hg
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hj:                                            ; preds = %bb.hg
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bw)
          to label %bb.hk unwind label %bb.hi

bb.hk:                                            ; preds = %bb.hj
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.bw)
          to label %bb.hl unwind label %bb.hi

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bu)
          to label %bb.hm unwind label %bb.hi

bb.hm:                                            ; preds = %bb.hl
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.bu)
          to label %bb.hp unwind label %bb.ho

bb.hn:                                            ; preds = %bb.il, %bb.hr, %bb.ho
  %.pn83 = phi { ptr, i32 } [ %i.im, %bb.ho ], [ %.pn81, %bb.il ], [ %.pn79, %bb.hr ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bu) #7
          to label %bb.hh unwind label %bb.ag

bb.ho:                                            ; preds = %bb.ja, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.hp, %bb.hm
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hp:                                            ; preds = %bb.hm
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bs)
          to label %bb.hq unwind label %bb.ho

bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.bx, ptr nonnull align 8 %i.bs)
          to label %bb.ht unwind label %bb.hs

bb.hr:                                            ; preds = %bb.hx, %bb.hs
  %.pn79 = phi { ptr, i32 } [ %i.in, %bb.hs ], [ %i.io, %bb.hx ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bs) #7
          to label %bb.hn unwind label %bb.ag

bb.hs:                                            ; preds = %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hv, %bb.hu, %bb.ht, %bb.hq
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.ht:                                            ; preds = %bb.hq
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bs)
          to label %bb.hu unwind label %bb.hs

bb.hu:                                            ; preds = %bb.ht
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bs, ptr nonnull @29, i64 5)
          to label %bb.hv unwind label %bb.hs

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bq)
          to label %bb.hw unwind label %bb.hs

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bq, ptr nonnull @18, i64 4)
          to label %bb.hy unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bq) #7
          to label %bb.hr unwind label %bb.ag

bb.hy:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.bs, i8 0, ptr nonnull align 8 %i.br)
          to label %bb.hz unwind label %bb.hs

bb.hz:                                            ; preds = %bb.hy
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bs, ptr nonnull @30, i64 2)
          to label %bb.ia unwind label %bb.hs

bb.ia:                                            ; preds = %bb.hz
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bs)
          to label %bb.ib unwind label %bb.hs

bb.ib:                                            ; preds = %bb.ia
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bs, ptr nonnull @3, i64 4)
          to label %bb.ic unwind label %bb.hs

bb.ic:                                            ; preds = %bb.ib
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bs)
          to label %bb.id unwind label %bb.hs

bb.id:                                            ; preds = %bb.ic
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bs, ptr nonnull @31, i64 9)
          to label %bb.ie unwind label %bb.hs

bb.ie:                                            ; preds = %bb.id
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bs)
          to label %bb.if unwind label %bb.hs

bb.if:                                            ; preds = %bb.ie
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bs, ptr nonnull @32, i64 5)
          to label %bb.ig unwind label %bb.hs

bb.ig:                                            ; preds = %bb.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.bu, i8 0, ptr nonnull align 8 %i.bt)
          to label %bb.ih unwind label %bb.ho

bb.ih:                                            ; preds = %bb.ig
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.bu)
          to label %bb.ii unwind label %bb.ho

bb.ii:                                            ; preds = %bb.ih
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.bu)
          to label %bb.ij unwind label %bb.ho

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bo)
          to label %bb.ik unwind label %bb.ho

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.bx, ptr nonnull align 8 %i.bo)
          to label %bb.in unwind label %bb.im

bb.il:                                            ; preds = %bb.ir, %bb.im
  %.pn81 = phi { ptr, i32 } [ %i.ip, %bb.im ], [ %i.iq, %bb.ir ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bo) #7
          to label %bb.hn unwind label %bb.ag

bb.im:                                            ; preds = %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ip, %bb.io, %bb.in, %bb.ik
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.in:                                            ; preds = %bb.ik
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bo)
          to label %bb.io unwind label %bb.im

bb.io:                                            ; preds = %bb.in
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @29, i64 5)
          to label %bb.ip unwind label %bb.im

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bm)
          to label %bb.iq unwind label %bb.im

bb.iq:                                            ; preds = %bb.ip
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bm, ptr nonnull @19, i64 7)
          to label %bb.is unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bm) #7
          to label %bb.il unwind label %bb.ag

bb.is:                                            ; preds = %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.bo, i8 0, ptr nonnull align 8 %i.bn)
          to label %bb.it unwind label %bb.im

bb.it:                                            ; preds = %bb.is
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @30, i64 2)
          to label %bb.iu unwind label %bb.im

bb.iu:                                            ; preds = %bb.it
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bo)
          to label %bb.iv unwind label %bb.im

bb.iv:                                            ; preds = %bb.iu
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @3, i64 4)
          to label %bb.iw unwind label %bb.im

end_hunk_1
begin_hunk_2_@_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord19build_ord_signature:bb.a

bb.lj:                                            ; preds = %bb.li
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private15push_underscore(ptr nonnull align 8 %i.an)
          to label %bb.lk unwind label %bb.lf

bb.lk:                                            ; preds = %bb.lj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_gt(ptr nonnull align 8 %i.an)
          to label %bb.ll unwind label %bb.lf

bb.ll:                                            ; preds = %bb.lk
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.an)
          to label %bb.lm unwind label %bb.lf

bb.lm:                                            ; preds = %bb.ll
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.an, ptr nonnull @34, i64 4)
          to label %bb.ln unwind label %bb.lf

bb.ln:                                            ; preds = %bb.lm
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.al)
          to label %bb.lo unwind label %bb.lf

bb.lo:                                            ; preds = %bb.ln
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.al, ptr nonnull @18, i64 4)
          to label %bb.lq unwind label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.al) #7
          to label %bb.le unwind label %bb.ag

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.an, i8 0, ptr nonnull align 8 %i.am)
          to label %bb.lr unwind label %bb.lf

bb.lr:                                            ; preds = %bb.lq
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_dot(ptr nonnull align 8 %i.an)
          to label %bb.ls unwind label %bb.lf

bb.ls:                                            ; preds = %bb.lr
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.an, ptr nonnull @35, i64 4)
          to label %bb.lt unwind label %bb.lf

bb.lt:                                            ; preds = %bb.ls
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.an)
          to label %bb.lu unwind label %bb.lf

bb.lu:                                            ; preds = %bb.lt
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_lt(ptr nonnull align 8 %i.an)
          to label %bb.lv unwind label %bb.lf

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.an)
          to label %bb.lw unwind label %bb.lf

bb.lw:                                            ; preds = %bb.lv
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_gt(ptr nonnull align 8 %i.an)
          to label %bb.lx unwind label %bb.lf

bb.lx:                                            ; preds = %bb.lw
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ak)
          to label %bb.ly unwind label %bb.lf

bb.ly:                                            ; preds = %bb.lx
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.an, i8 0, ptr nonnull align 8 %i.ak)
          to label %bb.lz unwind label %bb.lf

bb.lz:                                            ; preds = %bb.ly
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ap, i8 1, ptr nonnull align 8 %i.ao)
          to label %bb.ma unwind label %bb.la

bb.ma:                                            ; preds = %bb.lz
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.ap)
          to label %bb.mb unwind label %bb.la

bb.mb:                                            ; preds = %bb.ma
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.ap)
          to label %bb.mc unwind label %bb.la

bb.mc:                                            ; preds = %bb.mb
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ap, ptr nonnull @15, i64 6)
          to label %bb.md unwind label %bb.la

bb.md:                                            ; preds = %bb.mc
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ai)
          to label %bb.me unwind label %bb.la

bb.me:                                            ; preds = %bb.md
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_star(ptr nonnull align 8 %i.ai)
          to label %bb.mh unwind label %bb.mg

bb.mf:                                            ; preds = %bb.mq, %bb.mg
  %.pn60 = phi { ptr, i32 } [ %i.jd, %bb.mg ], [ %i.je, %bb.mq ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ai) #7
          to label %bb.kz unwind label %bb.ag

bb.mg:                                            ; preds = %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.me
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.mh:                                            ; preds = %bb.me
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_lt(ptr nonnull align 8 %i.ai)
          to label %bb.mi unwind label %bb.mg

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_star(ptr nonnull align 8 %i.ai)
          to label %bb.mj unwind label %bb.mg

bb.mj:                                            ; preds = %bb.mi
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ai, ptr nonnull @33, i64 5)
          to label %bb.mk unwind label %bb.mg

bb.mk:                                            ; preds = %bb.mj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private15push_underscore(ptr nonnull align 8 %i.ai)
          to label %bb.ml unwind label %bb.mg

bb.ml:                                            ; preds = %bb.mk
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_gt(ptr nonnull align 8 %i.ai)
          to label %bb.mm unwind label %bb.mg

bb.mm:                                            ; preds = %bb.ml
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.ai)
          to label %bb.mn unwind label %bb.mg

bb.mn:                                            ; preds = %bb.mm
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ai, ptr nonnull @34, i64 4)
          to label %bb.mo unwind label %bb.mg

bb.mo:                                            ; preds = %bb.mn
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ag)
          to label %bb.mp unwind label %bb.mg

bb.mp:                                            ; preds = %bb.mo
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ag, ptr nonnull @19, i64 7)
          to label %bb.mr unwind label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ag) #7
          to label %bb.mf unwind label %bb.ag

bb.mr:                                            ; preds = %bb.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ai, i8 0, ptr nonnull align 8 %i.ah)
          to label %bb.ms unwind label %bb.mg

bb.ms:                                            ; preds = %bb.mr
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_dot(ptr nonnull align 8 %i.ai)
          to label %bb.mt unwind label %bb.mg

bb.mt:                                            ; preds = %bb.ms
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ai, ptr nonnull @35, i64 4)
          to label %bb.mu unwind label %bb.mg

bb.mu:                                            ; preds = %bb.mt
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.ai)
          to label %bb.mv unwind label %bb.mg

bb.mv:                                            ; preds = %bb.mu
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_lt(ptr nonnull align 8 %i.ai)
          to label %bb.mw unwind label %bb.mg

bb.mw:                                            ; preds = %bb.mv
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.ai)
          to label %bb.mx unwind label %bb.mg

bb.mx:                                            ; preds = %bb.mw
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_gt(ptr nonnull align 8 %i.ai)
          to label %bb.my unwind label %bb.mg

bb.my:                                            ; preds = %bb.mx
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.af)
          to label %bb.mz unwind label %bb.mg

bb.mz:                                            ; preds = %bb.my
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ai, i8 0, ptr nonnull align 8 %i.af)
          to label %bb.na unwind label %bb.mg

bb.na:                                            ; preds = %bb.mz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ap, i8 1, ptr nonnull align 8 %i.aj)
          to label %bb.nb unwind label %bb.la

bb.nb:                                            ; preds = %bb.na
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.ap)
          to label %bb.nc unwind label %bb.la

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ar, i8 0, ptr nonnull align 8 %i.aq)
          to label %.sink.split unwind label %bb.ku

bb.nd:                                            ; preds = %bb.kr
  %i.jf = extractvalue { ptr, ptr } %i.iy, 0
  %i.jg = extractvalue { ptr, ptr } %i.iy, 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ji(ptr nonnull sret([48 x i8]) align 8 %i.bd, ptr %i.jf)
          to label %bb.ne unwind label %bb.gt

bb.ne:                                            ; preds = %bb.nd
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bc)
          to label %bb.nh unwind label %bb.ng

bb.nf:                                            ; preds = %bb.ni, %bb.ng
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %bb.ni ], [ %i.jj, %bb.ng ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.bd) #7
          to label %bb.gs unwind label %bb.ag

bb.ng:                                            ; preds = %bb.ne
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.nh:                                            ; preds = %bb.ne
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.bc)
          to label %bb.nk unwind label %bb.nj

bb.ni:                                            ; preds = %bb.no, %bb.nj
  %.pn72 = phi { ptr, i32 } [ %i.jk, %bb.nj ], [ %.pn70, %bb.no ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bc) #7
          to label %bb.nf unwind label %bb.ag

bb.nj:                                            ; preds = %bb.os, %bb.nm, %bb.nl, %bb.nk, %bb.nh
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

bb.nk:                                            ; preds = %bb.nh
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.bc)
          to label %bb.nl unwind label %bb.nj

bb.nl:                                            ; preds = %bb.nk
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.bc)
          to label %bb.nm unwind label %bb.nj

bb.nm:                                            ; preds = %bb.nl
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ba)
          to label %bb.nn unwind label %bb.nj

bb.nn:                                            ; preds = %bb.nm
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.ba)
          to label %bb.nq unwind label %bb.np

bb.no:                                            ; preds = %bb.oh, %bb.ns, %bb.np
  %.pn70 = phi { ptr, i32 } [ %i.jl, %bb.np ], [ %.pn68, %bb.oh ], [ %.pn66, %bb.ns ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ba) #7
          to label %bb.ni unwind label %bb.ag

bb.np:                                            ; preds = %bb.or, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.nq, %bb.nn
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.nq:                                            ; preds = %bb.nn
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ay)
          to label %bb.nr unwind label %bb.np

bb.nr:                                            ; preds = %bb.nq
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.ay)
          to label %bb.nu unwind label %bb.nt

bb.ns:                                            ; preds = %bb.ny, %bb.nt
  %.pn66 = phi { ptr, i32 } [ %i.jm, %bb.nt ], [ %i.jn, %bb.ny ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ay) #7
          to label %bb.no unwind label %bb.ag

bb.nt:                                            ; preds = %bb.ob, %bb.oa, %bb.nz, %bb.nw, %bb.nv, %bb.nu, %bb.nr
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.nu:                                            ; preds = %bb.nr
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.ay)
          to label %bb.nv unwind label %bb.nt

bb.nv:                                            ; preds = %bb.nu
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ay, ptr nonnull @29, i64 5)
          to label %bb.nw unwind label %bb.nt

bb.nw:                                            ; preds = %bb.nv
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aw)
          to label %bb.nx unwind label %bb.nt

bb.nx:                                            ; preds = %bb.nw
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.aw, ptr nonnull @18, i64 4)
          to label %bb.nz unwind label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.aw) #7
          to label %bb.ns unwind label %bb.ag

bb.nz:                                            ; preds = %bb.nx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ay, i8 0, ptr nonnull align 8 %i.ax)
          to label %bb.oa unwind label %bb.nt

bb.oa:                                            ; preds = %bb.nz
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ay, ptr nonnull @30, i64 2)
          to label %bb.ob unwind label %bb.nt

bb.ob:                                            ; preds = %bb.oa
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.ay)
          to label %bb.oc unwind label %bb.nt

bb.oc:                                            ; preds = %bb.ob
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ba, i8 0, ptr nonnull align 8 %i.az)
          to label %bb.od unwind label %bb.np

bb.od:                                            ; preds = %bb.oc
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.ba)
          to label %bb.oe unwind label %bb.np

bb.oe:                                            ; preds = %bb.od
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.ba)
          to label %bb.of unwind label %bb.np

bb.of:                                            ; preds = %bb.oe
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.au)
          to label %bb.og unwind label %bb.np

bb.og:                                            ; preds = %bb.of
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.au)
          to label %bb.oj unwind label %bb.oi

bb.oh:                                            ; preds = %bb.on, %bb.oi
  %.pn68 = phi { ptr, i32 } [ %i.jo, %bb.oi ], [ %i.jp, %bb.on ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.au) #7
          to label %bb.no unwind label %bb.ag

bb.oi:                                            ; preds = %bb.oq, %bb.op, %bb.oo, %bb.ol, %bb.ok, %bb.oj, %bb.og
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.oh

bb.oj:                                            ; preds = %bb.og
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.au)
          to label %bb.ok unwind label %bb.oi

bb.ok:                                            ; preds = %bb.oj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.au, ptr nonnull @29, i64 5)
          to label %bb.ol unwind label %bb.oi

bb.ol:                                            ; preds = %bb.ok
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.as)
          to label %bb.om unwind label %bb.oi

bb.om:                                            ; preds = %bb.ol
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @19, i64 7)
          to label %bb.oo unwind label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.as) #7
          to label %bb.oh unwind label %bb.ag

bb.oo:                                            ; preds = %bb.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.au, i8 0, ptr nonnull align 8 %i.at)
          to label %bb.op unwind label %bb.oi

bb.op:                                            ; preds = %bb.oo
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.au, ptr nonnull @30, i64 2)
          to label %bb.oq unwind label %bb.oi

bb.oq:                                            ; preds = %bb.op
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.au)
          to label %bb.or unwind label %bb.oi

bb.or:                                            ; preds = %bb.oq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ba, i8 0, ptr nonnull align 8 %i.av)
          to label %bb.os unwind label %bb.np

bb.os:                                            ; preds = %bb.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.bc, i8 0, ptr nonnull align 8 %i.bb)
          to label %.invoke unwind label %bb.nj

.invoke:                                          ; preds = %bb.os, %bb.jb
  %.sink189 = phi ptr [ %i.bw, %bb.jb ], [ %i.bc, %bb.os ]
  %i.jq = phi ptr [ %i.bx, %bb.jb ], [ %i.bd, %bb.os ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %.sink189, i64 32, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr nonnull align 8 %i.jq)
          to label %bb.hb unwind label %bb.gt

bb.ot:                                            ; preds = %bb.ko
  invoke void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.bk)
          to label %bb.ow unwind label %bb.ov

bb.ou:                                            ; preds = %bb.pa, %bb.ov
  %.pn77 = phi { ptr, i32 } [ %i.jr, %bb.ov ], [ %.pn75, %bb.pa ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bk) #7
end_hunk_2
begin_hunk_3_@_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord19build_ord_signature:bb.a
bb.vw:                                            ; preds = %bb.vv
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.ck)
          to label %bb.vx unwind label %bb.vp

bb.vx:                                            ; preds = %bb.vw
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ck, ptr nonnull @24, i64 4)
          to label %bb.vy unwind label %bb.vp

bb.vy:                                            ; preds = %bb.vx
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_semi(ptr nonnull align 8 %i.ck)
          to label %bb.vz unwind label %bb.vp

bb.vz:                                            ; preds = %bb.vy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.da, i8 1, ptr nonnull align 8 %i.cl)
          to label %bb.wa unwind label %bb.up

bb.wa:                                            ; preds = %bb.vz
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCslCbDOIcU2Dw_5quote9___private9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.cs)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wb:                                            ; preds = %bb.fp
  %lpad.thr_comm.split-lp169 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.cz) #7
          to label %.thread163 unwind label %bb.ag

bb.wc:                                            ; preds = %bb.fm
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.dd) #7
          to label %.thread173 unwind label %bb.ag

bb.wd:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.da
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.dt) #7
          to label %.thread173 unwind label %bb.ag

.thread173:                                       ; preds = %bb.fz, %.thread163, %bb.wc, %bb.fn, %bb.wd, %.thread123, %.thread132
  %.pn107.pn.pn.pn.pn.pn130 = phi { ptr, i32 } [ %i.gi, %.thread123 ], [ %.pn107.pn.pn.pn.pn.pn, %.thread132 ], [ %lpad.thr_comm, %bb.wd ], [ %.pn107.pn.pn, %.thread163 ], [ %.pn100.pn, %bb.fz ], [ %i.kt, %bb.wc ], [ %i.hi, %bb.fn ] ; 2 uses
  %.sroa.024.1129 = phi i8 [ 1, %.thread123 ], [ 1, %.thread132 ], [ 1, %bb.wd ], [ 1, %.thread163 ], [ %.sroa.024.10, %bb.fz ], [ 1, %bb.wc ], [ %.sroa.024.18, %bb.fn ]
  %.sroa.026.3128 = phi i8 [ 1, %.thread123 ], [ %.sroa.026.3, %.thread132 ], [ 1, %bb.wd ], [ 1, %.thread163 ], [ 1, %bb.fz ], [ 1, %bb.wc ], [ 1, %bb.fn ] ; 2 uses
  %i.ku = load i64, ptr %i.ek, align 8
  %i.kv = icmp ne i64 %i.ku, -2
  %i.kw = trunc nuw i8 %.sroa.024.1129 to i1
  %or.cond3 = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond3, label %bb.we, label %bb.k

bb.we:                                            ; preds = %.thread173
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ek) #7
          to label %bb.k unwind label %bb.ag

bb.wf:                                            ; preds = %bb.ak
  %i.kx = load i8, ptr %i.fh, align 1
  %i.ky = invoke zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item8is_empty(ptr nonnull align 8 %1, i8 %i.kx)
          to label %bb.wg unwind label %bb.l

bb.wg:                                            ; preds = %bb.wf
  br i1 %i.ky, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.wj unwind label %bb.l

bb.wi:                                            ; preds = %bb.wg
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.ww unwind label %bb.l

bb.wj:                                            ; preds = %bb.wh
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.e, ptr nonnull @11, i64 5)
          to label %bb.wm unwind label %bb.wl

bb.wk:                                            ; preds = %bb.wu, %bb.wo, %bb.wl
  %.pn114 = phi { ptr, i32 } [ %i.kz, %bb.wl ], [ %i.lb, %bb.wu ], [ %i.la, %bb.wo ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.e) #7
          to label %.thread unwind label %bb.ag

bb.wl:                                            ; preds = %bb.wv, %bb.ws, %bb.wr, %bb.wm, %bb.wj
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wm:                                            ; preds = %bb.wj
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.wn unwind label %bb.wl

bb.wn:                                            ; preds = %bb.wm
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @18, i64 4)
          to label %bb.wp unwind label %bb.wo

bb.wo:                                            ; preds = %bb.wq, %bb.wp, %bb.wn
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.c) #7
          to label %bb.wk unwind label %bb.ag

bb.wp:                                            ; preds = %bb.wn
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.c)
          to label %bb.wq unwind label %bb.wo

bb.wq:                                            ; preds = %bb.wp
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @19, i64 7)
          to label %bb.wr unwind label %bb.wo

bb.wr:                                            ; preds = %bb.wq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 0, ptr nonnull align 8 %i.d)
          to label %bb.ws unwind label %bb.wl

bb.ws:                                            ; preds = %bb.wr
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.wt unwind label %bb.wl

bb.wt:                                            ; preds = %bb.ws
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.a)
          to label %bb.wv unwind label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #7
          to label %bb.wk unwind label %bb.ag

bb.wv:                                            ; preds = %bb.wt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 1, ptr nonnull align 8 %i.b)
          to label %.critedge.sink.split unwind label %bb.wl

bb.ww:                                            ; preds = %bb.wi
  invoke void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.er, ptr nonnull align 8 %i.f)
          to label %.critedge.sink.split unwind label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.f) #7
          to label %.thread unwind label %bb.ag

bb.wy:                                            ; preds = %bb.aj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.el)
          to label %bb.xa unwind label %bb.wz

bb.wz:                                            ; preds = %bb.xg, %bb.xf, %bb.xe, %bb.xd, %bb.xc, %bb.xb, %bb.xa, %bb.wy
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.el) #7
          to label %.thread unwind label %bb.ag

bb.xa:                                            ; preds = %bb.wy
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.el, ptr nonnull @3, i64 4)
          to label %bb.xb unwind label %bb.wz

bb.xb:                                            ; preds = %bb.xa
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.el)
          to label %bb.xc unwind label %bb.wz

bb.xc:                                            ; preds = %bb.xb
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.el, ptr nonnull @7, i64 6)
          to label %bb.xd unwind label %bb.wz

bb.xd:                                            ; preds = %bb.xc
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.el)
          to label %bb.xe unwind label %bb.wz

bb.xe:                                            ; preds = %bb.xd
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.el, ptr nonnull @8, i64 6)
          to label %bb.xf unwind label %bb.wz

bb.xf:                                            ; preds = %bb.xe
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.el)
          to label %bb.xg unwind label %bb.wz

bb.xg:                                            ; preds = %bb.xf
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.el, ptr nonnull @24, i64 4)
          to label %.critedge.sink.split unwind label %bb.wz

.thread183:                                       ; preds = %bb.fl, %.critedge, %bb.ul
  ret void

.critedge.sink.split:                             ; preds = %bb.xg, %bb.ww, %bb.wv
  %.sink190 = phi ptr [ %i.f, %bb.ww ], [ %i.e, %bb.wv ], [ %i.el, %bb.xg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink190, i64 32, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.ul
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.er)
  br label %.thread183

bb.xh:                                            ; preds = %.thread, %bb.k, %bb.b
  %.pn116.pn = phi { ptr, i32 } [ %.pn116122, %.thread ], [ %.pn116, %bb.k ], [ %i.et, %bb.b ]
  resume { ptr, i32 } %.pn116.pn

.thread:                                          ; preds = %bb.q, %bb.ae, %bb.ay, %bb.bm, %bb.ci, %bb.wk, %bb.wx, %bb.wz, %bb.k
  %.pn116122 = phi { ptr, i32 } [ %.pn116, %bb.k ], [ %.pn, %bb.q ], [ %i.fe, %bb.ae ], [ %.pn34, %bb.ay ], [ %.pn36.pn, %bb.bm ], [ %.pn39, %bb.ci ], [ %.pn114, %bb.wk ], [ %i.lc, %bb.wx ], [ %i.ld, %bb.wz ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.er) #7
          to label %bb.xh unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord24build_discriminant_order(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3, i64 %4, ptr nonnull align 8 %5, ptr nonnull align 8 %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !12 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 2 uses
  %i.j = alloca [64 x i8], align 8                ; 2 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 16 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  %i.t = alloca [8 x i8], align 8                 ; 2 uses
  %i.u = alloca [8 x i8], align 8                 ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 2 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [64 x i8], align 8                ; 2 uses
  %i.z = alloca [64 x i8], align 8                ; 3 uses
  %i.aa = alloca [176 x i8], align 8              ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 3 uses
  %i.ad = alloca [48 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 3 uses
  %i.ai = alloca [8 x i8], align 8                ; 2 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 2 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 2 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 2 uses
  %i.ap = alloca [176 x i8], align 8              ; 6 uses
  %.sroa.4 = alloca [160 x i8], align 8           ; 2 uses
  %i.aq = alloca [16 x i8], align 8               ; 3 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 2 uses
  %i.au = alloca [8 x i8], align 8                ; 2 uses
  store ptr %5, ptr %i.au, align 8
  store ptr %6, ptr %i.at, align 8
  call void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecINtNtB4_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEE13with_capacityCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([24 x i8]) align 8 %i.as, i64 %4) #6
  store i64 2, ptr %i.ar, align 8
  %i.av = invoke { ptr, ptr } @_RNvXs_NtNtCshzWfHUSfYae_4core5slice4iterRSNtNtCs5aWdnx8MJVa_12derive_where4data4DataNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %3, i64 %4)
          to label %bb.b unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bv, %bb.bs, %bb.dd, %bb.cq, %bb.cd, %bb.cp, %bb.ce, %bb.cb, %bb.bw, %bb.c, %bb.f, %bb.a
  %lpad.loopexit.split-lp6 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.aw = extractvalue { ptr, ptr } %i.av, 0
  %i.ax = extractvalue { ptr, ptr } %i.av, 1
  store ptr %i.aw, ptr %i.aq, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.bv, %bb.b
  %i.bb = invoke align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.aq)
          to label %bb.d unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 496
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not34 = icmp eq ptr %i.bd, null
  br i1 %.not34, label %bb.bt, label %bb.bs

bb.f:                                             ; preds = %bb.d
  %i.be = invoke { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs5aWdnx8MJVa_12derive_where4data4Data4iterBy_(ptr align 8 %3, i64 %4)
          to label %bb.g unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  %i.bg = extractvalue { ptr, ptr } %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB2e_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEEBN_(ptr nonnull sret([64 x i8]) align 8 %i.y, ptr %i.bf, ptr %i.bg, ptr nonnull align 8 %i.x)
  call void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB25_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEENtNtNtBa_6traits8iterator8Iterator3mapNtCs1K5DUQUZc67_11proc_macro211TokenStreamNCNvNtNtB1l_6trait_10common_ord24build_discriminant_order0EB1l_(ptr nonnull sret([64 x i8]) align 8 %i.z, ptr nonnull align 8 %i.y)
  %i.bh = invoke i8 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationE9unwrap_orBL_(i8 -1, i8 11)
          to label %bb.i unwind label %.split.thread

bb.h:                                             ; preds = %bb.k
  br i1 %.sroa.022.2, label %bb.br, label %.thread49

.split.thread:                                    ; preds = %bb.i, %bb.g
  %lpad.thr_comm58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvMs0_NtCs5aWdnx8MJVa_12derive_where4itemNtB5_14Representation8to_token(ptr nonnull sret([32 x i8]) align 8 %i.w, i8 %i.bh)
          to label %bb.j unwind label %.split.thread

bb.j:                                             ; preds = %bb.i
  %i.bi = invoke align 8 ptr @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item5ident(ptr align 8 %1)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.o, %bb.l
  %.sroa.022.2 = phi i1 [ %.sroa.022.3, %bb.o ], [ true, %bb.l ]
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn.pn, %bb.o ], [ %i.bj, %bb.l ] ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.w) #7
          to label %bb.h unwind label %bb.bp

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  store ptr %i.bi, ptr %i.v, align 8
  store ptr %2, ptr %i.u, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bk, ptr %i.t, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bl, ptr %i.s, align 8
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.r)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @33, i64 5)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.az, %bb.ag, %bb.v, %bb.p
  %.sroa.022.3 = phi i1 [ %.sroa.022.5, %bb.ag ], [ %.sroa.022.4, %bb.p ], [ false, %bb.az ], [ true, %bb.v ]
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.ag ], [ %i.bm, %bb.p ], [ %.pn, %bb.az ], [ %i.bn, %bb.v ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.r) #7
          to label %bb.k unwind label %bb.bp

bb.p:                                             ; preds = %bb.bn, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.t, %bb.s, %bb.r, %bb.q, %bb.n
  %.sroa.022.4 = phi i1 [ false, %bb.bn ], [ false, %bb.ax ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.at ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.n ]
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @44, i64 2)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @45, i64 14)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn8generics12ImplGenericsNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.r)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.p)
          to label %bb.u unwind label %bb.p

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.p, ptr nonnull @46, i64 6)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.u
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.p) #7
          to label %bb.o unwind label %bb.bp

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_colon(ptr nonnull align 8 %i.p)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.p)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.p)
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn8generics12TypeGenericsNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.p)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z
end_hunk_3
begin_hunk_4_@_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord24build_discriminant_order:bb.a
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 0, ptr nonnull align 8 %i.d)
          to label %bb.bg unwind label %bb.ba

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.e)
          to label %bb.bh unwind label %bb.ba

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr nonnull align 8 %i.e)
          to label %bb.bi unwind label %bb.ba

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.e, ptr nonnull @45, i64 14)
          to label %bb.bj unwind label %bb.ba

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.bk unwind label %bb.ba

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @19, i64 7)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.a) #7
          to label %bb.az unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.e, i8 0, ptr nonnull align 8 %i.b)
          to label %bb.bn unwind label %bb.ba

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.r, i8 0, ptr nonnull align 8 %i.f)
          to label %bb.bo unwind label %bb.p

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.w)
  ret void

bb.bp:                                            ; preds = %.thread, %bb.cy, %bb.cv, %bb.cs, %bb.cn, %bb.ci, %bb.cg, %bb.by, %bb.br, %.loopexit.split-lp73, %bb.bl, %bb.be, %bb.az, %.loopexit.split-lp, %bb.al, %bb.ag, %bb.v, %bb.o, %bb.k
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.bq:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr nonnull align 8 %i.l)
          to label %.invoke78 unwind label %.loopexit.split-lp73

.invoke78:                                        ; preds = %bb.bq, %bb.aq
  invoke void @_RNvXs5_NtCslCbDOIcU2Dw_5quote9___privateINtB5_9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.l)
          to label %.invoke unwind label %.loopexit.split-lp73

.loopexit.split-lp73:                             ; preds = %.invoke78, %bb.bq
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCslCbDOIcU2Dw_5quote9___private9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.h) #7
          to label %.loopexit.split-lp unwind label %bb.bp

bb.br:                                            ; preds = %.split.thread, %bb.h
  %.pn27.pn.pn.pn.pn.pn57 = phi { ptr, i32 } [ %lpad.thr_comm58, %.split.thread ], [ %.pn27.pn.pn.pn.pn, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB2D_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEENCNvNtNtB1T_6trait_10common_ord24build_discriminant_order0EEB1T_(ptr nonnull align 8 %i.z) #7
          to label %.thread49 unwind label %bb.bp

bb.bs:                                            ; preds = %bb.e
  %i.bw = invoke i64 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEE3lenCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.as)
          to label %bb.bu unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.e
  %i.bx = load i64, ptr %i.ar, align 8
  switch i64 %i.bx, label %bb.cd [
    i64 2, label %bb.bw
    i64 0, label %bb.ce
  ]

bb.bu:                                            ; preds = %bb.bs
  store i64 1, ptr %i.ar, align 8
  store i64 %i.bw, ptr %.sroa.210.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.311.0..sroa_idx, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.cc, %bb.bu
  %.sroa.3.0 = phi ptr [ %i.bd, %bb.bu ], [ %.sroa.219.0.copyload, %bb.cc ]
  %.sroa.02.0 = phi i64 [ -1, %bb.bu ], [ %.sroa.018.0.copyload, %bb.cc ]
  store i64 %.sroa.02.0, ptr %i.aa, align 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4, i64 160, i1 false)
  invoke void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEE4pushCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.aa)
          to label %bb.c unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bt
  store i64 0, ptr %i.ar, align 8
  store i64 0, ptr %.sroa.311.0..sroa_idx, align 8
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.ac)
          to label %bb.bx unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.by = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ac) #7
          to label %.thread unwind label %bb.bp

bb.bz:                                            ; preds = %bb.bx
  %i.ca = invoke align 8 ptr @_RNvMs3_NtCsgFSQ9XOTBNe_3syn3litNtB5_6LitInt3new(ptr nonnull @47, i64 1, i32 %i.by, ptr nonnull align 8 @48)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsgFSQ9XOTBNe_3syn3lit6LitIntINtB5_4IntoNtBA_3LitE4intoCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr align 8 %i.ca, ptr nonnull align 8 @49)
          to label %bb.cb unwind label %bb.by

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke void @_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsgFSQ9XOTBNe_3syn4expr7ExprLitINtB5_4IntoNtBA_4ExprE4intoCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([176 x i8]) align 8 %i.ap, ptr nonnull align 8 %i.ad, ptr nonnull align 8 @50)
          to label %bb.cc unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.cb, %bb.dd, %bb.cp
  %.sroa.018.0.copyload = load i64, ptr %i.ap, align 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.320.0..sroa_idx, i64 160, i1 false)
  br label %bb.bv

bb.cd:                                            ; preds = %bb.bt
  %i.cb = load i64, ptr %.sroa.210.0..sroa_idx, align 8
  %i.cc = invoke align 8 ptr @_RNvXsd_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.as, i64 %i.cb, ptr nonnull align 8 @54)
          to label %bb.cq unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.bt
  store ptr %.sroa.311.0..sroa_idx, ptr %i.ai, align 8
  %i.cd = load i64, ptr %.sroa.311.0..sroa_idx, align 8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %.sroa.311.0..sroa_idx, align 8
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.ag)
          to label %bb.cf unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringQjNtB5_8ToString9to_stringCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull align 8 %i.ai)
          to label %bb.ch unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ag) #7
          to label %.thread unwind label %bb.bp

bb.ch:                                            ; preds = %bb.cf
  %i.cg = invoke { ptr, i64 } @_RNvXsx_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.ae)
          to label %bb.cj unwind label %bb.ci     ; 2 uses

bb.ci:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ch
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ag) #7
          to label %bb.cn unwind label %bb.bp

bb.cj:                                            ; preds = %bb.ch
  %i.ci = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.ck unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  %i.cj = extractvalue { ptr, i64 } %i.cg, 1
  %i.ck = extractvalue { ptr, i64 } %i.cg, 0
  %i.cl = invoke align 8 ptr @_RNvMs3_NtCsgFSQ9XOTBNe_3syn3litNtB5_6LitInt3new(ptr %i.ck, i64 %i.cj, i32 %i.ci, ptr nonnull align 8 @51)
          to label %bb.cl unwind label %bb.ci

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsgFSQ9XOTBNe_3syn3lit6LitIntINtB5_4IntoNtBA_3LitE4intoCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr align 8 %i.cl, ptr nonnull align 8 @52)
          to label %bb.cm unwind label %bb.ci

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  invoke void @_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsgFSQ9XOTBNe_3syn4expr7ExprLitINtB5_4IntoNtBA_4ExprE4intoCs5aWdnx8MJVa_12derive_where(ptr nonnull sret([176 x i8]) align 8 %i.ap, ptr nonnull align 8 %i.ah, ptr nonnull align 8 @53)
          to label %bb.cp unwind label %bb.co

bb.cn:                                            ; preds = %bb.co, %bb.ci
  %.pn36 = phi { ptr, i32 } [ %i.cm, %bb.co ], [ %i.ch, %bb.ci ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.ae) #7
          to label %.thread unwind label %bb.bp

bb.co:                                            ; preds = %bb.cm
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cp:                                            ; preds = %bb.cm
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.ae)
          to label %bb.cc unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cd
  store ptr %i.cc, ptr %i.ao, align 8, !captures !6
  %i.cn = load i64, ptr %.sroa.311.0..sroa_idx, align 8
  %i.co = add i64 %i.cn, 1                        ; 2 uses
  store i64 %i.co, ptr %.sroa.311.0..sroa_idx, align 8
  invoke void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal16usize_unsuffixed(ptr nonnull sret([24 x i8]) align 8 %i.an, i64 %i.co)
          to label %bb.cr unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.al)
          to label %bb.cu unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cv, %bb.ct
  %.pn40 = phi { ptr, i32 } [ %i.cp, %bb.ct ], [ %.pn38, %bb.cv ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro27LiteralEBD_(ptr nonnull align 8 %i.an) #7
          to label %.thread unwind label %bb.bp

bb.ct:                                            ; preds = %bb.dc, %bb.cr
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cr
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aj)
          to label %bb.cx unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cy, %bb.cw
  %.pn38 = phi { ptr, i32 } [ %i.cq, %bb.cw ], [ %i.cr, %bb.cy ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.al) #7
          to label %bb.cs unwind label %bb.bp

bb.cw:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cu
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.aj)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.aj) #7
          to label %bb.cv unwind label %bb.bp

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.al, i8 0, ptr nonnull align 8 %i.ak)
          to label %bb.da unwind label %bb.cw

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_add(ptr nonnull align 8 %i.al)
          to label %bb.db unwind label %bb.cw

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvXss_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.al)
          to label %bb.dc unwind label %bb.cw

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  invoke void @_RINvNtCsgFSQ9XOTBNe_3syn11parse_quote5parseNtNtB4_4expr4ExprECs5aWdnx8MJVa_12derive_where(ptr nonnull sret([176 x i8]) align 8 %i.ap, ptr nonnull align 8 %i.am, ptr nonnull align 8 @55)
          to label %bb.dd unwind label %bb.ct

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro27LiteralEBD_(ptr nonnull align 8 %i.an)
          to label %bb.cc unwind label %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread49:                                        ; preds = %bb.h, %bb.br, %.thread
  %.pn4246 = phi { ptr, i32 } [ %.pn4247, %.thread ], [ %.pn27.pn.pn.pn.pn.pn57, %bb.br ], [ %.pn27.pn.pn.pn.pn, %bb.h ]
  resume { ptr, i32 } %.pn4246

.thread:                                          ; preds = %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.by, %bb.cg, %bb.cn, %bb.cs
  %.pn4247 = phi { ptr, i32 } [ %.pn40, %bb.cs ], [ %i.bz, %bb.by ], [ %i.cf, %bb.cg ], [ %.pn36, %bb.cn ], [ %lpad.loopexit.split-lp6, %.thread53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.as) #7
          to label %.thread49 unwind label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord26build_incomparable_pattern(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !13 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = tail call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs5aWdnx8MJVa_12derive_where4data4Data4iterBy_(ptr align 8 %1, i64 %2) #6 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = tail call { ptr, ptr } @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvNtNtBN_6trait_10common_ord26build_incomparable_pattern0EBN_(ptr %i.j, ptr %i.k) #6 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = tail call { ptr, ptr } @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB1r_6trait_10common_ord26build_incomparable_pattern0ENtNtNtBa_6traits8iterator8Iterator3mapNtCs1K5DUQUZc67_11proc_macro211TokenStreamNCB26_s_0EB1r_(ptr %i.m, ptr %i.n) #6 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %i.q = extractvalue { ptr, ptr } %i.o, 1
  call void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB1G_6trait_10common_ord26build_incomparable_pattern0ENCB2l_s_0ENtNtNtB9_6traits8iterator8Iterator8peekableB1G_(ptr nonnull sret([48 x i8]) align 8 %i.h, ptr %i.p, ptr %i.q) #6
  %i.r = invoke align 8 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2c_6trait_10common_ord26build_incomparable_pattern0ENCB2R_s_0EE4peekB2c_(ptr nonnull align 8 %i.h)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  store ptr %i.r, ptr %i.g, align 8
  %i.s = invoke zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtCs1K5DUQUZc67_11proc_macro211TokenStreamE7is_someCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.g)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  br i1 %i.s, label %bb.d, label %.thread11

.thread11:                                        ; preds = %bb.c
  store i64 -2, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2p_6trait_10common_ord26build_incomparable_pattern0ENCB34_s_0EEEB2p_(ptr nonnull align 8 %i.h)
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.f unwind label %bb.r

bb.e:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  invoke void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB26_6trait_10common_ord26build_incomparable_pattern0ENCB2L_s_0EENtNtNtCslCbDOIcU2Dw_5quote9___private3ext14RepIteratorExt15quote_into_iterB26_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %.loopexit.split-lp, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.t, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.f) #7
          to label %bb.q unwind label %bb.p

bb.h:                                             ; preds = %.loopexit, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  invoke void @_RNvXs0_NtCslCbDOIcU2Dw_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCshzWfHUSfYae_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp17
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp18, %.loopexit.split-lp17 ], [ %lpad.loopexit.split-lp22, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2p_6trait_10common_ord26build_incomparable_pattern0ENCB34_s_0EEEB2p_(ptr nonnull align 8 %i.e) #7
          to label %bb.g unwind label %bb.p

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.preheader, %.preheader.preheader, %bb.j, %bb.i
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvYINtNtCslCbDOIcU2Dw_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBQ_E5checkCs5aWdnx8MJVa_12derive_where()
          to label %.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.j
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2b_6trait_10common_ord26build_incomparable_pattern0ENCB2Q_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %.preheader.preheader
  %i.u = load i64, ptr %i.a, align 8
  %.not.peel = icmp eq i64 %i.u, -2
  br i1 %.not.peel, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %.invoke21

.invoke:                                          ; preds = %.invoke21
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCslCbDOIcU2Dw_5quote9___private9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.b)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %.invoke
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2b_6trait_10common_ord26build_incomparable_pattern0ENCB2Q_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.preheader
  %i.v = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.v, -2
  br i1 %.not, label %.loopexit, label %bb.o

.loopexit:                                        ; preds = %bb.m, %bb.k
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2p_6trait_10common_ord26build_incomparable_pattern0ENCB34_s_0EEEB2p_(ptr nonnull align 8 %i.e)
          to label %bb.e unwind label %bb.h

bb.n:                                             ; preds = %bb.e, %.thread11
  ret void

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_or(ptr nonnull align 8 %i.f)
          to label %.invoke21 unwind label %.loopexit.split-lp17

.invoke21:                                        ; preds = %bb.o, %bb.l
  invoke void @_RNvXs5_NtCslCbDOIcU2Dw_5quote9___privateINtB5_9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %.invoke unwind label %.loopexit.split-lp17

.loopexit.split-lp17:                             ; preds = %.invoke21, %bb.o
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCslCbDOIcU2Dw_5quote9___private9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECs5aWdnx8MJVa_12derive_where(ptr nonnull align 8 %i.b) #7
          to label %.loopexit.split-lp unwind label %bb.p

bb.p:                                             ; preds = %bb.r, %.loopexit.split-lp17, %.loopexit.split-lp, %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.q:                                             ; preds = %bb.g, %bb.r
  %.pn.pn.pn9 = phi { ptr, i32 } [ %i.x, %bb.r ], [ %.pn.pn, %bb.g ]
  resume { ptr, i32 } %.pn.pn.pn9

bb.r:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2p_6trait_10common_ord26build_incomparable_pattern0ENCB34_s_0EEEB2p_(ptr nonnull align 8 %i.h) #7
          to label %bb.q unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord19build_ord_signatures_0INtB7_5FnMutTRRNtNtBW_4data4DataEE8call_mutBW_(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !14 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = tail call zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15is_incomparable(ptr align 8 %.val)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCs5aWdnx8MJVa_12derive_where6trait_10common_ord26build_incomparable_pattern0INtB7_5FnMutTRRNtNtBW_4data4DataEE8call_mutBW_(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !15 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = tail call zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15is_incomparable(ptr align 8 %.val)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data8is_empty(ptr align 8, i8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15is_incomparable(ptr align 8) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data12self_pattern(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn3pat3PatNtB2_8ToTokens9to_tokensBD_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private14push_fat_arrow(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCslCbDOIcU2Dw_5quote9to_tokensINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtB5_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEECs5aWdnx8MJVa_12derive_where(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr align 8) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data11simple_type(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4path4PathNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_dot2(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr align 8, i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs2_NtCshzWfHUSfYae_4core3fmtNtB5_9Arguments17from_str_nonconstCs5aWdnx8MJVa_12derive_where(ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsu_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data15iter_self_ident(ptr sret([24 x i8]) align 8, ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1G_NtB1G_4Data11iter_fields0ENCNvB2w_15iter_self_ident0ENtNtNtB9_6traits8iterator8Iterator3revB1I_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs5aWdnx8MJVa_12derive_where4dataNtB2_4Data16iter_other_ident(ptr sret([24 x i8]) align 8, ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1G_NtB1G_4Data11iter_fields0ENCNvB2w_16iter_other_ident0ENtNtNtB9_6traits8iterator8Iterator3revB1I_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtB8_3map3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB1X_NtB1X_4Data11iter_fields0ENCNvB2N_15iter_self_ident0EENtNtNtBa_6traits8iterator8Iterator3zipIB4_IBS_B17_NCNvB2N_16iter_other_ident0EEEB1Z_(ptr sret([64 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3zip3ZipINtNtBQ_3rev3RevINtNtBQ_3map3MapINtNtBQ_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB2y_NtB2y_4Data11iter_fields0ENCNvB3o_15iter_self_ident0EEIB1d_IB1t_B1I_NCNvB3o_16iter_other_ident0EEENtB2_12IntoIterator9into_iterB2A_(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3rev3RevINtNtB6_3map3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtNtCs5aWdnx8MJVa_12derive_where4data5field5FieldENCNvMB2h_NtB2h_4Data11iter_fields0ENCNvB37_15iter_self_ident0EEIBW_IB1c_B1r_NCNvB37_16iter_other_ident0EEENtNtNtB8_6traits8iterator8Iterator4nextB2j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4path4PathEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsgFSQ9XOTBNe_3syn4path8printingNtB7_4PathNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_comma(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item15is_incomparable(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs5aWdnx8MJVa_12derive_where4data4DataE3lenBI_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item8is_empty(ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBJ_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs5aWdnx8MJVa_12derive_where4data4Data4iterBy_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtBU_6trait_10common_ord19build_ord_signature0EBU_(ptr align 8, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private15push_underscore(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvNtNtBN_6trait_10common_ord19build_ord_signatures_0EBN_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB1w_6trait_10common_ord19build_ord_signatures_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamE6expectCs5aWdnx8MJVa_12derive_where(ptr sret([32 x i8]) align 8, ptr align 8, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamE9unwrap_orCs5aWdnx8MJVa_12derive_where(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_bang(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_or_or(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs8_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCs5aWdnx8MJVa_12derive_where(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtNtCslCbDOIcU2Dw_5quote9___private3ext14RepIteratorExt15quote_into_iterCs5aWdnx8MJVa_12derive_where(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCslCbDOIcU2Dw_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCshzWfHUSfYae_4core3ops3bit5BitOrIBD_Kb1_EE5bitor() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCslCbDOIcU2Dw_5quote9___privateINtB5_11HasIteratorKb1_ENtNtNtCshzWfHUSfYae_4core3ops3bit5BitOr5bitor() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtCslCbDOIcU2Dw_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBQ_E5checkCs5aWdnx8MJVa_12derive_where() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5aWdnx8MJVa_12derive_where(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCslCbDOIcU2Dw_5quote9___privateINtB5_9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamE4nextCs5aWdnx8MJVa_12derive_where(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvMs_NtNtCs5aWdnx8MJVa_12derive_where4attr4itemNtB4_11DeriveWhere8contains(ptr align 8, i8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtCs5aWdnx8MJVa_12derive_where6trait_NtB4_11DeriveTraitNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_and(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_star(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_lt(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_gt(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_dot(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationNtB2_8ToTokens9to_tokensBD_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_eq(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_semi(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_eq_eq(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtCslCbDOIcU2Dw_5quote9___privateINtB5_9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCslCbDOIcU2Dw_5quote9___private9RepInterpNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECs5aWdnx8MJVa_12derive_where(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecINtNtB4_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEE13with_capacityCs5aWdnx8MJVa_12derive_where(ptr sret([24 x i8]) align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtNtCshzWfHUSfYae_4core5slice4iterRSNtNtCs5aWdnx8MJVa_12derive_where4data4DataNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB2e_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEEBN_(ptr sret([64 x i8]) align 8, ptr, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB25_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEENtNtNtBa_6traits8iterator8Iterator3mapNtCs1K5DUQUZc67_11proc_macro211TokenStreamNCNvNtNtB1l_6trait_10common_ord24build_discriminant_order0EB1l_(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCs5aWdnx8MJVa_12derive_where4item14RepresentationE9unwrap_orBL_(i8, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCs5aWdnx8MJVa_12derive_where4itemNtB5_14Representation8to_token(ptr sret([32 x i8]) align 8, i8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @_RNvMNtCs5aWdnx8MJVa_12derive_where4itemNtB2_4Item5ident(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn8generics12ImplGenericsNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_colon(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn8generics12TypeGenericsNtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_rarrow(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRINtNtCshzWfHUSfYae_4core6option6OptionRNtNtCsgFSQ9XOTBNe_3syn8generics11WhereClauseENtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB2k_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEENCNvNtNtB1A_6trait_10common_ord24build_discriminant_order0ENtNtNtCslCbDOIcU2Dw_5quote9___private3ext14RepIteratorExt15quote_into_iterB1A_(ptr sret([64 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB2q_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEENCNvNtNtB1G_6trait_10common_ord24build_discriminant_order0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB2D_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEENCNvNtNtB1T_6trait_10common_ord24build_discriminant_order0EEB1T_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEE3lenCs5aWdnx8MJVa_12derive_where(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE3newBG_(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs3_NtCsgFSQ9XOTBNe_3syn3litNtB5_6LitInt3new(ptr, i64, i32, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsgFSQ9XOTBNe_3syn3lit6LitIntINtB5_4IntoNtBA_3LitE4intoCs5aWdnx8MJVa_12derive_where(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsgFSQ9XOTBNe_3syn4expr7ExprLitINtB5_4IntoNtBA_4ExprE4intoCs5aWdnx8MJVa_12derive_where(ptr sret([176 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringQjNtB5_8ToString9to_stringCs5aWdnx8MJVa_12derive_where(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsx_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCs5aWdnx8MJVa_12derive_where(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNvXsd_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs5aWdnx8MJVa_12derive_where(ptr align 8, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal16usize_unsuffixed(ptr sret([24 x i8]) align 8, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtB2_8ToTokens9to_tokensCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private8push_add(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXss_NtCslCbDOIcU2Dw_5quote9to_tokensNtCs1K5DUQUZc67_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgFSQ9XOTBNe_3syn11parse_quote5parseNtNtB4_4expr4ExprECs5aWdnx8MJVa_12derive_where(ptr sret([176 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro27LiteralEBD_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEE4pushCs5aWdnx8MJVa_12derive_where(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEECs5aWdnx8MJVa_12derive_where(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvNtNtBN_6trait_10common_ord26build_incomparable_pattern0EBN_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB1r_6trait_10common_ord26build_incomparable_pattern0ENtNtNtBa_6traits8iterator8Iterator3mapNtCs1K5DUQUZc67_11proc_macro211TokenStreamNCB26_s_0EB1r_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB1G_6trait_10common_ord26build_incomparable_pattern0ENCB2l_s_0ENtNtNtB9_6traits8iterator8Iterator8peekableB1G_(ptr sret([48 x i8]) align 8, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2c_6trait_10common_ord26build_incomparable_pattern0ENCB2R_s_0EE4peekB2c_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtCs1K5DUQUZc67_11proc_macro211TokenStreamE7is_someCs5aWdnx8MJVa_12derive_where(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB26_6trait_10common_ord26build_incomparable_pattern0ENCB2L_s_0EENtNtNtCslCbDOIcU2Dw_5quote9___private3ext14RepIteratorExt15quote_into_iterB26_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_3map3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2b_6trait_10common_ord26build_incomparable_pattern0ENCB2Q_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtBG_6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs5aWdnx8MJVa_12derive_where4data4DataENCNvNtNtB2p_6trait_10common_ord26build_incomparable_pattern0ENCB34_s_0EEEB2p_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslCbDOIcU2Dw_5quote9___private7push_or(ptr align 8) unnamed_addr #1

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint }
attributes #7 = { cold }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { noinline noreturn }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i64 8076898689528867176}
!5 = !{}
!6 = !{!"address", !"read_provenance"}
!7 = !{i64 -4560671297895873954}
!8 = !{i64 -5597476635121529500}
!9 = !{i64 6988924757362201457}
!10 = !{i64 8727859729976025025}
!11 = !{i64 -7674278147941280260}
!12 = !{i64 -5583331077649763483}
!13 = !{i64 -7135129488777174072}
!14 = !{i64 -1390781848674166742}
!15 = !{i64 -7060120193306824259}
end_hunk_4
