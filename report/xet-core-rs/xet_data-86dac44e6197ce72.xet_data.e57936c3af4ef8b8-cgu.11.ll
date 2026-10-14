Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.11?download=true
inline.NumInlined: 660
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/heapify-0.2.0/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"]\00\00\00\00\00\00\00\F7\00\00\000\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"]\00\00\00\00\00\00\00\FC\00\00\003\00\00\00" }>, align 8
@3 = private unnamed_addr constant [95 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/vec_deque/mod.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"^\00\00\00\00\00\00\00\0B\07\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant [92 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/node.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@7 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@10 = private unnamed_addr constant [96 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/navigate.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"_\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@12 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@15 = private unnamed_addr constant [97 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"`\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"_\00\00\00\00\00\00\00\16\02\00\00/\00\00\00" }>, align 8
@18 = private unnamed_addr constant [46 x i8] c"xet_data/src/deduplication/data_aggregator.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"-\00\00\00\00\00\00\00U\00\00\00\1C\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"-\00\00\00\00\00\00\00V\00\00\00*\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"-\00\00\00\00\00\00\00V\00\00\00\14\00\00\00" }>, align 8
@22 = private unnamed_addr constant [49 x i8] c"xet_data/src/deduplication/file_deduplication.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"0\00\00\00\00\00\00\00T\01\00\00*\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"0\00\00\00\00\00\00\00u\01\00\00A\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"0\00\00\00\00\00\00\00v\01\00\00,\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"0\00\00\00\00\00\00\00~\01\00\00-\00\00\00" }>, align 8
@27 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@28 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @27, [24 x i8] zeroinitializer }>, align 8
@29 = private unnamed_addr constant [32 x i8] zeroinitializer, align 8
@30 = private unnamed_addr constant [25 x i8] c"assertion failed: len > 0", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00o\01\00\00\09\00\00\00" }>, align 8
@32 = private unnamed_addr constant [39 x i8] c"assertion failed: old_left_len >= count", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\02\06\00\00\0D\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@35 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/sync/oneshot.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"e\00\00\00\00\00\00\00o\02\00\00'\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"e\00\00\00\00\00\00\00\84\02\00\002\00\00\00" }>, align 8
@38 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@40 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@44 = private unnamed_addr constant [56 x i8] c"xet_core_structures/src/merklehash/aggregated_hashes.rs\00", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00=\00\00\00\05\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00>\00\00\00\05\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00?\00\00\00\05\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00@\00\00\00\05\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00A\00\00\00\05\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00B\00\00\00\05\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00C\00\00\00\05\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00D\00\00\00\05\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00E\00\00\00\05\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00F\00\00\00\05\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00G\00\00\00\05\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00I\00\00\00\05\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00J\00\00\00\05\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00q\00\00\00\05\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00r\00\00\00\05\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00v\00\00\00\05\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00T\00\00\00\09\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00b\00\00\00\1B\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00b\00\00\00\08\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00^\00\00\00\09\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00\A8\00\00\00\07\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00\9F\00\00\00\0F\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00\9F\00\00\008\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"7\00\00\00\00\00\00\00\9C\00\00\009\00\00\00" }>, align 8
@73 = private unnamed_addr constant [79 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/iter.rs\00", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"N\00\00\00\00\00\00\00\0B\08\00\00\11\00\00\00" }>, align 8
@75 = private unnamed_addr constant [21 x i8] c"called after complete", align 1
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"e\00\00\00\00\00\00\00\09\05\00\00\0D\00\00\00" }>, align 8
@77 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCschSS5BelOxo_7heapify13pop_heap_withINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 1
  br i1 %i.a, label %bb.b, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.h, %bb.e, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %0, align 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  %i.e = icmp samesign ugt i64 %1, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.08.0.i = phi i64 [ 1, %bb.b ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.f = icmp samesign ult i64 %.sroa.08.0.i, %i.b
  br i1 %i.f, label %.lr.ph.i, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef i8 %2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !inline_history !0
  %cond.i = icmp eq i8 %i.i, 1
  %spec.select.i = select i1 %cond.i, i64 2, i64 1
  br label %bb.c

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.sroa.0.040.i = phi i64 [ %.sroa.08.139.i, %bb.h ], [ 0, %bb.c ] ; 3 uses
  %.sroa.08.139.i = phi i64 [ %.sroa.08.2.i, %bb.h ], [ %.sroa.08.0.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.08.139.i ; 3 uses
  %i.k = icmp ult i64 %.sroa.0.040.i, %i.b
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.040.i ; 3 uses
  %i.m = tail call noundef i8 %2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !inline_history !0
  %cond35.i = icmp eq i8 %i.m, 1
  br i1 %cond35.i, label %bb.g, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.040.i, i64 noundef range(i64 0, 1152921504606846976) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.024.0.copyload.i = load i64, ptr %i.l, align 8, !alias.scope !19
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !19
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !19
  store i64 %.sroa.024.0.copyload.i, ptr %i.j, align 8, !alias.scope !19
  %i.o = shl nuw nsw i64 %.sroa.08.139.i, 1       ; 2 uses
  %i.p = or disjoint i64 %i.o, 1                  ; 3 uses
  %i.q = add nuw nsw i64 %i.o, 2                  ; 3 uses
  %i.r = icmp samesign ult i64 %i.q, %i.b
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.08.2.i = phi i64 [ %i.p, %bb.g ], [ %spec.select37.i, %bb.i ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.08.2.i, %i.b
  br i1 %i.s, label %.lr.ph.i, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p
  %i.v = tail call noundef i8 %2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u), !inline_history !0
  %cond36.i = icmp eq i8 %i.v, 1
  %spec.select37.i = select i1 %cond36.i, i64 %i.q, i64 %i.p
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCschSS5BelOxo_7heapify14make_heap_withINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %1, -1
  %i.b = lshr i64 %i.a, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit
  %.sroa.4.015 = phi i64 [ %i.b, %bb.a ], [ %i.c, %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit ] ; 4 uses
  %i.c = add nsw i64 %.sroa.4.015, -1
  %i.d = icmp eq i64 %.sroa.4.015, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.e = shl i64 %.sroa.4.015, 1                  ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 5 uses
  %i.g = add i64 %i.e, 2                          ; 3 uses
  %i.h = icmp ult i64 %i.g, %1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.08.0.i = phi i64 [ %i.f, %bb.b ], [ %spec.select.i, %bb.e ] ; 2 uses
  %i.i = icmp ult i64 %.sroa.08.0.i, %1
  br i1 %i.i, label %.lr.ph.i, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ult i64 %i.f, %1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.m = tail call noundef i8 %2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !inline_history !0
  %cond.i = icmp eq i8 %i.m, 1
  %spec.select.i = select i1 %cond.i, i64 %i.g, i64 %i.f
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !noalias !22
  unreachable

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
  %.sroa.0.040.i = phi i64 [ %.sroa.08.139.i, %bb.j ], [ %.sroa.4.015, %bb.c ] ; 3 uses
  %.sroa.08.139.i = phi i64 [ %.sroa.08.2.i, %bb.j ], [ %.sroa.08.0.i, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.08.139.i ; 3 uses
  %i.o = icmp ult i64 %.sroa.0.040.i, %1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.040.i ; 3 uses
  %i.q = tail call noundef i8 %2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !inline_history !0
  %cond35.i = icmp eq i8 %i.q, 1
  br i1 %cond35.i, label %bb.i, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

bb.h:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.040.i, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !alias.scope !22
  %i.r = load i64, ptr %i.n, align 8, !alias.scope !22
  store i64 %i.r, ptr %i.p, align 8, !alias.scope !22
  store i64 %.sroa.024.0.copyload.i, ptr %i.n, align 8, !alias.scope !22
  %i.s = shl nuw nsw i64 %.sroa.08.139.i, 1       ; 2 uses
  %i.t = or disjoint i64 %i.s, 1                  ; 3 uses
  %i.u = add nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.v = icmp samesign ult i64 %i.u, %1
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.08.2.i = phi i64 [ %i.t, %bb.i ], [ %spec.select37.i, %bb.k ] ; 2 uses
  %i.w = icmp ult i64 %.sroa.08.2.i, %1
  br i1 %i.w, label %.lr.ph.i, label %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.z = tail call noundef i8 %2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y), !inline_history !0
  %cond36.i = icmp eq i8 %i.z, 1
  %spec.select37.i = select i1 %cond36.i, i64 %i.u, i64 %i.t
  br label %bb.j

_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.g, %bb.j, %bb.c
  br i1 %i.d, label %bb.l, label %bb.b

bb.l:                                             ; preds = %_RINvCschSS5BelOxo_7heapify11bubble_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBc_4sync3ArcNtNtNtB1y_14metadata_shard12xorb_structs11MDBXorbInfoENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsjHtSR7YjKD4_8xet_data() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB6_4sync3ArcNtNtNtB1v_14metadata_shard12xorb_structs11MDBXorbInfoEEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 450
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsjHtSR7YjKD4_8xet_data() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmjNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsjHtSR7YjKD4_8xet_data() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodemjEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2_11FileDeduperNtNtNtB6_10processing23deduplication_interface24UploadSessionDataManagerE36file_data_sequence_continues_currentB6_:bb.a
  %i.m = load i64, ptr %i.l, align 8, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !7
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.g, i64 -32
  %i.r = load i64, ptr %i.q, align 8, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !7
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.g, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !7
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.g, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !7
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.b, %bb.c, %bb.d, %bb.f
  %.sroa.0.0 = phi i1 [ %i.ae, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2_11FileDeduperNtNtNtB6_10processing23deduplication_interface24UploadSessionDataManagerE3newB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 8 captures(none) dereferenceable(384) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.i = load ptr, ptr %3, align 8, !alias.scope !811, !noalias !810, !nonnull !7, !noundef !7 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !812
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !811, !noalias !810, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !812
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !811, !noalias !810, !nonnull !7, !noundef !7 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !812
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime4core7context10XetContextECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #32
          to label %bb.q unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.h, align 8, !alias.scope !810, !noalias !811
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.t, align 8, !alias.scope !810, !noalias !811
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %i.u, align 8, !alias.scope !810, !noalias !811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication17defrag_preventionNtB2_16DefragPrevention3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %2, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime4core7context10XetContextECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %3)
  ret void

bb.k:                                             ; preds = %bb.n, %bb.p, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashjEECsjHtSR7YjKD4_8xet_data.exit, %bb.m, %bb.l, %bb.i, %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #32
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashjEECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashjEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #32
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashjEECsjHtSR7YjKD4_8xet_data.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interface24UploadSessionDataManagerEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #32
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime4core7context10XetContextECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #32
          to label %bb.g unwind label %bb.k

bb.q:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2_11FileDeduperNtNtNtB6_10processing23deduplication_interface24UploadSessionDataManagerE8finalizeB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [792 x i8], align 1               ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [152 x i8], align 8               ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !7 ; 7 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !843
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, 230584300921369396) %i.v, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.b
  %i.x = load i64, ptr %i.d, align 8, !range !14, !noalias !843, !noundef !7
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !15, !noalias !843, !noundef !7 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.y, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %.noexc
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !843
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #28
          to label %.noexc8 unwind label %bb.ao

.noexc8:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !843, !nonnull !7, !noundef !7 ; 3 uses
  %i.ae = icmp samesign ule i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !843
  store i64 %i.aa, ptr %i.g, align 8, !noalias !843
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.ad, ptr %i.af, align 8, !noalias !843
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ah = mul nuw nsw i64 %i.v, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.t, i64 %i.ah, i1 false), !noalias !844
  store i64 %i.v, ptr %i.ag, align 8, !noalias !843
  %.not.i = icmp eq i64 %i.v, 1
  br i1 %.not.i, label %._crit_edge144.thread.i.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph.i.i

