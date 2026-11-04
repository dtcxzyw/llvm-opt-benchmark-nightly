Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/build_script_build-8a9f537e511ef864.build_script_build.caa18fc71ab16eb5-cgu.0?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0/build.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Y\00\00\00\00\00\00\000\00\00\00\05\00\00\00" }>, align 8
@2 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@3 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @2, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Y\00\00\00\00\00\00\00&\00\00\00\05\00\00\00" }>, align 8
@5 = private unnamed_addr constant [29 x i8] c"CARGO_FEATURE_AUTO_INITIALIZE", align 1
@6 = private unnamed_addr constant [17 x i8] c"CARGO_PKG_VERSION", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Y\00\00\00\00\00\00\00\16\00\00\00:\00\00\00" }>, align 8
@8 = private unnamed_addr constant [501 x i8] c"The `auto-initialize` feature is enabled, but your python installation only supports embedding the Python interpreter statically. If you are attempting to run tests, or a binary which is okay to link dynamically, install a Python distribution which ships with the Python shared library.\0A\0AEmbedding the Python interpreter statically does not yet have first-class support in PyO3. If you are sure you intend to do this, disable the `auto-initialize` feature.\0A\0AFor more information, see https://pyo3.rs/v", align 1
@9 = private unnamed_addr constant [56 x i8] c"/building-and-distribution.html#embedding-python-in-rust", align 1
@10 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @8, [8 x i8] c"\F5\01\00\00\00\00\00\00", ptr @9, [8 x i8] c"8\00\00\00\00\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Y\00\00\00\00\00\00\00\0A\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [7 x i8] c"error: ", align 1
@13 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @12, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @2, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd754cec8fe5a6c79E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9b5f1f857577aaf7E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9b5f1f857577aaf7E" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hd70e19786b0f5ac3E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN55_$LT$std..env..VarError$u20$as$u20$core..fmt..Debug$GT$3fmt17h513ebdb4b3527874E" }>, align 8
@16 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@17 = private unnamed_addr constant [10 x i8] c"NotPresent", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4a0e83b0c732e6e3E" }>, align 8
@19 = private unnamed_addr constant [10 x i8] c"NotUnicode", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN18build_script_build4main17hc09cf8cc9dbf66beE() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 3 uses
  %i.z = alloca [8 x i8], align 8                 ; 2 uses
  %i.aa = alloca [48 x i8], align 8               ; 2 uses
  %i.ab = alloca [40 x i8], align 8               ; 3 uses
  %i.ac = alloca [40 x i8], align 8               ; 5 uses
  tail call void @_ZN17pyo3_build_config19print_expected_cfgs17h8dacb6a46972f5efE()
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ad = tail call align 8 ptr @_ZN17pyo3_build_config3get17hf44c9103f38a2b9bE(), !noalias !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10
  call void @_ZN17pyo3_build_config5impl_13cargo_env_var17h489fc9e135063bfaE(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 1 @5, i64 29), !noalias !12
  %i.ae = invoke zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hec5520dfcb796437E"(ptr nonnull align 8 %i.j)
          to label %bb.c unwind label %bb.b, !noalias !12

bb.b:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04366903b532ef7aE"(ptr nonnull align 8 %i.j) #10
          to label %common.resume unwind label %bb.s, !noalias !12

bb.c:                                             ; preds = %bb.a
  call void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04366903b532ef7aE"(ptr nonnull align 8 %i.j), !noalias !12
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = call zeroext i1 @_ZN17pyo3_build_config5impl_17InterpreterConfig6shared17h58f0c82b71f5c0c3E(ptr align 8 %i.ad), !noalias !12
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 -9223372036854775808, ptr %i.w, align 8, !alias.scope !11, !noalias !10
  br label %_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E.exit.i

