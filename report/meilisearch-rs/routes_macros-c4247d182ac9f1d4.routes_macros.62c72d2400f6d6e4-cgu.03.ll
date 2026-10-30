Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-c4247d182ac9f1d4.routes_macros.62c72d2400f6d6e4-cgu.03?download=true
inline.NumInlined: 120
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [37 x i8] c"the attribute `security` is required.", align 1
@1 = private unnamed_addr constant [7 x i8] c"__path_", align 1
@2 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@3 = private unnamed_addr constant [4 x i8] c"impl", align 1
@4 = private unnamed_addr constant [6 x i8] c"routes", align 1
@5 = private unnamed_addr constant [12 x i8] c"PathWithBody", align 1
@6 = private unnamed_addr constant [3 x i8] c"for", align 1
@7 = private unnamed_addr constant [2 x i8] c"fn", align 1
@8 = private unnamed_addr constant [11 x i8] c"implemented", align 1
@9 = private unnamed_addr constant [2 x i8] c"as", align 1
@10 = private unnamed_addr constant [11 x i8] c"RequestBody", align 1
@11 = private unnamed_addr constant [6 x i8] c"utoipa", align 1
@12 = private unnamed_addr constant [4 x i8] c"path", align 1
@13 = private unnamed_addr constant [4 x i8] c"post", align 1
@14 = private unnamed_addr constant [2 x i8] c"\22\22", align 1
@15 = private unnamed_addr constant [4 x i8] c"tags", align 1
@16 = private unnamed_addr constant [4 x i8] c"Path", align 1
@17 = private unnamed_addr constant [33 x i8] c"crates/routes-macros/src/path.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00o\00\00\00\18\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00m\00\00\00\05\00\00\00" }>, align 8
@20 = private unnamed_addr constant [30 x i8] c"Attribute list cannot be empty", align 1
@21 = private unnamed_addr constant [3 x i8] c"tag", align 1
@22 = private unnamed_addr constant [12 x i8] c"override_tag", align 1
@23 = private unnamed_addr constant [15 x i8] c"no_request_body", align 1
@24 = private unnamed_addr constant [8 x i8] c"security", align 1
@25 = private unnamed_addr constant [12 x i8] c"request_body", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00b\00\00\001\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00]\00\00\001\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00Z\00\00\00\11\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00S\00\00\00=\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00h\00\00\00\19\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00F\00\00\00B\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00+\00\00\00!\00\00\00" }>, align 8
@33 = private unnamed_addr constant [85 x i8] c"Unsupported method parameter. the method is already specified in the API declaration.", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00)\00\00\00\12\00\00\00" }>, align 8
@35 = private unnamed_addr constant [83 x i8] c"Unsupported parameter `path`. the path is already specified in the API declaration.", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00#\00\00\00\12\00\00\00" }>, align 8
@37 = private unnamed_addr constant [121 x i8] c"Unsupported parameter `tag` and `tags`. Use `override_tag` if you don't want to inherit the tag from the API declaration.", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00\1D\00\00\00\12\00\00\00" }>, align 8
@39 = private unnamed_addr constant [3 x i8] c"get", align 1
@40 = private unnamed_addr constant [5 x i8] c"patch", align 1
@41 = private unnamed_addr constant [3 x i8] c"put", align 1
@42 = private unnamed_addr constant [6 x i8] c"delete", align 1
@43 = private unnamed_addr constant [4 x i8] c"head", align 1
@44 = private unnamed_addr constant [7 x i8] c"options", align 1
@45 = private unnamed_addr constant [5 x i8] c"trace", align 1
@46 = private unnamed_addr constant [6 x i8] c"method", align 1
@47 = private unnamed_addr constant [80 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/thread/local.rs\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"O\00\00\00\00\00\00\00\19\01\00\00\19\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@50 = private unnamed_addr constant [90 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/vec/in_place_collect.rs\00", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"Y\00\00\00\00\00\00\00\FB\00\00\00\01\00\00\00" }>, align 8
@52 = private unnamed_addr constant [7 x i8] c"content", align 1
@53 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @52, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00\B5\00\00\00\1E\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00\B2\00\00\00\1E\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00\AF\00\00\00\12\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c" \00\00\00\00\00\00\00\AE\00\00\00!\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_ZN10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapper17h5504c223763d41b7E(ptr sret([40 x i8]) align 8 %0, ptr nofree readonly byval([64 x i8]) align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  invoke void @"_ZN10proc_macro6bridge6client97Client$LT$$LP$proc_macro..TokenStream$C$proc_macro..TokenStream$RP$$C$proc_macro..TokenStream$GT$7expand228_$u7b$$u7b$closure$u7d$$u7d$17h60030997e168ca8fE"(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_ZN10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapper17hc6c1ebf3856f6f58E(ptr sret([40 x i8]) align 8 %0, ptr nofree readonly byval([64 x i8]) align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  invoke void @"_ZN10proc_macro6bridge6client97Client$LT$$LP$proc_macro..TokenStream$C$proc_macro..TokenStream$RP$$C$proc_macro..TokenStream$GT$7expand228_$u7b$$u7b$closure$u7d$$u7d$17he53956140f27238aE"(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_ZN10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapper17he61e6c57385094bdE(ptr sret([40 x i8]) align 8 %0, ptr nofree readonly byval([64 x i8]) align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  invoke void @"_ZN10proc_macro6bridge6client97Client$LT$$LP$proc_macro..TokenStream$C$proc_macro..TokenStream$RP$$C$proc_macro..TokenStream$GT$7expand228_$u7b$$u7b$closure$u7d$$u7d$17hbe1cb34a7f374096E"(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7645305e113a87d3E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.4.i = alloca [7 x i8], align 1           ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.4.0..sroa_idx713.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9
  %i.h = load i64, ptr %1, align 8, !noalias !10
  %.not.i.i = icmp eq i64 %i.h, 4
  br i1 %.not.i.i, label %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$$LP$syn..lit..LitStr$C$$RF$syn..path..Path$C$proc_macro2..Ident$RP$$GT$$GT$17h3e4ea589f665ac26E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19591ca0640aea36E"(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %1), !noalias !10
  %i.i = load i8, ptr %i.f, align 8, !noalias !10 ; 2 uses
  %.not3.i.i = icmp eq i8 %i.i, 3
  br i1 %.not3.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit.thread12.i, label %bb.d

