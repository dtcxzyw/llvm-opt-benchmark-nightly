Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_cts?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.aligned_16bytes = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"CS1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CS2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CS3\00", align 1
@cts_modes = internal unnamed_addr constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2 }], align 16
@switch.table.ossl_cipher_cbc_cts_mode_id2name = private unnamed_addr constant [3 x ptr] [ptr @cts_modes, ptr getelementptr inbounds nuw (i8, ptr @cts_modes, i64 16), ptr getelementptr inbounds nuw (i8, ptr @cts_modes, i64 32)], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ossl_cipher_cbc_cts_mode_id2name(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_cipher_cbc_cts_mode_id2name, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %switch.lookup
  %.05 = phi ptr [ %i.d, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.05
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @ossl_cipher_cbc_cts_mode_name2id(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str) #7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @cts_modes, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @cts_modes, i64 16), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @cts_modes, i64 32), %bb.c ]
  %i.g = load i32, ptr %.lcssa, align 16, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %.05 = phi i32 [ %i.g, %bb.d ], [ -1, %bb.c ]
  ret i32 %.05
}

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_cipher_cbc_cts_block_update(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %5, 16
  %i.b = icmp ult i64 %3, %5
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 16
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = and i8 %i.e, 2
  %.not48 = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  br i1 %.not48, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.i, label %.thread [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = tail call fastcc i64 @cts128_cs1_encrypt(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %1, i64 noundef %5)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.k = tail call fastcc i64 @cts128_cs2_encrypt(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %1, i64 noundef %5)
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.l = tail call fastcc i64 @cts128_cs3_encrypt(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %1, i64 noundef %5)
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  switch i32 %i.i, label %.thread [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.m = tail call fastcc i64 @cts128_cs1_decrypt(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %1, i64 noundef %5)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.n = tail call fastcc i64 @cts128_cs2_decrypt(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %1, i64 noundef %5)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.o = tail call fastcc i64 @cts128_cs3_decrypt(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %1, i64 noundef %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.f, %bb.h, %bb.g
  %.0 = phi i64 [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.o, %bb.l ], [ %i.m, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %i.p = icmp eq i64 %.0, 0
  br i1 %i.p, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = load i8, ptr %i.d, align 4
  %i.r = or i8 %i.q, 16
  store i8 %i.r, ptr %i.d, align 4
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.b, %bb.n
  %.0.sink = phi i64 [ %.0, %bb.n ], [ %5, %bb.b ]
  store i64 %.0.sink, ptr %2, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.i, %bb.e, %bb.m, %bb.c, %bb.a
  %.043 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.c ], [ 1, %.thread.sink.split ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 16, 1) i64 @cts128_cs1_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 16, 0) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %union.aligned_16bytes, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = and i64 %3, 15                           ; 5 uses
  %i.b = and i64 %3, -16                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef %i.b) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.k = sub nuw nsw i64 16, %i.a
  %i.l = getelementptr i8, ptr %4, i64 %i.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i8 0, i64 %i.k, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 1 %i.i, i64 %i.a, i1 false)
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.a
  %i.r = call i32 %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %4, i64 noundef 16) #7
  %.not23 = icmp eq i32 %i.r, 0
  %. = select i1 %.not23, i64 0, i64 %3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ], [ %., %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @cts128_cs2_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 16, 0) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %union.aligned_16bytes, align 8     ; 5 uses
  %i.a = and i64 %3, 15                           ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %5, label %11

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef %3) #7
  %.not = icmp eq i32 %10, 0
  %. = select i1 %.not, i64 0, i64 %3
  br label %bb.e

11:                                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %12 = icmp eq i64 %3, 16
  br i1 %12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef 16) #7, !inline_history !24
  %.not33.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not33.i, i64 0, i64 16
  br label %cts128_cs3_encrypt.exit

