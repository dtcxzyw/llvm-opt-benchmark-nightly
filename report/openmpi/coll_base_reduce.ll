Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_reduce?download=true
inline.NumInlined: 42
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ompi_coll_base_reduce_generic:bb.a
  br i1 %.not.i.i, label %ompi_request_cancel.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = call i32 %i.gz(ptr noundef nonnull %.pre, i32 noundef 1) #9, !inline_history !81 ; 0 uses
  br label %ompi_request_cancel.exit.i

ompi_request_cancel.exit.i:                       ; preds = %bb.bi, %bb.bh
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !89
  %i.hc = call i32 %i.hb(ptr noundef nonnull %i.b, ptr noundef null) #9, !inline_history !82 ; 0 uses
  br label %.lr.ph.i310.1

bb.bj:                                            ; preds = %.thread332.thread.thread495
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !104
  %i.hf = call i32 %i.he(ptr noundef nonnull %i.b) #9, !inline_history !83 ; 0 uses
  br label %.lr.ph.i310.1

.lr.ph.i310.1:                                    ; preds = %bb.k, %bb.ay, %opal_datatype_span.exit, %opal_datatype_span.exit309, %bb.bj, %ompi_request_cancel.exit.i, %.thread332.thread
  %.9494 = phi i32 [ %.9, %.thread332.thread ], [ %.9508, %bb.bj ], [ %.9508, %ompi_request_cancel.exit.i ], [ -1, %opal_datatype_span.exit309 ], [ -1, %opal_datatype_span.exit ], [ -1, %bb.ay ], [ -1, %bb.k ] ; 3 uses
  %.sroa.0.1360493 = phi ptr [ %.sroa.0.1, %.thread332.thread ], [ %.sroa.0.1, %bb.bj ], [ %.sroa.0.1, %ompi_request_cancel.exit.i ], [ null, %opal_datatype_span.exit309 ], [ null, %opal_datatype_span.exit ], [ null, %bb.ay ], [ %i.be, %bb.k ] ; 2 uses
  %.sroa.10.2361492 = phi ptr [ %.sroa.10.2, %.thread332.thread ], [ %.sroa.10.2, %bb.bj ], [ %.sroa.10.2, %ompi_request_cancel.exit.i ], [ null, %opal_datatype_span.exit309 ], [ null, %opal_datatype_span.exit ], [ null, %bb.ay ], [ null, %bb.k ] ; 2 uses
  %.2239362491 = phi ptr [ %.2239, %.thread332.thread ], [ %.2239, %bb.bj ], [ %.2239, %ompi_request_cancel.exit.i ], [ %.0237, %opal_datatype_span.exit309 ], [ %1, %opal_datatype_span.exit ], [ null, %bb.ay ], [ %.0237, %bb.k ]
  %.2236363490 = phi ptr [ %.2236, %.thread332.thread ], [ %.2236, %bb.bj ], [ %.2236, %ompi_request_cancel.exit.i ], [ %.0234, %opal_datatype_span.exit309 ], [ null, %opal_datatype_span.exit ], [ null, %bb.ay ], [ %.0234, %bb.k ]
  %.0230364489 = phi ptr [ %.0230, %.thread332.thread ], [ %.0230, %bb.bj ], [ %.0230, %ompi_request_cancel.exit.i ], [ null, %opal_datatype_span.exit309 ], [ null, %opal_datatype_span.exit ], [ null, %bb.ay ], [ null, %bb.k ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !95 ; 5 uses
  %.not.i311.1 = icmp eq ptr %i.hh, @ompi_request_null
  br i1 %.not.i311.1, label %ompi_coll_base_free_reqs.exit, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i310.1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !102
  %.off.i.1 = add i32 %i.hj, -75
  %switch.i.1 = icmp ult i32 %.off.i.1, 3
  br i1 %switch.i.1, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 120
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !104
  %i.hm = call i32 %i.hl(ptr noundef nonnull %i.hg) #9, !inline_history !83 ; 0 uses
  br label %ompi_coll_base_free_reqs.exit

bb.bm:                                            ; preds = %bb.bk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.1, label %ompi_request_cancel.exit.i.1, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hp = call i32 %i.ho(ptr noundef nonnull %i.hh, i32 noundef 1) #9, !inline_history !81 ; 0 uses
  br label %ompi_request_cancel.exit.i.1

ompi_request_cancel.exit.i.1:                     ; preds = %bb.bn, %bb.bm
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !89
  %i.hr = call i32 %i.hq(ptr noundef nonnull %i.hg, ptr noundef null) #9, !inline_history !82 ; 0 uses
  br label %ompi_coll_base_free_reqs.exit

ompi_coll_base_free_reqs.exit:                    ; preds = %ompi_request_cancel.exit.i.1, %bb.bl, %.lr.ph.i310.1
  %.not290 = icmp eq ptr %.0230364489, null
  br i1 %.not290, label %ompi_coll_base_free_reqs.exit321, label %bb.bo

bb.bo:                                            ; preds = %ompi_coll_base_free_reqs.exit
  %i.hs = icmp eq i32 %.9494, 18
  br i1 %i.hs, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bo
  %i.ht = icmp sgt i32 %10, 0
  br i1 %i.ht, label %.lr.ph411.preheader, label %ompi_coll_base_free_reqs.exit321

.lr.ph411.preheader:                              ; preds = %.preheader
  %wide.trip.count447 = zext nneg i32 %10 to i64
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %bb.bq
  %indvars.iv444 = phi i64 [ 0, %.lr.ph411.preheader ], [ %indvars.iv.next445, %bb.bq ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.0230364489, i64 %indvars.iv444
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !95 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, @ompi_request_null
  br i1 %i.hw, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph411
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !102 ; 2 uses
  switch i32 %i.hy, label %.loopexit [
    i32 19, label %bb.bq
    i32 0, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %.lr.ph411
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next445, %wide.trip.count447
  br i1 %exitcond448.not, label %.loopexit, label %.lr.ph411, !llvm.loop !84

.loopexit:                                        ; preds = %bb.bq, %bb.bp, %bb.bo
  %.10 = phi i32 [ %.9494, %bb.bo ], [ %i.hy, %bb.bp ], [ 18, %bb.bq ] ; 2 uses
  %i.hz = icmp sgt i32 %10, 0
  br i1 %i.hz, label %.lr.ph.preheader.i, label %ompi_coll_base_free_reqs.exit321

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %wide.trip.count.i = zext nneg i32 %10 to i64
  br label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %bb.bv, %.lr.ph.preheader.i
  %indvars.iv.i313 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i317, %bb.bv ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.0230364489, i64 %indvars.iv.i313 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !95 ; 5 uses
  %.not.i314 = icmp eq ptr %i.ib, @ompi_request_null
  br i1 %.not.i314, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i312
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !102
  %.off.i315 = add i32 %i.id, -75
  %switch.i316 = icmp ult i32 %.off.i315, 3
  br i1 %switch.i316, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 128
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !103 ; 2 uses
  %.not.i.i319 = icmp eq ptr %i.if, null
  br i1 %.not.i.i319, label %ompi_request_cancel.exit.i320, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ig = call i32 %i.if(ptr noundef nonnull %i.ib, i32 noundef 1) #9, !inline_history !81 ; 0 uses
  br label %ompi_request_cancel.exit.i320

ompi_request_cancel.exit.i320:                    ; preds = %bb.bt, %bb.bs
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !89
  %i.ii = call i32 %i.ih(ptr noundef nonnull %i.ia, ptr noundef null) #9, !inline_history !82 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 120
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !104
  %i.il = call i32 %i.ik(ptr noundef nonnull %i.ia) #9, !inline_history !83 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %ompi_request_cancel.exit.i320, %.lr.ph.i312
  %indvars.iv.next.i317 = add nuw nsw i64 %indvars.iv.i313, 1 ; 2 uses
  %exitcond.not.i318 = icmp eq i64 %indvars.iv.next.i317, %wide.trip.count.i
  br i1 %exitcond.not.i318, label %ompi_coll_base_free_reqs.exit321, label %.lr.ph.i312, !llvm.loop !85

ompi_coll_base_free_reqs.exit321:                 ; preds = %bb.bv, %.preheader, %.loopexit, %ompi_coll_base_free_reqs.exit
  %.11 = phi i32 [ %.9494, %ompi_coll_base_free_reqs.exit ], [ %.10, %.loopexit ], [ 18, %.preheader ], [ %.10, %bb.bv ] ; 2 uses
  %.not292 = icmp eq ptr %.sroa.0.1360493, null
  br i1 %.not292, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %ompi_coll_base_free_reqs.exit321
  call void @free(ptr noundef nonnull %.sroa.0.1360493) #9
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %ompi_coll_base_free_reqs.exit321
  %.not293 = icmp eq ptr %.sroa.10.2361492, null
  br i1 %.not293, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @free(ptr noundef nonnull %.sroa.10.2361492) #9
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not294 = icmp eq ptr %.2236363490, null
  br i1 %.not294, label %.thread341, label %.thread341.sink.split

.thread341.sink.split:                            ; preds = %bb.bz, %bb.au
  %.0234.sink = phi ptr [ %.0234, %bb.au ], [ %.2239362491, %bb.bz ]
  %.0240.ph = phi i32 [ 0, %bb.au ], [ %.11, %bb.bz ]
  call void @free(ptr noundef %.0234.sink) #9
  br label %.thread341

.thread341:                                       ; preds = %bb.ax, %.thread341.sink.split, %.preheader376, %bb.au, %._crit_edge, %bb.bz
  %.0240 = phi i32 [ %.11, %bb.bz ], [ 0, %bb.au ], [ 0, %._crit_edge ], [ 0, %.preheader376 ], [ %.0240.ph, %.thread341.sink.split ], [ 0, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0240
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @ompi_coll_base_comm_get_reqs(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_chain(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  %i.g = icmp eq i32 %i.f, %5
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.i = load i32, ptr %i.h, align 4, !tbaa !107
  %i.j = icmp eq i32 %i.i, %9
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @ompi_coll_base_topo_destroy_tree(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = tail call ptr @ompi_coll_base_topo_build_chain(i32 noundef %9, ptr noundef %6, i32 noundef %5) #9 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %5, ptr %i.m, align 8, !tbaa !106
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %9, ptr %11, align 4, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.n = phi ptr [ %i.l, %bb.e ], [ %i.d, %bb.c ]
  %i.o = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.o, align 8, !tbaa !51  ; 5 uses
  %i.p = zext i32 %8 to i64                       ; 3 uses
  %.not41 = icmp ugt i64 %.val, %i.p
  br i1 %.not41, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = sext i32 %2 to i64
  %i.r = mul nsw i64 %.val, %i.q
  %i.s = icmp ugt i64 %i.r, %i.p
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.rhs.trunc = trunc nuw i64 %.val to i32
  %i.t = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %.val, %i.u
  %i.w = sub i64 %i.p, %i.v
  %i.x = lshr i64 %.val, 1
  %i.y = icmp ugt i64 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  %spec.select = add nsw i32 %i.t, %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi i32 [ %spec.select, %bb.h ], [ %2, %bb.g ], [ %2, %bb.f ]
  %i.aa = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.n, i32 noundef %.1, i32 noundef %10)
  ret i32 %i.aa
}

declare i32 @ompi_coll_base_topo_destroy_tree(ptr noundef) local_unnamed_addr #6

declare ptr @ompi_coll_base_topo_build_chain(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_pipeline(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !109
  %i.g = icmp eq i32 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_coll_base_topo_destroy_tree(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.i = tail call ptr @ompi_coll_base_topo_build_chain(i32 noundef 1, ptr noundef %6, i32 noundef %5) #9 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %5, ptr %i.j, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %i.k = phi ptr [ %i.i, %.thread ], [ %i.d, %bb.b ]
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.l, align 8, !tbaa !51  ; 5 uses
  %i.m = zext i32 %8 to i64                       ; 3 uses
  %.not36 = icmp ugt i64 %.val, %i.m
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %.val, %i.n
  %i.p = icmp ugt i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc = trunc nuw i64 %.val to i32
  %i.q = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %.val, %i.r
  %i.t = sub i64 %i.m, %i.s
  %i.u = lshr i64 %.val, 1
  %i.v = icmp ugt i64 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %spec.select = add nsw i32 %i.q, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ]
  %i.x = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.k, i32 noundef %.1, i32 noundef %9)
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_binary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111
  %i.g = icmp eq i32 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_coll_base_topo_destroy_tree(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.i = tail call ptr @ompi_coll_base_topo_build_tree(i32 noundef 2, ptr noundef %6, i32 noundef %5) #9 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %5, ptr %i.j, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %i.k = phi ptr [ %i.i, %.thread ], [ %i.d, %bb.b ]
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.l, align 8, !tbaa !51  ; 5 uses
  %i.m = zext i32 %8 to i64                       ; 3 uses
  %.not36 = icmp ugt i64 %.val, %i.m
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %.val, %i.n
  %i.p = icmp ugt i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc = trunc nuw i64 %.val to i32
  %i.q = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %.val, %i.r
  %i.t = sub i64 %i.m, %i.s
  %i.u = lshr i64 %.val, 1
  %i.v = icmp ugt i64 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %spec.select = add nsw i32 %i.q, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ]
  %i.x = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.k, i32 noundef %.1, i32 noundef %9)
  ret i32 %i.x
}

declare ptr @ompi_coll_base_topo_build_tree(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_binomial(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113
  %i.g = icmp eq i32 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_coll_base_topo_destroy_tree(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.i = tail call ptr @ompi_coll_base_topo_build_in_order_bmtree(ptr noundef %6, i32 noundef %5) #9 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %5, ptr %i.j, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %i.k = phi ptr [ %i.i, %.thread ], [ %i.d, %bb.b ]
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.l, align 8, !tbaa !51  ; 5 uses
  %i.m = zext i32 %8 to i64                       ; 3 uses
  %.not36 = icmp ugt i64 %.val, %i.m
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %.val, %i.n
  %i.p = icmp ugt i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
