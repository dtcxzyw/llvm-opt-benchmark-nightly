Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/bytecheck_derive-bdc67c3bae031cdb.bytecheck_derive.879b704bd8435860-cgu.1?download=true
inline.NumInlined: 71
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.119/src/attr.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\\\00\00\00\00\00\00\00\FC\00\00\00'\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\\\00\00\00\00\00\00\00\FD\00\00\00&\00\00\00" }>, align 8
@3 = private unnamed_addr constant [58 x i8] c"-expected attribute arguments in parentheses: \C0\01[\C0\06(...)]\00", align 1
@4 = private unnamed_addr constant [35 x i8] c"\16expected parentheses: \C0\01[\C0\06(...)]\00", align 1
@5 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.119/src/meta.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\\\00\00\00\00\00\00\00{\01\00\00,\00\00\00" }>, align 8
@7 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@8 = private unnamed_addr constant [21 x i8] c"\C0\12 already specified\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\\\00\00\00\00\00\00\00\8B\01\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\\\00\00\00\00\00\00\00\87\01\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\\\00\00\00\00\00\00\00\86\01\00\00\14\00\00\00" }>, align 8
@12 = private unnamed_addr constant [9 x i8] c"bytecheck", align 1
@13 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytecheck_derive-0.8.2/src/attributes.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\00W\00\00\00 \00\00\00" }>, align 8
@15 = private unnamed_addr constant [4 x i8] c"repr", align 1
@16 = private unnamed_addr constant [1 x i8] c"C", align 1
@17 = private unnamed_addr constant [11 x i8] c"transparent", align 1
@18 = private unnamed_addr constant [10 x i8] c"\00\01\02\03\04\05\06\07\08\09", align 1
@19 = private unnamed_addr constant [5 x i8] c"align", align 1
@20 = private unnamed_addr constant [6 x i8] c"packed", align 1
@21 = private unnamed_addr constant [26 x i8] c"unrecognized repr argument", align 1
@22 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytecheck_derive-0.8.2/src/repr.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"g\00\00\00\00\00\00\00m\00\00\00!\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"g\00\00\00\00\00\00\00l\00\00\00#\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"g\00\00\00\00\00\00\00e\00\00\00\1D\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"g\00\00\00\00\00\00\00d\00\00\00\1F\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\00W\00\00\00\0E\00\00\00" }>, align 8
@28 = private unnamed_addr constant [6 x i8] c"bounds", align 1
@29 = private unnamed_addr constant [5 x i8] c"crate", align 1
@30 = private unnamed_addr constant [6 x i8] c"verify", align 1
@31 = private unnamed_addr constant [31 x i8] c"unrecognized bytecheck argument", align 1
@32 = private unnamed_addr constant [30 x i8] c"verify argument must be a path", align 1
@33 = private unnamed_addr constant [33 x i8] c"expected `crate` or `crate = ...`", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\001\00\00\00\15\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\00,\00\00\00\1C\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\00(\00\00\00\11\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\00K\00\00\00\11\00\00\00" }>, align 8
@38 = private unnamed_addr constant [2 x i8] c"i8", align 1
@39 = private unnamed_addr constant [3 x i8] c"i16", align 1
@40 = private unnamed_addr constant [3 x i8] c"i32", align 1
@41 = private unnamed_addr constant [3 x i8] c"i64", align 1
@42 = private unnamed_addr constant [5 x i8] c"isize", align 1
@43 = private unnamed_addr constant [2 x i8] c"u8", align 1
@44 = private unnamed_addr constant [3 x i8] c"u16", align 1
@45 = private unnamed_addr constant [3 x i8] c"u32", align 1
@46 = private unnamed_addr constant [3 x i8] c"u64", align 1
@47 = private unnamed_addr constant [5 x i8] c"usize", align 1
@48 = private unnamed_addr constant [71 x i8] c"to_digit: invalid radix -- radix must be in the range 2 to 36 inclusive", align 1
@49 = private unnamed_addr constant [81 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/char/methods.rs\00", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"P\00\00\00\00\00\00\00\93\01\00\00\09\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"g\00\00\00\00\00\00\00T\00\00\00\0D\00\00\00" }>, align 8
@52 = private unnamed_addr constant [11 x i8] c"omit_bounds", align 1
@53 = private unnamed_addr constant [32 x i8] c"unrecognized bytecheck arguments", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"m\00\00\00\00\00\00\00o\00\00\00\11\00\00\00" }>, align 8
@55 = private unnamed_addr constant [209 x i8] c"unsafe precondition(s) violated: NonZero::new_unchecked requires the argument to be non-zero\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@56 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@57 = private unnamed_addr constant [85 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/proc_macro/src/bridge/rpc.rs\00", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"T\00\00\00\00\00\00\00\8A\00\00\00&\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"g\00\00\00\00\00\00\003\00\00\00\15\00\00\00" }>, align 8
@60 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.119/src/parse.rs\00", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"]\00\00\00\00\00\00\00!\05\00\00\09\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"]\00\00\00\00\00\00\00 \05\00\00\14\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"]\00\00\00\00\00\00\00\11\05\00\00\09\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"]\00\00\00\00\00\00\00\10\05\00\00\14\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"T\00\00\00\00\00\00\00o\00\00\00\01\00\00\00" }>, align 8
@switch.table._RNvXs_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB4_9PrimitiveNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens = private unnamed_addr constant [10 x i8] c"\02\03\03\03\05\02\03\03\03\05", align 8
@switch.table._RNvXs_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB4_9PrimitiveNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens.15 = private unnamed_addr constant [10 x ptr] [ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslNEiUQgeYIG_3syn5errorNtB3_5Error11new_spannedRNtCsghEUimwObfx_11proc_macro25IdentReECsbDPHjAM0yJM_16bytecheck_derive(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @_RNvYRNtCsghEUimwObfx_11proc_macro25IdentNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCslNEiUQgeYIG_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  call void @_RNvNvMNtCslNEiUQgeYIG_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.b) #17
          to label %bb.b unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core9panicking13panic_displayNtNtCslNEiUQgeYIG_3syn5error5ErrorECsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCslNEiUQgeYIG_3syn5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @7, ptr nonnull %i.a, ptr align 8 %1) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbDPHjAM0yJM_16bytecheck_derive10attributes17try_set_attributeNtNtCslNEiUQgeYIG_3syn4path4PathEB4_(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1, ptr nonnull align 8 %2, ptr %3, i64 range(i64 5, 7) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %4, ptr %i.m, align 8
  %i.n = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCslNEiUQgeYIG_3syn4path4PathE7is_noneCsbDPHjAM0yJM_16bytecheck_derive(ptr align 8 %1)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayReECsghEUimwObfx_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.l)
          to label %bb.e unwind label %bb.t

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslNEiUQgeYIG_3syn4path4PathEECsbDPHjAM0yJM_16bytecheck_derive(ptr align 8 %1)
          to label %bb.w unwind label %bb.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.o = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj15_Kj1_ECsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull @8, ptr nonnull align 8 %i.f)
          to label %bb.f unwind label %bb.t       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %i.q = extractvalue { ptr, ptr } %i.o, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr %i.p, ptr %i.q)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc.i.i unwind label %bb.j, !noalias !10

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_RNvXs0_NtNtCslNEiUQgeYIG_3syn4path8printingNtB7_4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.k unwind label %bb.h, !noalias !11

