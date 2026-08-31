Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.06?download=true
inline.NumInlined: 888
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [124 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/runtime/scheduler/multi_thread/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"{\00\00\00\00\00\00\00X\00\00\00\09\00\00\00" }>, align 8
@2 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.0/src/header/map.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00-\05\00\00\0C\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\009\05\00\00\11\00\00\00" }>, align 8
@5 = private unnamed_addr constant [23 x i8] c"size overflows MAX_SIZE", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\FC\04\00\00#\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00,\07\00\00\22\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\006\07\00\00\16\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00;\07\00\00\16\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00;\07\00\00&\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00>\07\00\00\19\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00C\07\00\00\16\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00C\07\00\00&\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00F\07\00\00\19\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00L\07\00\00\19\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00M\07\00\00\19\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00u\07\00\00&\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00u\07\00\00;\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00z\07\00\00\1D\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\82\07\00\00&\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\82\07\00\00;\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\87\07\00\00\1D\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs14_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_14MaxSizeReachedNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@24 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@25 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\0C\07\00\00!\00\00\00" }>, align 8
@28 = private unnamed_addr constant [32 x i8] c"f\97\F5w[\95P\DE15\CB\AC\A5\97\18\1C\9D\E4!\10\9B\EB+X\B4\D0\B0K\93\AD\F2)", align 1
@29 = private unnamed_addr constant [78 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/cursor.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"M\00\00\00\00\00\00\003\01\00\00\10\00\00\00" }>, align 8
@31 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@32 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@33 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @32, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@34 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @34, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 48) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.k = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.e, i64 noundef 32) ; 2 uses
  %.not59 = icmp eq ptr %i.k, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.sroa.043.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.l = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4) ; 2 uses
  %.not60 = icmp eq ptr %i.l, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %.sroa.049.0.copyload = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.m = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4) ; 2 uses
  %.not61 = icmp eq ptr %i.m, null
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %.sroa.052.0.copyload = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.n = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.b, i64 noundef 4) ; 2 uses
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %.sroa.055.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.o = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.sroa.058.0.copyload = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.043.0.copyload, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.049.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.052.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.055.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.058.0.copyload, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.l, %bb.f ], [ %i.n, %bb.j ], [ %i.o, %bb.l ], [ %i.m, %bb.h ], [ %i.k, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = call noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 48) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.k = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.e, i64 noundef 32) ; 2 uses
  %.not59 = icmp eq ptr %i.k, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.sroa.043.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.l = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4) ; 2 uses
  %.not60 = icmp eq ptr %i.l, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %.sroa.049.0.copyload = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.m = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4) ; 2 uses
  %.not61 = icmp eq ptr %i.m, null
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %.sroa.052.0.copyload = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.n = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.b, i64 noundef 4) ; 2 uses
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %.sroa.055.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.o = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.sroa.058.0.copyload = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.043.0.copyload, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.049.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.052.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.055.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.058.0.copyload, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.l, %bb.f ], [ %i.n, %bb.j ], [ %i.o, %bb.l ], [ %i.m, %bb.h ], [ %i.k, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.e, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.h, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %i.c, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.k, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.m, ptr %i.b, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.n, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.p, ptr %i.a, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.q, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret { i64, ptr } { i64 0, ptr inttoptr (i64 48 to ptr) }
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMNtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0EB16_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(6552) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [6552 x i8], align 8              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [6552 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6552) %i.c, ptr noundef nonnull align 8 dereferenceable(6552) %1, i64 6552, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
          to label %bb.b unwind label %bb.q, !noalias !31

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !35, !noalias !31, !noundef !10
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6552) %i.a, ptr noundef nonnull align 8 dereferenceable(6552) %1, i64 6552, i1 false)
  %i.g = invoke noundef ptr @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1a_11MultiThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEB2b_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(6552) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.o unwind label %bb.e, !noalias !31

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = invoke noundef ptr @_RINvMNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0EB1x_(ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6552) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle10EnterGuardECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %bb.s unwind label %bb.p, !noalias !36

