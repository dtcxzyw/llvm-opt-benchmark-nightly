Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/char_str-0854dfc6ceda9099.char_str.dee70852bc867e11-cgu.01?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity(i64 noundef %0) unnamed_addr #0 !guid !4 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %0) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.e = icmp ugt i64 %i.d, 9223372036854775784
  br i1 %i.e, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i64 %i.d, 16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9
  %i.g = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef 8) #9 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 -3386706919782612992, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15with_additional(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !5 {
bb.a:
  %i.a = icmp ugt i64 %1, 72057594037927935
  br i1 %i.a, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i64 %1, -3386706919782612992
  %i.c = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %2)
  %i.d = lshr i64 %1, 1
  %i.e = add nuw nsw i64 %i.d, %1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, 108086391056891903) %i.e)
  %i.f = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.f, 1        ; 3 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775784
  br i1 %i.j, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #9 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit.thread

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21allocate_growable_ptr.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.5.0 = phi i64 [ %i.b, %bb.e ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.0.0 = phi ptr [ %i.n, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  %i.o = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr(i64 noundef %0) unnamed_addr #0 !guid !6 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %0) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.e = icmp ugt i64 %i.d, 9223372036854775792
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.d, 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9
  %i.h = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #9 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %0)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.m, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18realloc_into_exact(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i64 %i.b, 72057594037927935          ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 3 uses
  %i.g = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %i.c)
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i64 %i.c, -3458764513820540928
  %i.k = add nuw nsw i64 %i.f, 16
  %i.l = icmp ugt i64 %i.f, 9223372036854775784
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %i.c) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.q = icmp ugt i64 %i.p, 9223372036854775792
  %i.r = select i1 %i.o, i1 true, i1 %i.q
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw nsw i64 %i.p, 8
  %.sroa.332.0.extract.shift = and i64 %i.b, -72057594037927936
  %i.t = icmp eq i64 %.sroa.332.0.extract.shift, -3458764513820540928
  %. = select i1 %i.t, i64 -8, i64 -16
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %. ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.v, i64 %i.c, i1 false)
  %i.x = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.u, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.s) #9 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.w, i64 %i.c, i1 false)
  store i64 %i.f, ptr %i.u, align 8
  store i64 1, ptr %i.w, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 1, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %0, align 8
  store i64 %i.j, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e, %bb.f
  %.sroa.0.0 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, i64 } %i.b, 1        ; 3 uses
  %i.f = icmp ugt i64 %i.e, 9223372036854775784
  br i1 %i.f, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.e, 16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9
  %i.h = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #9 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.e, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %0, i64 %1, i1 false)
  %i.k = icmp ult i64 %1, 72057594037927936
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or disjoint i64 %1, -3386706919782612992
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity.exit.thread

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer13with_capacity.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.4.0 = phi i64 [ %i.l, %bb.e ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  %i.m = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer21realloc_into_growable(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i64 %i.b, 72057594037927935          ; 4 uses
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i64 %i.c, -3386706919782612992
  %i.i = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %i.c) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.m = icmp ugt i64 %i.l, 9223372036854775792
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  %i.o = icmp ugt i64 %i.f, 9223372036854775784
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.l, 8
  %i.q = add nuw nsw i64 %i.f, 16
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.sroa.329.0.extract.shift = and i64 %i.b, -72057594037927936
  %i.s = icmp eq i64 %.sroa.329.0.extract.shift, -3458764513820540928
  %. = select i1 %i.s, i64 -8, i64 -16
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %.
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.t, i64 noundef %i.p, i64 noundef 8, i64 noundef %i.q) #9 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.w, i64 %i.c, i1 false)
  store i64 %i.f, ptr %i.u, align 8
  store i64 1, ptr %i.w, align 8
  store ptr %i.x, ptr %0, align 8
  store i64 %i.h, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !10 {
bb.a:
  fence acquire
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.sroa.3.0.extract.shift.i = and i64 %.val1, -72057594037927936
  %i.b = icmp eq i64 %.sroa.3.0.extract.shift.i, -3458764513820540928
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.val1, 72057594037927935
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = extractvalue { i64, i64 } %i.d, 1
  %i.h = add i64 %i.g, 8
  %.sroa.3.0.i.i.a = select i1 %i.f, i64 undef, i64 %i.h
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7dealloc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  %i.k = add i64 %i.j, 16
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7dealloc.exit

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7dealloc.exit: ; preds = %bb.b, %bb.c
  %..i.a = phi i64 [ -16, %bb.c ], [ -8, %bb.b ]
  %.sroa.3.0.i.pn.i = phi i64 [ %i.k, %bb.c ], [ %.sroa.3.0.i.i.a, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = getelementptr inbounds i8, ptr %.val, i64 %..i.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.sroa.3.0.i.pn.i, i64 noundef 8) #9
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer3new(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 !guid !13 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %1), !noalias !14 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.e = icmp ugt i64 %i.d, 9223372036854775784
  br i1 %i.e, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i64 %i.d, 16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9, !noalias !14
  %i.g = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef 8) #9, !noalias !14 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.g, align 8, !noalias !14
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  %i.j = icmp ult i64 %1, 72057594037927936
  tail call void @llvm.assume(i1 %i.j)
  %i.k = or disjoint i64 %1, -3386706919782612992
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity.exit

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i64 [ %i.k, %bb.d ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.4.0.i, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7realloc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 !guid !15 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 16
  %i.i = icmp ult i64 %i.g, 9223372036854775785
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i64 %i.c, 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load i64, ptr %i.k, align 8, !noundef !3
  %.sroa.3.0.extract.shift = and i64 %2, -72057594037927936
  %i.l = icmp eq i64 %.sroa.3.0.extract.shift, -3458764513820540928
  %. = select i1 %i.l, i64 -8, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %.
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.j) #9 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %.sroa.49.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 !guid !16 {
bb.a:
  %i.a = icmp ugt i64 %1, 72057594037927935
  br i1 %i.a, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = extractvalue { i64, i64 } %i.b, 1        ; 2 uses
  %i.f = icmp ugt i64 %i.e, 9223372036854775792
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.e, 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #9
  %i.i = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #9 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef %1)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = or disjoint i64 %1, -3458764513820540928
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr.exit.thread

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.4.0 = phi i64 [ %i.o, %bb.e ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.0.0 = phi ptr [ %i.n, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB4_16ExactBufferGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !19 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !3   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.f = atomicrmw add ptr %.sroa.0.0.i, i64 -1 release, align 8, !noalias !20
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  br label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release.exit

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs_NtNtNtCsj8vhLppEnlJ_8char_str4repr11heap_buffer8internalNtB4_8Capacity3new(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 386105130079900548}
!5 = !{i64 -2187495222464736378}
!6 = !{i64 -2119239512456338874}
!7 = !{i64 -261308597570193788}
!8 = !{i64 -7951817389825789757}
!9 = !{i64 5296882173801556380}
!10 = !{i64 -6397066284058392868}
!11 = distinct !{!11, i1 true, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity"}
!12 = distinct !{!12, !11, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer19with_exact_capacity: argument 0"}
!13 = !{i64 -2480511330244125133}
!14 = !{!12}
!15 = !{i64 -1120539795090378685}
!16 = !{i64 3549243213701376057}
!17 = distinct !{!17, i1 true, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release"}
!18 = distinct !{!18, !17, !"_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer7release: argument 0"}
!19 = !{i64 -1972187812983333736}
!20 = !{!18}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