bb.h:                                             ; preds = %.noexc.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.a) #17
          to label %.body.i.i unwind label %bb.i, !noalias !11

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !11
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.r, %bb.h ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4path4PathEBF_(ptr nonnull align 8 %i.b) #17
          to label %.body.i unwind label %bb.l, !noalias !10

bb.k:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4path4PathEBF_(ptr nonnull align 8 %i.b)
          to label %_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i unwind label %bb.m, !noalias !9

bb.l:                                             ; preds = %.body.i.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !10
  unreachable

.body.i:                                          ; preds = %bb.q, %bb.n, %bb.m, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.q ], [ %i.w, %bb.n ], [ %i.v, %bb.m ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.h) #17
          to label %.thread unwind label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i: ; preds = %bb.k
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCslNEiUQgeYIG_3syn(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.h)
          to label %bb.o unwind label %bb.q, !noalias !9

bb.n:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.o:                                             ; preds = %_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i
  invoke void @_RNvNvMNtCslNEiUQgeYIG_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.d) #17
          to label %.body.i unwind label %bb.r, !noalias !9

bb.r:                                             ; preds = %bb.q, %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.s:                                             ; preds = %bb.w, %bb.p
  ret void

bb.t:                                             ; preds = %bb.c, %bb.f, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4path4PathEBF_(ptr nonnull align 8 %i.i) #17
          to label %.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.v:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtCslNEiUQgeYIG_3syn10punctuated4IterNtNtB19_4data7VariantEIB15_NtB1K_5FieldEFG_RL0_B1I_EIB15_L0_B29_EENtNtNtB9_6traits8iterator8Iterator4nextCsbDPHjAM0yJM_16bytecheck_derive:bb.a