._crit_edge144.i.i:                               ; preds = %bb.j
  %i.aj = icmp eq i64 %.pr.i.i, 0
  br i1 %i.aj, label %.invoke.i.i, label %._crit_edge144.i.._crit_edge144.thread.i_crit_edge.i

._crit_edge144.i.._crit_edge144.thread.i_crit_edge.i: ; preds = %._crit_edge144.i.i
  %.pre.i = load ptr, ptr %i.af, align 8, !noalias !843
  br label %._crit_edge144.thread.i.i

._crit_edge144.thread.i.i:                        ; preds = %._crit_edge144.i.._crit_edge144.thread.i_crit_edge.i, %bb.d
  %i.ak = phi ptr [ %.pre.i, %._crit_edge144.i.._crit_edge144.thread.i_crit_edge.i ], [ %i.ad, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !845
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit.i unwind label %bb.e, !noalias !843

bb.e:                                             ; preds = %._crit_edge144.thread.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.f, !noalias !843

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !843
  unreachable

.invoke.i.i:                                      ; preds = %bb.ak, %._crit_edge144.i.i
  %i.an = phi i64 [ 0, %._crit_edge144.i.i ], [ %.sroa.0.0143.i.i, %bb.ak ]
  %i.ao = phi i64 [ 0, %._crit_edge144.i.i ], [ %i.cx, %bb.ak ]
  %i.ap = phi ptr [ @69, %._crit_edge144.i.i ], [ @70, %bb.ak ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !843

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %.noexc.i.i, %.noexc29.i.i, %.noexc30.i.i, %bb.ai
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.loopexit.i.i.i
  %lpad.loopexit42.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %._crit_edge.i.i
  %lpad.loopexit45.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ah, %.invoke331.i.i, %.invoke329.i.i, %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit42.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit45.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.g, !noalias !843

bb.g:                                             ; preds = %.loopexit.split-lp.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.i, !noalias !843

bb.h:                                             ; preds = %.loopexit.split-lp.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.am, !noalias !843

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !843
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.backedge, %.preheader.lr.ph.i.i
  %i.as = phi i64 [ %i.v, %.preheader.lr.ph.i.i ], [ %.be, %.lr.ph.i.i.backedge ] ; 5 uses
  %.sroa.0.0143.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %.sroa.0.0143.i.i.be, %.lr.ph.i.i.backedge ] ; 4 uses
  %.sroa.03.0142.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %.sroa.03.0142.i.i.be, %.lr.ph.i.i.backedge ] ; 5 uses
  %i.at = icmp ugt i64 %.sroa.03.0142.i.i, %i.as
  br i1 %i.at, label %.invoke329.i.i, label %bb.k, !prof !9

