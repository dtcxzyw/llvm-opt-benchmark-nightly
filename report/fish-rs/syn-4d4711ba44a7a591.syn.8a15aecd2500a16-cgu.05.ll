Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/syn-4d4711ba44a7a591.syn.8a15aecd2500a16-cgu.05?download=true
inline.NumInlined: 76
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [75 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/slice.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"J\00\00\00\00\00\00\00\B0\01\00\00\15\00\00\00" }>, align 8
@2 = private unnamed_addr constant [14 x i8] c"expected ident", align 1
@3 = private unnamed_addr constant [4 x i8] c"true", align 1
@4 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@5 = private unnamed_addr constant [5 x i8] c"false", align 1
@6 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@7 = private unnamed_addr constant [16 x i8] c"expected literal", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro28LexErrorECscHOZfnuBWzf_5quote, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsf_Cs6lkCCFP1haM_11proc_macro2NtB5_8LexErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@9 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@10 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@11 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/precedence.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"b\00\00\00\00\00\00\00\B9\00\00\00U\00\00\00" }>, align 8
@13 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/lit.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00\9A\00\00\00<\00\00\00" }>, align 8
@15 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/attr.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\AC\01\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\9D\01\00\00\18\00\00\00" }>, align 8
@18 = private unnamed_addr constant [11 x i8] c"(/*ERROR*/)", align 1
@19 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @18, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00K\01\00\00>\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00n\01\00\00=\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00\91\01\00\00=\00\00\00" }>, align 8
@23 = private unnamed_addr constant [30 x i8] c"\19not an integer literal: `\C0\01`\00", align 1
@24 = private unnamed_addr constant [27 x i8] c"\16not a float literal: `\C0\01`\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00c\02\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00(\01\00\00A\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\1C\02\00\00'\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\1D\02\00\00&\00\00\00" }>, align 8
@29 = private unnamed_addr constant [56 x i8] c".expected attribute arguments in parentheses: `\C0\06(...)`\00", align 1
@30 = private unnamed_addr constant [12 x i8] c"expected `(`", align 1
@31 = private unnamed_addr constant [29 x i8] c"unexpected token in attribute", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00.\02\00\00'\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00/\02\00\00&\00\00\00" }>, align 8
@34 = private unnamed_addr constant [49 x i8] c"&expected a value for this attribute: `\C0\07 = ...`\00", align 1
@35 = private unnamed_addr constant [12 x i8] c"expected `=`", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00\97\03\00\00\0E\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00\9A\03\00\003\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"[\00\00\00\00\00\00\00\A9\03\00\00/\00\00\00" }>, align 8
@39 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/path.rs\00", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @39, [16 x i8] c"\\\00\00\00\00\00\00\00\9A\03\00\00\14\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ [4 x i8], [8 x i8] }> <{ [4 x i8] zeroinitializer, [8 x i8] undef }>, align 4
@42 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@43 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/classify.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"`\00\00\00\00\00\00\00j\00\00\00%\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"`\00\00\00\00\00\00\00w\00\00\00\1D\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\B6\02\00\00\18\00\00\00" }>, align 8
@47 = private unnamed_addr constant [28 x i8] c"expected byte string literal", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\C6\02\00\00\18\00\00\00" }>, align 8
@49 = private unnamed_addr constant [25 x i8] c"expected C string literal", align 1
@50 = private unnamed_addr constant [21 x i8] c"expected byte literal", align 1
@51 = private unnamed_addr constant [26 x i8] c"expected character literal", align 1
@52 = private unnamed_addr constant [24 x i8] c"expected integer literal", align 1
@53 = private unnamed_addr constant [31 x i8] c"expected floating point literal", align 1
@54 = private unnamed_addr constant [24 x i8] c"expected boolean literal", align 1
@55 = private unnamed_addr constant [7 x i8] c"literal", align 1
@56 = private unnamed_addr constant [14 x i8] c"string literal", align 1
@57 = private unnamed_addr constant [23 x i8] c"expected string literal", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\\\00\00\00\00\00\00\00\BE\02\00\00\18\00\00\00" }>, align 8
@59 = private unnamed_addr constant [19 x i8] c"byte string literal", align 1
@60 = private unnamed_addr constant [16 x i8] c"C-string literal", align 1
@61 = private unnamed_addr constant [12 x i8] c"byte literal", align 1
@62 = private unnamed_addr constant [17 x i8] c"character literal", align 1
@63 = private unnamed_addr constant [15 x i8] c"integer literal", align 1
@64 = private unnamed_addr constant [22 x i8] c"floating point literal", align 1
@65 = private unnamed_addr constant [15 x i8] c"boolean literal", align 1
@switch.table._RNvMNtCsJWcWohxsl6_3syn10precedenceNtB2_10Precedence8of_binop = private unnamed_addr constant [28 x i8] c"\0B\0B\0C\0C\0C\04\03\08\09\07\0A\0A\06\06\06\06\06\06\01\01\01\01\01\01\01\01\01\01", align 1
@switch.table._RNvMNtNtCsJWcWohxsl6_3syn3lit5valueNtB4_3Lit6suffix = private unnamed_addr constant [7 x i8] c"\18\18\18\18\18((", align 8
@switch.table._RNvMNtNtCsJWcWohxsl6_3syn3lit5valueNtB4_3Lit6suffix.1 = private unnamed_addr constant [7 x i8] c"     00", align 8

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RINvMsv_NtCs6lkCCFP1haM_11proc_macro23impNtB6_7Literal7subspanINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECsJWcWohxsl6_3syn(ptr align 8 %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_RINvMsn_NtCs6lkCCFP1haM_11proc_macro28fallbackNtB6_7Literal7subspanINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECsJWcWohxsl6_3syn(ptr nonnull align 8 %0, i64 %1, i64 %2)
  %i.c = tail call { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs6lkCCFP1haM_11proc_macro28fallback4SpanE3mapNtNtBM_3imp4SpanNcNtB1w_8Fallback0ECsJWcWohxsl6_3syn(i1 zeroext %i.b) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call i32 @_RINvMsP_Csa5ERaWwhjCQ_10proc_macroNtB6_7Literal7subspanINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECsJWcWohxsl6_3syn(ptr nonnull align 4 %i.d, i64 %1, i64 %2)
  %i.f = tail call { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsa5ERaWwhjCQ_10proc_macro4SpanE3mapNtNtCs6lkCCFP1haM_11proc_macro23imp4SpanNcNtB1k_8Compiler0ECsJWcWohxsl6_3syn(i32 %i.e) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i32, i32 } [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret { i32, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvNtNtCs6lkCCFP1haM_11proc_macro25probe15proc_macro_span7subspanINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECsJWcWohxsl6_3syn(ptr align 4 %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RINvMsP_Csa5ERaWwhjCQ_10proc_macroNtB6_7Literal7subspanINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECsJWcWohxsl6_3syn(ptr align 4 %0, i64 %1, i64 %2)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsJWcWohxsl6_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.023 = alloca [224 x i8], align 8         ; 2 uses
  %.sroa.426 = alloca [12 x i8], align 4          ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = tail call { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6lkCCFP1haM_11proc_macro2(i64 %2, i64 8, i64 248) #19 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 5 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw [248 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.c, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.n = phi i64 [ %.pr, %bb.g ], [ %i.g, %bb.a ]
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsJWcWohxsl6_3syn4attr9AttributeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_(ptr nonnull align 8 %i.c)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.a
  store i64 %2, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc12, %.noexc, %bb.d, %.lr.ph, %bb.e
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtCsJWcWohxsl6_3syn4attr9AttributeNtNtBM_5alloc6GlobalEEB21_(ptr nonnull align 8 %i.d) #20
          to label %bb.i unwind label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 4 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 5 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.q, ptr %i.k, align 8
  %i.s = icmp ult i64 %i.q, %i.g
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.u = invoke i32 @_RNvXsbx_NtCsJWcWohxsl6_3syn5tokenNtB6_5PoundNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull align 4 %i.t)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 236
  invoke void @_RNvXscr_NtCsJWcWohxsl6_3syn5tokenNtB6_7BracketNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %i.w)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc
  invoke void @_RNvXsN_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_4attr4MetaNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([224 x i8]) align 8 %i.a, ptr nonnull align 8 %i.r)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.q, i64 %i.g, ptr nonnull align 8 @1) #21
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.noexc12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.426, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.023, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw [248 x i8], ptr %i.h, i64 %i.q ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.023, i64 224, i1 false)
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.224.0..sroa_idx, align 8
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  store i32 %i.u, ptr %.sroa.325.0..sroa_idx, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.426, i64 12, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.y = icmp eq i64 %.pr, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.e) #20
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp34
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtNtCsJWcWohxsl6_3syn4path8printing37print_parenthesized_generic_arguments0B7_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXNtNtCsJWcWohxsl6_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_2ty4TypeNtNtB6_5token5CommaENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB6_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXNtCsJWcWohxsl6_3syn3extNtCs6lkCCFP1haM_11proc_macro25IdentNtB4_8IdentExt9parse_any0B6_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = tail call align 8 ptr @_RNvXs3_NtCsJWcWohxsl6_3syn5parseNtB5_10StepCursorNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr align 8 %1) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void @_RNvMs_NtCsJWcWohxsl6_3syn6bufferNtB4_6Cursor5ident(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr %i.e, ptr %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvMs6_NtCsJWcWohxsl6_3syn5parseNtB6_10StepCursor5errorReEB8_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull @2, i64 14)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXNtNtCsJWcWohxsl6_3syn3lit7parsingNtB6_3LitNtNtB8_5parse5Parse5parse0B8_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [4 x i8], align 4                 ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [12 x i8], align 4                ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [40 x i8], align 8                ; 13 uses
  %i.z = alloca [12 x i8], align 4                ; 3 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.ad = alloca [40 x i8], align 8               ; 4 uses
  %i.ae = tail call align 8 ptr @_RNvXs3_NtCsJWcWohxsl6_3syn5parseNtB5_10StepCursorNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr align 8 %1) ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @_RNvMs_NtCsJWcWohxsl6_3syn6bufferNtB4_6Cursor7literal(ptr nonnull sret([40 x i8]) align 8 %i.ad, ptr %i.af, ptr %i.ah)
  %i.ai = load i64, ptr %i.ad, align 8
  %.not = icmp eq i64 %i.ai, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8
  call void @_RNvMNtNtCsJWcWohxsl6_3syn3lit5valueNtB4_3Lit3new(ptr nonnull sret([24 x i8]) align 8 %.sroa.0, ptr nonnull align 8 %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store <2 x ptr> %i.ak, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.al = call align 8 ptr @_RNvXs3_NtCsJWcWohxsl6_3syn5parseNtB5_10StepCursorNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr align 8 %1) ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void @_RNvMs_NtCsJWcWohxsl6_3syn6bufferNtB4_6Cursor5ident(ptr nonnull sret([40 x i8]) align 8 %i.ac, ptr %i.am, ptr %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aq = load i8, ptr %i.ap, align 8
  %.not12 = icmp eq i8 %i.aq, -1
  br i1 %.not12, label %bb.n, label %bb.e

bb.d:                                             ; preds = %bb.l, %bb.bt, %bb.p, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  %i.at = invoke zeroext i1 @_RNvXsz_Cs6lkCCFP1haM_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.ab, ptr nonnull align 8 @4)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ab) #20
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = invoke zeroext i1 @_RNvXsz_Cs6lkCCFP1haM_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCsJWcWohxsl6_3syn(ptr nonnull align 8 %i.ab, ptr nonnull align 8 @6)
          to label %bb.j unwind label %bb.f

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.aw = invoke i32 @_RNvMsx_Cs6lkCCFP1haM_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.ab)
          to label %bb.l unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  br i1 %i.av, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ab)
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ax = zext i1 %i.at to i8
  store i64 -9223372036854775801, ptr %0, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aw, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ax, ptr %.sroa.01.sroa.3.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.as, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ab)
  br label %bb.d

bb.m:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.f ], [ %.pn27.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.c, %bb.k
  %i.az = call align 8 ptr @_RNvXs3_NtCsJWcWohxsl6_3syn5parseNtB5_10StepCursorNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr align 8 %1) ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void @_RNvMs_NtCsJWcWohxsl6_3syn6bufferNtB4_6Cursor5punct(ptr nonnull sret([32 x i8]) align 8 %i.aa, ptr %i.ba, ptr %i.bc)
  %i.bd = load i32, ptr %i.aa, align 8
  %.not13 = icmp eq i32 %i.bd, -1
  br i1 %.not13, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i32 @_RNvMsu_Cs6lkCCFP1haM_11proc_macro2NtB5_5Punct7as_char(ptr nonnull align 4 %i.z)
  %i.bj = icmp eq i32 %i.bi, 45
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvNtNtCsJWcWohxsl6_3syn3lit7parsing18parse_negative_lit.exit, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvMs6_NtCsJWcWohxsl6_3syn5parseNtB6_10StepCursor5errorReEB8_(ptr nonnull sret([24 x i8]) align 8 %i.x, ptr nonnull align 8 %i.u, ptr nonnull @7, i64 16)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_0