bb.f:                                             ; preds = %bb.d
  call void @_ZN3std3env3var17h156a46a0e960370cE(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 1 @6, i64 17), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12
  %i.ah = load i64, ptr %i.d, align 8, !noalias !12
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.ai, label %bb.g, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc476cbcd82d228c9E.exit.i.i"

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !12
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr nonnull align 1 @16, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @15, ptr nonnull align 8 @7) #11
          to label %bb.i unwind label %bb.h, !noalias !12

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hd70e19786b0f5ac3E"(ptr nonnull align 8 %i.a) #10
          to label %common.resume unwind label %bb.j, !noalias !12

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12, !noalias !12
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.b, %bb.h, %bb.k, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.w ], [ %i.af, %bb.b ], [ %i.ak, %bb.h ], [ %i.am, %bb.k ], [ %i.bg, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc476cbcd82d228c9E.exit.i.i": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h05879a366ed6017fE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.k, !noalias !12

bb.k:                                             ; preds = %bb.p, %bb.l, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc476cbcd82d228c9E.exit.i.i"
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1097840b3c4b87ceE"(ptr nonnull align 8 %i.e) #10
          to label %common.resume unwind label %bb.s, !noalias !12

bb.l:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc476cbcd82d228c9E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !12
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h2ce7d06e758bb4dfE"(ptr nonnull sret([48 x i8]) align 8 %i.f, ptr nonnull align 8 @10, ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %bb.k, !noalias !12

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.f, align 8, !noalias !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !13 ; 2 uses
  switch i64 %i.ap, label %bb.o [
    i64 0, label %bb.n
    i64 1, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o, %bb.n
  %.sroa.4.0.i.i.i = phi i64 [ undef, %bb.o ], [ %i.aw, %bb.r ], [ 0, %bb.n ]
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.o ], [ %i.au, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.n ]
  invoke void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hfbdf5f86e63c029aE"(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr align 1 %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i, ptr nonnull align 8 %i.f)
          to label %_ZN5alloc3fmt6format17h8e2a31e5de930d8aE.exit.i.i unwind label %bb.k, !noalias !12

bb.q:                                             ; preds = %bb.m
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.an, align 8, !noalias !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !13
  br label %bb.p

_ZN5alloc3fmt6format17h8e2a31e5de930d8aE.exit.i.i: ; preds = %bb.p
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1097840b3c4b87ceE"(ptr nonnull align 8 %i.e), !noalias !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !12
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd63222c54ad7a83eE"(ptr nonnull sret([40 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h, ptr nonnull align 8 @11), !noalias !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !10
  br label %_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E.exit.i

bb.s:                                             ; preds = %bb.k, %bb.b
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12, !noalias !12
  unreachable

_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E.exit.i: ; preds = %_ZN5alloc3fmt6format17h8e2a31e5de930d8aE.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0a328a9b03e752f9E"(ptr nonnull sret([40 x i8]) align 8 %i.x, ptr nonnull align 8 %i.w), !noalias !10
  %i.ay = load i64, ptr %i.x, align 8, !noalias !10
  %.not.i = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !10
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha8f76c3e409de053E"(ptr nonnull sret([40 x i8]) align 8 %i.ac, ptr nonnull align 8 %i.v, ptr nonnull align 8 @4)
  br label %_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE.exit

bb.u:                                             ; preds = %_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E.exit.i
  call void @_ZN17pyo3_build_config5impl_17InterpreterConfig20build_script_outputs17h332cfb3eabe8f9daE(ptr nonnull sret([24 x i8]) align 8 %i.t, ptr align 8 %i.ad), !noalias !10
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8ee5348bdca962d0E"(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t), !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !10
  br label %bb.v

bb.v:                                             ; preds = %bb.ag, %bb.u
  invoke void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h242a99b681ac6952E"(ptr nonnull sret([24 x i8]) align 8 %i.r, ptr nonnull align 8 %i.s)
          to label %bb.y unwind label %bb.x, !noalias !10

bb.w:                                             ; preds = %bb.ad, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.x ], [ %i.bc, %bb.ad ]
  invoke void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17h8a8fe388971a99b0E"(ptr nonnull align 8 %i.s) #10
          to label %common.resume unwind label %bb.ah, !noalias !10

