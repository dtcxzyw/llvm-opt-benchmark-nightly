Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/priority_queue_test?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@test_size_t_priority_queue_int:bb.a
  %i.b = getelementptr inbounds [8 x i8], ptr @test_size_t_priority_queue_int.orders, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  %i.d = select i1 %.not, ptr @.str.9, ptr @.str.8
  %.not64 = icmp eq i32 %4, 0                     ; 2 uses
  %i.e = select i1 %.not64, ptr @.str.11, ptr @.str.10
  %.not65 = icmp eq i32 %5, 0                     ; 2 uses
  %i.f = select i1 %.not65, ptr @.str.13, ptr @.str.12
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.6, i32 noundef 63, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %3, ptr noundef nonnull %i.f) #8
  %i.g = sext i32 %2 to i64                       ; 7 uses
  %i.h = tail call i32 @test_size_t_le(ptr noundef nonnull @.str.6, i32 noundef 65, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i64 noundef %i.g, i64 noundef 500000) #8
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) @test_size_t_priority_queue_int.values, i8 0, i64 4000000, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) @test_size_t_priority_queue_int.sorted, i8 0, i64 4000000, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) @test_size_t_priority_queue_int.ref, i8 0, i64 4000000, i1 false)
  %i.i = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = zext nneg i32 %2 to i64                  ; 6 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.j, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.k = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.l = sub nuw nsw <2 x i64> %broadcast.splat, %step.add
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @test_size_t_priority_queue_int.values, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %i.k, ptr %i.m, align 16, !tbaa !13
  store <2 x i64> %i.l, ptr %i.n, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader121

.lr.ph.split.us.preheader121:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader121, %.lr.ph.split.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph.split.us ], [ %indvars.iv98.ph, %.lr.ph.split.us.preheader121 ] ; 3 uses
  %i.p = sub nuw nsw i64 %i.j, %indvars.iv98
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @test_size_t_priority_queue_int.values, i64 %indvars.iv98
  store i64 %i.p, ptr %i.q, align 8, !tbaa !13
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %i.j
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.r = tail call i32 @test_random() #8
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @test_size_t_priority_queue_int.values, i64 %indvars.iv
  store i64 %i.s, ptr %i.t, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %bb.b
  %i.u = shl nsw i64 %i.g, 3                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @test_size_t_priority_queue_int.sorted, ptr nonnull align 16 @test_size_t_priority_queue_int.values, i64 %i.u, i1 false)
  tail call void @qsort(ptr noundef nonnull @test_size_t_priority_queue_int.sorted, i64 noundef %i.g, i64 noundef 8, ptr noundef nonnull @qsort_size_t_compare) #8
  switch i32 %1, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @test_size_t_priority_queue_int.values, ptr nonnull align 16 @test_size_t_priority_queue_int.sorted, i64 %i.u, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @qsort(ptr noundef nonnull @test_size_t_priority_queue_int.values, i64 noundef %i.g, i64 noundef 8, ptr noundef nonnull @qsort_size_t_compare_rev) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.v = tail call ptr @ossl_pqueue_new(ptr noundef nonnull @size_t_compare) #8 ; 23 uses
  %i.w = tail call i32 @test_ptr(ptr noundef nonnull @.str.6, i32 noundef 82, ptr noundef nonnull @.str.16, ptr noundef %i.v) #8
  %.not67 = icmp eq i32 %i.w, 0
  br i1 %.not67, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i64 @ossl_pqueue_num(ptr noundef %i.v) #8
  %i.y = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 83, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %i.x, i64 noundef 0) #8
  %.not68 = icmp eq i32 %i.y, 0
  br i1 %.not68, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i32 @ossl_pqueue_reserve(ptr noundef %i.v, i64 noundef range(i64 -2147483648, 2147483648) %i.g) #8
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = tail call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 86, ptr noundef nonnull @.str.19, i32 noundef %i.ab) #8
  %.not69 = icmp eq i32 %i.ac, 0
  br i1 %.not69, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.i, label %.lr.ph85.preheader, label %._crit_edge86