_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit.thread12.i: ; preds = %bb.c
  store i64 4, ptr %1, align 8, !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx713.i, i64 7, i1 false), !noalias !9
  br label %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$$LP$syn..lit..LitStr$C$$RF$syn..path..Path$C$proc_macro2..Ident$RP$$GT$$GT$17h3e4ea589f665ac26E.exit.i"

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx713.i, i64 7, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, i64 7, i1 false)
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.i, ptr %.sroa.29.0..sroa_idx.i, align 8, !alias.scope !9
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had707ba8f215656eE.exit"

"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$$LP$syn..lit..LitStr$C$$RF$syn..path..Path$C$proc_macro2..Ident$RP$$GT$$GT$17h3e4ea589f665ac26E.exit.i": ; preds = %bb.b, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit.thread12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9
  call void @"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h5206d0139d0d550bE"(ptr nonnull sret([88 x i8]) align 8 %i.e, ptr nonnull align 8 %i.g), !noalias !9
  %i.j = load i64, ptr %i.e, align 8, !noalias !9
  %.not1.i = icmp eq i64 %i.j, 4
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$$LP$syn..lit..LitStr$C$$RF$syn..path..Path$C$proc_macro2..Ident$RP$$GT$$GT$17h3e4ea589f665ac26E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !9
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d7f90b61e991c98E"(ptr nonnull sret([88 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d), !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !9
  br label %bb.b

bb.f:                                             ; preds = %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$$LP$syn..lit..LitStr$C$$RF$syn..path..Path$C$proc_macro2..Ident$RP$$GT$$GT$17h3e4ea589f665ac26E.exit.i"
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  %i.l = load i64, ptr %i.k, align 8, !noalias !12
  %.not.i2.i = icmp eq i64 %i.l, 4
  br i1 %.not.i2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19591ca0640aea36E"(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull align 8 %i.k), !noalias !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load i8, ptr %i.m, align 8, !noalias !12
  %.not3.i3.i = icmp eq i8 %i.n, 3
  br i1 %.not3.i3.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.o, align 8, !alias.scope !12
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit4.i

