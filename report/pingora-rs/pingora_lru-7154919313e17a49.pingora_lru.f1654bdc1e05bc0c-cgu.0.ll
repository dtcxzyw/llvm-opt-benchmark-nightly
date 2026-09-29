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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !15
  %i.c = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #14, !noalias !15 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.e = ptrtoint ptr %i.c to i64
  br label %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity.exit

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #15, !noalias !16
  unreachable

_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity.exit: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.e, %bb.c ], [ 8, %bb.b ]
  %i.f = inttoptr i64 %.sroa.10.0.i to ptr
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx1, align 8
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
  br i1 %switch, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = add i64 %1, -2                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.a ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 4 uses
  store i64 -1, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 4 uses
  store i64 -1, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = icmp eq i64 %i.h, -1
  %i.n = icmp eq i64 %i.j, -1
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.f, label %bb.g, !prof !5

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
  %i.v = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !19, !noundef !6 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !7, !alias.scope !19, !noundef !6
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #17
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !19, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  store i64 %1, ptr %i.h, align 8, !noalias !19
  %i.i = add i64 %i.c, 1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !19
  %i.j = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList4lift(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1)
  ret i64 %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList7promote(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList4lift(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1) ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add i64 %1, -2                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !22, !noundef !6 ; 2 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !22, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.g
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !22
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.p = add i64 %i.f, -2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !22, !noundef !6 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit

bb.l:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !22, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.p
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16, !noalias !22
  unreachable

_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit: ; preds = %bb.g, %bb.k, %bb.l
  %.sroa.03.0.i = phi ptr [ %i.w, %bb.l ], [ %i.t, %bb.k ], [ %i.e, %bb.g ]
  store i64 %1, ptr %.sroa.03.0.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList8new_node(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.d = load i64, ptr %0, align 8, !range !7, !alias.scope !32, !noundef !6 ; 5 uses
  %i.e = icmp samesign ugt i64 %i.d, 65536
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !32, !noundef !6 ; 4 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nsw i64 %i.d, %i.g
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i, %bb.c, %bb.b
  %i.k = phi i64 [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !34, !noalias !35, !noundef !6 ; 5 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %bb.e, label %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskIWv9cQVR22_11pingora_lru11linked_list4NodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) #17, !noalias !35
  br label %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node.exit

bb.f:                                             ; preds = %bb.c
  %i.o = udiv i64 %i.d, 10                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.p = tail call fastcc { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef range(i64 0, 384307168202282326) %i.g, i64 noundef range(i64 6553, 922337203685477581) %i.o) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.f
  %.pre.i.i.i = load i64, ptr %0, align 8, !range !7, !alias.scope !37 ; 2 uses
  %.pre7.i.i.i = sub nsw i64 %.pre.i.i.i, %i.g
  %i.r = icmp ule i64 %i.o, %.pre7.i.i.i
  tail call void @llvm.assume(i1 %i.r)
  br label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.s = extractvalue { i64, i64 } %i.p, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #15, !noalias !38
  unreachable

_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node.exit: ; preds = %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !34, !noalias !35, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.m ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 -1, i64 16, i1 false), !noalias !32
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !34
  %i.w = add nsw i64 %i.m, 1
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !34, !noalias !35
  %i.x = icmp slt i64 %i.m, 384307168202282325
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i64 %i.m, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = add nsw i64 %i.b, -1                    ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = load i64, ptr %i.z, align 8, !range !7, !noundef !6
  %i.ac = icmp samesign ult i64 %i.aa, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !noundef !6
  %i.af = icmp ult i64 %i.b, 1152921504606846977
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6 ; 3 uses
  switch i64 %i.ah, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.m, %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node.exit
  %.sroa.0.0 = phi i64 [ %i.y, %_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node.exit ], [ %i.ah, %bb.m ]
  ret i64 %.sroa.0.0

bb.j:                                             ; preds = %bb.h
  %i.ai = add i64 %i.ah, -2                       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6 ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.n, label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.sroa.04.0 = phi ptr [ %i.ar, %bb.n ], [ %i.am, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  store i64 %1, ptr %i.ao, align 8
  br label %bb.i

bb.n:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ai
  br label %bb.m

bb.o:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList8pop_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !45, !noundef !6 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !range !7, !alias.scope !45, !noundef !6
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #17
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove.exit

_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !45, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  store i64 %i.b, ptr %i.k, align 8, !noalias !45
  %i.l = add i64 %i.f, 1
  store i64 %i.l, ptr %i.e, align 8, !alias.scope !45
  %i.m = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList4lift(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove.exit
  %.sroa.3.0 = phi i64 [ %i.m, %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove.exit ], [ 0, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList9push_head(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList8new_node(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1) ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 3 uses
  store i64 %i.a, ptr %i.c, align 8
  %cond = icmp eq i64 %i.a, 1
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %i.a, -2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !48, !noundef !6 ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi ptr [ %i.m, %bb.g ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  store i64 %i.d, ptr %i.j, align 8
  store i64 0, ptr %.sroa.01.0.i, align 8
  switch i64 %i.d, label %bb.i [
    i64 0, label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit
    i64 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !48, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.e
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !48
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.n = add i64 %i.d, -2                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !48, !noundef !6 ; 2 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit

bb.k:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !48, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16, !noalias !48
  unreachable

_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit: ; preds = %bb.f, %bb.j, %bb.k
  %.sroa.03.0.i = phi ptr [ %i.u, %bb.k ], [ %i.r, %bb.j ], [ %i.b, %bb.f ]
  store i64 %i.a, ptr %.sroa.03.0.i, align 8
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList9push_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList8new_node(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.d = icmp ne i64 %i.c, 1
  %i.e = icmp ne i64 %i.c, %i.a
  %or.cond.i = and i1 %i.d, %i.e
  br i1 %or.cond.i, label %bb.c, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !51
  unreachable

bb.c:                                             ; preds = %bb.a
  %cond.i = icmp eq i64 %i.c, 0
  br i1 %cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %i.c, -2                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !51, !noundef !6 ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.o, %bb.g ], [ %i.j, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  store i64 %i.a, ptr %i.k, align 8
  switch i64 %i.a, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !51, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.f
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16, !noalias !51
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.p = add i64 %i.a, -2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !51, !noundef !6 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.l, %bb.j
  %.sroa.01.0.i = phi ptr [ %i.x, %bb.l ], [ %i.t, %bb.j ], [ %i.b, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  store i64 %i.l, ptr %i.u, align 8
  store i64 %i.c, ptr %.sroa.01.0.i, align 8
  switch i64 %i.l, label %bb.n [
    i64 0, label %bb.o
    i64 1, label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit
  ]

bb.l:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !51, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.p
  br label %bb.k

bb.m:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !51
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.y = add i64 %i.l, -2                         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !51, !noundef !6 ; 2 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !51, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.y
  br label %_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16, !noalias !51
  unreachable

_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after.exit: ; preds = %bb.k, %bb.o, %bb.p
  %.sroa.03.0.i = phi ptr [ %i.af, %bb.p ], [ %i.ac, %bb.o ], [ %i.b, %bb.k ]
  store i64 %i.a, ptr %.sroa.03.0.i, align 8
  ret i64 %i.a
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef range(i64 6553, 922337203685477581) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw nsw i64 %2, %1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12 = load ptr, ptr %i.c, align 8
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %.val, ptr %.val12, i64 noundef %i.b, i64 noundef 24)
  %i.d = load i64, ptr %i.a, align 8, !range !8, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.k, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.i, %bb.c ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.h

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !9, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.c, align 8
  store i64 %i.b, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskIWv9cQVR22_11pingora_lru11linked_list4NodeE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 24) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskIWv9cQVR22_11pingora_lru(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1, i64 noundef range(i64 8, 25) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = icmp ugt i64 %i.b, 9223372036854775800
  %or.cond.not = or i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %2, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.b) #14
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14
  %i.j = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.b, i64 noundef 8) #14
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.l, align 8
  br label %bb.f

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 8, 25) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %..i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskIWv9cQVR22_11pingora_lru(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !9, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noinline noreturn }
attributes #17 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", i32 2002, i32 2000}
!5 = !{!"branch_weights", i32 4001, i32 4000000}
!6 = !{}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 0, i64 2}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = distinct !{!11, !"_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity"}
!12 = distinct !{!12, !11, !"_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes13with_capacity: argument 0"}
!13 = distinct !{!13, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIWv9cQVR22_11pingora_lru"}
!14 = distinct !{!14, !13, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIWv9cQVR22_11pingora_lru: argument 0"}
!15 = !{!14, !12}
!16 = !{!12}
!17 = distinct !{!17, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru"}
!18 = distinct !{!18, !17, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru: argument 0"}
!19 = !{!18}
!20 = distinct !{!20, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after"}
!21 = distinct !{!21, !20, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after: argument 0"}
!22 = !{!21}
!23 = distinct !{!23, !"_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node"}
!24 = distinct !{!24, !23, !"_RNvMNtCskIWv9cQVR22_11pingora_lru11linked_listNtB2_5Nodes8new_node: argument 0"}
!25 = distinct !{!25, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskIWv9cQVR22_11pingora_lru11linked_list4NodeE8push_mutBJ_"}
!26 = distinct !{!26, !25, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskIWv9cQVR22_11pingora_lru11linked_list4NodeE8push_mutBJ_: argument 0"}
!27 = distinct !{!27, !25, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskIWv9cQVR22_11pingora_lru11linked_list4NodeE8push_mutBJ_: argument 1"}
!28 = distinct !{!28, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskIWv9cQVR22_11pingora_lru"}
!29 = distinct !{!29, !28, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskIWv9cQVR22_11pingora_lru: argument 0"}
!30 = distinct !{!30, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskIWv9cQVR22_11pingora_lru"}
!31 = distinct !{!31, !30, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskIWv9cQVR22_11pingora_lru: argument 0"}
!32 = !{!24}
!33 = !{!26}
!34 = !{!26, !24}
!35 = !{!27}
!36 = !{!29}
!37 = !{!31, !29, !24}
!38 = !{!29, !24}
!39 = distinct !{!39, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove"}
!40 = distinct !{!40, !39, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList6remove: argument 0"}
!41 = distinct !{!41, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru"}
!42 = distinct !{!42, !41, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCskIWv9cQVR22_11pingora_lru: argument 0"}
!43 = !{!40}
!44 = !{!42}
!45 = !{!42, !40}
!46 = distinct !{!46, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after"}
!47 = distinct !{!47, !46, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after: argument 0"}
!48 = !{!47}
!49 = distinct !{!49, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after"}
!50 = distinct !{!50, !49, !"_RNvMs1_NtCskIWv9cQVR22_11pingora_lru11linked_listNtB5_10LinkedList12insert_after: argument 0"}
!51 = !{!50}
!52 = !{!"branch_weights", i32 4000000, i32 4001}
end_hunk_0