bb.q:                                             ; preds = %bb.o
  store ptr null, ptr %i.q, align 8
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCslNEiUQgeYIG_3syn10punctuated4IterNtNtB1w_4data7VariantEFG_RL0_B25_EIB1s_L0_NtB27_5FieldEEIB1s_B2L_EENtNtNtB9_6traits8iterator8Iterator4nextCsbDPHjAM0yJM_16bytecheck_derive.exit

bb.r:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.o, ptr %0, align 8
  store ptr %i.p, ptr %i.d, align 8
  br label %common.resume.i

bb.s:                                             ; preds = %bb.m
  store ptr %i.o, ptr %0, align 8
  store ptr %i.p, ptr %i.d, align 8
  br label %bb.b

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCslNEiUQgeYIG_3syn10punctuated4IterNtNtB1w_4data7VariantEFG_RL0_B25_EIB1s_L0_NtB27_5FieldEEIB1s_B2L_EENtNtNtB9_6traits8iterator8Iterator4nextCsbDPHjAM0yJM_16bytecheck_derive.exit: ; preds = %bb.c, %.loopexit.i, %bb.n, %bb.q
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.n ], [ null, %.loopexit.i ], [ null, %bb.q ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCslNEiUQgeYIG_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbDPHjAM0yJM_16bytecheck_derive(ptr nofree align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -296 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCslNEiUQgeYIG_3syn8generics14WherePredicateNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbDPHjAM0yJM_16bytecheck_derive(ptr nofree align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -320 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden range(i32 1, 0) i32 @_RNvXs3_NtNtCstuaXukgBIa_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive(ptr nofree align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.c, ptr nonnull align 8 @65) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs3fkuTcS0S8g_11miniz_oxide(ptr nonnull %i.a, i64 4, ptr %i.e, i64 4, ptr nonnull align 8 @65)
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.d, label %_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 4, i64 %i.f, i64 %i.f, ptr nonnull align 8 @65) #19
  unreachable

_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = add i64 %i.f, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.j, ptr %0, align 8
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.e, label %_RNvXs5_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit

bb.e:                                             ; preds = %_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @58) #19
  unreachable

_RNvXs5_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit: ; preds = %_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i
  ret i32 %.sroa.0.0.copyload.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsdQT5ZjIgVrW_5quote9___privateINtB5_9RepInterpNtCsghEUimwObfx_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCsbDPHjAM0yJM_16bytecheck_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsu_NtCsdQT5ZjIgVrW_5quote9to_tokensNtCsghEUimwObfx_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterTNtNtCslNEiUQgeYIG_3syn4data7VariantNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsbDPHjAM0yJM_16bytecheck_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterTNtNtCslNEiUQgeYIG_3syn8generics14WherePredicateNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsbDPHjAM0yJM_16bytecheck_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden range(i32 1, 0) i32 @_RNvXs7_NtNtCstuaXukgBIa_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive(ptr nofree align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.c, ptr nonnull align 8 @65) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs3fkuTcS0S8g_11miniz_oxide(ptr nonnull %i.a, i64 4, ptr %i.e, i64 4, ptr nonnull align 8 @65)
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.d, label %_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 4, i64 %i.f, i64 %i.f, ptr nonnull align 8 @65) #19
  unreachable