._crit_edge.i.i:                                  ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !843
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false), !noalias !843
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE6resizeCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !843

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !843
  %.pr.i.i = load i64, ptr %i.ag, align 8, !noalias !843 ; 4 uses
  %i.au = icmp ult i64 %.pr.i.i, 230584300921369396
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp samesign ugt i64 %.pr.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.backedge, label %._crit_edge144.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aw = load ptr, ptr %i.af, align 8, !noalias !843, !nonnull !7, !noundef !7
  %i.ax = sub nuw nsw i64 %i.as, %.sroa.03.0142.i.i ; 9 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.sroa.03.0142.i.i ; 9 uses
  %i.az = icmp samesign ult i64 %i.ax, 3
  br i1 %i.az, label %.loopexit41.i.i, label %bb.l

.invoke329.i.i:                                   ; preds = %.loopexit41.i.i, %.lr.ph.i.i
  %i.ba = phi i64 [ %i.as, %.lr.ph.i.i ], [ %i.bq, %.loopexit41.i.i ]
  %i.bb = phi ptr [ @72, %.lr.ph.i.i ], [ @71, %.loopexit41.i.i ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.03.0142.i.i, i64 noundef %i.ba, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) #28
          to label %.cont330.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !843

.cont330.i.i:                                     ; preds = %.invoke329.i.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %..i.i.i = call noundef range(i64 3, 10) i64 @llvm.umin.i64(i64 range(i64 3, 230584300921369396) %i.ax, i64 9) ; 7 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !843
  %i.bc = and i64 %.sroa.4.0.copyload.i.i, 3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.loopexit41.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond.not.i.i = icmp eq i64 %i.ax, 3
  br i1 %exitcond.not.i.i, label %.loopexit41.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %.sroa.4.0.copyload.i.i.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !noalias !843
  %i.be = and i64 %.sroa.4.0.copyload.i.i.1, 3
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit41.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit41.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  %.sroa.4.0.copyload.i.i.2 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8, !noalias !843
  %i.bg = and i64 %.sroa.4.0.copyload.i.i.2, 3
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit41.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %exitcond.not.i.i.2 = icmp eq i64 %i.ax, 5
  br i1 %exitcond.not.i.i.2, label %.loopexit41.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %.sroa.4.0.copyload.i.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8, !noalias !843
  %i.bi = and i64 %.sroa.4.0.copyload.i.i.3, 3
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.loopexit41.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %exitcond.not.i.i.3 = icmp eq i64 %i.ax, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit41.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %i.ay, i64 264
  %.sroa.4.0.copyload.i.i.4 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8, !noalias !843
  %i.bk = and i64 %.sroa.4.0.copyload.i.i.4, 3
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.loopexit41.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %exitcond.not.i.i.4 = icmp eq i64 %i.ax, 7
  br i1 %exitcond.not.i.i.4, label %.loopexit41.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %i.ay, i64 304
  %.sroa.4.0.copyload.i.i.5 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8, !noalias !843
  %i.bm = and i64 %.sroa.4.0.copyload.i.i.5, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.loopexit41.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %exitcond.not.i.i.5 = icmp eq i64 %i.ax, 8
  br i1 %exitcond.not.i.i.5, label %.loopexit41.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %.sroa.4.0.copyload.i.i.6 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8, !noalias !843
  %i.bo = and i64 %.sroa.4.0.copyload.i.i.6, 3
  %i.bp = icmp eq i64 %i.bo, 0
  %spec.select = select i1 %i.bp, i64 9, i64 %..i.i.i
  br label %.loopexit41.i.i