bb.x:                                             ; preds = %bb.ag, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %i.r, align 8, !noalias !10
  %.not1.i = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %.not1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !10
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h05879a366ed6017fE(ptr nonnull sret([16 x i8]) align 8 %i.n, ptr nonnull align 8 %i.q)
          to label %bb.ae unwind label %bb.ad, !noalias !10

bb.aa:                                            ; preds = %bb.y
  call void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17h8a8fe388971a99b0E"(ptr nonnull align 8 %i.s), !noalias !10
  call void @_ZN17pyo3_build_config22pyo3_build_script_impl18print_feature_cfgs17h76617b0ccca400b6E(), !noalias !10
  call void @_ZN17pyo3_build_config5impl_17InterpreterConfig16to_cargo_dep_env17h056096fc325cbab7E(ptr nonnull sret([40 x i8]) align 8 %i.l, ptr align 8 %i.ad), !noalias !10
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0a328a9b03e752f9E"(ptr nonnull sret([40 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l), !noalias !10
  %i.bb = load i64, ptr %i.m, align 8, !noalias !10
  %.not2.i = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %.not2.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !10
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha8f76c3e409de053E"(ptr nonnull sret([40 x i8]) align 8 %i.ac, ptr nonnull align 8 %i.k, ptr nonnull align 8 @1)
  br label %_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE.exit

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN17pyo3_build_config29add_libpython_rpath_link_args17hba2d51143f3357deE(), !noalias !10
  store i64 -9223372036854775808, ptr %i.ac, align 8, !alias.scope !10
  br label %_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE.exit

bb.ad:                                            ; preds = %bb.af, %bb.ae, %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1097840b3c4b87ceE"(ptr nonnull align 8 %i.q) #10
          to label %bb.w unwind label %bb.ah, !noalias !10

bb.ae:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !10
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h2ce7d06e758bb4dfE"(ptr nonnull sret([48 x i8]) align 8 %i.p, ptr nonnull align 8 @3, ptr nonnull align 8 %i.o)
          to label %bb.af unwind label %bb.ad, !noalias !10

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr nonnull align 8 %i.p)
          to label %bb.ag unwind label %bb.ad, !noalias !10

bb.ag:                                            ; preds = %bb.af
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1097840b3c4b87ceE"(ptr nonnull align 8 %i.q)
          to label %bb.v unwind label %bb.x, !noalias !10

bb.ah:                                            ; preds = %bb.ad, %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12, !noalias !10
  unreachable

_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE.exit: ; preds = %bb.t, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.be = load i64, ptr %i.ac, align 8
  %.not = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false)
  %i.bf = invoke align 8 ptr @_ZN17pyo3_build_config6errors5Error6report17ha3fae65d7da069b6E(ptr nonnull align 8 %i.ab)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE.exit
  ret void

bb.ak:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ai
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$pyo3_build_config..errors..Error$GT$17hee9e577585fa9f07E"(ptr nonnull align 8 %i.ab) #10
          to label %common.resume unwind label %bb.ap