.lr.ph85.preheader:                               ; preds = %bb.i
  %wide.trip.count106 = zext nneg i32 %2 to i64
  br label %.lr.ph85

bb.j:                                             ; preds = %.lr.ph85
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge86, label %.lr.ph85, !llvm.loop !19

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.j
  %indvars.iv103 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next104, %bb.j ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @test_size_t_priority_queue_int.values, i64 %indvars.iv103
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @test_size_t_priority_queue_int.ref, i64 %indvars.iv103
  %i.af = tail call i32 @ossl_pqueue_push(ptr noundef %i.v, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #8
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = tail call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 90, ptr noundef nonnull @.str.20, i32 noundef %i.ah) #8
  %.not79 = icmp eq i32 %i.ai, 0
  br i1 %.not79, label %.loopexit, label %bb.j

._crit_edge86:                                    ; preds = %bb.j, %bb.i
  %i.aj = tail call ptr @ossl_pqueue_peek(ptr noundef %i.v) #8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = load i64, ptr @test_size_t_priority_queue_int.sorted, align 16, !tbaa !13
  %i.am = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 93, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i64 noundef %i.ak, i64 noundef %i.al) #8
  %.not70 = icmp eq i32 %i.am, 0
  br i1 %.not70, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge86
  %i.an = tail call i64 @ossl_pqueue_num(ptr noundef %i.v) #8
  %i.ao = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 94, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i64 noundef %i.an, i64 noundef %i.g) #8
  %.not71 = icmp eq i32 %i.ao, 0
  br i1 %.not71, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not72 = icmp eq i32 %3, 0
  br i1 %.not72, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader, %bb.o
  %.in = phi i32 [ %i.aq, %bb.o ], [ %3, %.preheader ] ; 2 uses
  %i.aq = add nsw i32 %.in, -1
  %i.ar = tail call i32 @test_random() #8
  %i.as = urem i32 %i.ar, %2
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr @test_size_t_priority_queue_int.values, i64 %i.at ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13
  %.not77 = icmp eq i64 %i.av, -1
  br i1 %.not77, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph87
  %i.aw = getelementptr inbounds [8 x i8], ptr @test_size_t_priority_queue_int.ref, i64 %i.at
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !13
  %i.ay = tail call ptr @ossl_pqueue_remove(ptr noundef %i.v, i64 noundef %i.ax) #8
  %i.az = tail call i32 @test_ptr_eq(ptr noundef nonnull @.str.6, i32 noundef 102, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %i.ay, ptr noundef nonnull %i.au) #8
  %.not78 = icmp eq i32 %i.az, 0
  br i1 %.not78, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 -1, ptr %i.au, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph87
  %i.ba = icmp samesign ugt i32 %.in, 1
  br i1 %i.ba, label %.lr.ph87, label %._crit_edge88, !llvm.loop !20

._crit_edge88:                                    ; preds = %bb.o, %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @test_size_t_priority_queue_int.sorted, ptr nonnull align 16 @test_size_t_priority_queue_int.values, i64 %i.u, i1 false)
  tail call void @qsort(ptr noundef nonnull @test_size_t_priority_queue_int.sorted, i64 noundef %i.g, i64 noundef 8, ptr noundef nonnull @qsort_size_t_compare) #8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge88, %bb.l
  %i.bb = tail call ptr @ossl_pqueue_peek(ptr noundef %i.v) #8
  %.not7389 = icmp eq ptr %i.bb, null
  br i1 %.not7389, label %._crit_edge93, label %.lr.ph92

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %i.bc = tail call ptr @ossl_pqueue_peek(ptr noundef %i.v) #8
  %.not73 = icmp eq ptr %i.bc, null
  br i1 %.not73, label %._crit_edge93, label %.lr.ph92, !llvm.loop !21