bb.f:                                             ; preds = %bb.d, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.o ], [ %i.j, %bb.d ]
  invoke void @_RNvXs0_NtNtNtCsUrhh0HcRih_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !36

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler6HandleEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #25
          to label %bb.s unwind label %bb.n, !noalias !36

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.m = load i64, ptr %i.b, align 8, !range !40, !alias.scope !41, !noalias !31, !noundef !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !55, !noalias !31, !nonnull !10, !noundef !10
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !56
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !63, !noalias !31, !nonnull !10, !noundef !10
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !64
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
  br label %bb.r

bb.n:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !36
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  br label %bb.f

bb.p:                                             ; preds = %bb.q, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCs9SMuO7kbZ2K_7git_xet4main0EBF_(ptr noundef nonnull align 8 dereferenceable(6552) %i.c) #25
          to label %bb.s unwind label %bb.p, !noalias !65

bb.r:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.sroa.0.0.i

bb.s:                                             ; preds = %bb.q, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.k, %bb.e ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !83, !noalias !84, !noundef !10 ; 4 uses
  %i.p = icmp ult i64 %i.o, 88686269585142076
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i64, ptr %1, align 8, !range !40, !alias.scope !83, !noalias !84, !noundef !10
  %i.r = icmp eq i64 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !83, !noalias !84, !noundef !10 ; 5 uses
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = lshr i64 %i.t, 2
  %i.w = sub nuw i64 %i.t, %i.v
  %i.x = icmp eq i64 %i.o, %i.w
  br i1 %i.x, label %bb.d, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.y = uitofp nneg i64 %i.o to float
  %i.z = uitofp i64 %i.t to float
  %i.aa = fdiv float %i.y, %i.z
  %i.ab = fcmp ult float %i.aa, 2.000000e-01
  br i1 %i.ab, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp eq i64 %i.o, 0
  br i1 %i.ac, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i16 7, ptr %i.ad, align 8, !alias.scope !83, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 32769) 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4)
          to label %.noexc.i.i unwind label %.body.thread68.i.i, !noalias !84

.noexc.i.i:                                       ; preds = %bb.e
  %i.ae = load i64, ptr %i.d, align 8, !range !35, !noalias !88, !noundef !10
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !91, !noalias !88, !noundef !10 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.af, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i, !prof !92

bb.f:                                             ; preds = %.noexc.i.i
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !88
  br label %.invoke.i.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i: ; preds = %.noexc.i.i
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !88, !nonnull !10, !noundef !10
  %i.al = icmp samesign ugt i64 %i.ah, 7
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  store i64 %i.ah, ptr %i.e, align 8, !noalias !88
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !noalias !88
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.an, align 8, !noalias !88
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE11extend_withCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9SMuO7kbZ2K_7git_xet.exit.i.i.i unwind label %bb.g, !noalias !93

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %.body.thread.i.i unwind label %bb.h, !noalias !93

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !93
  unreachable

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9SMuO7kbZ2K_7git_xet.exit.i.i.i: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88
  %i.aq = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE16into_boxed_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc36.i.i unwind label %.body.thread68.i.i, !noalias !84 ; 2 uses

.noexc36.i.i:                                     ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9SMuO7kbZ2K_7git_xet.exit.i.i.i
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !87
  %.val14.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !83, !noalias !84, !noundef !10 ; 2 uses
  %i.at = icmp eq i64 %.val14.i.i.i, 0
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc36.i.i
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !83, !noalias !84, !nonnull !10, !noundef !10
  %i.au = shl nuw nsw i64 %.val14.i.i.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef 2) #28, !noalias !94
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i

bb.j:                                             ; preds = %bb.d
  %i.av = shl i64 %i.t, 1
  %i.aw = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap8try_growCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.av) #29
          to label %.noexc37.i.i unwind label %.body.thread68.i.i, !noalias !84

.noexc37.i.i:                                     ; preds = %bb.j
  br i1 %i.aw, label %bb.z, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i: ; preds = %bb.i, %.noexc36.i.i
  store ptr %i.ar, ptr %i.u, align 8, !alias.scope !83, !noalias !84
  store i64 %i.as, ptr %i.s, align 8, !alias.scope !83, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !87
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc38.i.i unwind label %.body.thread68.i.i, !noalias !84