bb.al:                                            ; preds = %bb.ai
  store ptr %i.bf, ptr %i.z, align 8
  store ptr %i.z, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @"_ZN77_$LT$pyo3_build_config..errors..ErrorReport$u20$as$u20$core..fmt..Display$GT$3fmt17h8687495a58532be0E", ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h2ce7d06e758bb4dfE"(ptr nonnull sret([48 x i8]) align 8 %i.aa, ptr nonnull align 8 @13, ptr nonnull align 8 %i.y)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN3std2io5stdio7_eprint17h591559c675a6c685E(ptr nonnull align 8 %i.aa)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN3std7process4exit17h76e2716ffe762badE(i32 1) #11
          to label %bb.ao unwind label %bb.ak

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.ak
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h9683906897a5e151E(ptr %0, i64 %1, ptr %2, i8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call i64 @_ZN3std2rt19lang_start_internal17h00c7908c7c2f92b8E(ptr nonnull align 1 %i.a, ptr nonnull align 8 @14, i64 %1, ptr %2, i8 %3)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9b5f1f857577aaf7E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha0edef7860ecb680E(ptr %i.a)
  ret i32 0
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha0edef7860ecb680E(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd754cec8fe5a6c79E"(ptr nofree readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha0edef7860ecb680E(ptr readonly %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN55_$LT$std..env..VarError$u20$as$u20$core..fmt..Debug$GT$3fmt17h513ebdb4b3527874E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %i.c = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr align 8 %1, ptr nonnull align 1 @19, i64 10, ptr nonnull align 1 %i.a, ptr nonnull align 8 @18)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 @17, i64 10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN17pyo3_build_config3get17hf44c9103f38a2b9bE() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0a328a9b03e752f9E"(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN17pyo3_build_config5impl_17InterpreterConfig20build_script_outputs17h332cfb3eabe8f9daE(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8ee5348bdca962d0E"(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h242a99b681ac6952E"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17h8a8fe388971a99b0E"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN17pyo3_build_config22pyo3_build_script_impl18print_feature_cfgs17h76617b0ccca400b6E() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN17pyo3_build_config5impl_17InterpreterConfig16to_cargo_dep_env17h056096fc325cbab7E(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN17pyo3_build_config29add_libpython_rpath_link_args17hba2d51143f3357deE() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha8f76c3e409de053E"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h05879a366ed6017fE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h2ce7d06e758bb4dfE"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1097840b3c4b87ceE"(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN17pyo3_build_config5impl_13cargo_env_var17h489fc9e135063bfaE(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hec5520dfcb796437E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04366903b532ef7aE"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN17pyo3_build_config5impl_17InterpreterConfig6shared17h58f0c82b71f5c0c3E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env3var17h156a46a0e960370cE(ptr sret([32 x i8]) align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd63222c54ad7a83eE"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN17pyo3_build_config19print_expected_cfgs17h8dacb6a46972f5efE() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN17pyo3_build_config6errors5Error6report17ha3fae65d7da069b6E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio7_eprint17h591559c675a6c685E(ptr align 8) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17h76e2716ffe762badE(i32) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr53drop_in_place$LT$pyo3_build_config..errors..Error$GT$17hee9e577585fa9f07E"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h00c7908c7c2f92b8E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN77_$LT$pyo3_build_config..errors..ErrorReport$u20$as$u20$core..fmt..Display$GT$3fmt17h8687495a58532be0E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hd70e19786b0f5ac3E"(ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4a0e83b0c732e6e3E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hfbdf5f86e63c029aE"(ptr sret([24 x i8]) align 8, ptr align 1, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZN18build_script_build4main17hc09cf8cc9dbf66beE, ptr %i.a, align 8
  %i.c = call i64 @_ZN3std2rt19lang_start_internal17h00c7908c7c2f92b8E(ptr nonnull align 1 %i.a, ptr nonnull align 8 @14, i64 %i.b, ptr %1, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { cold }
attributes #11 = { noreturn }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!4 = distinct !{!4, i1 true, !"_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE"}
!5 = distinct !{!5, !4, !"_ZN18build_script_build14configure_pyo317hf9dc9d85846acb8dE: argument 0"}
!6 = distinct !{!6, i1 true, !"_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E"}
!7 = distinct !{!7, !6, !"_ZN18build_script_build25ensure_auto_initialize_ok17hb6cf6ff25c4d05b8E: argument 0"}
!8 = distinct !{!8, i1 true, !"_ZN5alloc3fmt6format17h8e2a31e5de930d8aE"}
!9 = distinct !{!9, !8, !"_ZN5alloc3fmt6format17h8e2a31e5de930d8aE: argument 0"}
!10 = !{!5}
!11 = !{!7}
!12 = !{!7, !5}
!13 = !{!9, !7, !5}
!14 = distinct !{null}
!15 = !{i64 4704230435763798}
end_hunk_0