.loopexit41.i.i:                                  ; preds = %bb.x, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.k
  %.sroa.010.0.i.i = phi i64 [ %i.ax, %bb.k ], [ 3, %bb.l ], [ %..i.i.i, %bb.m ], [ 4, %bb.n ], [ %..i.i.i, %bb.o ], [ 5, %bb.p ], [ %..i.i.i, %bb.q ], [ 6, %bb.r ], [ %..i.i.i, %bb.s ], [ 7, %bb.t ], [ %..i.i.i, %bb.u ], [ 8, %bb.v ], [ %..i.i.i, %bb.w ], [ %spec.select, %bb.x ] ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.010.0.i.i, %.sroa.03.0142.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !843
  %.not26.i.i = icmp ugt i64 %i.bq, %i.as
  br i1 %.not26.i.i, label %.invoke329.i.i, label %bb.y, !prof !9

bb.y:                                             ; preds = %.loopexit41.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(792) %i.c, i8 0, i64 792, i1 false), !noalias !848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !848
  store i64 0, ptr %i.b, align 8, !noalias !848
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.010.0.i.i, 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i.i, %bb.y
  %.sroa.0.038.i.i.i = phi ptr [ %i.bs, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i.i ], [ %i.ay, %bb.y ] ; 6 uses
  %.sroa.0.0437.i.i.i = phi i64 [ %i.cv, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i.i ], [ 0, %bb.y ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 40 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !847, !noalias !849, !noundef !7 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.bv = load i64, ptr %.sroa.0.038.i.i.i, align 8, !alias.scope !853, !noalias !854, !noundef !7
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.bv) #33
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !853, !noalias !854, !noundef !7
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.bx) #33
          to label %.noexc29.i.i unwind label %.loopexit.i.i

.noexc29.i.i:                                     ; preds = %.noexc.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !853, !noalias !854, !noundef !7
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.bz) #33
          to label %.noexc30.i.i unwind label %.loopexit.i.i

.noexc30.i.i:                                     ; preds = %.noexc29.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !853, !noalias !854, !noundef !7
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.cb) #33
          to label %.noexc31.i.i unwind label %.loopexit.i.i

.noexc31.i.i:                                     ; preds = %.noexc30.i.i
  %i.cc = load i64, ptr %i.b, align 8, !alias.scope !851, !noalias !855, !noundef !7 ; 8 uses
  %i.cd = icmp ult i64 %i.cc, 792
  br i1 %i.cd, label %bb.z, label %.invoke331.i.i

bb.z:                                             ; preds = %.noexc31.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc ; 3 uses
  store i8 32, ptr %i.ce, align 1, !alias.scope !850, !noalias !856
  %.not.i.i.i.i = icmp eq i64 %i.cc, 791
  br i1 %.not.i.i.i.i, label %.invoke331.i.i, label %bb.aa

.invoke331.i.i:                                   ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i, %bb.ac, %bb.aa, %bb.z, %.noexc31.i.i, %bb.ag
  %3 = phi i64 [ -1, %bb.ag ], [ %i.cc, %.noexc31.i.i ], [ 792, %bb.z ], [ 792, %bb.ac ], [ 792, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i ], [ 792, %bb.aa ]
  %4 = phi i64 [ 20, %bb.ag ], [ 792, %.noexc31.i.i ], [ 792, %bb.z ], [ 792, %bb.aa ], [ 792, %bb.ac ], [ 792, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i ]
  %5 = phi ptr [ @68, %bb.ag ], [ @61, %.noexc31.i.i ], [ @62, %bb.z ], [ @65, %bb.ac ], [ @64, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i ], [ @63, %bb.aa ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #27
          to label %.cont332.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !843

.cont332.i.i:                                     ; preds = %.invoke331.i.i
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 58, ptr %i.cf, align 1, !alias.scope !850, !noalias !856
  %i.cg = icmp samesign ult i64 %i.cc, 790
  br i1 %i.cg, label %bb.ab, label %.invoke331.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 32, ptr %i.ch, align 1, !alias.scope !850, !noalias !856
  %i.ci = add nuw nsw i64 %i.cc, 3                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.cj = icmp eq i64 %i.bu, 0
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.not8.i.i.i.i = icmp eq i64 %i.cc, 789
  br i1 %.not8.i.i.i.i, label %.invoke331.i.i, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !noalias !858
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  store i8 48, ptr %i.ck, align 1, !alias.scope !859, !noalias !860
  %i.cl = add nuw nsw i64 %i.cc, 4
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i

bb.af:                                            ; preds = %bb.aj
  %6 = sub nuw nsw i64 21, %.sroa.04.018.i.i.i.i.i177 ; 3 uses
  %i.cm = add nuw nsw i64 %6, %i.ci               ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 793
  br i1 %i.cn, label %bb.ai, label %bb.ah, !prof !8

bb.ag:                                            ; preds = %bb.aj
  %7 = add nsw i64 %10, -1                        ; 2 uses
  %i.co = icmp ult i64 %7, 20
  br i1 %i.co, label %bb.aj, label %.invoke331.i.i

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27
          to label %.noexc35.i.i.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !843

.noexc35.i.i.a:                                   ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 %10
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull %9, i64 noundef %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66)
          to label %.noexc36.i.i.a unwind label %.loopexit.i.i, !noalias !843