bb.c:                                             ; preds = %11
  %i.i = and i64 %3, -16                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = tail call i32 %i.m(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef %i.i) #7, !inline_history !24
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %cts128_cs3_encrypt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  %i.q = sub nuw nsw i64 16, %i.a
  %i.r = getelementptr i8, ptr %4, i64 %i.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i8 0, i64 %i.q, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.o, i64 %i.a, i1 false)
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.a, i1 false)
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = call i32 %i.v(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %4, i64 noundef 16) #7, !inline_history !24
  %.not32.i = icmp eq i32 %i.w, 0
  %..i = select i1 %.not32.i, i64 0, i64 %3
  br label %cts128_cs3_encrypt.exit

cts128_cs3_encrypt.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.e

bb.e:                                             ; preds = %5, %cts128_cs3_encrypt.exit
  %.0 = phi i64 [ %.0.i, %cts128_cs3_encrypt.exit ], [ %., %5 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @cts128_cs3_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 16, 0) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %union.aligned_16bytes, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = icmp eq i64 %3, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = tail call i32 %i.e(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef 16) #7
  %.not33 = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not33, i64 0, i64 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %3, 15                           ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %spec.store.select = select i1 %i.i, i64 16, i64 %i.h ; 5 uses
  %i.j = sub nuw i64 %3, %spec.store.select       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = tail call i32 %i.n(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef %i.j) #7
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  %i.r = sub nuw nsw i64 16, %spec.store.select
  %i.s = getelementptr i8, ptr %4, i64 %spec.store.select
  call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.r, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.p, i64 %spec.store.select, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.t, i64 %spec.store.select, i1 false)
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = call i32 %i.w(ptr noundef nonnull %0, ptr noundef nonnull %i.t, ptr noundef nonnull %4, i64 noundef 16) #7
  %.not32 = icmp eq i32 %i.x, 0
  %. = select i1 %.not32, i64 0, i64 %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %., %bb.d ], [ %i.g, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 16, 1) i64 @cts128_cs1_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 16, 0) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %union.aligned_16bytes, align 8     ; 4 uses
  %5 = alloca %union.aligned_16bytes, align 8     ; 7 uses
  %6 = alloca %union.aligned_16bytes, align 8     ; 4 uses
  %7 = alloca %union.aligned_16bytes, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.a = and i64 %3, 15                           ; 10 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef %3) #7
  %.not49 = icmp eq i32 %i.g, 0
  %. = select i1 %.not49, i64 0, i64 %3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = or disjoint i64 %i.a, 16                 ; 2 uses
  %i.i = sub i64 %3, %i.h                         ; 3 uses
  %.not = icmp eq i64 %3, %i.h
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = tail call i32 %i.m(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef %i.i) #7
  %.not46 = icmp eq i32 %i.n, 0
  br i1 %.not46, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.042 = phi ptr [ %i.o, %bb.e ], [ %1, %bb.c ]  ; 2 uses
  %.0 = phi ptr [ %i.p, %bb.e ], [ %2, %bb.c ]    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.042, i64 %i.a ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = call i32 %i.v(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.r, i64 noundef 16) #7
  %.not47 = icmp eq i32 %i.w, 0
  br i1 %.not47, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 1 %.042, i64 %i.a, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 %i.a
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 %i.a
  %i.z = sub nuw nsw i64 16, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %3, 8                          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 %index
  %wide.load51 = load <8 x i8>, ptr %i.ac, align 8, !tbaa !19
  %i.ad = xor <8 x i8> %wide.load51, %wide.load
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index
  store <8 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %do_xor.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g, %middle.block
  %.08.i.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 %.08.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = xor i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.08.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !19
  %i.am = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %i.a
  br i1 %exitcond.not.i, label %do_xor.exit, label %.lr.ph.i, !llvm.loop !26

do_xor.exit:                                      ; preds = %.lr.ph.i, %middle.block
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = call i32 %i.ap(ptr noundef nonnull %0, ptr noundef nonnull %.0, ptr noundef nonnull %5, i64 noundef 16) #7
  %.not48 = icmp eq i32 %i.aq, 0
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %do_xor.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %do_xor.exit, %bb.f, %bb.d, %bb.b, %bb.h
  %.043 = phi i64 [ 0, %bb.d ], [ %., %bb.b ], [ %3, %bb.h ], [ 0, %bb.f ], [ 0, %do_xor.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i64 %.043
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @cts128_cs2_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 16, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 15
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
end_hunk_0