_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = add i64 %i.f, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.j, ptr %0, align 8
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.e, label %_RNvXs5_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit

bb.e:                                             ; preds = %_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @58) #19
  unreachable

_RNvXs5_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit: ; preds = %_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsbDPHjAM0yJM_16bytecheck_derive.exit.i
  ret i32 %.sroa.0.0.copyload.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCsbDPHjAM0yJM_16bytecheck_derive(ptr %0, i64 %1, ptr align 8 %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  call void @_RINvMs3_NtNtCstuaXukgBIa_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsbDPHjAM0yJM_16bytecheck_derive(ptr align 8 %2, ptr nonnull %i.a)
  call void @_RNvMs3_NtNtCstuaXukgBIa_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_sliceCsbDPHjAM0yJM_16bytecheck_derive(ptr align 8 %2, ptr %0, i64 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB4_9PrimitiveNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.val = load i8, ptr %0, align 1                ; 2 uses
  %i.d = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB4_9PrimitiveNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %.val to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB4_9PrimitiveNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens.15, i64 %i.e
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.f = tail call i32 @_RNvMsi_CsghEUimwObfx_11proc_macro2NtB5_4Span9call_site()
  call void @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull %switch.load3, i64 %switch.ext, i32 %i.f, ptr nonnull align 8 @59)
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.a:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.h, %bb.d ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.c) #17
          to label %bb.h unwind label %bb.g

bb.b:                                             ; preds = %bb.e, %switch.lookup
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.a

bb.c:                                             ; preds = %switch.lookup
  invoke void @_RNvXsq_NtCsdQT5ZjIgVrW_5quote9to_tokensNtCsghEUimwObfx_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.a) #17
          to label %bb.a unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RINvXs4_CsghEUimwObfx_11proc_macro2NtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendBx_ECslNEiUQgeYIG_3syn(ptr align 8 %1, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.c)
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.h:                                             ; preds = %bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCslNEiUQgeYIG_3syn10punctuated4IterNtNtB1c_4data5FieldEENtNtNtB8_6traits8iterator8Iterator4nextCsbDPHjAM0yJM_16bytecheck_derive(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXst_NtCslNEiUQgeYIG_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8 %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNCINvNtB7_4meta6parserNCNvMNtCsbDPHjAM0yJM_16bytecheck_derive10attributesNtBW_10Attributes5parse0E0NtB5_6Parser14___parse_scopedBY_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i32 %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [56 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [56 x i8], align 8               ; 14 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 12 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [24 x i8], align 8               ; 2 uses
  %i.ao = alloca [32 x i8], align 8               ; 2 uses
  %i.ap = alloca [24 x i8], align 8               ; 2 uses
  %i.aq = alloca [24 x i8], align 8               ; 2 uses
  %i.ar = alloca [24 x i8], align 8               ; 3 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 3 uses
  %i.au = alloca [32 x i8], align 8               ; 11 uses
  %i.av = alloca [16 x i8], align 8               ; 2 uses
  %i.aw = alloca [16 x i8], align 8               ; 2 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ay = call { ptr, i64 } @_RNvMNtCslNEiUQgeYIG_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.ao) ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  store ptr %i.az, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = invoke { ptr, ptr } @_RNvMNtCslNEiUQgeYIG_3syn6bufferNtB2_11TokenBuffer5begin(ptr nonnull align 8 %i.ax)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.body, %bb.c
  %.pn9 = phi { ptr, i32 } [ %i.bd, %bb.c ], [ %.pn, %.body ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.ax) #17
          to label %bb.cu unwind label %bb.ct

bb.c:                                             ; preds = %.invoke26, %bb.f, %bb.e, %bb.d, %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.be = extractvalue { ptr, ptr } %i.bc, 0
  %i.bf = extractvalue { ptr, ptr } %i.bc, 1
  store i8 0, ptr %i.av, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCslNEiUQgeYIG_3syn5parse10UnexpectedE3newBK_(ptr nonnull sret([16 x i8]) align 8 %i.aw, ptr nonnull align 8 %i.av)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bg = invoke ptr @_RNvMs7_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell4CellNtNtCslNEiUQgeYIG_3syn5parse10UnexpectedEE3newB1e_(ptr nonnull align 8 %i.aw)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5parse16new_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.au, i32 %2, ptr %i.be, ptr %i.bf, ptr %i.bg)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.bh = invoke zeroext i1 @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.au)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  br i1 %i.bh, label %bb.ce, label %bb.h