bb.i:                                             ; preds = %bb.g
  store i64 4, ptr %i.k, align 8, !noalias !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit4.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit4.i: ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had707ba8f215656eE.exit"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had707ba8f215656eE.exit": ; preds = %bb.d, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h77ba100c09537fd9E.exit4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb4883524d6db5e0E"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.e = load i64, ptr %0, align 8
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call align 8 ptr @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8972a83757728a98E"(ptr nonnull align 8 %0) ; 2 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %bb.d, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i

bb.d:                                             ; preds = %bb.c
  store i64 2, ptr %0, align 8
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ], [ null, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i, label %bb.e, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1281628d91f08701E.exit"

bb.e:                                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i
  call void @"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hd5b280fe604af824E"(ptr nonnull sret([80 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
  %i.g = load i64, ptr %i.c, align 8
  %.not1.i = icmp eq i64 %i.g, 2
  br i1 %.not1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6056e58bf5101297E"(ptr nonnull sret([80 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not.i2.i = icmp eq i64 %i.i, 2
  br i1 %.not.i2.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1281628d91f08701E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = call align 8 ptr @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8972a83757728a98E"(ptr nonnull align 8 %i.h) ; 2 uses
  %.not6.i3.i = icmp eq ptr %i.j, null
  br i1 %.not6.i3.i, label %bb.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1281628d91f08701E.exit"

bb.i:                                             ; preds = %bb.h
  store i64 2, ptr %i.h, align 8
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1281628d91f08701E.exit"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1281628d91f08701E.exit": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ null, %bb.g ], [ %i.j, %bb.h ], [ %.sroa.0.0.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17haa607f2419fe8e59E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h11872e902896f5b0E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @"_ZN10proc_macro6bridge6client10run_client28_$u7b$$u7b$closure$u7d$$u7d$17h8682cec2d996f8dbE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h70c1f9d5f47431dcE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @"_ZN10proc_macro6bridge6client10run_client28_$u7b$$u7b$closure$u7d$$u7d$17h26df6817e2f830abE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17habc6c9507cee3004E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @"_ZN10proc_macro6bridge6client10run_client28_$u7b$$u7b$closure$u7d$$u7d$17hda85054941c29e19E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN13routes_macros4path8try_path17h964b4cf21f1f53d6E(ptr sret([80 x i8]) align 8 %0, i32 %1, i32 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 15 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 14 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 14 uses
  %i.r = alloca [32 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 2 uses
  %i.v = alloca [32 x i8], align 8                ; 10 uses
  %i.w = alloca [224 x i8], align 8               ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 2 uses
  %i.z = alloca [16 x i8], align 8                ; 2 uses
  %i.aa = alloca [48 x i8], align 8               ; 2 uses
  %i.ab = alloca [24 x i8], align 8               ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 2 uses
  %i.af = alloca [80 x i8], align 8               ; 2 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [352 x i8], align 8              ; 2 uses
  %i.ai = alloca [352 x i8], align 8              ; 4 uses
  %i.aj = alloca [352 x i8], align 8              ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 2 uses
  %i.al = alloca [32 x i8], align 8               ; 2 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [24 x i8], align 8               ; 3 uses
  %i.ao = alloca [40 x i8], align 8               ; 6 uses
  %i.ap = alloca [40 x i8], align 8               ; 2 uses
  %i.aq = alloca [80 x i8], align 8               ; 2 uses
  %i.ar = alloca [1 x i8], align 1                ; 3 uses
  %i.as = alloca [224 x i8], align 8              ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [1 x i8], align 1                ; 3 uses
  %i.av = alloca [24 x i8], align 8               ; 10 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [4 x i8], align 4                ; 4 uses
  store i32 %2, ptr %i.ax, align 4
  invoke void @"_ZN95_$LT$proc_macro2..TokenStream$u20$as$u20$core..convert..From$LT$proc_macro..TokenStream$GT$$GT$4from17hb1763b2acb2d7528E"(ptr nonnull sret([32 x i8]) align 8 %i.aw, i32 %1)
          to label %bb.c unwind label %bb.b

.body35.thread:                                   ; preds = %bb.ex, %.body35, %bb.b
  %.pn31 = phi { ptr, i32 } [ %i.az, %bb.b ], [ %.pn29, %bb.ex ], [ %.pn29, %.body35 ] ; 2 uses
  %.sroa.06.0 = phi i8 [ %.sroa.06.1, %bb.b ], [ %.sroa.06.2, %bb.ex ], [ %.sroa.06.2, %.body35 ]
  %i.ay = trunc nuw i8 %.sroa.06.0 to i1
  br i1 %i.ay, label %bb.ey, label %.body35.thread.thread

bb.b:                                             ; preds = %bb.eu, %bb.a
  %.sroa.06.1 = phi i8 [ %.sroa.06.6, %bb.eu ], [ 1, %bb.a ]
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body35.thread

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.av)
          to label %bb.e unwind label %bb.d

.body35:                                          ; preds = %bb.eq, %bb.d, %bb.ed
  %.pn29 = phi { ptr, i32 } [ %.pn27, %bb.ed ], [ %i.db, %bb.eq ], [ %i.bb, %bb.d ] ; 2 uses
  %.sroa.06.2 = phi i8 [ %.sroa.06.7, %bb.ed ], [ %.sroa.06.6, %bb.eq ], [ %.sroa.06.3, %bb.d ] ; 2 uses
  %.sroa.04.0 = phi i8 [ %.sroa.04.5, %bb.ed ], [ %.sroa.04.4, %bb.eq ], [ %.sroa.04.1, %bb.d ]
  %i.ba = trunc nuw i8 %.sroa.04.0 to i1
  br i1 %i.ba, label %bb.ex, label %.body35.thread

bb.d:                                             ; preds = %bb.er, %bb.eh, %bb.c
  %.sroa.06.3 = phi i8 [ %.sroa.06.6, %bb.er ], [ 0, %bb.eh ], [ 1, %bb.c ]
  %.sroa.04.1 = phi i8 [ %.sroa.04.4, %bb.er ], [ 0, %bb.eh ], [ 1, %bb.c ]
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.au, align 1
  store ptr null, ptr %i.at, align 8
  store i64 17, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 1
  %i.bc = invoke zeroext i1 @_ZN11proc_macro211TokenStream8is_empty17h69fc3d676fa02444E(ptr nonnull align 8 %i.aw)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %.body, %bb.g
  %.pn23 = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %.pn16.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %.sroa.08.0 = phi i1 [ %.sroa.08.1, %bb.g ], [ %.sroa.08.2, %.body ]
  %.sroa.06.4 = phi i8 [ %.sroa.06.5, %bb.g ], [ 0, %.body ] ; 2 uses
  %.sroa.04.2 = phi i8 [ %.sroa.04.3, %bb.g ], [ 0, %.body ] ; 2 uses
  %i.bd = load i64, ptr %i.as, align 8
  %i.be = icmp ne i64 %i.bd, 17
  %or.cond = and i1 %.sroa.08.0, %i.be
  br i1 %or.cond, label %bb.ew, label %bb.em

bb.g:                                             ; preds = %bb.ek, %bb.eb, %bb.z, %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.e
  %.sroa.08.1 = phi i1 [ true, %bb.ek ], [ true, %bb.j ], [ true, %bb.n ], [ true, %bb.r ], [ %.not10, %bb.eb ], [ true, %bb.z ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.e ]
  %.sroa.06.5 = phi i8 [ 1, %bb.ek ], [ 1, %bb.j ], [ 1, %bb.n ], [ 0, %bb.r ], [ 0, %bb.eb ], [ 0, %bb.z ], [ 0, %bb.p ], [ 0, %bb.o ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.e ]
  %.sroa.04.3 = phi i8 [ 1, %bb.ek ], [ 1, %bb.j ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.eb ], [ 0, %bb.z ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.k ], [ 1, %bb.i ], [ 1, %bb.e ]
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.bc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.at, ptr %i.ao, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.au, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.as, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.av, ptr %i.bj, align 8
  invoke void @_ZN3syn4meta6parser17hd75a120c28bce0bbE(ptr nonnull sret([40 x i8]) align 8 %i.ap, ptr nonnull align 8 %i.ao)
          to label %bb.k unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.bk = invoke i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17h3910cd7855d9169dE"(ptr nonnull align 8 %i.aw)
          to label %bb.ek unwind label %bb.g

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  invoke void @"_ZN40_$LT$F$u20$as$u20$syn..parse..Parser$GT$6parse217h89b50ff7ff560a13E"(ptr nonnull sret([24 x i8]) align 8 %i.am, ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.al)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h44611f307b547730E"(ptr nonnull sret([24 x i8]) align 8 %i.an, ptr nonnull align 8 %i.am)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %i.an, align 8
  %.not = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb1bb66e0299d1e0E"(ptr sret([80 x i8]) align 8 %0, ptr nonnull align 8 %i.ak, ptr nonnull align 8 @19)
          to label %bb.aa unwind label %bb.g

bb.o:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.ax, align 4
  invoke void @_ZN3syn5parse17h67a6a0ea81159ce6E(ptr nonnull sret([352 x i8]) align 8 %i.ah, i32 %i.bm)
          to label %bb.p unwind label %bb.g

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3889aabfdf94a5ddE"(ptr nonnull sret([352 x i8]) align 8 %i.ai, ptr nonnull align 8 %i.ah)
          to label %bb.q unwind label %bb.g

bb.q:                                             ; preds = %bb.p
  %i.bn = load i64, ptr %i.ai, align 8
  %i.bo = icmp eq i64 %i.bn, 2
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@"_ZN13routes_macros4path8try_path28_$u7b$$u7b$closure$u7d$$u7d$17h34dfb149107baf17E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  invoke void @"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17ha0509057ca8fcfb7E"(ptr nonnull align 8 %i.ap)
          to label %bb.bd unwind label %bb.bt

bb.cn:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  br label %.invoke82

bb.co:                                            ; preds = %bb.by
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h64166339712f2b51E"(ptr nonnull sret([32 x i8]) align 8 %i.ak, ptr nonnull align 8 %i.aj)
          to label %bb.cp unwind label %.thread57

bb.cp:                                            ; preds = %bb.co
  %i.du = load i64, ptr %i.ak, align 8
  %i.dv = icmp eq i64 %i.du, -9223372036854775808
  br i1 %i.dv, label %.invoke77, label %bb.cq

.invoke77:                                        ; preds = %bb.cp, %bb.ca
  %.sink80.sroa.phi = phi ptr [ %.sink80.sroa.gep, %bb.ca ], [ %.sink80.sroa.gep90, %bb.cp ]
  %.sink = phi ptr [ %i.v, %bb.ca ], [ %i.ai, %bb.cp ] ; 2 uses
  %i.dw = phi ptr [ @29, %bb.ca ], [ @31, %bb.cp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink, ptr noundef nonnull align 8 dereferenceable(24) %.sink80.sroa.phi, i64 24, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h12add504e671895eE"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %.sink, ptr nonnull align 8 %i.dw)
          to label %bb.do unwind label %.thread57

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  invoke void @"_ZN102_$LT$syn..punctuated..Punctuated$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6248df09b87f4e22E"(ptr nonnull sret([32 x i8]) align 8 %i.al, ptr nonnull align 8 %i.ah)
          to label %bb.cr unwind label %.thread57

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17h1aebbec97335350eE(ptr nonnull sret([24 x i8]) align 8 %i.am, ptr nonnull align 8 %i.al)
          to label %bb.cs unwind label %.thread57

bb.cs:                                            ; preds = %bb.cr
  %i.dx = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h63af404bc66ff490E"(ptr nonnull align 8 %i.am)
          to label %bb.ct unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp63:                             ; preds = %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cz
  %.pn21 = phi { ptr, i32 } [ %.pn19, %bb.cz ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$routes_macros..path..RequestBodyArg$GT$$GT$17h02e3108505513618E"(ptr nonnull align 8 %i.am) #15
          to label %.thread49 unwind label %bb.be

.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.dm, %bb.dl, %.backedge, %bb.ct, %bb.cx, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hb8e464c9f70eee0bE.exit", %bb.cs
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp63

bb.ct:                                            ; preds = %bb.cs
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1
  %i.ea = invoke { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hcd4ec696ede62fabE"(ptr align 8 %i.dy, i64 %i.dz)
          to label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hb8e464c9f70eee0bE.exit" unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hb8e464c9f70eee0bE.exit": ; preds = %bb.ct
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0
  %i.ec = extractvalue { ptr, ptr } %i.ea, 1
  %i.ed = invoke { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4b50a78df645340aE"(ptr %i.eb, ptr %i.ec)
          to label %bb.cu unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cu:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hb8e464c9f70eee0bE.exit"
  %i.ee = extractvalue { ptr, ptr } %i.ed, 0
  %i.ef = extractvalue { ptr, ptr } %i.ed, 1
  store ptr %i.ee, ptr %i.ag, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ef, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.cu
  %i.ei = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha98ed1884f1795faE"(ptr nonnull align 8 %i.ag)
          to label %bb.cv unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cv:                                            ; preds = %.backedge
  %.not17 = icmp eq ptr %i.ei, null
  br i1 %.not17, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = icmp eq i64 %i.ej, 17
  br i1 %i.ek, label %.backedge.backedge, label %bb.dl

.backedge.backedge:                               ; preds = %bb.cw, %bb.dn
  br label %.backedge

bb.cx:                                            ; preds = %bb.cv
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.ad)
          to label %bb.cy unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  invoke void @"_ZN52_$LT$$RF$T$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h000c1b4b3206c296E"(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.ad)
          to label %bb.db unwind label %bb.da

bb.cz:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.da
  %.pn19 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.el, %bb.da ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.ad) #15
          to label %.loopexit.split-lp63 unwind label %bb.be

bb.da:                                            ; preds = %.loopexit, %bb.db, %bb.cy
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.db:                                            ; preds = %bb.cy
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.ab)
          to label %bb.dc unwind label %bb.da

bb.dc:                                            ; preds = %bb.db
  %i.em = invoke { ptr, ptr } @"_ZN84_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$quote..__private..ext..RepAsIteratorExt$GT$15quote_into_iter17hf165b5115ab45781E"(ptr nonnull align 8 %i.am)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke81, %bb.dk, %.preheader, %.preheader.preheader, %bb.de, %bb.dd, %bb.dc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.ab) #15
          to label %bb.cz unwind label %bb.be

bb.dd:                                            ; preds = %bb.dc
  %i.en = extractvalue { ptr, ptr } %i.em, 0
  %i.eo = extractvalue { ptr, ptr } %i.em, 1
  store ptr %i.en, ptr %i.aa, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.eo, ptr %i.ep, align 8
  invoke void @"_ZN126_$LT$quote..__private..HasIterator$LT$_$GT$$u20$as$u20$core..ops..bit..BitOr$LT$quote..__private..HasIterator$LT$_$GT$$GT$$GT$5bitor17h74af7bcffa0ab249E"()
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN5quote9__private16CheckHasIterator5check17hdeca538ad6e435f0E()
          to label %.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.de
  %i.eq = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha98ed1884f1795faE"(ptr nonnull align 8 %i.aa)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.df:                                            ; preds = %.preheader.preheader
  %.not18.peel = icmp eq ptr %i.eq, null
  br i1 %.not18.peel, label %.loopexit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store ptr %i.eq, ptr %i.z, align 8
  br label %.invoke81

.invoke81:                                        ; preds = %bb.dk, %bb.dg
  invoke void @"_ZN83_$LT$quote..__private..RepInterp$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h1ccfeac2c64622b1E"(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ab)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %.invoke81
  %i.er = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha98ed1884f1795faE"(ptr nonnull align 8 %i.aa)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dh:                                            ; preds = %.preheader
  %.not18 = icmp eq ptr %i.er, null
  br i1 %.not18, label %.loopexit, label %bb.dk

.loopexit:                                        ; preds = %bb.dh, %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  invoke void @_ZN5quote9__private10push_group17h629c0221a683a5d4E(ptr nonnull align 8 %i.ad, i8 0, ptr nonnull align 8 %i.ac)
          to label %bb.di unwind label %bb.da

bb.di:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  invoke void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$routes_macros..path..RequestBodyArg$GT$$GT$17h02e3108505513618E"(ptr nonnull align 8 %i.am)
          to label %bb.cm unwind label %.thread57

bb.dj:                                            ; preds = %bb.bd
  store i64 -9223372036854775808, ptr %0, align 8
  br label %.invoke82

.invoke82:                                        ; preds = %bb.do, %bb.cn, %.invoke78, %bb.dj
  invoke void @"_ZN4core3ptr47drop_in_place$LT$syn..lookahead..Lookahead1$GT$17h20e4c0e67402e795E"(ptr nonnull align 8 %i.ar)
          to label %bb.dz unwind label %bb.ad

bb.dk:                                            ; preds = %bb.dh
  store ptr %i.er, ptr %i.z, align 8
  invoke void @_ZN5quote9__private10push_comma17hab11e583d58d9e45E(ptr nonnull align 8 %i.ab)
          to label %.invoke81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.cw
  %i.es = load ptr, ptr %i.eh, align 8
  invoke void @"_ZN3syn3gen5clone62_$LT$impl$u20$core..clone..Clone$u20$for$u20$syn..ty..Type$GT$5clone17hc6d06565ea7cf750E"(ptr nonnull sret([224 x i8]) align 8 %i.ae, ptr nonnull align 8 %i.ei)
          to label %bb.dm unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  invoke void @"_ZN4core6option15Option$LT$T$GT$7replace17he840a1f4eccd0c3dE"(ptr nonnull sret([224 x i8]) align 8 %i.af, ptr align 8 %i.es, ptr nonnull align 8 %i.ae)
          to label %bb.dn unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dm
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$syn..ty..Type$GT$$GT$17h9b30ffd1bed52713E"(ptr nonnull align 8 %i.af)
          to label %.backedge.backedge unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %.invoke77
  invoke void @"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17ha0509057ca8fcfb7E"(ptr nonnull align 8 %i.ap)
          to label %.invoke82 unwind label %bb.bt

.thread49:                                        ; preds = %bb.cc, %.loopexit.split-lp63, %.thread57
  %.pn2352 = phi { ptr, i32 } [ %lpad.thr_comm55, %.thread57 ], [ %.pn14.pn, %bb.cc ], [ %.pn21, %.loopexit.split-lp63 ]
  invoke void @"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17ha0509057ca8fcfb7E"(ptr nonnull align 8 %i.ap) #15
          to label %.thread unwind label %bb.be

.thread:                                          ; preds = %bb.bt, %bb.aw, %bb.bj, %.thread49
  %.pn2543 = phi { ptr, i32 } [ %.pn12, %bb.bj ], [ %.pn, %bb.aw ], [ %.pn2352, %.thread49 ], [ %lpad.thr_comm.split-lp56, %bb.bt ]
  invoke void @"_ZN4core3ptr47drop_in_place$LT$syn..lookahead..Lookahead1$GT$17h20e4c0e67402e795E"(ptr nonnull align 8 %i.ar) #15
          to label %bb.b unwind label %bb.be

bb.dp:                                            ; preds = %bb.v
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h15bcbec83edef148E"(ptr nonnull sret([24 x i8]) align 8 %i.aw, ptr nonnull align 8 %i.av)
          to label %bb.dq unwind label %bb.ad

bb.dq:                                            ; preds = %bb.dp
  %i.et = load i64, ptr %i.aw, align 8
  %.not27 = icmp eq i64 %i.et, -9223372036854775808
  br i1 %.not27, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.dv, %bb.dr
  %i.eu = phi ptr [ %i.au, %bb.dr ], [ %i.at, %bb.dv ]
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h12add504e671895eE"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.eu, ptr nonnull align 8 @32)
          to label %bb.dz unwind label %bb.ad

bb.ds:                                            ; preds = %bb.dq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void @_ZN3syn5parse11ParseBuffer5parse17h19b0c7f0ce19b37fE(ptr nonnull sret([24 x i8]) align 8 %i.ax, ptr align 8 %i.ew)
          to label %bb.dt unwind label %bb.ad

bb.dt:                                            ; preds = %bb.ds
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17heeae60db05bc863aE"(ptr nonnull sret([24 x i8]) align 8 %i.ay, ptr nonnull align 8 %i.ax)
          to label %bb.du unwind label %bb.ad

bb.du:                                            ; preds = %bb.dt
  %i.ex = load i64, ptr %i.ay, align 8
  %.not28 = icmp eq i64 %i.ex, -9223372036854775808
  br i1 %.not28, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  br label %.invoke

bb.dw:                                            ; preds = %bb.du
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = load ptr, ptr %1, align 8
  invoke void @"_ZN4core3ptr65drop_in_place$LT$core..option..Option$LT$syn..lit..LitStr$GT$$GT$17h7cc50b116ec72697E"(ptr align 8 %i.fa)
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %1, align 8
  store ptr %i.ez, ptr %i.fc, align 8
  br label %bb.b

bb.dy:                                            ; preds = %bb.dw
  %i.fd = load ptr, ptr %1, align 8
  store ptr %i.ez, ptr %i.fd, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %.invoke82, %bb.ak, %.invoke, %bb.y, %bb.dy, %bb.ec, %bb.ef, %bb.ei
  call void @"_ZN4core3ptr36drop_in_place$LT$syn..path..Path$GT$17h0dd89c17ee067453E"(ptr align 8 %2)
  ret void

bb.ea:                                            ; preds = %_ZN13routes_macros4path9is_method17h194b50d45501835bE.exit.thread
  invoke void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr nonnull sret([80 x i8]) align 8 %i.az, i32 %i.by, ptr nonnull align 1 @33, i64 85)
          to label %bb.eb unwind label %bb.ad

bb.eb:                                            ; preds = %bb.ea
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b4d91e26ab2a7b1E"(ptr nonnull sret([24 x i8]) align 8 %i.ba, ptr nonnull align 8 %i.az, ptr nonnull align 8 @34)
          to label %bb.ec unwind label %bb.ad

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  br label %bb.dz

bb.ed:                                            ; preds = %bb.r
  invoke void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr nonnull sret([80 x i8]) align 8 %i.bb, i32 %i.bv, ptr nonnull align 1 @35, i64 83)
          to label %bb.ee unwind label %bb.ad

bb.ee:                                            ; preds = %bb.ed
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b4d91e26ab2a7b1E"(ptr nonnull sret([24 x i8]) align 8 %i.bc, ptr nonnull align 8 %i.bb, ptr nonnull align 8 @36)
          to label %bb.ef unwind label %bb.ad

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  br label %bb.dz

bb.eg:                                            ; preds = %bb.e
  invoke void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr nonnull sret([80 x i8]) align 8 %i.bd, i32 %i.bi, ptr nonnull align 1 @37, i64 121)
          to label %bb.eh unwind label %bb.ad

bb.eh:                                            ; preds = %bb.eg
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b4d91e26ab2a7b1E"(ptr nonnull sret([24 x i8]) align 8 %i.be, ptr nonnull align 8 %i.bd, ptr nonnull align 8 @38)
          to label %bb.ei unwind label %bb.ad

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  br label %bb.dz

"_ZN4core3ptr47drop_in_place$LT$syn..meta..ParseNestedMeta$GT$17h948ba7466b96f23aE.exit": ; preds = %bb.b
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nonlazybind uwtable
define hidden ptr @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h3b141be03d52a3d0E"(ptr nofree readonly align 8 captures(none) %0, ptr %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call ptr %.val(ptr align 8 null), !inline_history !19 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr nonnull align 8 @48) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17h0028e85c25d5b830E"(ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  call void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !25
  invoke void @"_ZN52_$LT$$RF$T$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17heb28e4ee7edce93bE"(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %"_ZN45_$LT$T$u20$as$u20$quote..spanned..Spanned$GT$6__span17hb0bda4691bd0df4dE.exit" unwind label %bb.b, !noalias !25

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.a) #15
          to label %bb.d unwind label %bb.c, !noalias !25

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #14, !noalias !25
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

"_ZN45_$LT$T$u20$as$u20$quote..spanned..Spanned$GT$6__span17hb0bda4691bd0df4dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = call i32 @_ZN5quote7spanned10join_spans17h68c9d97b5ea46e62E(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17hef9b778834f54a46E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  call void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !31
  %.val.val.i.i.i = load ptr, ptr %0, align 8, !noalias !31
  invoke void @"_ZN62_$LT$syn..item..Item$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hdc3c34f36729f4d9E"(ptr align 8 %.val.val.i.i.i, ptr nonnull align 8 %i.a)
          to label %"_ZN45_$LT$T$u20$as$u20$quote..spanned..Spanned$GT$6__span17ha415527c2b4d8f40E.exit" unwind label %bb.b, !noalias !31

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.a) #15
          to label %bb.d unwind label %bb.c, !noalias !31

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #14, !noalias !31
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

"_ZN45_$LT$T$u20$as$u20$quote..spanned..Spanned$GT$6__span17ha415527c2b4d8f40E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  %i.e = call i32 @_ZN5quote7spanned10join_spans17h68c9d97b5ea46e62E(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_ZN4core3ops8function2Fn4call17h732f06c56b6ef372E(ptr nofree readnone align 1 captures(none) %0, i32 %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_ZN13routes_macros4path17hded90e56f8ca5d48E(i32 %1, i32 %2)
  ret i32 %i.a
end_hunk_1
