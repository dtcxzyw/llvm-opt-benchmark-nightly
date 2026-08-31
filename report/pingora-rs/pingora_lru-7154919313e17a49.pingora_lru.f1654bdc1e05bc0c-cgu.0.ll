Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_lru-7154919313e17a49.pingora_lru.f1654bdc1e05bc0c-cgu.0?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [48 x i8] c"assertion failed: at != TAIL && at != node_index", align 1
@1 = private unnamed_addr constant [31 x i8] c"pingora-lru/src/linked_list.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\CC\00\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\CE\00\00\00+\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\D0\00\00\00#\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\D4\00\00\00\13\00\00\00" }>, align 8
@6 = private unnamed_addr constant [48 x i8] c"assertion failed: index != HEAD && index != TAIL", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\E9\00\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\EB\00\00\00#\00\00\00" }>, align 8
@9 = private unnamed_addr constant [46 x i8] c"assertion failed: prev != NULL && next != NULL", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\F3\00\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\F5\00\00\00\13\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\F6\00\00\00\13\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1E\00\00\00\00\00\00\00\93\00\00\00\17\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList13with_capacity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = mul nuw nsw i64 %1, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.d, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !5
  %i.c = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #14, !noalias !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.e = ptrtoint ptr %i.c to i64
  br label %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity.exit

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #15, !noalias !10
  unreachable

_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity.exit: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.e, %bb.c ], [ 8, %bb.b ]
  %2 = inttoptr i64 %.sroa.10.0.i to ptr
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList4lift(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %switch = icmp ult i64 %1, 2
  br i1 %switch, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = add i64 %1, -2                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.a ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 4 uses
  store i64 -1, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !12 ; 4 uses
  store i64 -1, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = icmp eq i64 %i.h, -1
  %i.n = icmp eq i64 %i.j, -1
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.f, label %bb.g, !prof !11

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
  unreachable

bb.g:                                             ; preds = %bb.d
  switch i64 %i.h, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %i.h, -2                         ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.c
  br i1 %i.p, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j, %bb.i
  %.sroa.05.0 = phi ptr [ %i.t, %bb.l ], [ %i.q, %bb.i ], [ %i.r, %bb.j ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 8
  store i64 %i.j, ptr %i.s, align 8
  switch i64 %i.j, label %bb.n [
    i64 0, label %bb.o
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.o
  br label %bb.k

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = add i64 %i.j, -2                         ; 3 uses
  %i.v = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.sroa.06.0 = phi ptr [ %i.z, %bb.r ], [ %i.x, %bb.o ], [ %i.y, %bb.p ]
  store i64 %i.h, ptr %.sroa.06.0, align 8
  ret i64 %i.l

bb.r:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.u
  br label %bb.q

bb.s:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13, !noundef !12 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !16, !alias.scope !13, !noundef !12
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #17
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !13, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  store i64 %1, ptr %i.h, align 8, !noalias !13
  %i.i = add i64 %i.c, 1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !13
  %i.j = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList4lift(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1)
  ret i64 %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList7promote(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !12
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList4lift(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1) ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add i64 %1, -2                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !17, !noundef !12 ; 2 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi ptr [ %i.o, %bb.h ], [ %i.k, %bb.f ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  store i64 %i.f, ptr %i.l, align 8
  store i64 0, ptr %.sroa.01.0.i, align 8
  switch i64 %i.f, label %bb.j [
    i64 0, label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit
    i64 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.g
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !17
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.p = add i64 %i.f, -2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !17, !noundef !12 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.g
end_hunk_0