bb.h:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !69
  %.sroa.2.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.noexc25, %bb.h
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer4callNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.ak, ptr nonnull align 8 %i.au, ptr nonnull @_RNvNtCslNEiUQgeYIG_3syn4meta15parse_meta_path)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.i
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.al, ptr nonnull align 8 %i.ak)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %.noexc13
  %i.bo = load i64, ptr %i.al, align 8, !noalias !71
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !71
  br label %.invoke

end_hunk_1
begin_hunk_2_@_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNCINvNtB7_4meta6parserNCNvMNtCsbDPHjAM0yJM_16bytecheck_derive10attributesNtBW_10Attributes5parse0E0NtB5_6Parser14___parse_scopedBY_:bb.a
          to label %bb.cr unwind label %bb.ci

bb.cq:                                            ; preds = %bb.co
  store i64 -1, ptr %0, align 8
  br label %.invoke26

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  br label %.invoke26

bb.cs:                                            ; preds = %.invoke26
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.ax)
  ret void

.invoke26:                                        ; preds = %bb.cl, %bb.cg, %bb.cr, %bb.cq
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.au)
          to label %bb.cs unwind label %bb.c

bb.ct:                                            ; preds = %.body, %bb.b
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cu:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn9
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNCINvNtB7_4meta6parserNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtBZ_4Repr10from_attrss_0E0NtB5_6Parser14___parse_scopedB11_(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, i32 %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [56 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [56 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [56 x i8], align 8               ; 22 uses
  %i.ae = alloca [24 x i8], align 8               ; 11 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [48 x i8], align 8               ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [24 x i8], align 8               ; 2 uses
  %i.ak = alloca [32 x i8], align 8               ; 2 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [24 x i8], align 8               ; 3 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 3 uses
  %i.aq = alloca [32 x i8], align 8               ; 11 uses
  %i.ar = alloca [16 x i8], align 8               ; 2 uses
  %i.as = alloca [16 x i8], align 8               ; 2 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.au = call { ptr, i64 } @_RNvMNtCslNEiUQgeYIG_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.ak) ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0
  %i.aw = extractvalue { ptr, i64 } %i.au, 1
  store ptr %i.av, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = invoke { ptr, ptr } @_RNvMNtCslNEiUQgeYIG_3syn6bufferNtB2_11TokenBuffer5begin(ptr nonnull align 8 %i.at)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.body, %bb.c
  %.pn9 = phi { ptr, i32 } [ %i.az, %bb.c ], [ %.pn, %.body ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.at) #17
          to label %bb.cf unwind label %bb.ce

bb.c:                                             ; preds = %.invoke27, %bb.f, %bb.e, %bb.d, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.ba = extractvalue { ptr, ptr } %i.ay, 0
  %i.bb = extractvalue { ptr, ptr } %i.ay, 1
  store i8 0, ptr %i.ar, align 8
  invoke void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCslNEiUQgeYIG_3syn5parse10UnexpectedE3newBK_(ptr nonnull sret([16 x i8]) align 8 %i.as, ptr nonnull align 8 %i.ar)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bc = invoke ptr @_RNvMs7_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell4CellNtNtCslNEiUQgeYIG_3syn5parse10UnexpectedEE3newB1e_(ptr nonnull align 8 %i.as)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5parse16new_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.aq, i32 %2, ptr %i.ba, ptr %i.bb, ptr %i.bc)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.bd = invoke zeroext i1 @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.aq)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  br i1 %i.bd, label %bb.bp, label %bb.h