.lr.ph92:                                         ; preds = %bb.p, %bb.q
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bd = tail call ptr @ossl_pqueue_peek(ptr noundef %i.v) #8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @test_size_t_priority_queue_int.sorted, i64 %indvars.iv108 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 111, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.25, i64 noundef %i.be, i64 noundef %i.bg) #8
  %.not75 = icmp eq i32 %i.bh, 0
  br i1 %.not75, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph92
  %i.bi = tail call ptr @ossl_pqueue_pop(ptr noundef %i.v) #8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bl = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 112, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i64 noundef %i.bj, i64 noundef %i.bk) #8
  %.not76 = icmp eq i32 %i.bl, 0
  br i1 %.not76, label %.loopexit, label %bb.q

._crit_edge93:                                    ; preds = %bb.q, %bb.p
  br i1 %.not65, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge93
  store i64 0, ptr @num_rec_freed, align 8, !tbaa !13
  %i.bm = tail call i64 @ossl_pqueue_num(ptr noundef %i.v) #8
  tail call void @ossl_pqueue_pop_free(ptr noundef %i.v, ptr noundef nonnull @free_checker) #8
  %i.bn = load i64, ptr @num_rec_freed, align 8, !tbaa !13
  %i.bo = tail call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 120, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %i.bn, i64 noundef %i.bm) #8
  %.not74 = icmp ne i32 %i.bo, 0
  %spec.select = zext i1 %.not74 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph85, %bb.m, %.lr.ph92, %bb.r, %bb.s, %._crit_edge93, %._crit_edge86, %bb.k, %bb.h, %bb.e, %bb.f
  %.157 = phi ptr [ %i.v, %.lr.ph92 ], [ %i.v, %bb.m ], [ %i.v, %bb.f ], [ %i.v, %._crit_edge93 ], [ %i.v, %bb.e ], [ null, %bb.s ], [ %i.v, %bb.k ], [ %i.v, %._crit_edge86 ], [ %i.v, %bb.h ], [ %i.v, %bb.r ], [ %i.v, %.lr.ph85 ]
  %.0 = phi i32 [ 0, %.lr.ph92 ], [ 0, %bb.m ], [ 0, %bb.f ], [ 1, %._crit_edge93 ], [ 0, %bb.e ], [ %spec.select, %bb.s ], [ 0, %bb.k ], [ 0, %._crit_edge86 ], [ 0, %bb.h ], [ 0, %bb.r ], [ 0, %.lr.ph85 ]
  tail call void @ossl_pqueue_free(ptr noundef %.157) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.loopexit
  %.058 = phi i32 [ %.0, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.058
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @test_size_t_le(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @test_random() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @qsort_size_t_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %.0.i = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @qsort_size_t_compare_rev(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !13
  %i.b = load i64, ptr %0, align 8, !tbaa !13
  %.0.i = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0.i
}

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @size_t_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

declare i32 @test_size_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_ptr_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @free_checker(ptr nofree readnone captures(none) %0) #6 {
bb.a:
  %i.a = load i64, ptr @num_rec_freed, align 8, !tbaa !13
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @num_rec_freed, align 8, !tbaa !13
  ret void
}

declare ptr @ossl_pqueue_new(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_pqueue_num(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_pqueue_reserve(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_pqueue_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ossl_pqueue_peek(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_pqueue_remove(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ossl_pqueue_pop(ptr noundef) local_unnamed_addr #1

declare void @ossl_pqueue_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_pqueue_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, %i.h
  %. = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"info_st", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!10, !9, i64 16}
!16 = distinct !{!16, !25, !26, !27}
!17 = distinct !{!17, !25, !27, !26}
!18 = distinct !{!18, !25}
!19 = distinct !{!19, !25}
!20 = distinct !{!20, !25}
!21 = distinct !{!21, !25}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