.noexc36.i.i.a:                                   ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !858
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ad, %bb.ag
  %10 = phi i64 [ 19, %bb.ad ], [ %7, %bb.ag ]    ; 4 uses
  %.sroa.04.018.i.i.i.i.i177 = phi i64 [ 20, %bb.ad ], [ %10, %bb.ag ]
  %.sroa.0.019.i.i.i.i.i176 = phi i64 [ %i.bu, %bb.ad ], [ %12, %bb.ag ] ; 3 uses
  %11 = urem i64 %.sroa.0.019.i.i.i.i.i176, 10
  %12 = udiv i64 %.sroa.0.019.i.i.i.i.i176, 10
  %i.cp = trunc nuw nsw i64 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 %10
  %i.cq = or disjoint i8 %i.cp, 48
  store i8 %i.cq, ptr %13, align 1, !noalias !858
  %.not.i.i.i.i.i.a = icmp ult i64 %.sroa.0.019.i.i.i.i.i176, 10
  br i1 %.not.i.i.i.i.i.a, label %bb.af, label %bb.ag

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i: ; preds = %.noexc36.i.i.a, %bb.ae
  %i.cr = phi i64 [ %i.cl, %bb.ae ], [ %i.cm, %.noexc36.i.i.a ] ; 3 uses
  %i.cs = icmp samesign ult i64 %i.cr, 792
  br i1 %i.cs, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i.i, label %.invoke331.i.i

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i.i: ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cr
  store i8 10, ptr %i.ct, align 1, !alias.scope !850, !noalias !856
  %i.cu = add nuw nsw i64 %i.cr, 1                ; 2 uses
  store i64 %i.cu, ptr %i.b, align 8, !alias.scope !851, !noalias !855
  %i.cv = add i64 %i.bu, %.sroa.0.0437.i.i.i      ; 2 uses
  %i.cw = icmp eq ptr %i.bs, %i.br
  br i1 %i.cw, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i.i
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash26compute_internal_node_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.cu)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !843

bb.ak:                                            ; preds = %.loopexit.i.i.i
  store i64 %i.cv, ptr %i.ai, align 8, !alias.scope !846, !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !848
  %i.cx = load i64, ptr %i.ag, align 8, !noalias !843, !noundef !7 ; 5 uses
  %i.cy = icmp ult i64 %.sroa.0.0143.i.i, %i.cx
  br i1 %i.cy, label %bb.al, label %.invoke.i.i

bb.al:                                            ; preds = %bb.ak
  %i.cz = load ptr, ptr %i.af, align 8, !noalias !843, !nonnull !7, !noundef !7
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.cz, i64 %.sroa.0.0143.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !843
  %i.db = add nuw nsw i64 %.sroa.0.0143.i.i, 1    ; 2 uses
  %i.dc = icmp ult i64 %i.cx, 230584300921369396
  call void @llvm.assume(i1 %i.dc)
  %.not.i.i = icmp eq i64 %i.bq, %i.cx
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %bb.al, %bb.j
  %.be = phi i64 [ %i.cx, %bb.al ], [ %.pr.i.i, %bb.j ]
  %.sroa.0.0143.i.i.be = phi i64 [ %i.db, %bb.al ], [ 0, %bb.j ]
  %.sroa.03.0142.i.i.be = phi i64 [ %i.bq, %bb.al ], [ 0, %bb.j ]
  br label %.lr.ph.i.i

bb.am:                                            ; preds = %bb.h
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.am, %bb.g
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !843
  unreachable

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit.i: ; preds = %._crit_edge144.thread.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc9 unwind label %bb.ao

.noexc9:                                          ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !843
  invoke void @_RNvMsf_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash4hmac(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) @29)
          to label %.noexc10 unwind label %bb.ao

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !842
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes19file_hash_with_salt.exit

bb.an:                                            ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes19file_hash_with_salt.exit

bb.ao:                                            ; preds = %.noexc9, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit.i, %bb.c, %bb.b, %bb.aq, %bb.ap, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes19file_hash_with_salt.exit
  %.sroa.0.0 = phi i1 [ false, %bb.aq ], [ true, %bb.ap ], [ true, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes19file_hash_with_salt.exit ], [ true, %.noexc9 ], [ true, %bb.b ], [ true, %bb.c ], [ true, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit.i ]
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h, %bb.ao
  %.sroa.0.0.lpad-body = phi i1 [ %.sroa.0.0, %bb.ao ], [ true, %bb.h ], [ true, %bb.e ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.de, %bb.ao ], [ %lpad.phi.i.i, %bb.h ], [ %i.al, %bb.e ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime4core7context10XetContextECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #32
          to label %bb.bc unwind label %bb.bb

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes19file_hash_with_salt.exit: ; preds = %bb.an, %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !noundef !7 ; 2 uses
  %i.dj = icmp ult i64 %i.di, 192153584101141163
  call void @llvm.assume(i1 %i.dj)
  %i.dk = load i64, ptr %2, align 8, !range !14, !noundef !7
  %i.dl = icmp ne i64 %i.dk, 0
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader3newjECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.i, i64 noundef %i.di, i1 noundef zeroext true, i1 noundef zeroext %i.dl)
          to label %bb.ap unwind label %bb.ao