bb.h:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !95
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.noexc26, %bb.h
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer4callNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.ag, ptr nonnull align 8 %i.aq, ptr nonnull @_RNvNtCslNEiUQgeYIG_3syn4meta15parse_meta_path)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.i
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.ag)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %.noexc13
  %i.bm = load i64, ptr %i.ah, align 8, !noalias !97
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !97
  br label %.invoke

.invoke:                                          ; preds = %bb.bn, %bb.bk, %bb.j
  %i.bp = phi ptr [ %i.y, %bb.j ], [ %i.z, %bb.bk ], [ %i.aa, %bb.bn ]
  %i.bq = phi ptr [ @11, %bb.j ], [ @10, %bb.bk ], [ @9, %bb.bn ]
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.bq)
          to label %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtBS_4Repr10from_attrss_0EBU_.exit.i unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !97
  store ptr %i.aq, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !97
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !97
  %i.br = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @16, i64 1)
          to label %bb.l unwind label %.thread28.loopexit.split-lp.i.i.i, !noalias !99

.thread28.loopexit.i.i.i:                         ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.9.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.8.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.7.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.6.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.5.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.4.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.3.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.2.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.1.i.i.i, %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread28.loopexit.split-lp.i.i.i:                ; preds = %bb.bi, %.invoke.i.i.i, %bb.as, %bb.ac, %bb.r, %.preheader.10.i.i.i, %bb.m, %bb.k
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @17, i64 11)
          to label %bb.o unwind label %.thread28.loopexit.split-lp.i.i.i, !noalias !99

bb.n:                                             ; preds = %bb.l
  store i8 1, ptr %.sroa.0.0.copyload, align 1, !noalias !99
  br label %.critedge.sink.split.i.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.bs, label %bb.p, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %.sroa.2.0.copyload, align 1, !noalias !99
  br label %.critedge.sink.split.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.i.i.i: ; preds = %bb.o
  %4 = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @38, i64 2)
          to label %.noexc.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.i.i.i:                                     ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.i.i.i
  br i1 %4, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.1.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.1.i.i.i: ; preds = %.noexc.i.i.i
  %i.bt = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @39, i64 3)
          to label %.noexc.1.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.1.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.1.i.i.i
  br i1 %i.bt, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.2.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.2.i.i.i: ; preds = %.noexc.1.i.i.i
  %i.bu = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @40, i64 3)
          to label %.noexc.2.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.2.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.2.i.i.i
  br i1 %i.bu, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.3.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.3.i.i.i: ; preds = %.noexc.2.i.i.i
  %i.bv = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @41, i64 3)
          to label %.noexc.3.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.3.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.3.i.i.i
  br i1 %i.bv, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.4.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.4.i.i.i: ; preds = %.noexc.3.i.i.i
  %i.bw = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @42, i64 5)
          to label %.noexc.4.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.4.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.4.i.i.i
  br i1 %i.bw, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.5.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.5.i.i.i: ; preds = %.noexc.4.i.i.i
  %i.bx = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @43, i64 2)
          to label %.noexc.5.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.5.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.5.i.i.i
  br i1 %i.bx, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.6.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.6.i.i.i: ; preds = %.noexc.5.i.i.i
  %i.by = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @44, i64 3)
          to label %.noexc.6.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.6.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.6.i.i.i
  br i1 %i.by, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.7.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.7.i.i.i: ; preds = %.noexc.6.i.i.i
  %i.bz = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @45, i64 3)
          to label %.noexc.7.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.7.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.7.i.i.i
  br i1 %i.bz, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.8.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.8.i.i.i: ; preds = %.noexc.7.i.i.i
  %i.ca = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @46, i64 3)
          to label %.noexc.8.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.8.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.8.i.i.i
  br i1 %i.ca, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.9.i.i.i

