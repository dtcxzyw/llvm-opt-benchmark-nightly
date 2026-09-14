Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/priority_queue?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pq_heap_st = type { ptr, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ssl/priority_queue.c\00", align 1
@__func__.ossl_pqueue_reserve = private unnamed_addr constant [20 x i8] c"ossl_pqueue_reserve\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_pqueue_push(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pq_heap_st, align 8         ; 4 uses
  %i.a = tail call i32 @ossl_pqueue_reserve(ptr noundef %0, i64 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.j, ptr %i.e, align 8, !tbaa !14
  %i.k = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.c ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.f, ptr %i.m, align 8, !tbaa !21
  store i64 %i.c, ptr %i.i, align 8, !tbaa !17
  %.not16.i = icmp eq i64 %i.c, 0
  br i1 %.not16.i, label %pqueue_move_down.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.01217.i = phi i64 [ %i.c, %.lr.ph.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.o = add i64 %.01217.i, -1
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.01217.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = tail call i32 %i.q(ptr noundef %i.s, ptr noundef %i.u) #6, !inline_history !28
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %pqueue_move_down.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.01217.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !25
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.p ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val13.i, i64 %i.aa
  store i64 %.01217.i, ptr %i.ab, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val13.i, i64 %i.ad
  store i64 %i.p, ptr %i.ae, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %pqueue_move_down.exit, label %bb.c

pqueue_move_down.exit:                            ; preds = %bb.c, %bb.d, %bb.b
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pqueue_move_down.exit
  store i64 %i.f, ptr %2, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %pqueue_move_down.exit, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %pqueue_move_down.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_pqueue_reserve(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = add i64 %i.e, %1
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.c, %1                         ; 2 uses
  %i.i = icmp ult i64 %i.c, %i.h
  br i1 %i.i, label %.lr.ph.i, label %compute_pqueue_growth.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.08.i = phi i64 [ %spec.store.select.i, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = icmp ugt i64 %.08.i, 1152921504606846974
  br i1 %i.j, label %compute_pqueue_growth.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = shl nuw nsw i64 %.08.i, 3
  %i.l = udiv i64 %i.k, 5
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 1152921504606846975) ; 3 uses
  %i.m = icmp ult i64 %spec.store.select.i, %i.h
  br i1 %i.m, label %.lr.ph.i, label %compute_pqueue_growth.exit.thread30, !llvm.loop !29

compute_pqueue_growth.exit:                       ; preds = %bb.c
  %i.n = icmp eq i64 %i.c, 0
  br i1 %i.n, label %compute_pqueue_growth.exit.thread, label %compute_pqueue_growth.exit.thread30

compute_pqueue_growth.exit.thread:                ; preds = %.lr.ph.i, %compute_pqueue_growth.exit
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @__func__.ossl_pqueue_reserve) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, ptr noundef null) #6
  br label %bb.g

compute_pqueue_growth.exit.thread30:              ; preds = %bb.d, %compute_pqueue_growth.exit
  %.07.i32 = phi i64 [ %i.c, %compute_pqueue_growth.exit ], [ %spec.store.select.i, %bb.d ] ; 7 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = tail call ptr @CRYPTO_realloc_array(ptr noundef %i.o, i64 noundef %.07.i32, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 311) #6 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %compute_pqueue_growth.exit.thread30
  store ptr %i.p, ptr %0, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = tail call ptr @CRYPTO_realloc_array(ptr noundef %i.s, i64 noundef %.07.i32, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 316) #6 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %i.r, align 8, !tbaa !15
  store i64 %.07.i32, ptr %i.b, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.c
  store i64 %i.w, ptr %i.x, align 8, !tbaa !17
  %.013.i = add i64 %i.c, 1                       ; 4 uses
  %i.y = icmp ult i64 %.013.i, %.07.i32
  br i1 %i.y, label %.lr.ph.i28.preheader, label %pqueue_add_freelist.exit

.lr.ph.i28.preheader:                             ; preds = %bb.f
  %i.z = xor i64 %i.c, -1
  %i.aa = add i64 %.07.i32, %i.z                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph.i28.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i28.preheader
  %n.vec = and i64 %i.aa, -4                      ; 4 uses
  %2 = add i64 %.013.i, %n.vec
  %i.ab = add i64 %i.c, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.013.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %vec.ind, ptr %i.ad, align 8, !tbaa !17
  store <2 x i64> %step.add, ptr %i.ae, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %pqueue_add_freelist.exit, label %.lr.ph.i28.preheader39

.lr.ph.i28.preheader39:                           ; preds = %.lr.ph.i28.preheader, %middle.block
  %.015.i.ph = phi i64 [ %.013.i, %.lr.ph.i28.preheader ], [ %2, %middle.block ]
  %.0.in14.i.ph = phi i64 [ %i.c, %.lr.ph.i28.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader39, %.lr.ph.i28
  %.015.i = phi i64 [ %.0.i, %.lr.ph.i28 ], [ %.015.i.ph, %.lr.ph.i28.preheader39 ] ; 3 uses
  %.0.in14.i = phi i64 [ %.015.i, %.lr.ph.i28 ], [ %.0.in14.i.ph, %.lr.ph.i28.preheader39 ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.015.i
  store i64 %.0.in14.i, ptr %i.ag, align 8, !tbaa !17
  %.0.i = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i, %.07.i32
  br i1 %exitcond.not.i, label %pqueue_add_freelist.exit, label %.lr.ph.i28, !llvm.loop !31

pqueue_add_freelist.exit:                         ; preds = %.lr.ph.i28, %middle.block, %bb.f
  %i.ah = add i64 %.07.i32, -1
  store i64 %i.ah, ptr %i.v, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %compute_pqueue_growth.exit.thread30, %bb.b, %bb.a, %pqueue_add_freelist.exit, %compute_pqueue_growth.exit.thread
  %.0 = phi i32 [ 1, %pqueue_add_freelist.exit ], [ 0, %bb.a ], [ 0, %compute_pqueue_growth.exit.thread ], [ 1, %bb.b ], [ 0, %compute_pqueue_growth.exit.thread30 ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ossl_pqueue_peek(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ossl_pqueue_pop(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pq_heap_st, align 8         ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = add i64 %i.c, -1                         ; 3 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !13
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %pqueue_move_up.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val17 = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !25
  %i.l = load i64, ptr %i.g, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val17, i64 %i.l
  store i64 0, ptr %i.m, align 8, !tbaa !17
  %i.n = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.p = icmp ugt i64 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = tail call i32 %i.r(ptr noundef %i.t, ptr noundef %i.v) #6, !inline_history !34
  %i.x = icmp sgt i32 %i.w, 0
  %spec.select.i = select i1 %i.x, i64 2, i64 1
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi i64 [ %i.o, %bb.d ], [ %.pre.i, %bb.e ]
  %.0.i = phi i64 [ 1, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %.0.i
  br i1 %i.aa, label %.lr.ph.i, label %pqueue_move_up.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.135.i = phi i64 [ %.2.i, %bb.i ], [ %.0.i, %bb.f ] ; 5 uses
  %.02934.i = phi i64 [ %.135.i, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.135.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.02934.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = tail call i32 %i.ab(ptr noundef %i.ad, ptr noundef %i.af) #6, !inline_history !34
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %pqueue_move_up.exit

bb.g:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.val33.i = load ptr, ptr %i.j, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.02934.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !25
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.135.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val33.i, i64 %i.al
  store i64 %.02934.i, ptr %i.am, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val33.i, i64 %i.ao
  store i64 %.135.i, ptr %i.ap, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = shl i64 %.135.i, 1                      ; 2 uses
  %i.ar = or disjoint i64 %i.aq, 1                ; 3 uses
  %i.as = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.at = add i64 %i.aq, 2                        ; 3 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ar
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.at
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.ba = tail call i32 %i.av(ptr noundef %i.ax, ptr noundef %i.az) #6, !inline_history !34
  %i.bb = icmp sgt i32 %i.ba, 0
  %spec.select32.i = select i1 %i.bb, i64 %i.at, i64 %i.ar
  %.pre37.i = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = phi i64 [ %i.as, %bb.g ], [ %.pre37.i, %bb.h ]
  %.2.i = phi i64 [ %i.ar, %bb.g ], [ %spec.select32.i, %bb.h ] ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %.2.i
  br i1 %i.bd, label %.lr.ph.i, label %pqueue_move_up.exit, !llvm.loop !35

pqueue_move_up.exit:                              ; preds = %bb.i, %.lr.ph.i, %bb.f, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.h
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !17
  store i64 %i.h, ptr %i.be, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %pqueue_move_up.exit
  %.0 = phi ptr [ %i.f, %pqueue_move_up.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @ossl_pqueue_remove(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pq_heap_st, align 8         ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 5 uses
  %i.k = add i64 %i.e, -1
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  store i64 %i.n, ptr %i.i, align 8, !tbaa !17
  store i64 %1, ptr %i.m, align 8, !tbaa !14
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  store i64 %i.j, ptr %i.d, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.j
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %bb.g

end_hunk_0