bb.ap:                                            ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes19file_hash_with_salt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.do = load i64, ptr %i.dh, align 8, !noundef !7
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %i.do
  store ptr %i.dn, ptr %i.n, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.r, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.ds, align 8
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2X_5slice4iter4IterNtBW_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4B_11FileDeduperNtNtNtB4F_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !7
  invoke void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB2_14DataAggregator3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.dy)
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ea, ptr noundef nonnull align 8 dereferenceable(104) %i.dz, i64 104, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ec, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime4core7context10XetContextECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interface24UploadSessionDataManagerEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ef) #32
          to label %.body12 unwind label %bb.bb

bb.at:                                            ; preds = %bb.ar
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !865, !nonnull !7, !noundef !7
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !865
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_session17FileUploadSessionEEB1f_.exit.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_session17FileUploadSessionE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eg) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_session17FileUploadSessionEEB1f_.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4task8join_set7JoinSetINtNtB4_6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEEB1O_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.el) #32
          to label %.body12 unwind label %bb.aw

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_session17FileUploadSessionEEB1f_.exit.i: ; preds = %bb.au, %bb.at
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4task8join_set7JoinSetINtNtB4_6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEEB1O_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.em)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interface24UploadSessionDataManagerEBH_.exit unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body12:                                          ; preds = %bb.ax, %bb.av, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.as ], [ %i.ep, %bb.ax ], [ %i.ek, %bb.av ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.eo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashjEECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.bb

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_session17FileUploadSessionEEB1f_.exit.i
  %i.ep = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1280, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1280, !noundef !7
  call void %i.t(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y), !inline_history !1276
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsjHtSR7YjKD4_8xet_data.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 12 uses
  %.sroa.15 = alloca [24 x i8], align 8           ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !noundef !7   ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1304
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i8, ptr %i.g, align 8, !range !1305, !noalias !1306, !noundef !7
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i, !prof !10

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i: ; preds = %bb.b
  %i.j = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %i.f), !noalias !1306 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.thread.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i, %bb.b
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.j, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %i.m = load i8, ptr %i.l, align 1, !range !1307, !noalias !1308, !noundef !7 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 69 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !1308 ; 4 uses
  br i1 %i.n, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.i

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i8 %i.p, -1
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i, %bb.d
  %.sroa.33.0.i.i.i.i = phi i8 [ %i.q, %bb.d ], [ %i.p, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.thread.i.i ]
  store i8 %.sroa.33.0.i.i.i.i, ptr %i.o, align 1, !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1304
  store i24 0, ptr %i.a, align 4, !noalias !1304
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.r), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1304
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.thread.i

_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %bb.c
  tail call void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1304
  store i24 0, ptr %i.a, align 4, !noalias !1304
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.s), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1304
  br label %bb.w

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.thread.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.i, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i
  %.sroa.03.011.i69.off8.i = phi i8 [ %i.m, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i ]
  %.sroa.03.011.i69.off16.i = phi i8 [ %i.p, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCsjHtSR7YjKD4_8xet_data.exit.i.i ]
  store i8 %.sroa.03.011.i69.off8.i, ptr %i.b, align 1, !noalias !1304
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i69.off16.i, ptr %i.t, align 1, !noalias !1304
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 4 uses
  %i.v = invoke noundef i64 @_RNvMs9_NtNtCsUrhh0HcRih_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8 %i.u, i8 noundef 2)
          to label %bb.f unwind label %bb.e, !noalias !1309 ; 3 uses

bb.e:                                             ; preds = %.thread.i, %bb.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.thread.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %common.resume unwind label %bb.u, !noalias !1309

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsjHtSR7YjKD4_8xet_data.exit.thread.i
  %i.x = and i64 %i.v, 2
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %i.v, 4
  %.not60.i = icmp eq i64 %i.y, 0
  br i1 %.not60.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.b, align 1, !noalias !1304
  %.sroa.01.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !1304 ; 2 uses
  store ptr null, ptr %i.e, align 8, !noalias !1304
  %.not67.i = icmp eq ptr %.sroa.01.0.copyload.i, null
  br i1 %.not67.i, label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14, label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.z = and i64 %i.v, 1
  %.not61.i = icmp eq i64 %i.z, 0
  br i1 %.not61.i, label %.thread.i, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 1, !noalias !1304
  br label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !alias.scope !1303, !noalias !1309, !nonnull !7, !align !12, !noundef !7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1304, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1309, !noundef !7
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ab, align 8, !noalias !1309, !nonnull !7, !align !12, !noundef !7
  %i.ai = load ptr, ptr %i.aa, align 8, !noalias !1304, !nonnull !7, !align !12, !noundef !7
  %i.aj = icmp eq ptr %i.ai, %i.ah
  br i1 %i.aj, label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = atomicrmw and ptr %i.u, i64 -2 acq_rel, align 8, !noalias !1304
  %i.al = and i64 %i.ak, 2
  %.not62.i = icmp eq i64 %i.al, 0
  br i1 %.not62.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.aa)
          to label %.thread.i unwind label %bb.e, !noalias !1309

bb.o:                                             ; preds = %bb.m
  %i.am = atomicrmw or ptr %i.u, i64 1 acq_rel, align 8, !noalias !1304 ; 0 uses
  store i8 0, ptr %i.b, align 1, !noalias !1304
  %.sroa.013.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !1304 ; 3 uses
  store ptr null, ptr %i.e, align 8, !noalias !1304
  %.not63.i = icmp eq ptr %.sroa.013.0.copyload.i, null
  br i1 %.not63.i, label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.0..sroa_idx.i, i64 24, i1 false)
  br label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14

.thread.i:                                        ; preds = %bb.i, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync7oneshotNtB2_4Task8set_task(ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.e, !noalias !1309

bb.q:                                             ; preds = %.thread.i
  %i.ao = atomicrmw or ptr %i.u, i64 1 acq_rel, align 8, !noalias !1304
  %i.ap = and i64 %i.ao, 2
  %.not65.i = icmp eq i64 %i.ap, 0
  br i1 %.not65.i, label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.b, align 1, !noalias !1304
  %.sroa.029.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !1304 ; 2 uses
  store ptr null, ptr %i.e, align 8, !noalias !1304
  %.not66.i = icmp eq ptr %.sroa.029.0.copyload.i, null
  br i1 %.not66.i, label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx.i, i64 24, i1 false)
  br label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14