_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.9.i.i.i: ; preds = %.noexc.8.i.i.i
  %i.cb = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @47, i64 5)
          to label %.noexc.9.i.i.i unwind label %.thread28.loopexit.i.i.i, !noalias !99

.noexc.9.i.i.i:                                   ; preds = %_RNCNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB9_4Repr10from_attrss_00Bb_.exit.i.9.i.i.i
  br i1 %i.cb, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i, label %.preheader.10.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsbDPHjAM0yJM_16bytecheck_derive4repr9PrimitiveENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMs0_BS_NtBS_4Repr10from_attrss_00EBU_.exit.i.i.i: ; preds = %.noexc.9.i.i.i, %.noexc.8.i.i.i, %.noexc.7.i.i.i, %.noexc.6.i.i.i, %.noexc.5.i.i.i, %.noexc.4.i.i.i, %.noexc.3.i.i.i, %.noexc.2.i.i.i, %.noexc.1.i.i.i, %.noexc.i.i.i
  %.sroa.0.0.ptr.lcssa64.i.i.i = phi ptr [ @18, %.noexc.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 1), %.noexc.1.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 2), %.noexc.2.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 3), %.noexc.3.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 4), %.noexc.4.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 5), %.noexc.5.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 6), %.noexc.6.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 7), %.noexc.7.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 8), %.noexc.8.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @18, i64 9), %.noexc.9.i.i.i ]
  %i.cc = load i8, ptr %.sroa.0.0.ptr.lcssa64.i.i.i, align 1, !noalias !99
  store i8 %i.cc, ptr %.sroa.3.0.copyload, align 1, !noalias !99
  br label %.critedge.sink.split.i.i.i

.preheader.10.i.i.i:                              ; preds = %.noexc.9.i.i.i
  %i.cd = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @19, i64 5)
          to label %bb.q unwind label %.thread28.loopexit.split-lp.i.i.i, !noalias !99

bb.q:                                             ; preds = %.preheader.10.i.i.i
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = invoke zeroext i1 @_RINvMs_NtCslNEiUQgeYIG_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.ad, ptr nonnull @20, i64 6)
          to label %bb.t unwind label %.thread28.loopexit.split-lp.i.i.i, !noalias !99

bb.s:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !99
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5group12parse_parens(ptr nonnull sret([56 x i8]) align 8 %i.w, ptr align 8 %i.cf)
          to label %bb.ax unwind label %bb.aw, !noalias !99

bb.t:                                             ; preds = %bb.r
  br i1 %i.ce, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !99
  store ptr @21, ptr %i.e, align 8, !noalias !100
  store i64 26, ptr %i.be, align 8, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !101

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  invoke void @_RNvXs0_NtNtCslNEiUQgeYIG_3syn4path8printingNtB7_4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i.i.i unwind label %bb.v, !noalias !102

bb.v:                                             ; preds = %.noexc.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.a) #17
          to label %.body.i.i.i.i.i unwind label %bb.w, !noalias !102

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !102
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.x, %bb.v
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.x ], [ %i.cg, %bb.v ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4path4PathEBF_(ptr nonnull align 8 %i.b) #17
          to label %.body unwind label %bb.y, !noalias !101

bb.y:                                             ; preds = %.body.i.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !101
  unreachable

_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4path4PathEBF_(ptr nonnull align 8 %i.b)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %_RNvYNtNtCslNEiUQgeYIG_3syn4path4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCsbDPHjAM0yJM_16bytecheck_derive.exit.i.i.i.i
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCslNEiUQgeYIG_3syn(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %bb.z unwind label %bb.aa, !noalias !100

bb.z:                                             ; preds = %.noexc16
  invoke void @_RNvNvMNtCslNEiUQgeYIG_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !97
  br label %_RNCNvMs0_NtCsbDPHjAM0yJM_16bytecheck_derive4reprNtB7_4Repr10from_attrss_0B9_.exit.i.i

bb.aa:                                            ; preds = %.noexc16
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.d) #17
          to label %.body unwind label %bb.ab, !noalias !100

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !100
  unreachable

bb.ac:                                            ; preds = %bb.t
  %i.cm = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !99
  %i.cn = invoke zeroext i1 @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ParenNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %i.cm)
          to label %bb.ad unwind label %.thread28.loopexit.split-lp.i.i.i, !noalias !99

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %.sroa.4.0.copyload, align 8, !noalias !99
  store i64 1, ptr %i.bl, align 8, !noalias !99
  br label %.critedge.sink.split.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.co = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !99
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5group12parse_parens(ptr nonnull sret([56 x i8]) align 8 %i.p, ptr align 8 %i.co)
          to label %bb.ah unwind label %bb.ag, !noalias !99

