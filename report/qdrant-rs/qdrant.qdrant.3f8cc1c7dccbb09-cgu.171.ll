Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.171?download=true
inline.NumInlined: 236
inline.NumDeleted: 104
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-8.0.2/src/enc/compress_fragment.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\BE\02\00\00\09\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\FA\03\00\00\1F\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\E4\03\00\00#\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\C7\03\00\00#\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\AF\03\00\00/\00\00\00" }>, align 8
@_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment13kCmdHistoSeed = external global [128 x i32]
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\C6\02\00\00\1E\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\EE\02\00\00>\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\F0\02\00\00J\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\EB\02\00\00!\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\006\03\00\00\1D\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\007\03\00\00\1D\00\00\00" }>, align 8
@12 = private unnamed_addr constant [31 x i8] c"assertion failed: ip_index >= 3", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00Y\03\00\00\15\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00]\03\00\00\15\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00`\03\00\00\15\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00c\03\00\00\15\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00e\03\00\006\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\8A\03\00\00\19\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\8E\03\00\00\19\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\91\03\00\00\19\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\94\03\00\00\19\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\96\03\00\00:\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\8B\03\00\00R\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\9E\03\00\00'\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00l\03\00\00'\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00k\03\00\00'\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00h\03\00\00E\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00h\03\00\00-\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00Z\03\00\00N\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00-\03\00\00#\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\02\03\00\00#\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\01\03\00\00#\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\E8\02\00\00J\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\E8\02\00\002\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\E6\02\00\008\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\D1\02\00\00\1F\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\B8\02\00\00%\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00O\00\00\00+\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00{\00\00\00\0E\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\008\00\00\00'\00\00\00" }>, align 8
@41 = private unnamed_addr constant [98 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/sort/unstable/quicksort.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"a\00\00\00\00\00\00\00o\00\00\00\0B\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"a\00\00\00\00\00\00\00\85\00\00\00\0B\00\00\00" }>, align 8
@44 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@45 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-8.0.2/src/enc/static_dict.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"h\00\00\00\00\00\00\00.\00\00\00\1F\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"h\00\00\00\00\00\00\00.\00\00\00\0B\00\00\00" }>, align 8
@_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc11log_table_86logs_8 = external local_unnamed_addr global [256 x float]
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"n\00\00\00\00\00\00\00\1E\02\00\00#\00\00\00" }>, align 8
@switch.table._RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment22compress_fragment_fastNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant = private unnamed_addr constant [7 x i8] [i8 15, i8 poison, i8 13, i8 poison, i8 11, i8 poison, i8 9], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment22compress_fragment_fastNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef %7, ptr noalias nofree noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef range(i64 0, 4611686018427387904) %11, ptr noalias nofree noundef align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef range(i64 0, -9223372036854775808) %14, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef range(i64 0, -9223372036854775808) %17) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %15, align 8, !noundef !5  ; 2 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %switch.tableidx = add nsw i64 %i.c, -48        ; 3 uses
  %i.d = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.f
  tail call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  tail call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.e = load i64, ptr %15, align 8, !noundef !5
  %i.f = add i64 %i.e, 7
  %i.g = and i64 %i.f, 4294967288
  store i64 %i.g, ptr %15, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.f
  ret void

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment22compress_fragment_fastNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  tail call fastcc void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment27compress_fragment_fast_implNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 4 %5, i64 noundef %6, i64 noundef %switch.ext, ptr noalias nofree noundef nonnull %8, i64 noundef %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef %11, ptr noalias nofree noundef align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef %14, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %switch.lookup
  %i.h = load i64, ptr %15, align 8, !noundef !5
  %i.i = sub i64 %i.h, %i.a
  %i.j = shl i64 %3, 3
  %i.k = add i64 %i.j, 31
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  br i1 %4, label %.sink.split, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment27compress_fragment_fast_implNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 0) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 9, 16) %7, ptr noalias nofree noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef range(i64 0, 4611686018427387904) %11, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef range(i64 0, -9223372036854775808) %14, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef range(i64 0, -9223372036854775808) %17) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [512 x i8], align 2               ; 8 uses
  %i.e = alloca [256 x i8], align 1               ; 9 uses
  %i.f = alloca [512 x i8], align 4               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.f, i8 0, i64 512, i1 false)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 98304) ; 3 uses
  %i.g = load i64, ptr %15, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.e, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.h = sub nuw nsw i64 64, %7                   ; 11 uses
  tail call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass23store_meta_block_header(i64 noundef %..i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  tail call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 13, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.i = call fastcc noundef i64 @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %..i, ptr noalias nofree noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 2 %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.j = load i64, ptr %12, align 8, !noundef !5  ; 4 uses
  %i.k = icmp ugt i64 %i.j, 7
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dh, %bb.a
  %i.l = lshr i64 %i.j, 3                         ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, %14
  br i1 %i.m, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.dh
  %.sroa.022.0761 = phi i64 [ %i.ko, %bb.dh ], [ 0, %bb.a ] ; 2 uses
  %i.n = lshr exact i64 %.sroa.022.0761, 3        ; 3 uses
  %i.o = icmp samesign ult i64 %i.n, %14
  br i1 %i.o, label %bb.dh, label %bb.di

bb.b:                                             ; preds = %._crit_edge
  %i.p = and i64 %i.j, 7
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  %i.s = zext i8 %i.r to i64
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef %i.p, i64 noundef %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.t = icmp samesign ugt i64 %9, 64
  %i.u = icmp samesign ugt i64 %11, 64
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.b
  %.sroa.0.01392.ph = phi i64 [ %.sroa.0.1.jt2, %bb.j ], [ %3, %bb.b ]
  %.sroa.0108.01384.ph = phi i64 [ %.sroa.0108.1.jt2, %bb.j ], [ 0, %bb.b ]
  %.sroa.0125.01382.ph = phi i64 [ %.sroa.09.1.jt2, %bb.j ], [ 0, %bb.b ] ; 9 uses
  %.sroa.0145.01378.ph = phi i64 [ %..i227, %bb.j ], [ %..i, %bb.b ] ; 2 uses
  %.sroa.0148.01376.ph.in = phi i64 [ %i.aj, %bb.j ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0151.01374.ph = phi i64 [ %i.an, %bb.j ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.0148.01376.ph = add i64 %.sroa.0148.01376.ph.in, 3
  %i.ae = icmp ugt i64 %.sroa.0151.01374.ph, 980
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21
  unreachable

bb.d:                                             ; preds = %.outer, %bb.y
  %.sroa.0.01392 = phi i64 [ %i.ai, %bb.y ], [ %.sroa.0.01392.ph, %.outer ] ; 3 uses
  %.sroa.09.01389 = phi i64 [ %i.ah, %bb.y ], [ %.sroa.0125.01382.ph, %.outer ] ; 6 uses
  %.sroa.0108.01384 = phi i64 [ %.sroa.0108.1.jt0, %bb.y ], [ %.sroa.0108.01384.ph, %.outer ] ; 3 uses
  %.sroa.0131.01380 = phi i64 [ %..i226, %bb.y ], [ %.sroa.0145.01378.ph, %.outer ] ; 5 uses
  %.sroa.0145.01378 = phi i64 [ %i.ao, %bb.y ], [ %.sroa.0145.01378.ph, %.outer ]
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implmECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment13kCmdHistoSeed, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.af = add i64 %.sroa.09.01389, %.sroa.0131.01380 ; 8 uses
  %i.ag = icmp samesign ugt i64 %.sroa.0131.01380, 15
  br i1 %i.ag, label %bb.ai, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bp, %bb.df, %.backedge, %bb.cp, %bb.d, %bb.aj
  %.sroa.0108.1.jt0 = phi i64 [ %.sroa.0108.3779, %.backedge ], [ %.sroa.0108.01384, %bb.aj ], [ %i.ii, %bb.cp ], [ %.sroa.0108.01384, %bb.d ], [ %i.fb, %bb.bp ], [ %.sroa.032.1770, %bb.df ] ; 12 uses
  %i.ah = add i64 %.sroa.09.01389, %.sroa.0131.01380 ; 9 uses
  %i.ai = sub i64 %.sroa.0.01392, %.sroa.0131.01380 ; 8 uses
  %..i226 = call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 65536) ; 4 uses
  %.not221 = icmp eq i64 %i.ai, 0
  br i1 %.not221, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.ad, %bb.ae, %bb.ag, %bb.bj, %bb.m
  %.sroa.0108.1.jt2 = phi i64 [ %i.af, %bb.m ], [ %i.af, %bb.ad ], [ %i.af, %bb.ag ], [ %.sroa.080.0763, %bb.bj ], [ %i.af, %bb.ae ]
  %.sroa.09.1.jt2 = phi i64 [ %i.ah, %bb.m ], [ %i.ah, %bb.ad ], [ %i.ah, %bb.ag ], [ %.sroa.080.0763, %bb.bj ], [ %i.ah, %bb.ae ] ; 5 uses
  %.sroa.0.1.jt2 = phi i64 [ %i.ai, %bb.m ], [ %i.ai, %bb.ad ], [ %i.ai, %bb.ag ], [ %i.fj, %bb.bj ], [ %i.ai, %bb.ae ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.1.jt2, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %4, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %..i227 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.jt2, i64 98304) ; 3 uses
  %i.aj = load i64, ptr %15, align 8, !noundef !5
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass23store_meta_block_header(i64 noundef %..i227, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 13, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.ak = icmp ugt i64 %.sroa.09.1.jt2, %2
  br i1 %i.ak, label %bb.k, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.i:                                             ; preds = %bb.f
  store i8 0, ptr %13, align 1
  store i64 0, ptr %12, align 8
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef 128, ptr noalias nofree noundef nonnull %8, i64 noundef %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noalias nofree noundef nonnull %13, i64 noundef %14)
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.al = sub nuw nsw i64 %2, %.sroa.09.1.jt2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.1.jt2
  %i.an = call fastcc noundef i64 @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.al, i64 noundef %..i227, ptr noalias nofree noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 2 %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef 128, ptr noalias nofree noundef nonnull %8, i64 noundef %9, ptr noalias nofree noundef nonnull align 2 %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  br label %.outer

bb.k:                                             ; preds = %bb.g
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.1.jt2, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
  unreachable

bb.l:                                             ; preds = %.loopexit.loopexit
  %i.ao = add i64 %..i226, %.sroa.0145.01378      ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 1048577
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, %bb.l, %.loopexit.loopexit
  %i.aq = icmp ult i64 %.sroa.0108.1.jt0, %i.af
  br i1 %i.aq, label %bb.z, label %bb.e

bb.n:                                             ; preds = %bb.l
  %i.ar = icmp ugt i64 %i.ah, %2
  br i1 %i.ar, label %bb.x, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.as = sub nuw nsw i64 %2, %i.ah               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.w
  %i.au = add nuw nsw i64 %..i226, 42
  %i.av = udiv i64 %i.au, 43                      ; 3 uses
  %i.aw = icmp ult i64 %i.ai, 10966
  br i1 %i.aw, label %._crit_edge.thread.i, label %bb.p

.lr.ph.i:                                         ; preds = %bb.o, %bb.w
  %.sroa.0.015.i = phi i64 [ %i.bz, %bb.w ], [ 0, %bb.o ] ; 4 uses
  %i.ax = icmp samesign ult i64 %.sroa.0.015.i, %i.as
  br i1 %i.ax, label %bb.w, label %bb.v

bb.p:                                             ; preds = %._crit_edge.i
  %i.ay = uitofp nneg i64 %i.av to float          ; 2 uses
  %i.az = call nnan float @llvm.log2.f32(float %i.ay)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i, %bb.p
  %.pre-phi.i = phi float [ %.pre.i, %._crit_edge.thread.i ], [ %i.ay, %bb.p ]
  %.sroa.05.0.i = phi float [ %i.be, %._crit_edge.thread.i ], [ %i.az, %bb.p ]
  %i.ba = fadd float %.sroa.05.0.i, 5.000000e-01
  %i.bb = fmul float %.pre-phi.i, %i.ba
  %i.bc = fadd float %i.bb, 2.000000e+02
  br label %bb.r

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc11log_table_86logs_8, i64 %i.av
  %i.be = load float, ptr %i.bd, align 4, !noalias !24, !noundef !5
  %.pre.i = uitofp nneg i64 %i.av to float
  br label %bb.q

bb.r:                                             ; preds = %bb.t, %bb.q
  %.sroa.03.017.i = phi float [ %i.bc, %bb.q ], [ %i.bq, %bb.t ]
  %.sroa.08.016.i = phi i64 [ 0, %bb.q ], [ %i.bf, %bb.t ] ; 3 uses
  %i.bf = add nuw nsw i64 %.sroa.08.016.i, 1      ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.08.016.i
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !24, !noundef !5 ; 3 uses
  %i.bi = uitofp i64 %i.bh to float               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.08.016.i
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !23, !noalias !22, !noundef !5
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = icmp ult i64 %i.bh, 256
  br i1 %i.bm, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = call nnan float @llvm.log2.f32(float %i.bi)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.07.0.i = phi float [ %i.bs, %bb.u ], [ %i.bn, %bb.s ]
  %i.bo = fadd float %.sroa.07.0.i, %i.bl
  %i.bp = fmul float %i.bo, %i.bi
  %i.bq = fsub float %.sroa.03.017.i, %i.bp       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, 256
  br i1 %exitcond.not.i, label %_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, label %bb.r

bb.u:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc11log_table_86logs_8, i64 %i.bh
  %i.bs = load float, ptr %i.br, align 4, !noalias !24, !noundef !5
  br label %bb.t

bb.v:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.015.i, i64 noundef range(i64 0, -9223372036854775808) %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #21, !noalias !24
  unreachable

bb.w:                                             ; preds = %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.015.i
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !22, !noalias !23, !noundef !5
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !24, !noundef !5
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !noalias !24
  %i.bz = add nuw nsw i64 %.sroa.0.015.i, 43      ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %..i226
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i

_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment16ShouldMergeBlock.exit: ; preds = %bb.t
  %i.cb = fcmp ult float %i.bq, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  br i1 %i.cb, label %bb.m, label %bb.y

end_hunk_0
begin_hunk_1_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment27compress_fragment_fast_implNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant:bb.a
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gs ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !noundef !5
  store i32 %i.hc, ptr %i.hm, align 4
  %i.ho = icmp ugt i64 %i.fb, %2
  br i1 %i.ho, label %._crit_edge775, label %.lr.ph774, !prof !28

bb.ch:                                            ; preds = %bb.ce
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gs, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
  unreachable

.lr.ph774:                                        ; preds = %bb.cg, %bb.dc
  %.sroa.096.2772.in = phi i32 [ %i.kd, %bb.dc ], [ %i.hn, %bb.cg ]
  %.sroa.019.2771 = phi i32 [ %i.ij, %bb.dc ], [ %.sroa.019.1, %bb.cg ]
  %.sroa.032.1770 = phi i64 [ %i.ii, %bb.dc ], [ %i.fb, %bb.cg ] ; 11 uses
  %.sroa.096.2772 = sext i32 %.sroa.096.2772.in to i64 ; 6 uses
  %i.hp = icmp ult i64 %2, %.sroa.096.2772
  br i1 %i.hp, label %bb.cj, label %bb.ci, !prof !21

._crit_edge775:                                   ; preds = %bb.cg, %bb.dc
  %.sroa.032.1.lcssa = phi i64 [ %i.ii, %bb.dc ], [ %i.fb, %bb.cg ]
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.032.1.lcssa, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #21
  unreachable

bb.ci:                                            ; preds = %.lr.ph774
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.032.1770
  %i.hr = sub nuw nsw i64 %2, %.sroa.032.1770
  %i.hs = sub nuw nsw i64 %2, %.sroa.096.2772
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.096.2772
  %i.hu = call noundef zeroext i1 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment7IsMatch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ht, i64 noundef %i.hs)
  br i1 %i.hu, label %bb.ck, label %bb.de

bb.cj:                                            ; preds = %.lr.ph774
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.096.2772, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.hv = add nuw nsw i64 %.sroa.096.2772, 5      ; 4 uses
  %i.hw = icmp ugt i64 %i.hv, %2
  br i1 %i.hw, label %bb.cm, label %bb.cl, !prof !21

bb.cl:                                            ; preds = %bb.ck
  %i.hx = add nuw i64 %.sroa.032.1770, 5          ; 4 uses
  %i.hy = icmp ugt i64 %i.hx, %2
  br i1 %i.hy, label %bb.co, label %bb.cn, !prof !21

bb.cm:                                            ; preds = %bb.ck
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hv, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 %i.hv
  %i.ia = sub nuw nsw i64 %2, %i.hv
  %i.ib = sub nuw nsw i64 %2, %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.hx
  %i.id = sub i64 %i.dd, %.sroa.032.1770
  %i.ie = call noundef i64 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ia, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ic, i64 noundef %i.ib, i64 noundef %i.id)
  %i.if = sub nsw i64 %.sroa.032.1770, %.sroa.096.2772 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 262128
  br i1 %i.ig, label %bb.de, label %bb.cp

bb.co:                                            ; preds = %bb.cl
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hx, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #21
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.ih = add i64 %i.ie, 5                        ; 2 uses
  %i.ii = add i64 %i.ih, %.sroa.032.1770          ; 8 uses
  %i.ij = trunc nuw nsw i64 %i.if to i32
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment11EmitCopyLen(i64 noundef %i.ih, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment12EmitDistance(i64 noundef %i.if, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias nofree noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %.not223 = icmp ult i64 %i.ii, %i.cv
  br i1 %.not223, label %bb.cq, label %.loopexit.loopexit

bb.cq:                                            ; preds = %bb.cp
  %i.ik = icmp ugt i64 %i.ii, 2
  br i1 %i.ik, label %bb.cs, label %bb.cr, !prof !25

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.il = add i64 %i.ii, -3                       ; 5 uses
  %i.im = icmp ugt i64 %i.il, %2
  br i1 %i.im, label %bb.cv, label %bb.ct, !prof !21

bb.ct:                                            ; preds = %bb.cs
  %i.in = sub nuw nsw i64 %2, %i.il
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29
  store i64 0, ptr %i.c, align 8, !noalias !29
  %i.io = icmp samesign ugt i64 %i.in, 7
  br i1 %i.io, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsl8OoimOLbh_6qdrant.exit232, label %bb.cu, !prof !25

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #21, !noalias !30
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsl8OoimOLbh_6qdrant.exit232: ; preds = %bb.ct
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %i.il
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.c, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ip, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47)
  %i.iq = load i32, ptr %i.c, align 8, !noalias !29
  %i.ir = zext i32 %i.iq to i64
  %i.is = load i8, ptr %i.ab, align 4, !noalias !29, !noundef !5
  %i.it = zext i8 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 32
  %i.iv = or disjoint i64 %i.iu, %i.ir
  %i.iw = load i8, ptr %i.ac, align 1, !noalias !29, !noundef !5
  %i.ix = zext i8 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 40
  %i.iz = or disjoint i64 %i.iv, %i.iy            ; 2 uses
  %i.ja = load i16, ptr %i.ad, align 2, !noalias !29
  %i.jb = zext i16 %i.ja to i64
  %i.jc = shl nuw i64 %i.jb, 48
  %i.jd = or disjoint i64 %i.jc, %i.iz            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29
  %i.je = mul i64 %i.jd, 8503243848024064
  %i.jf = lshr i64 %i.je, %i.h                    ; 3 uses
  %i.jg = and i64 %i.jd, -16777216
  %i.jh = mul i64 %i.jg, 506832829
  %i.ji = lshr i64 %i.jh, %i.h                    ; 3 uses
  %i.jj = icmp samesign ult i64 %i.jf, %6
  br i1 %i.jj, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %bb.cs
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.il, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21
  unreachable

bb.cw:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsl8OoimOLbh_6qdrant.exit232
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jf
  %i.jl = trunc i64 %i.il to i32
  store i32 %i.jl, ptr %i.jk, align 4
  %i.jm = shl nuw i64 %i.iz, 16
  %i.jn = and i64 %i.jm, -16777216
  %i.jo = mul i64 %i.jn, 506832829
  %i.jp = lshr i64 %i.jo, %i.h                    ; 3 uses
  %i.jq = icmp samesign ult i64 %i.jp, %6
  br i1 %i.jq, label %bb.cy, label %bb.cz

bb.cx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsl8OoimOLbh_6qdrant.exit232
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jf, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jp
  %i.js = trunc i64 %i.ii to i32                  ; 3 uses
  %i.jt = add i32 %i.js, -2
  store i32 %i.jt, ptr %i.jr, align 4
  %i.ju = shl i64 %i.jd, 8
  %i.jv = and i64 %i.ju, -16777216
  %i.jw = mul i64 %i.jv, 506832829
  %i.jx = lshr i64 %i.jw, %i.h                    ; 3 uses
  %i.jy = icmp samesign ult i64 %i.jx, %6
  br i1 %i.jy, label %bb.da, label %bb.db

bb.cz:                                            ; preds = %bb.cw
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jp, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jx
  %i.ka = add i32 %i.js, -1
  store i32 %i.ka, ptr %i.jz, align 4
  %i.kb = icmp samesign ult i64 %i.ji, %6
  br i1 %i.kb, label %bb.dc, label %bb.dd

bb.db:                                            ; preds = %bb.cy
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jx, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #21
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ji ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !noundef !5
  store i32 %i.js, ptr %i.kc, align 4
  %i.ke = icmp ugt i64 %i.ii, %2
  br i1 %i.ke, label %._crit_edge775, label %.lr.ph774, !prof !31

bb.dd:                                            ; preds = %bb.da
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #21
  unreachable

bb.de:                                            ; preds = %bb.cn, %bb.ci
  %i.kf = add nuw i64 %.sroa.032.1770, 1          ; 4 uses
  %.not224 = icmp ult i64 %.sroa.032.1770, %2
  br i1 %.not224, label %bb.df, label %bb.dg, !prof !25

bb.df:                                            ; preds = %bb.de
  %i.kg = sub nuw nsw i64 %2, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 %i.kf
  %i.ki = call noundef i32 @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment4Hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kh, i64 noundef %i.kg, i64 noundef %i.h)
  %i.kj = add nuw i64 %.sroa.032.1770, 2          ; 2 uses
  %i.kk = icmp ugt i64 %i.kj, %i.cv
  br i1 %i.kk, label %.loopexit.loopexit, label %.lr.ph765

bb.dg:                                            ; preds = %bb.de
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.kf, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
  unreachable

bb.dh:                                            ; preds = %.lr.ph
  %i.kl = getelementptr inbounds nuw i8, ptr %13, i64 %i.n
  %i.km = load i8, ptr %i.kl, align 1, !noundef !5
  %i.kn = zext i8 %i.km to i64
  call void @_RNvNtNtCs4GWW6M5ZWyU_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 8, i64 noundef %i.kn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noalias nofree noundef nonnull %16, i64 noundef %17)
  %i.ko = add i64 %.sroa.022.0761, 8              ; 2 uses
  %i.kp = or disjoint i64 %i.ko, 7
  %i.kq = icmp ult i64 %i.kp, %i.j
  br i1 %i.kq, label %.lr.ph, label %._crit_edge

bb.di:                                            ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, ptr noalias nofree noundef nonnull align 2 %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noalias nofree noundef nonnull %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 4              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = icmp ult i64 %3, 32768
  br i1 %i.b, label %.preheader33, label %.preheader35.preheader

.preheader35.preheader:                           ; preds = %bb.a
  %.not18 = icmp eq i64 %2, 0
  br i1 %.not18, label %.preheader35._crit_edge, label %.lr.ph5

.preheader33:                                     ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %vector.ph8, label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph5
  %i.c = add nuw i64 %3, 28
  %i.d = udiv i64 %i.c, 29
  %i.e = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.e, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi6 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.f, align 4  ; 2 uses
  %wide.load7 = load <2 x i32>, ptr %i.g, align 4 ; 2 uses
  %i.h = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load, <2 x i32> splat (i32 11))
  %i.i = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load7, <2 x i32> splat (i32 11))
  %i.j = shl nuw nsw <2 x i32> %i.h, splat (i32 1)
  %i.k = shl nuw nsw <2 x i32> %i.i, splat (i32 1)
  %i.l = or disjoint <2 x i32> %i.j, splat (i32 1) ; 2 uses
  %i.m = or disjoint <2 x i32> %i.k, splat (i32 1) ; 2 uses
  %i.n = add <2 x i32> %i.l, %wide.load
  %i.o = add <2 x i32> %i.m, %wide.load7
  store <2 x i32> %i.n, ptr %i.f, align 4
  store <2 x i32> %i.o, ptr %i.g, align 4
  %i.p = zext nneg <2 x i32> %i.l to <2 x i64>
  %i.q = zext nneg <2 x i32> %i.m to <2 x i64>
  %i.r = add <2 x i64> %vec.phi, %i.p             ; 2 uses
  %i.s = add <2 x i64> %vec.phi6, %i.q            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, 256
  br i1 %i.t, label %.loopexit.loopexit1, label %vector.body, !llvm.loop !32

.preheader35:                                     ; preds = %.lr.ph5
  %i.u = icmp ult i64 %i.ac, %2
  br i1 %i.u, label %.lr.ph5, label %.preheader35._crit_edge

.loopexit.loopexit1:                              ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.s, %i.r
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit1, %middle.block16
  %bin.rdx.sink = phi <2 x i64> [ %bin.rdx, %.loopexit.loopexit1 ], [ %bin.rdx17, %middle.block16 ]
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx.sink) ; 3 uses
  call void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 256, i64 noundef %i.v, i64 noundef 8, ptr noalias nofree noundef nonnull %4, i64 noundef 256, ptr noalias nofree noundef nonnull align 2 %5, i64 noundef 256, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noalias nofree noundef nonnull %7, i64 noundef %8)
  br label %bb.c

.preheader35._crit_edge:                          ; preds = %.preheader35, %.preheader35.preheader
  %.sroa.09.038.lcssa = phi i64 [ 0, %.preheader35.preheader ], [ %i.ac, %.preheader35 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.038.lcssa, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #21
  unreachable

.lr.ph5:                                          ; preds = %.preheader35.preheader, %.preheader35
  %.sroa.09.0384 = phi i64 [ %i.ac, %.preheader35 ], [ 0, %.preheader35.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.0384
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noundef !5
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = add nuw i64 %.sroa.09.0384, 29          ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %.preheader35, label %vector.ph

vector.ph8:                                       ; preds = %bb.k, %.preheader33
  %i.ae = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph8
  %index10 = phi i64 [ 0, %vector.ph8 ], [ %index.next15, %vector.body9 ] ; 2 uses
  %vec.phi11 = phi <2 x i64> [ %i.ae, %vector.ph8 ], [ %i.ap, %vector.body9 ]
  %vec.phi12 = phi <2 x i64> [ zeroinitializer, %vector.ph8 ], [ %i.aq, %vector.body9 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index10 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %wide.load13 = load <2 x i32>, ptr %i.af, align 4 ; 2 uses
  %wide.load14 = load <2 x i32>, ptr %i.ag, align 4 ; 2 uses
  %i.ah = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load13, <2 x i32> splat (i32 11))
  %i.ai = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load14, <2 x i32> splat (i32 11))
  %i.aj = shl nuw nsw <2 x i32> %i.ah, splat (i32 1) ; 2 uses
  %i.ak = shl nuw nsw <2 x i32> %i.ai, splat (i32 1) ; 2 uses
  %i.al = add <2 x i32> %i.aj, %wide.load13
  %i.am = add <2 x i32> %i.ak, %wide.load14
  store <2 x i32> %i.al, ptr %i.af, align 4
  store <2 x i32> %i.am, ptr %i.ag, align 4
  %i.an = zext nneg <2 x i32> %i.aj to <2 x i64>
  %i.ao = zext nneg <2 x i32> %i.ak to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi11, %i.an         ; 2 uses
  %i.aq = add <2 x i64> %vec.phi12, %i.ao         ; 2 uses
  %index.next15 = add nuw i64 %index10, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next15, 256
  br i1 %i.ar, label %middle.block16, label %vector.body9, !llvm.loop !33

middle.block16:                                   ; preds = %vector.body9
  %bin.rdx17 = add <2 x i64> %i.aq, %i.ap
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader33, %bb.k
  %.sroa.025.041 = phi i64 [ %i.bp, %bb.k ], [ 0, %.preheader33 ] ; 3 uses
  %exitcond50.not = icmp eq i64 %.sroa.025.041, %2
  br i1 %exitcond50.not, label %bb.j, label %bb.k

bb.b:                                             ; preds = %bb.h
  %i.as = icmp eq i64 %i.v, 0
  br i1 %i.as, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.h, %.loopexit
  %.sroa.021.045 = phi i64 [ 0, %.loopexit ], [ %.sroa.021.1.1, %bb.h ] ; 2 uses
  %.sroa.027.044 = phi i64 [ 0, %.loopexit ], [ %i.az, %bb.h ] ; 4 uses
  %i.at = or disjoint i64 %.sroa.027.044, 1       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.027.044
  %i.av = load i32, ptr %i.au, align 4, !noundef !5 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ax = mul i64 %.sroa.021.1.1, 125
  %i.ay = udiv i64 %i.ax, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.ay

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #21
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.i
  %.sroa.021.1 = phi i64 [ %.sroa.021.045, %bb.c ], [ %i.bo, %bb.i ] ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.027.044, 2       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !5 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.at
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul i32 %i.bb, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %.sroa.021.1, %i.bh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.021.1.1 = phi i64 [ %.sroa.021.1, %bb.f ], [ %i.bi, %bb.g ] ; 2 uses
  %exitcond53.not.1 = icmp eq i64 %i.az, 256
  br i1 %exitcond53.not.1, label %bb.b, label %bb.c

bb.i:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.027.044
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul i32 %i.av, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %.sroa.021.045, %i.bn
  br label %bb.f

bb.j:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.bp = add nuw i64 %.sroa.025.041, 1           ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.025.041
  %i.br = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !5
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  %exitcond51.not = icmp eq i64 %i.bp, %3
  br i1 %exitcond51.not, label %vector.ph8, label %.lr.ph
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB14_20sort_unstable_by_keyNtB16_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2W_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 5542891849071380) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
end_hunk_1