bb.t:                                             ; preds = %bb.h
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false)
  br label %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14

bb.u:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1309
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.z, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.av, %bb.z ], [ %i.av, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.l, %bb.q
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !1309
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @75, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27
  unreachable

bb.w:                                             ; preds = %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit, %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1304
  br label %bb.ab

_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14: ; preds = %bb.h, %bb.t, %bb.s, %bb.j, %bb.r, %bb.p, %bb.o
  %.sroa.11.117 = phi ptr [ %.sroa.013.0.copyload.i, %bb.p ], [ %.sroa.013.0.copyload.i, %bb.o ], [ null, %bb.h ], [ %.sroa.01.0.copyload.i, %bb.t ], [ %.sroa.029.0.copyload.i, %bb.s ], [ null, %bb.j ], [ null, %bb.r ]
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1304
  store ptr %.sroa.11.117, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !1310, !noundef !7 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsjHtSR7YjKD4_8xet_data.exit, label %bb.x

bb.x:                                             ; preds = %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !1311
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsjHtSR7YjKD4_8xet_data.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr null, ptr %1, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.aw = load ptr, ptr %i.c, align 8, !alias.scope !1312, !noundef !7 ; 2 uses
  %.not.i8 = icmp eq ptr %i.aw, null
  br i1 %.not.i8, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1315, !nonnull !7, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ba = load ptr, ptr %.sroa.4.0..sroa_idx5, align 8, !alias.scope !1315, !noundef !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1315, !noundef !7
  invoke void %i.ay(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %common.resume unwind label %bb.ac, !inline_history !1302

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.x, %_RNvMs4_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9poll_recvCsjHtSR7YjKD4_8xet_data.exit.thread14, %bb.y
  store ptr null, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsjHtSR7YjKD4_8xet_data.exit, %bb.w
  %storemerge = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsjHtSR7YjKD4_8xet_data.exit ], [ 1, %bb.w ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ac:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = and i64 %i.b, 8
  %.not1 = icmp eq i64 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.e)
  br label %bb.b

bb.d:                                             ; preds = %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.f)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsA_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTE10dying_nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.42.0.copyload
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1b_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1332, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !1332
  %i.e = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1P_14metadata_shard12file_structs11MDBFileInfoE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.j, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1333, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !1333 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !1333 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 2034
  %i.g = load i16, ptr %i.f, align 2, !noalias !1334, !noundef !7
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.h
  br i1 %i.i, label %bb.f, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.07.0.copyload.i.i, %bb.c ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %.sroa.48.0.copyload.i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1335, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.d
  %i.l = zext i16 %i.o to i64
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = add i64 %.sroa.5.021.i.i.i.i, 1          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 2032
  %i.o = load i16, ptr %i.n, align 8, !noalias !1335 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2034
  %i.q = load i16, ptr %i.p, align 2, !noalias !1334, !noundef !7
  %i.r = icmp ult i16 %i.o, %i.q
  br i1 %i.r, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc.i.i unwind label %bb.i, !noalias !1333

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.l, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %bb.c ] ; 5 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.m, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %bb.c ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.k, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %bb.c ] ; 3 uses
  %i.s = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1X_14metadata_shard12file_structs11MDBFileInfoNtB1y_4LeafENtB1y_4EdgeETRB1R_RB31_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit.i