.noexc38.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i
  %i.ax = load i64, ptr %i.f, align 8, !range !35, !noalias !87, !noundef !10
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !91, !noalias !87, !noundef !10 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !92

bb.k:                                             ; preds = %.noexc38.i.i
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !87
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.k, %bb.f
  %i.bd = phi i64 [ %i.ba, %bb.k ], [ %i.ah, %bb.f ]
  %i.be = phi i64 [ %i.bc, %bb.k ], [ %i.aj, %bb.f ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.be) #30
          to label %.cont.i.i unwind label %.body.thread68.i.i, !noalias !84

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.l:                                             ; preds = %.noexc38.i.i
  %i.bf = load ptr, ptr %i.bb, align 8, !noalias !87, !nonnull !10, !noundef !10
  %i.bg = icmp samesign ugt i64 %i.ba, 5
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !87
  %4 = ptrtoint ptr %i.bf to i64                  ; 2 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.n unwind label %bb.m, !noalias !84

bb.m:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i.i.i unwind label %bb.o, !noalias !84

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i unwind label %bb.p, !noalias !84

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !84
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.p, %bb.m
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %i.bh, %bb.m ]
  store i64 %i.ba, ptr %i.m, align 8, !alias.scope !83, !noalias !84
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %4, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !83, !noalias !84
  store i64 0, ptr %i.n, align 8, !alias.scope !83, !noalias !84
  br label %.body.thread.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i: ; preds = %bb.n
  store i64 %i.ba, ptr %i.m, align 8, !alias.scope !83, !noalias !84
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %4, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !83, !noalias !84
  store i64 0, ptr %i.n, align 8, !alias.scope !83, !noalias !84
  br label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i

bb.q:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  invoke void @_RNvMs12_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %.noexc40.i.i unwind label %.body.thread68.i.i, !noalias !84

.noexc40.i.i:                                     ; preds = %bb.q
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !83, !noalias !84, !nonnull !10, !noundef !10 ; 5 uses
  %i.bm = load i64, ptr %i.s, align 8, !alias.scope !83, !noalias !84, !noundef !10 ; 2 uses
  %.idx.i.i.i = shl i64 %i.bm, 2                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i.i
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc40.i.i
  %i.bp = add i64 %.idx.i.i.i, -4                 ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bu
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu
  %next.gep110 = getelementptr i8, ptr %i.bv, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !84
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep110, align 2, !noalias !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader131

.lr.ph.i.i.i.preheader131:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.01.018.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i

bb.r:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8, !alias.scope !83, !noalias !84
  %i.bx = shl i64 %i.t, 1
  %i.by = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap8try_growCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.bx) #29
          to label %.noexc41.i.i unwind label %.body.thread68.i.i, !noalias !84

.noexc41.i.i:                                     ; preds = %bb.r
  br i1 %i.by, label %bb.z, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader131, %.lr.ph.i.i.i
  %.sroa.01.018.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.sroa.01.018.i.i.i.ph, %.lr.ph.i.i.i.preheader131 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i.i.i, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018.i.i.i, align 2, !noalias !84
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i.i.i, i64 2
  store i16 0, ptr %i.ca, align 2, !noalias !84
  %i.cb = icmp eq ptr %i.bz, %i.bn
  br i1 %i.cb, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !98

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %.noexc40.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !102, !noalias !84, !nonnull !10, !noundef !10 ; 2 uses
  %i.ce = load i64, ptr %i.n, align 8, !alias.scope !102, !noalias !84, !noundef !10 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ce, 104
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i
  %i.cg = icmp eq i64 %i.ce, 0
  br i1 %i.cg, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i, label %.lr.ph.i.i.i.i.a