.thread41.i.i.i:                                  ; preds = %bb.at, %bb.ar, %bb.al, %bb.aj, %bb.ai
  %lpad.thr_comm39.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread33.i.i.i

bb.ag:                                            ; preds = %bb.af
  %lpad.thr_comm.split-lp40.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cp = load i64, ptr %i.p, align 8, !noalias !99
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %.sink.split.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !99
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_3lit6LitIntEB8_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.q)
          to label %bb.aj unwind label %.thread41.i.i.i, !noalias !99

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn3lit6LitIntNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m)
          to label %bb.ak unwind label %.thread41.i.i.i, !noalias !99

bb.ak:                                            ; preds = %bb.aj
  %i.cr = load i64, ptr %i.n, align 8, !noalias !99
  %.not9.i.i.i = icmp eq i64 %i.cr, -1
  br i1 %.not9.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !99
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull align 8 %i.h, ptr nonnull align 8 @24)
          to label %.invoke.i.i.i unwind label %.thread41.i.i.i, !noalias !97

bb.am:                                            ; preds = %bb.ak
  %i.cs = load ptr, ptr %i.bg, align 8, !noalias !99
  store ptr %i.cs, ptr %i.o, align 8, !noalias !99
  invoke void @_RINvMs3_NtCslNEiUQgeYIG_3syn3litNtB6_6LitInt12base10_parsejECsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.o)
          to label %bb.ao unwind label %bb.an, !noalias !99

bb.an:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn3lit6LitIntEBF_(ptr nonnull align 8 %i.o) #17
          to label %.thread33.i.i.i unwind label %bb.au, !noalias !97

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultjNtNtCslNEiUQgeYIG_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsbDPHjAM0yJM_16bytecheck_derive(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.ap unwind label %bb.an, !noalias !99

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load i64, ptr %i.l, align 8, !noalias !99
  %.not10.i.i.i = icmp eq i64 %i.cu, -1
  br i1 %.not10.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !99
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull align 8 %i.i, ptr nonnull align 8 @23)
          to label %bb.at unwind label %bb.an, !noalias !97

bb.ar:                                            ; preds = %bb.ap
  %i.cv = load i64, ptr %i.bh, align 8, !noalias !99
  store i64 0, ptr %.sroa.4.0.copyload, align 8, !noalias !99
  store i64 %i.cv, ptr %i.bl, align 8, !noalias !99
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn3lit6LitIntEBF_(ptr nonnull align 8 %i.o)
          to label %bb.as unwind label %.thread41.i.i.i, !noalias !99

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.q)
          to label %.critedge.sink.split.i.i.i unwind label %.thread28.loopexit.split-lp.i.i.i, !noalias !99

bb.at:                                            ; preds = %bb.aq
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn3lit6LitIntEBF_(ptr nonnull align 8 %i.o)
          to label %.invoke.i.i.i unwind label %.thread41.i.i.i, !noalias !97

bb.au:                                            ; preds = %.thread.i.i.i, %.thread46.i.i.i, %bb.bd, %.thread33.i.i.i, %bb.an
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !97
  unreachable

.invoke.i.i.i:                                    ; preds = %bb.bj, %bb.bb, %bb.at, %bb.al
end_hunk_2