bb.h:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 2048
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.7.0.ph.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.x, %.prol.preheader ], [ %i.w, %bb.h ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.h ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !1336, !nonnull !7, !noundef !7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 2040 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1331

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.w, %bb.h ], [ %i.x, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.h ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.y = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.y, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1X_14metadata_shard12file_structs11MDBFileInfoNtB1y_4LeafENtB1y_4EdgeETRB1R_RB31_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.ah, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 2040
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.z, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 2040
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.aa, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 2040
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.ab, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 2040
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.ac, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 2040
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.ad, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 2040
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.ae, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 2040
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.af, align 8, !noalias !1336, !nonnull !7, !noundef !7 ; 2 uses
  %i.ag = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 2040
  br i1 %i.ag, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1X_14metadata_shard12file_structs11MDBFileInfoNtB1y_4LeafENtB1y_4EdgeETRB1R_RB31_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.new

bb.i:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1X_14metadata_shard12file_structs11MDBFileInfoNtB1y_4LeafENtB1y_4EdgeETRB1R_RB31_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.78.0.i.i.i = phi i64 [ %i.t, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.g ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.aj = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 360
  %i.al = getelementptr inbounds nuw [152 x i8], ptr %i.ak, i64 %.sroa.10.0.ph.i.i.i
  store ptr %.sroa.07.0.i.i.i, ptr %i.e, align 8, !alias.scope !1333
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !1333
  store i64 %.sroa.78.0.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !1333
  br label %_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #27
  unreachable

_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1X_14metadata_shard12file_structs11MDBFileInfoNtB1y_4LeafENtB1y_4EdgeETRB1R_RB31_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit.i
  %spec.select = phi ptr [ %i.al, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1X_14metadata_shard12file_structs11MDBFileInfoNtB1y_4LeafENtB1y_4EdgeETRB1R_RB31_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit.i ], [ null, %bb.a ]
  ret ptr %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5error23FileReconstructionErrorEEENtNtB1p_3fmt5Debug3fmtB22_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types12ItemProgressEEEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB3A_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputuNtNtB3D_6marker4SendNtB4p_4SyncEL_EEEENtNtB3D_3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs7SkU8gPisFf_4redb12transactions14TableNamespaceEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking13speed_tracker12SpeedTrackerEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking21CompletionTrackerImplEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterjNtNtB7_7set_val9SetValZSTENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.k, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit
  %.sroa.3.0 = phi ptr [ %i.an, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.am, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %.sroa.07.0.copyload.i = load ptr, ptr %i.e, align 8, !alias.scope !1351, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1351 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1351 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 98
  %i.i = load i16, ptr %i.h, align 2, !noalias !1352, !noundef !7
  %i.j = zext i16 %i.i to i64
  %i.k = icmp ult i64 %.sroa.59.0.copyload.i, %i.j
  br i1 %i.k, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.0.022.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.sroa.07.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.5.021.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.48.0.copyload.i, %bb.d ]
  %i.l = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !noalias !1353, !noundef !7 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %i.m = zext i16 %i.p to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add i64 %.sroa.5.021.i.i.i, 1            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 96
  %i.p = load i16, ptr %i.o, align 8, !noalias !1353 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 98
  %i.r = load i16, ptr %i.q, align 2, !noalias !1352, !noundef !7
  %i.s = icmp ult i16 %i.p, %i.r
  br i1 %i.s, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc.i unwind label %bb.j, !noalias !1351

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.sroa.10.0.ph.i.i = phi i64 [ %i.m, %._crit_edge.loopexit.i.i.i ], [ %.sroa.59.0.copyload.i, %bb.d ] ; 5 uses
  %.sroa.7.0.ph.i.i = phi i64 [ %i.n, %._crit_edge.loopexit.i.i.i ], [ %.sroa.48.0.copyload.i, %bb.d ] ; 5 uses
  %.sroa.06.0.ph.i.i = phi ptr [ %i.l, %._crit_edge.loopexit.i.i.i ], [ %.sroa.07.0.copyload.i, %bb.d ] ; 4 uses
  %i.t = icmp eq i64 %.sroa.7.0.ph.i.i, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i64 %.sroa.10.0.ph.i.i, 1
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit

bb.i:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.10.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr i8, ptr %.sroa.06.0.ph.i.i, i64 112
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.10.0.ph.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.7.0.ph.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.prol = phi ptr [ %i.y, %.prol.preheader ], [ %i.x, %bb.i ]
  %.sroa.019.0.in.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i, %bb.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.prol, align 8, !noalias !1354, !nonnull !7, !noundef !7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1350

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.unr = phi ptr [ %i.x, %bb.i ], [ %i.y, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.prol, %.prol.preheader ]
  %i.z = icmp ult i64 %.sroa.7.0.ph.i.i, 8
  br i1 %i.z, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i = phi ptr [ %i.ai, %.new ], [ %.sroa.017.0.in.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i, i64 104
  %.sroa.017.0.i.i.i.1 = load ptr, ptr %i.aa, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.2 = load ptr, ptr %i.ab, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.3 = load ptr, ptr %i.ac, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.4 = load ptr, ptr %i.ad, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.5 = load ptr, ptr %i.ae, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.6 = load ptr, ptr %i.af, align 8, !noalias !1354, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.7 = load ptr, ptr %i.ag, align 8, !noalias !1354, !nonnull !7, !noundef !7 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.019.0.i.i.i.7, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.7, i64 104
  br i1 %i.ah, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit, label %.new

bb.j:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRjRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.78.0.i.i = phi i64 [ %i.u, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i = phi ptr [ %.sroa.06.0.ph.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.7, %.new ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i, i64 8
  %i.al = icmp samesign ult i64 %.sroa.10.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.10.0.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i, i64 100
  store ptr %.sroa.07.0.i.i, ptr %i.e, align 8, !alias.scope !1351
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1351
  store i64 %.sroa.78.0.i.i, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1351
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTE10dying_nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !7
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTE10dying_nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  %i.c = load ptr, ptr %i.a, align 8, !noundef !7
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %bb.b, label %_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsjHtSR7YjKD4_8xet_data.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #27, !noalias !1357
  unreachable

_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.c, align 8
  %i.d = udiv i64 %.val, %.val1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  ret i64 %i.e
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedItermmINtNtNtBa_3vec9into_iter8IntoIterTmmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasher15U64DirectHasherNtNtB8_9data_hash8DataHashENtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRB1w_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsjHtSR7YjKD4_8xet_data(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB6_4sync3ArcNtNtNtB1v_14metadata_shard12xorb_structs11MDBXorbInfoEEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodemjEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodemmEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB6_4sync3ArcNtNtNtB1A_14metadata_shard12xorb_structs11MDBXorbInfoEEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemjEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemmEE13new_uninit_inCsjHtSR7YjKD4_8xet_data() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBb_4sync3ArcNtNtNtB1P_14metadata_shard12xorb_structs11MDBXorbInfoEE10take_frontCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBb_4sync3ArcNtNtNtB1P_14metadata_shard12xorb_structs11MDBXorbInfoEE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1P_14metadata_shard12file_structs11MDBFileInfoE10take_frontCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1P_14metadata_shard12file_structs11MDBFileInfoE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10take_frontCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmjE10take_frontCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmjE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmmE10take_frontCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmmE10init_frontCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainTmmENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters3map3MapINtNtB3Q_6filter6FilterINtNtB6_4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB4Y_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB61_9XorbBlock26determine_size_if_possible0ENCB5V_s_0EE0E0INtNtB1b_3vec3VecBZ_EEB67_(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB2l_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB3i_8adapters3map3MapINtNtB4f_6filter6FilterINtNtB8_4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB5n_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB6q_9XorbBlock26determine_size_if_possible0ENCB6k_s_0EE0E0EB6w_(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoIBw_jEyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtB7_3vec3VecjEyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB5_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEENtNtNtBZ_3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEENtNtNtB1Y_3ops4drop4Drop4dropB2A_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_2