.lr.ph.i.i.i.i.a:                                 ; preds = %._crit_edge.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ci = load i16, ptr %i.ch, align 8, !alias.scope !102, !noalias !84 ; 3 uses
  %i.cj = load ptr, ptr %i.bk, align 8, !alias.scope !102, !noalias !84, !nonnull !10 ; 3 uses
  %i.ck = load i64, ptr %i.s, align 8, !alias.scope !102, !noalias !84 ; 4 uses
  %i.cl = zext i16 %i.ci to i64
  %.not = icmp eq i64 %i.ck, 0
  %.not145 = icmp eq i64 %i.ck, 0
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i.i.i.i, %.lr.ph.i.i.i.i.a
  %.sroa.0.036.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.a ], [ %i.cm, %.backedge.i.i.i.i ] ; 3 uses
  %.sroa.7.035.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.a ], [ %i.cn, %.backedge.i.i.i.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i.i.i, i64 104 ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.7.035.i.i.i.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i.i.i, i64 64
  %i.cp = tail call fastcc noundef i16 @_RINvNtNtCsdCDTHl3mYPb_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull align 8 %i.co), !noalias !84 ; 4 uses
  %i.cq = and i16 %i.cp, %i.ci
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i.i.i, i64 96
  store i16 %i.cp, ptr %i.cs, align 8, !noalias !103
  br label %.outer126

