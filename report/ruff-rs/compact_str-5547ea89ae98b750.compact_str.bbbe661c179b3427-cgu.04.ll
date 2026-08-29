Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/compact_str-5547ea89ae98b750.compact_str.bbbe661c179b3427-cgu.04?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.10.0/src/repr/heap.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\008\01\00\00<\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 32) ; 2 uses
  %i.a = icmp ult i64 %1, 72057594037927936
  tail call void @llvm.assume(i1 %i.a)
  %i.b = tail call noundef ptr @_RNvNtNtNtCsg7m2K3K1Fzf_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i) ; 8 uses
  %i.c = or disjoint i64 %.sroa.0.0.i.i, -2882303761517117440 ; 4 uses
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %1, 64
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %1, 31
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %1, 15
  br i1 %i.g, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %0, i64 32, i1 false)
  %i.h = add nsw i64 %1, -32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.k = add nsw i64 %1, -16                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.l, i64 16, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %i.c, %bb.h ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.o
}

; Function Attrs: cold noinline nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer16alloc_copy_extra(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %2)
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 3) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = extractvalue { i64, i1 } %3, 1
  br i1 %5, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi i64 [ -1, %bb.b ], [ %4, %bb.a ]
  %i.b = lshr i64 %.sroa.05.0, 1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.b) ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 32) ; 2 uses
  %i.c = icmp ult i64 %.sroa.0.0.i, 72057594037927936
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef ptr @_RNvNtNtNtCsg7m2K3K1Fzf_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i) ; 8 uses
  %i.e = or disjoint i64 %.sroa.0.0.i.i, -2882303761517117440 ; 4 uses
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i64 %1, 64
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ugt i64 %1, 31
  br i1 %i.h, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.g:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %1, 15
  br i1 %i.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %0, i64 32, i1 false)
  %i.j = add nsw i64 %1, -32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.k, i64 32, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.m = add nsw i64 %1, -16                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.n, i64 16, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.c
  %.sroa.3.0 = phi i64 [ undef, %bb.c ], [ %i.e, %bb.f ], [ %i.e, %bb.h ], [ %i.e, %bb.i ], [ %i.e, %bb.j ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.q
}

; Function Attrs: cold noinline nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer5alloc(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %0, i64 32) ; 2 uses
  %i.a = icmp ult i64 %0, 72057594037927936
  tail call void @llvm.assume(i1 %i.a)
  %i.b = tail call noundef ptr @_RNvNtNtNtCsg7m2K3K1Fzf_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.c = or disjoint i64 %.sroa.0.0.i.i, -2882303761517117440
  %i.d = icmp eq ptr %i.b, null
  %.sroa.3.0 = select i1 %i.d, i64 undef, i64 %i.c
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer7realloc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ult i64 %1, %i.b
  %i.d = icmp eq i64 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 32) ; 5 uses
  %i.e = icmp ult i64 %1, 72057594037927936
  tail call void @llvm.assume(i1 %i.e)
  %i.f = or disjoint i64 %.sroa.0.0.i, -2882303761517117440
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = and i64 %i.h, 72057594037927935          ; 2 uses
  %i.j = icmp eq i64 %i.i, %.sroa.0.0.i
  br i1 %i.j, label %bb.c, label %.split2.i

bb.c:                                             ; preds = %.split2.i, %bb.b, %bb.a, %bb.d
  %.sroa.7.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ undef, %bb.a ], [ undef, %.split2.i ], [ %.sroa.0.0.i, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %.split2.i ], [ 0, %bb.b ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.l

.split2.i:                                        ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.n = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.m, i64 noundef %i.i, i64 noundef 1, i64 noundef %.sroa.0.0.i) #9 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.split2.i
  store ptr %i.n, ptr %0, align 8
  store i64 %i.f, ptr %i.g, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB5_10HeapBufferNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = and i64 %i.c, 72057594037927935
  tail call void @_RNvNtNtNtCsg7m2K3K1Fzf_11compact_str4repr4heap15inline_capacity7dealloc(ptr noundef nonnull %i.a, i64 noundef %i.d)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvXs_NtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB4_10HeapBufferNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = and i64 %i.b, 72057594037927935
  %i.d = tail call { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer5alloc(i64 noundef %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 8 uses
  %i.j = icmp ugt i64 %i.i, 64
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %i.i, 31
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %i.g, i64 %i.i, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.i, 15
  br i1 %i.l, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.m = add nsw i64 %i.i, -32                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.n, i64 32, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %i.g, i64 %i.i, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.p = add nsw i64 %i.i, -16                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  br label %_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit

_RNvNtCsg7m2K3K1Fzf_11compact_str4repr11copy_medium.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.s = extractvalue { ptr, i64 } %i.d, 1
  store ptr %i.e, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvNtNtNtCsg7m2K3K1Fzf_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsg7m2K3K1Fzf_11compact_str4repr4heap15inline_capacity7dealloc(ptr noundef nonnull, i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!4 = !{}
end_hunk_0
