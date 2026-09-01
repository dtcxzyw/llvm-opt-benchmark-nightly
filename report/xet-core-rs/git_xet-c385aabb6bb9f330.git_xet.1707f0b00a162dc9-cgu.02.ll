Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.02?download=true
inline.NumInlined: 190
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [3 x i8] c"git", align 1
@1 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/str/pattern.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00\A4\06\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00\93\06\00\00\14\00\00\00" }>, align 8
@4 = private unnamed_addr constant [4 x i8] c"fill", align 1
@5 = private unnamed_addr constant [10 x i8] c"credential", align 1
@6 = private unnamed_addr constant [10 x i8] c"\04url=\C0\02\0A\0A\00", align 1
@7 = private unnamed_addr constant [37 x i8] c"\22failed to find authentication for \C0\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"password=", align 1
@9 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.0/src/header/map.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"a\00\00\00\00\00\00\00\0C\07\00\00!\00\00\00" }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00\F0\04\00\00$\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00\02\05\00\00\14\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtNtBH_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1q_ERB1Q_ECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !alias.scope !4 ; 4 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !4 ; 3 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink.i.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.e = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  store i64 0, ptr %i.d, align 8, !noalias !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !8
  br i1 %i.e, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !17
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !noalias !18
  call fastcc void @_RNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtNtBJ_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1s_ERB1S_E0Cs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k) #17, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12
  %i.l = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.i
  br i1 %i.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i.loopexit, label %bb.d

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i.loopexit: ; preds = %bb.d
  %.sroa.019.0.copyload20.pre = load i64, ptr %i.d, align 8, !noalias !8
  %.sroa.7.0.copyload23.pre = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !8
  %.sroa.9.0.copyload27.pre = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i.loopexit, %bb.b
  %.sroa.9.0.copyload27 = phi i64 [ %.sroa.9.0.copyload27.pre, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i.loopexit ], [ 0, %bb.b ]
  %.sroa.7.0.copyload23 = phi i64 [ %.sroa.7.0.copyload23.pre, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i.loopexit ], [ 1, %bb.b ] ; 2 uses
  %.sroa.019.0.copyload20 = phi i64 [ %.sroa.019.0.copyload20.pre, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i.loopexit ], [ 0, %bb.b ]
  %2 = inttoptr i64 %.sroa.7.0.copyload23 to ptr
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i, %bb.a
  %.sroa.4.0.copyload939 = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %2, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i ]
  %.sroa.9.0..sroa.9.0.copyload29 = phi i64 [ 0, %bb.a ], [ %.sroa.9.0.copyload27, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i ] ; 3 uses
  %.sroa.7.0..sroa.7.0.copyload25 = phi i64 [ 1, %bb.a ], [ %.sroa.7.0.copyload23, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i ] ; 2 uses
  %.sroa.019.0 = phi i64 [ 0, %bb.a ], [ %.sroa.019.0.copyload20, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet.exit.i ] ; 3 uses
  %.not2.i = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %.not2.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.n = icmp eq ptr %.sroa.5.0.copyload, %.sroa.6.0.copyload
  store i64 %.sroa.019.0, ptr %i.b, align 8, !noalias !8
  store i64 %.sroa.7.0..sroa.7.0.copyload25, ptr %.sink.i.sroa.gep, align 8, !noalias !8
  store i64 %.sroa.9.0..sroa.9.0.copyload29, ptr %.sink.i.sroa.gep16, align 8, !noalias !8
  %3 = inttoptr i64 %.sroa.7.0..sroa.7.0.copyload25 to ptr
  br i1 %i.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.p = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i3.i = phi i64 [ 0, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i3.i ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !noalias !23
  call fastcc void @_RNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtNtBJ_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1s_ERB1S_E0Cs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23
  %i.u = add nuw i64 %.sroa.01.0.i3.i, 1          ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.r
  br i1 %i.v, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit, label %bb.h

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit: ; preds = %bb.h
  %.sink.i.sroa.speculate.load._RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit = load i64, ptr %i.b, align 8, !noalias !27
  %.sroa.4.0.copyload9.pre = load ptr, ptr %.sink.i.sroa.gep, align 8, !noalias !27
  %.sroa.5.0.copyload12.pre = load i64, ptr %.sink.i.sroa.gep16, align 8, !noalias !27
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit, %bb.e, %bb.f
  %.sroa.5.0.copyload12 = phi i64 [ %.sroa.9.0..sroa.9.0.copyload29, %bb.f ], [ %.sroa.9.0..sroa.9.0.copyload29, %bb.e ], [ %.sroa.5.0.copyload12.pre, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit ] ; 8 uses
  %.sroa.4.0.copyload9 = phi ptr [ %3, %bb.f ], [ %.sroa.4.0.copyload939, %bb.e ], [ %.sroa.4.0.copyload9.pre, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit ] ; 3 uses
  %.sink.i.sroa.speculated = phi i64 [ %.sroa.019.0, %bb.f ], [ %.sroa.019.0, %bb.e ], [ %.sink.i.sroa.speculate.load._RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload9) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload9, i64 %.sroa.5.0.copyload12 ; 4 uses
  %i.x = icmp samesign eq i64 %.sroa.5.0.copyload12, 0
  br i1 %i.x, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !noalias !28, !noundef !33
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %.thread.i, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i: ; preds = %bb.i
  %i.ab = icmp ne i64 %.sroa.5.0.copyload12, 1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !28, !noundef !33 ; 3 uses
  %i.ae = and i8 %i.ad, 31
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = icmp slt i8 %i.ad, -64
  br i1 %i.ag, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i, label %bb.k

.thread.i:                                        ; preds = %bb.i
  %i.ah = icmp sgt i64 %.sroa.5.0.copyload12, -1
  call void @llvm.assume(i1 %i.ah)
  br label %bb.n

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i
  %i.ai = icmp ne i64 %.sroa.5.0.copyload12, 2
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !28, !noundef !33 ; 3 uses
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i32
  %i.an = icmp slt i8 %i.ak, -64
  br i1 %i.an, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i, label %bb.j

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i
  %i.ao = icmp ne i64 %.sroa.5.0.copyload12, 3
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !28, !noundef !33
  %i.ar = and i8 %i.aq, 7
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 6
  %i.au = and i8 %i.ak, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i
  %.sroa.010.1.i.i = phi i32 [ %i.aw, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i ], [ %i.am, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i ]
  %i.ax = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ay = and i8 %i.ad, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i
  %.sroa.010.0.i.i = phi i32 [ %i.ba, %bb.j ], [ %i.af, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i ] ; 4 uses
  %i.bb = icmp sgt i64 %.sroa.5.0.copyload12, -1
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ult i32 %.sroa.010.0.i.i, 17408
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ult i32 %.sroa.010.0.i.i, 2
  br i1 %i.bd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = icmp samesign ult i32 %.sroa.010.0.i.i, 32
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp samesign ult i32 %.sroa.010.0.i.i, 1024
  %..i = select i1 %i.bf, i64 -3, i64 -4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread.i
  %.sroa.03.0.neg.i = phi i64 [ -2, %bb.l ], [ %..i, %bb.m ], [ -1, %bb.k ], [ -1, %.thread.i ]
  %i.bg = add nsw i64 %.sroa.03.0.neg.i, %.sroa.5.0.copyload12
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop.exit: ; preds = %bb.n, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit
  %.sroa.5.0 = phi i64 [ 0, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet.exit ], [ %i.bg, %bb.n ]
  store i64 %.sink.i.sroa.speculated, ptr %0, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload9, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx10, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !34, !noundef !33 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit12.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !34, !noundef !33
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !34, !noundef !33
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !34, !noundef !33
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs1YANDSn9Kib_7git_xet.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs1YANDSn9Kib_7git_xet.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !48, !noundef !33
end_hunk_0