.outer126:                                        ; preds = %bb.v, %bb.s
  %.sroa.014.0.i.i.i.i.ph = phi i64 [ %i.di, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ %i.dj, %bb.v ], [ %i.cr, %bb.s ] ; 2 uses
  %i.ct = icmp ult i64 %.sroa.04.0.i.i.i.i.ph, %i.ck ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ct, %.not.not
  %.sroa.04.0.i.i.i.i.ph.mux = select i1 %i.ct, i64 %.sroa.04.0.i.i.i.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer126
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.sroa.04.0.i.i.i.i.ph.mux ; 3 uses
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !103, !noundef !10
  %.not23.i.i.i.i = icmp eq i16 %i.cv, -1
  br i1 %.not23.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !103, !noundef !10
  %i.cy = and i16 %i.cx, %i.ci
  %i.cz = zext i16 %i.cy to i64
  %i.da = sub i64 %.sroa.04.0.i.i.i.i.ph.mux, %i.cz
  %i.db = and i64 %i.da, %i.cl
  %i.dc = icmp samesign ult i64 %i.db, %.sroa.014.0.i.i.i.i.ph
  br i1 %i.dc, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.dd = trunc i64 %.sroa.7.035.i.i.i.i to i16
  store i16 %i.dd, ptr %i.cu, align 2, !noalias !103
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.y, %bb.u
  %i.de = phi i64 [ %.sroa.04.0.i.i.i.i.ph.mux, %bb.u ], [ %.sroa.04.2.i.i.i.i.ph.mux, %bb.y ]
  %.sink.i.i.i.i = phi i16 [ %i.cp, %bb.u ], [ %.sroa.619.0.i.i.i.i.ph, %bb.y ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i16 %.sink.i.i.i.i, ptr %i.dg, align 2, !noalias !103
  %i.dh = icmp eq ptr %i.cm, %i.cf
  br i1 %i.dh, label %_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i, label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.di = add nuw nsw i64 %.sroa.014.0.i.i.i.i.ph, 1
  %i.dj = add nuw i64 %.sroa.04.0.i.i.i.i.ph.mux, 1
  br label %.outer126

bb.w:                                             ; preds = %bb.t
  %i.dk = trunc i64 %.sroa.7.035.i.i.i.i to i16
  br label %.outer125

.outer125:                                        ; preds = %bb.x, %bb.w
  %.sroa.04.2.i.i.i.i.ph = phi i64 [ %i.dr, %bb.x ], [ %.sroa.04.0.i.i.i.i.ph.mux, %bb.w ] ; 2 uses
  %.sroa.017.0.i.i.i.i.ph = phi i16 [ %i.dn, %bb.x ], [ %i.dk, %bb.w ] ; 2 uses
  %.sroa.619.0.i.i.i.i.ph = phi i16 [ %i.dq, %bb.x ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dl = icmp ult i64 %.sroa.04.2.i.i.i.i.ph, %i.ck ; 2 uses
  %.not145.not = xor i1 %.not145, true
  %brmerge164 = or i1 %i.dl, %.not145.not
  %.sroa.04.2.i.i.i.i.ph.mux = select i1 %i.dl, i64 %.sroa.04.2.i.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge164, label %.loopexit136, label %infloop163

.loopexit136:                                     ; preds = %.outer125
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.sroa.04.2.i.i.i.i.ph.mux ; 4 uses
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !103, !noundef !10 ; 2 uses
  %i.do = icmp eq i16 %i.dn, -1
  br i1 %i.do, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit136
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 2 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !103, !noundef !10
  store i16 %.sroa.017.0.i.i.i.i.ph, ptr %i.dm, align 2, !noalias !103
  store i16 %.sroa.619.0.i.i.i.i.ph, ptr %i.dp, align 2, !noalias !103
  %i.dr = add nuw i64 %.sroa.04.2.i.i.i.i.ph.mux, 1
  br label %.outer125

bb.y:                                             ; preds = %.loopexit136
  store i16 %.sroa.017.0.i.i.i.i.ph, ptr %i.dm, align 2, !noalias !103
  br label %.backedge.i.i.i.i

.body.thread68.i.i:                               ; preds = %bb.al, %bb.r, %bb.q, %.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i, %bb.j, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9SMuO7kbZ2K_7git_xet.exit.i.i.i, %bb.e
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.z:                                             ; preds = %.noexc41.i.i, %.noexc37.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.ds = load ptr, ptr %3, align 8, !alias.scope !113, !noalias !114, !nonnull !10, !align !115, !noundef !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !116, !nonnull !10, !noundef !10
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !113, !noalias !114, !noundef !10
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !113, !noalias !114, !noundef !10
  invoke void %i.du(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef %i.dx, i64 noundef %i.dz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.i.i unwind label %bb.cg, !noalias !117, !inline_history !118

_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %.backedge.i.i.i.i, %._crit_edge.i.i.i, %.noexc41.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i, %.noexc37.i.i, %bb.b
  %i.ea = call fastcc noundef i16 @_RINvNtNtCsdCDTHl3mYPb_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2), !noalias !119 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ec = load i16, ptr %i.eb, align 8, !alias.scope !120, !noalias !84, !noundef !10 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs9SMuO7kbZ2K_7git_xet:bb.a
  br label %.outer

.outer:                                           ; preds = %bb.cc, %bb.cb
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.lu, %bb.cc ], [ %i.ea, %bb.cb ] ; 2 uses
  %.sroa.09.0.i.i.i.ph = phi i16 [ %i.lq, %bb.cc ], [ %i.ln, %bb.cb ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i64 [ %i.lt, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %.sroa.0.0.i50.i.i.ph = phi i64 [ %i.lv, %bb.cc ], [ %.sroa.0.0.i.i.ph.mux, %bb.cb ] ; 2 uses
  %i.lo = icmp ult i64 %.sroa.0.0.i50.i.i.ph, %i.lm ; 2 uses
  %.not147.not = xor i1 %.not147, true
  %brmerge168 = or i1 %i.lo, %.not147.not
  %.sroa.0.0.i50.i.i.ph.mux = select i1 %i.lo, i64 %.sroa.0.0.i50.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge168, label %.loopexit144, label %infloop167

.loopexit144:                                     ; preds = %.outer
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %.sroa.0.0.i50.i.i.ph.mux ; 4 uses
  %i.lq = load i16, ptr %i.lp, align 2, !noalias !230, !noundef !10 ; 2 uses
  %i.lr = icmp eq i16 %i.lq, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 2 ; 3 uses
  br i1 %i.lr, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.loopexit144
  %i.lt = add i64 %.sroa.07.0.i.i.i.ph, 1
  %i.lu = load i16, ptr %i.ls, align 2, !noalias !230, !noundef !10
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.lp, align 2, !noalias !230
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.ls, align 2, !noalias !230
  %i.lv = add nuw i64 %.sroa.0.0.i50.i.i.ph.mux, 1
  br label %.outer

bb.cd:                                            ; preds = %.loopexit144
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.lp, align 2, !noalias !230
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.ls, align 2, !noalias !230
  %i.lw = icmp ugt i64 %.sroa.07.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %.sroa.013.0.i.i, i1 true, i1 %i.lw
  %i.lx = load i64, ptr %1, align 8, !range !40, !alias.scope !227, !noalias !230
  %i.ly = icmp eq i64 %i.lx, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.ly, i1 false
  br i1 %or.cond3.i.i.i, label %bb.ce, label %.thread.i.i

bb.ce:                                            ; preds = %bb.cd
  store i64 1, ptr %1, align 8, !alias.scope !227, !noalias !230
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !124
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs9SMuO7kbZ2K_7git_xet.exit

bb.cf:                                            ; preds = %.noexc51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !124
  br label %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.thread

bb.cg:                                            ; preds = %bb.z
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.ma = load ptr, ptr %2, align 8, !alias.scope !239, !noalias !122, !noundef !10 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !252, !nonnull !10, !noundef !10
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !alias.scope !253, !noalias !122, !noundef !10
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !253, !noalias !122, !noundef !10
  tail call void %i.md(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef %i.mg, i64 noundef %i.mi), !noalias !254, !inline_history !226
  br label %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.thread

.body.thread.i.i:                                 ; preds = %.body.thread68.i.i, %.body.i.i.i, %bb.g
  %eh.lpad-body62.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread68.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ao, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.mj = load ptr, ptr %3, align 8, !alias.scope !264, !noalias !114, !nonnull !10, !align !115, !noundef !10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8, !noalias !265, !nonnull !10, !noundef !10
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !alias.scope !264, !noalias !114, !noundef !10
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !264, !noalias !114, !noundef !10
  invoke void %i.ml(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef %i.mo, i64 noundef %i.mq)
          to label %bb.cj unwind label %bb.ci, !noalias !117, !inline_history !118

bb.ci:                                            ; preds = %bb.ck, %.body.thread.i.i
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !254
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs9SMuO7kbZ2K_7git_xet.exit56.i.i: ; preds = %bb.ck, %bb.cj
  resume { ptr, i32 } %.pn.ph.i.i

bb.cj:                                            ; preds = %.body.thread.i.i, %bb.cg, %.body.i43.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body.i44.i.i, %.body.i43.i.i ], [ %i.lz, %bb.cg ], [ %eh.lpad-body62.i.i, %.body.thread.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.ms = load ptr, ptr %2, align 8, !alias.scope !272, !noalias !122, !noundef !10 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs9SMuO7kbZ2K_7git_xet.exit56.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !285, !nonnull !10, !noundef !10
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !286, !noalias !122, !noundef !10
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !286, !noalias !122, !noundef !10
  invoke void %i.mv(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef %i.my, i64 noundef %i.na)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs9SMuO7kbZ2K_7git_xet.exit56.i.i unwind label %bb.ci, !noalias !254, !inline_history !287

_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.bz, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.nb = icmp eq i8 %.sroa.4.0.copyload.i.i, -1
  br i1 %i.nb, label %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.thread, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs9SMuO7kbZ2K_7git_xet.exit, !prof !293

_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit.i.i, %bb.cf, %bb.ac, %bb.ch, %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !noalias !294
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %.thread.i.i, %bb.ae, %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit
  %.sroa.4.05 = phi i8 [ %.sroa.4.0.copyload.i.i, %_RINvXNtNtNtCsdCDTHl3mYPb_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs9SMuO7kbZ2K_7git_xet.exit ], [ 2, %bb.ae ], [ 2, %.thread.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false), !alias.scope !294
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.05, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !294
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false), !alias.scope !294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret void

infloop:                                          ; preds = %.outer126, %infloop
  br label %infloop

infloop163:                                       ; preds = %.outer125, %infloop163
  br label %infloop163

infloop165:                                       ; preds = %.outer114, %infloop165
  br label %infloop165

infloop167:                                       ; preds = %.outer, %infloop167
  br label %infloop167
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 48) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.k = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.e, i64 noundef 32) ; 2 uses
  %.not59 = icmp eq ptr %i.k, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.sroa.043.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.l = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4) ; 2 uses
  %.not60 = icmp eq ptr %i.l, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %.sroa.049.0.copyload = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.m = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4) ; 2 uses
  %.not61 = icmp eq ptr %i.m, null
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %.sroa.052.0.copyload = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.n = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.b, i64 noundef 4) ; 2 uses
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %.sroa.055.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.o = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.sroa.058.0.copyload = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.043.0.copyload, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.049.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.052.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.055.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.058.0.copyload, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.l, %bb.f ], [ %i.n, %bb.j ], [ %i.o, %bb.l ], [ %i.m, %bb.h ], [ %i.k, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = call noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 48) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.k = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.e, i64 noundef 32) ; 2 uses
  %.not59 = icmp eq ptr %i.k, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.sroa.043.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.l = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.d, i64 noundef 4) ; 2 uses
  %.not60 = icmp eq ptr %i.l, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %.sroa.049.0.copyload = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.m = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4) ; 2 uses
  %.not61 = icmp eq ptr %i.m, null
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %.sroa.052.0.copyload = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.n = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.b, i64 noundef 4) ; 2 uses
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %.sroa.055.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.o = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.sroa.058.0.copyload = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.043.0.copyload, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.049.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.052.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.055.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.058.0.copyload, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.l, %bb.f ], [ %i.n, %bb.j ], [ %i.o, %bb.l ], [ %i.m, %bb.h ], [ %i.k, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.e, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !295
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.h, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %i.c, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.k, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.m, ptr %i.b, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.n, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.p, ptr %i.a, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull %i.q, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret { i64, ptr } { i64 0, ptr inttoptr (i64 48 to ptr) }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2w_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2w_5error9DataErrorENtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !320, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2g_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2g_5error9DataErrorENtNtB4_6marker4SendEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !321, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2g_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2g_5error9DataErrorENtNtB4_6marker4SendEL_EECs9SMuO7kbZ2K_7git_xet.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !320, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB23_10processing23deduplication_interface24UploadSessionDataManagerENtNtB23_5error9DataErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !321, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB23_10processing23deduplication_interface24UploadSessionDataManagerENtNtB23_5error9DataErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB23_10processing23deduplication_interface24UploadSessionDataManagerENtNtB23_5error9DataErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2g_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2g_5error9DataErrorENtNtB4_6marker4SendEL_EECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs9SMuO7kbZ2K_7git_xet(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !320, !invariant.load !10 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !321, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !320, !invariant.load !10 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !321, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !322, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs9SMuO7kbZ2K_7git_xet.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9SMuO7kbZ2K_7git_xet:bb.a
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !2500
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !2500, !noundef !10
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !2503
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !2503
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !10
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !2506, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2506, !noundef !10 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2506, !noundef !10
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !2506
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !2506
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !2506
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !2503
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !2503
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !2509
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !2509
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !2509, !noundef !10
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCsdCDTHl3mYPb_4http6header3mapNtB4_9HeaderMapNtNtCskKLDkoKarTP_4core7default7Default7defaultCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8), (24, 90)) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 8, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(1928) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 4 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 7 uses
  %i.e = call noundef nonnull align 8 ptr @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1928) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039) ; 0 uses
  %i.f = call { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 13 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 8 uses
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = and i64 %i.i, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !343

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !2512

.split26:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.i, 32
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !2513, !noundef !10
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread.thread, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.h, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !2513, !noundef !10
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.j, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null
  br i1 %i.ab, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %.sroa.6.039, %i.i
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !92

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.039, %i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.i
  br label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @33, %bb.e ], [ %i.h, %.split27 ], [ %i.h, %.split26 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.i, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.d, align 8, !alias.scope !2514
  store i8 3, ptr %i.a, align 8, !alias.scope !2514
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit
  %.sroa.0.119 = phi ptr [ %.sroa.0.040, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit ], [ %i.ae, %bb.h ]
  %.sroa.6.117 = phi i64 [ %.sroa.6.039, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit ], [ %i.ad, %bb.h ] ; 2 uses
  %i.aj = icmp eq i64 %.sroa.6.117, 0
  br i1 %i.aj, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %i.h) #25
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0EB1x_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(6552), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1a_11MultiThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEB2b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(6552), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NvNtCs942S7uueXw1_7tracing10instruments_1__INtB7_12InstrumentedNCNCINvNtNtCsjHtSR7YjKD4_8xet_data10processing11data_client10clean_fileRNtNtCsG258MDvU3F_3std4path7PathBufE00ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NvNtCs942S7uueXw1_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB1d_17FileUploadSession13finalize_impl00ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_2
