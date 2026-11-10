Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/conncache?download=true
inline.NumInlined: 43
inline.NumDeleted: 21
begin_hunk_0_@Curl_cpool_find:bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = and i32 %i.d, 32
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not36 = icmp eq ptr %i.n, null
  br i1 %.not36, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.w = add i64 %i.v, 1
  %i.x = tail call ptr @Curl_hash_pick(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %1, i64 noundef %i.w) #7 ; 2 uses
  %.not38 = icmp eq ptr %i.x, null
  br i1 %.not38, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.x) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0 = phi ptr [ %i.y, %bb.l ], [ %i.aa, %bb.n ] ; 3 uses
  %.not39.not.not = icmp ne ptr %.0, null         ; 3 uses
  br i1 %.not39.not.not, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.z = tail call ptr @Curl_node_elem(ptr noundef nonnull %.0) #7
  %i.aa = tail call ptr @Curl_node_next(ptr noundef nonnull %.0) #7
  %i.ab = tail call zeroext i1 %2(ptr noundef %i.z, ptr noundef %4) #7
  br i1 %i.ab, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.k
  %.3 = phi i1 [ false, %bb.k ], [ %.not39.not.not, %bb.m ], [ %.not39.not.not, %bb.n ]
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ac = tail call zeroext i1 %3(ptr noundef %4) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.4 = phi i1 [ %i.ac, %bb.o ], [ %.3, %.loopexit ] ; 3 uses
  %i.ad = load i8, ptr %i.s, align 8
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.s, align 8
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not41 = icmp eq ptr %i.af, null
  br i1 %.not41, label %cpool_get_instance.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87
  %i.ai = and i32 %i.ah, 32
  %.not42 = icmp eq i32 %i.ai, 0
  br i1 %.not42, label %cpool_get_instance.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = tail call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %cpool_get_instance.exit

cpool_get_instance.exit:                          ; preds = %bb.r, %bb.q, %bb.p, %bb.g, %bb.a
  %.030 = phi i1 [ false, %bb.g ], [ false, %bb.a ], [ %.4, %bb.p ], [ %.4, %bb.q ], [ %.4, %bb.r ]
  ret i1 %.030
}

declare ptr @Curl_hash_pick(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @Curl_llist_head(ptr noundef) local_unnamed_addr #1

declare ptr @Curl_node_elem(ptr noundef) local_unnamed_addr #1

declare ptr @Curl_node_next(ptr noundef) local_unnamed_addr #1

declare void @Curl_cshutdn_terminate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Curl_cpool_prune_dead(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Curl_hash_iterator, align 8 ; 9 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cpool_get_instance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = and i32 %i.d, 32
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not20 = icmp eq ptr %i.n, null
  br i1 %.not20, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  %i.v = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #7
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 72 ; 2 uses
  %i.x = tail call i64 @curlx_ptimediff_ms(ptr noundef %i.v, ptr noundef nonnull %i.w) #7
  %i.y = icmp sgt i64 %i.x, 999
  br i1 %i.y, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %1) #7
  %i.z = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not24.not.i41 = icmp eq ptr %i.z, null
  br i1 %.not24.not.i41, label %.loopexit, label %.lr.ph.i

.critedge.loopexit.i:                             ; preds = %cpool_reap_dead_cb.exit
  %.not.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.critedge.loopexit.i, %cpool_foreach.exit
  %.01625.i.be = phi ptr [ %i.ac, %.critedge.loopexit.i ], [ %i.am, %cpool_foreach.exit ]
  br label %.lr.ph.i, !llvm.loop !142

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i.backedge
  %.01625.i = phi ptr [ %.01625.i.be, %.lr.ph.i.backedge ], [ %i.z, %.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90
  %i.ac = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %i.ad = call ptr @Curl_llist_head(ptr noundef %i.ab) #7
  br label %cpool_reap_dead_cb.exit

cpool_reap_dead_cb.exit:                          ; preds = %.thread.i, %.lr.ph.i
  %.0.i24 = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.af, %.thread.i ] ; 3 uses
  %.not20.i = icmp eq ptr %.0.i24, null
  br i1 %.not20.i, label %.critedge.loopexit.i, label %bb.l

bb.l:                                             ; preds = %cpool_reap_dead_cb.exit
  %i.ae = call ptr @Curl_node_elem(ptr noundef nonnull %.0.i24) #7 ; 4 uses
  %i.af = call ptr @Curl_node_next(ptr noundef nonnull %.0.i24) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 776
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !101
  %.not.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i25, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 720
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = and i32 %i.aj, 1048576
  %.not14.i26 = icmp eq i32 %i.ak, 0
  br i1 %.not14.i26, label %.thread.i, label %cpool_foreach.exit

.thread.i:                                        ; preds = %bb.m, %bb.l
  %i.al = call zeroext i1 @Curl_conn_seems_dead(ptr noundef nonnull %i.ae, ptr noundef nonnull %0) #7
  br i1 %i.al, label %cpool_foreach.exit, label %cpool_reap_dead_cb.exit, !llvm.loop !0

cpool_foreach.exit:                               ; preds = %.thread.i, %bb.m
  call void @Curl_conn_terminate(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %1) #7
  %i.am = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not24.not.i = icmp eq ptr %i.am, null
  br i1 %.not24.not.i, label %.loopexit, label %.lr.ph.i.backedge

.loopexit:                                        ; preds = %cpool_foreach.exit, %.critedge.loopexit.i, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.an = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !116
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.k
  %i.ao = load i8, ptr %i.s, align 8
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.s, align 8
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not22 = icmp eq ptr %i.aq, null
  br i1 %.not22, label %cpool_get_instance.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !87
  %i.at = and i32 %i.as, 32
  %.not23 = icmp eq i32 %i.at, 0
  br i1 %.not23, label %cpool_get_instance.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %cpool_get_instance.exit

cpool_get_instance.exit:                          ; preds = %bb.g, %bb.a, %bb.p, %bb.o, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_cpool_upkeep(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Curl_hash_iterator, align 8 ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cpool_get_instance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = and i32 %i.d, 32
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
  br i1 %.not16, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %1) #7
  %i.v = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not24.not.i = icmp eq ptr %i.v, null
  br i1 %.not24.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.critedge.loopexit.i:                             ; preds = %.lr.ph, %.lr.ph.i
  %.not.not.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.loopexit.i
  %.01625.i = phi ptr [ %i.y, %.critedge.loopexit.i ], [ %i.v, %bb.k ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %i.z = call ptr @Curl_llist_head(ptr noundef %i.x) #7 ; 2 uses
  %.not20.i24 = icmp eq ptr %i.z, null
  br i1 %.not20.i24, label %.critedge.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %.lr.ph
  %.0.i2025 = phi ptr [ %i.ab, %.lr.ph ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.aa = call ptr @Curl_node_elem(ptr noundef nonnull %.0.i2025) #7
  %i.ab = call ptr @Curl_node_next(ptr noundef nonnull %.0.i2025) #7 ; 2 uses
  %i.ac = call i32 @Curl_conn_upkeep(ptr noundef nonnull %0, ptr noundef %i.aa) #7 ; 0 uses
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %.critedge.loopexit.i, label %.lr.ph, !llvm.loop !0

cpool_foreach.exit:                               ; preds = %.critedge.loopexit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.ad = load i8, ptr %i.s, align 8
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.s, align 8
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not18 = icmp eq ptr %i.af, null
  br i1 %.not18, label %cpool_get_instance.exit, label %bb.l

bb.l:                                             ; preds = %cpool_foreach.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87
  %i.ai = and i32 %i.ah, 32
  %.not19 = icmp eq i32 %i.ai, 0
  br i1 %.not19, label %cpool_get_instance.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %cpool_get_instance.exit

cpool_get_instance.exit:                          ; preds = %bb.g, %bb.a, %bb.m, %bb.l, %cpool_foreach.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @Curl_cpool_get_conn(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Curl_hash_iterator, align 8 ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cpool_get_instance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
end_hunk_0
begin_hunk_1_@Curl_cpool_get_conn:bb.a
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %2) #7
  %i.v = call ptr @Curl_hash_next_element(ptr noundef nonnull %2) #7 ; 2 uses
  %.not24.not.i = icmp eq ptr %i.v, null
  br i1 %.not24.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.critedge.loopexit.i:                             ; preds = %bb.l, %.lr.ph.i
  %.not.not.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.loopexit.i
  %.01625.i = phi ptr [ %i.y, %.critedge.loopexit.i ], [ %i.v, %bb.k ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = call ptr @Curl_hash_next_element(ptr noundef nonnull %2) #7 ; 2 uses
  %i.z = call ptr @Curl_llist_head(ptr noundef %i.x) #7 ; 2 uses
  %.not20.i32 = icmp eq ptr %i.z, null
  br i1 %.not20.i32, label %.critedge.loopexit.i, label %cpool_find_conn.exit

bb.l:                                             ; preds = %cpool_find_conn.exit
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %.critedge.loopexit.i, label %cpool_find_conn.exit, !llvm.loop !0

cpool_find_conn.exit:                             ; preds = %.lr.ph.i, %bb.l
  %.0.i2233 = phi ptr [ %i.ab, %bb.l ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.aa = call ptr @Curl_node_elem(ptr noundef nonnull %.0.i2233) #7 ; 2 uses
  %i.ab = call ptr @Curl_node_next(ptr noundef nonnull %.0.i2233) #7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !102
  %i.ae = icmp eq i64 %i.ad, %1
  br i1 %i.ae, label %cpool_foreach.exit, label %bb.l, !llvm.loop !1

cpool_foreach.exit:                               ; preds = %.critedge.loopexit.i, %cpool_find_conn.exit, %bb.k
  %.sroa.4.2 = phi ptr [ null, %bb.k ], [ %i.aa, %cpool_find_conn.exit ], [ null, %.critedge.loopexit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.af = load i8, ptr %i.s, align 8
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.s, align 8
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not20 = icmp eq ptr %i.ah, null
  br i1 %.not20, label %cpool_get_instance.exit, label %bb.m

bb.m:                                             ; preds = %cpool_foreach.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !87
  %i.ak = and i32 %i.aj, 32
  %.not21 = icmp eq i32 %i.ak, 0
  br i1 %.not21, label %cpool_get_instance.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %cpool_get_instance.exit

cpool_get_instance.exit:                          ; preds = %bb.g, %bb.n, %bb.m, %cpool_foreach.exit, %bb.a
  %.0 = phi ptr [ %.sroa.4.2, %bb.n ], [ null, %bb.a ], [ %.sroa.4.2, %cpool_foreach.exit ], [ %.sroa.4.2, %bb.m ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @Curl_cpool_do_by_id(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Curl_hash_iterator, align 8 ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cpool_get_instance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = and i32 %i.d, 32
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %4) #7
  %i.v = call ptr @Curl_hash_next_element(ptr noundef nonnull %4) #7 ; 2 uses
  %.not24.not.i = icmp eq ptr %i.v, null
  br i1 %.not24.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.critedge.loopexit.i:                             ; preds = %cpool_do_conn.exit
  %.not.not.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.loopexit.i
  %.01625.i = phi ptr [ %i.y, %.critedge.loopexit.i ], [ %i.v, %bb.k ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = call ptr @Curl_hash_next_element(ptr noundef nonnull %4) #7 ; 2 uses
  %i.z = call ptr @Curl_llist_head(ptr noundef %i.x) #7
  br label %cpool_do_conn.exit

cpool_do_conn.exit:                               ; preds = %bb.l, %.lr.ph.i
  %.0.i22 = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ab, %bb.l ] ; 3 uses
  %.not20.i = icmp eq ptr %.0.i22, null
  br i1 %.not20.i, label %.critedge.loopexit.i, label %bb.l

bb.l:                                             ; preds = %cpool_do_conn.exit
  %i.aa = call ptr @Curl_node_elem(ptr noundef nonnull %.0.i22) #7 ; 2 uses
  %i.ab = call ptr @Curl_node_next(ptr noundef nonnull %.0.i22) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !102
  %i.ae = icmp eq i64 %i.ad, %1
  br i1 %i.ae, label %bb.m, label %cpool_do_conn.exit, !llvm.loop !0

bb.m:                                             ; preds = %bb.l
  call void %2(ptr noundef nonnull %i.aa, ptr noundef nonnull %0, ptr noundef %3) #7, !inline_history !143
  br label %cpool_foreach.exit, !llvm.loop !1

cpool_foreach.exit:                               ; preds = %.critedge.loopexit.i, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.af = load i8, ptr %i.s, align 8
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.s, align 8
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not20 = icmp eq ptr %i.ah, null
  br i1 %.not20, label %cpool_get_instance.exit, label %bb.n

bb.n:                                             ; preds = %cpool_foreach.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !87
  %i.ak = and i32 %i.aj, 32
  %.not21 = icmp eq i32 %i.ak, 0
  br i1 %.not21, label %cpool_get_instance.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %cpool_get_instance.exit

cpool_get_instance.exit:                          ; preds = %bb.g, %bb.a, %bb.o, %bb.n, %cpool_foreach.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_cpool_do_locked(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cpool_get_instance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = and i32 %i.d, 32
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  tail call void %2(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %3) #7
  %i.v = load i8, ptr %i.s, align 8
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.s, align 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not24 = icmp eq ptr %i.x, null
  br i1 %.not24, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87
  %i.aa = and i32 %i.z, 32
  %.not25 = icmp eq i32 %i.aa, 0
  br i1 %.not25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %bb.n

cpool_get_instance.exit:                          ; preds = %bb.g, %bb.a
  tail call void %2(ptr noundef %1, ptr noundef %0, ptr noundef %3) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %cpool_get_instance.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_cpool_nw_changed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Curl_hash_iterator, align 8 ; 9 uses
  %2 = alloca %struct.Curl_hash_iterator, align 8 ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %cpool_get_instance.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = and i32 %i.d, 32
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  br i1 %.not16.i, label %cpool_get_instance.exit, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi ptr [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87
  %i.q = and i32 %i.p, 32
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 2) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %2) #7
  %i.v = call ptr @Curl_hash_next_element(ptr noundef nonnull %2) #7 ; 2 uses
  %.not24.not.i = icmp eq ptr %i.v, null
  br i1 %.not24.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.critedge.loopexit.i:                             ; preds = %.lr.ph, %.lr.ph.i
  %.not.not.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i, label %cpool_foreach.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.loopexit.i
  %.01625.i = phi ptr [ %i.y, %.critedge.loopexit.i ], [ %i.v, %bb.k ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = call ptr @Curl_hash_next_element(ptr noundef nonnull %2) #7 ; 2 uses
  %i.z = call ptr @Curl_llist_head(ptr noundef %i.x) #7 ; 2 uses
  %.not20.i42 = icmp eq ptr %i.z, null
  br i1 %.not20.i42, label %.critedge.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %.lr.ph
  %.0.i2243 = phi ptr [ %i.ab, %.lr.ph ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.aa = call ptr @Curl_node_elem(ptr noundef nonnull %.0.i2243) #7
  %i.ab = call ptr @Curl_node_next(ptr noundef nonnull %.0.i2243) #7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 720 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = or i32 %i.ad, 1048576
  store i32 %i.ae, ptr %i.ac, align 8
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %.critedge.loopexit.i, label %.lr.ph, !llvm.loop !0

cpool_foreach.exit:                               ; preds = %.critedge.loopexit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %1) #7
  %i.af = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not24.not.i2347 = icmp eq ptr %i.af, null
  br i1 %.not24.not.i2347, label %.loopexit, label %.lr.ph.i24

.critedge.loopexit.i30:                           ; preds = %cpool_reap_no_reuse.exit, %.lr.ph.i24
  %.not.not.i31 = icmp eq ptr %i.ai, null
  br i1 %.not.not.i31, label %.loopexit, label %.lr.ph.i24.backedge

.lr.ph.i24.backedge:                              ; preds = %.critedge.loopexit.i30, %cpool_foreach.exit32
  %.01625.i25.be = phi ptr [ %i.ai, %.critedge.loopexit.i30 ], [ %i.ar, %cpool_foreach.exit32 ]
  br label %.lr.ph.i24, !llvm.loop !144

.lr.ph.i24:                                       ; preds = %cpool_foreach.exit, %.lr.ph.i24.backedge
  %.01625.i25 = phi ptr [ %.01625.i25.be, %.lr.ph.i24.backedge ], [ %i.af, %cpool_foreach.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.01625.i25, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.ai = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %i.aj = call ptr @Curl_llist_head(ptr noundef %i.ah) #7 ; 2 uses
  %.not20.i2744 = icmp eq ptr %i.aj, null
  br i1 %.not20.i2744, label %.critedge.loopexit.i30, label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph.i24, %cpool_reap_no_reuse.exit
  %.0.i2645 = phi ptr [ %i.al, %cpool_reap_no_reuse.exit ], [ %i.aj, %.lr.ph.i24 ] ; 2 uses
  %i.ak = call ptr @Curl_node_elem(ptr noundef nonnull %.0.i2645) #7 ; 3 uses
  %i.al = call ptr @Curl_node_next(ptr noundef nonnull %.0.i2645) #7 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 776
  %i.an = load i32, ptr %i.am, align 8, !tbaa !101
  %.not.i33 = icmp eq i32 %i.an, 0
  br i1 %.not.i33, label %bb.l, label %cpool_reap_no_reuse.exit

bb.l:                                             ; preds = %.lr.ph46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 720
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, 1048576
  %.not4.i = icmp eq i32 %i.aq, 0
  br i1 %.not4.i, label %cpool_reap_no_reuse.exit, label %cpool_foreach.exit32

cpool_reap_no_reuse.exit:                         ; preds = %.lr.ph46, %bb.l
  %.not20.i27 = icmp eq ptr %i.al, null
  br i1 %.not20.i27, label %.critedge.loopexit.i30, label %.lr.ph46, !llvm.loop !0

cpool_foreach.exit32:                             ; preds = %bb.l
  call void @Curl_conn_terminate(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @Curl_hash_start_iterate(ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %1) #7
  %i.ar = call ptr @Curl_hash_next_element(ptr noundef nonnull %1) #7 ; 2 uses
  %.not24.not.i23 = icmp eq ptr %i.ar, null
  br i1 %.not24.not.i23, label %.loopexit, label %.lr.ph.i24.backedge

.loopexit:                                        ; preds = %cpool_foreach.exit32, %.critedge.loopexit.i30, %cpool_foreach.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.as = load i8, ptr %i.s, align 8
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.s, align 8
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not20 = icmp eq ptr %i.au, null
  br i1 %.not20, label %cpool_get_instance.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  %i.ax = and i32 %i.aw, 32
  %.not21 = icmp eq i32 %i.ax, 0
  br i1 %.not21, label %cpool_get_instance.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 5) #7 ; 0 uses
  br label %cpool_get_instance.exit

cpool_get_instance.exit:                          ; preds = %bb.g, %bb.a, %bb.n, %bb.m, %.loopexit
  ret void
}

declare void @Curl_hash_start_iterate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Curl_hash_next_element(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Curl_node_llist(ptr noundef) local_unnamed_addr #1

declare void @Curl_node_remove(ptr noundef) local_unnamed_addr #1

declare i32 @Curl_hash_delete(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Curl_cshutdn_run_once(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_cshutdn_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Curl_hash_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_llist_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_llist_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Curl_conn_seems_dead(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_conn_upkeep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !91}
!1 = distinct !{!1, !91}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p2 _ZTS17Curl_hash_element", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"Curl_hash", !12, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!"curltime", !13, i64 0, !7, i64 8}
!16 = !{!"p1 _ZTS9Curl_easy", !10, i64 0}
!17 = !{!"p1 _ZTS10Curl_share", !10, i64 0}
!18 = !{!"cpool", !14, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !15, i64 72, !16, i64 88, !17, i64 96, !7, i64 104, !7, i64 104}
!19 = !{!18, !16, i64 88}
!20 = !{!18, !17, i64 96}
!21 = !{!10, !10, i64 0}
!22 = !{!"p1 _ZTS11connectdata", !10, i64 0}
!23 = !{!"p1 _ZTS10Curl_llist", !10, i64 0}
!24 = !{!"p1 _ZTS15Curl_llist_node", !10, i64 0}
!25 = !{!"Curl_llist_node", !23, i64 0, !10, i64 8, !24, i64 16, !24, i64 24}
!26 = !{!"CURLMsg", !7, i64 0, !10, i64 8, !6, i64 16}
!27 = !{!"Curl_message", !25, i64 0, !26, i64 32}
!28 = !{!"p1 _ZTS10Curl_multi", !10, i64 0}
!29 = !{!"p1 _ZTS8PslCache", !10, i64 0}
!30 = !{!"p1 _ZTS12Curl_cwriter", !10, i64 0}
!31 = !{!"p1 _ZTS12Curl_creader", !10, i64 0}
!32 = !{!"p1 _ZTS9buf_chunk", !10, i64 0}
!33 = !{!"p1 _ZTS9bufc_pool", !10, i64 0}
!34 = !{!"bufq", !32, i64 0, !32, i64 8, !32, i64 16, !33, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !7, i64 56}
!35 = !{!"p1 omnipotent char", !10, i64 0}
!36 = !{!"SingleRequest", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !15, i64 40, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !6, i64 76, !6, i64 77, !7, i64 80, !30, i64 88, !31, i64 96, !34, i64 104, !13, i64 168, !13, i64 176, !35, i64 184, !35, i64 192, !6, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !6, i64 232, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 233, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 234, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235, !7, i64 235}
!37 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!38 = !{!"p1 _ZTS10curl_slist", !10, i64 0}
!39 = !{!"p1 _ZTS13curl_httppost", !10, i64 0}
!40 = !{!"p1 _ZTS13curl_mimepart", !10, i64 0}
!41 = !{!"p1 _ZTS9curl_blob", !10, i64 0}
!42 = !{!"ssl_primary_config", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !7, i64 160, !6, i64 164, !6, i64 165, !7, i64 166, !7, i64 166, !7, i64 166, !7, i64 166, !7, i64 166}
!43 = !{!"ssl_config_data", !42, i64 0, !13, i64 168, !10, i64 176, !10, i64 184, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 192, !7, i64 193, !7, i64 193, !7, i64 193}
!44 = !{!"short", !6, i64 0}
!45 = !{!"ssl_general_config", !7, i64 0}
!46 = !{!"p1 _ZTS8Curl_URL", !10, i64 0}
!47 = !{!"UserDefined", !37, i64 0, !10, i64 8, !35, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 52, !10, i64 56, !10, i64 64, !13, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !38, i64 320, !39, i64 328, !40, i64 336, !38, i64 344, !38, i64 352, !38, i64 360, !13, i64 368, !43, i64 376, !43, i64 576, !38, i64 776, !44, i64 784, !6, i64 786, !6, i64 787, !45, i64 788, !13, i64 792, !7, i64 800, !7, i64 804, !10, i64 808, !38, i64 816, !13, i64 824, !13, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !38, i64 848, !38, i64 856, !38, i64 864, !7, i64 872, !6, i64 880, !6, i64 1480, !7, i64 1544, !13, i64 1552, !13, i64 1560, !10, i64 1568, !7, i64 1576, !10, i64 1584, !10, i64 1592, !10, i64 1600, !10, i64 1608, !10, i64 1616, !13, i64 1624, !13, i64 1632, !13, i64 1640, !13, i64 1648, !13, i64 1656, !7, i64 1664, !7, i64 1668, !7, i64 1672, !10, i64 1680, !10, i64 1688, !13, i64 1696, !46, i64 1704, !10, i64 1712, !10, i64 1720, !38, i64 1728, !7, i64 1736, !44, i64 1740, !44, i64 1742, !44, i64 1744, !44, i64 1746, !44, i64 1748, !44, i64 1750, !44, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1763, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1764, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1765, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1766, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1767, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1768, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1769, !7, i64 1770, !7, i64 1770, !7, i64 1770}
!48 = !{!"p1 _ZTS10CookieInfo", !10, i64 0}
!49 = !{!"p1 _ZTS4hsts", !10, i64 0}
!50 = !{!"p1 _ZTS10altsvcinfo", !10, i64 0}
!51 = !{!"Curl_rlimit", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !15, i64 56, !7, i64 72}
!52 = !{!"pgrs_dir", !13, i64 0, !13, i64 8, !13, i64 16, !51, i64 24}
!53 = !{!"Progress", !15, i64 0, !13, i64 16, !52, i64 24, !52, i64 128, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !15, i64 328, !15, i64 344, !15, i64 360, !15, i64 376, !15, i64 392, !6, i64 408, !6, i64 456, !7, i64 552, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556, !7, i64 556}
!54 = !{!"dynbuf", !35, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!55 = !{!"p1 _ZTS9Curl_peer", !10, i64 0}
!56 = !{!"p1 _ZTS10Curl_creds", !10, i64 0}
!57 = !{!"digestdata", !56, i64 0, !55, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !7, i64 64, !6, i64 68, !7, i64 69, !7, i64 69}
!58 = !{!"auth", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 12}
!59 = !{!"p1 _ZTS17Curl_resolv_async", !10, i64 0}
!60 = !{!"p1 _ZTS9Curl_tree", !10, i64 0}
!61 = !{!"Curl_tree", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !15, i64 32, !10, i64 48}
!62 = !{!"Curl_llist", !24, i64 0, !24, i64 8, !10, i64 16, !13, i64 24}
!63 = !{!"urlpieces", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56}
!64 = !{!"bufref", !10, i64 0, !35, i64 8, !13, i64 16}
!65 = !{!"p1 _ZTS17Curl_header_store", !10, i64 0}
!66 = !{!"p1 _ZTS13curl_trc_feat", !10, i64 0}
!67 = !{!"store_netrc", !54, i64 0, !35, i64 32, !7, i64 40}
!68 = !{!"dynamically_allocated_data", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!69 = !{!"http_negotiation", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !7, i64 4, !7, i64 4, !7, i64 4, !7, i64 4}
!70 = !{!"UrlState", !15, i64 0, !13, i64 16, !13, i64 24, !54, i64 32, !38, i64 64, !13, i64 72, !55, i64 80, !55, i64 88, !7, i64 96, !7, i64 100, !10, i64 104, !35, i64 112, !57, i64 120, !57, i64 192, !58, i64 264, !58, i64 280, !59, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !35, i64 336, !7, i64 344, !15, i64 352, !61, i64 368, !62, i64 424, !6, i64 456, !35, i64 1296, !35, i64 1304, !13, i64 1312, !7, i64 1320, !7, i64 1324, !7, i64 1328, !6, i64 1332, !13, i64 1368, !10, i64 1376, !10, i64 1384, !46, i64 1392, !63, i64 1400, !64, i64 1464, !64, i64 1488, !38, i64 1512, !40, i64 1520, !40, i64 1528, !13, i64 1536, !54, i64 1544, !62, i64 1576, !6, i64 1608, !65, i64 1704, !38, i64 1712, !66, i64 1720, !67, i64 1728, !56, i64 1776, !68, i64 1784, !69, i64 1832, !44, i64 1840, !6, i64 1842, !6, i64 1843, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1844, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1845, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846, !7, i64 1846}
!71 = !{!"p1 _ZTS12WildcardData", !10, i64 0}
!72 = !{!"ip_quadruple", !6, i64 0, !6, i64 46, !44, i64 92, !44, i64 94, !6, i64 96}
!73 = !{!"p2 _ZTS10curl_slist", !11, i64 0}
!74 = !{!"curl_certinfo", !7, i64 0, !73, i64 8}
!75 = !{!"PureInfo", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !35, i64 56, !35, i64 64, !13, i64 72, !7, i64 80, !72, i64 84, !35, i64 184, !7, i64 192, !74, i64 200, !7, i64 216, !7, i64 220, !7, i64 220}
!76 = !{!"curl_tlssessioninfo", !7, i64 0, !10, i64 8}
!77 = !{!"Curl_easy", !7, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !10, i64 24, !22, i64 32, !7, i64 40, !7, i64 44, !27, i64 48, !28, i64 104, !28, i64 112, !17, i64 120, !14, i64 128, !29, i64 176, !36, i64 184, !47, i64 424, !48, i64 2200, !49, i64 2208, !50, i64 2216, !53, i64 2224, !70, i64 2784, !71, i64 4632, !75, i64 4640, !76, i64 4864}
!78 = !{!77, !66, i64 4504}
!79 = !{!"curl_trc_feat", !35, i64 0, !7, i64 8}
!80 = !{!79, !7, i64 8}
!81 = !{!18, !13, i64 48}
!82 = !{!"Curl_dnscache", !14, i64 0}
!83 = !{!"p1 _ZTS10psl_ctx_st", !10, i64 0}
!84 = !{!"PslCache", !83, i64 0, !13, i64 8, !7, i64 16}
!85 = !{!"p1 _ZTS15Curl_ssl_scache", !10, i64 0}
!86 = !{!"Curl_share", !7, i64 0, !7, i64 4, !7, i64 8, !6, i64 16, !7, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !16, i64 88, !18, i64 96, !82, i64 208, !48, i64 256, !84, i64 264, !49, i64 288, !85, i64 296}
!87 = !{!86, !7, i64 4}
!88 = !{!"p1 _ZTS17Curl_hash_element", !10, i64 0}
!89 = !{!"Curl_hash_element", !88, i64 0, !10, i64 8, !10, i64 16, !13, i64 24, !6, i64 32}
!90 = !{!89, !10, i64 8}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!7, !7, i64 0}
!93 = !{!"proxy_info", !55, i64 0, !56, i64 8, !6, i64 16}
!94 = !{!"", !6, i64 0, !13, i64 32}
!95 = !{!"ConnectBits", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 2, !7, i64 3}
!96 = !{!"p1 _ZTS11Curl_scheme", !10, i64 0}
!97 = !{!"connectdata", !25, i64 0, !25, i64 32, !10, i64 64, !10, i64 72, !13, i64 80, !35, i64 88, !14, i64 96, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !93, i64 176, !93, i64 200, !56, i64 224, !55, i64 232, !35, i64 240, !15, i64 248, !15, i64 264, !6, i64 280, !6, i64 288, !6, i64 304, !6, i64 320, !7, i64 336, !7, i64 340, !94, i64 344, !42, i64 384, !42, i64 552, !95, i64 720, !96, i64 728, !96, i64 736, !15, i64 744, !28, i64 760, !35, i64 768, !7, i64 776, !7, i64 780, !44, i64 784, !44, i64 786, !6, i64 788, !6, i64 789, !6, i64 790, !6, i64 791}
!98 = !{!97, !35, i64 88}
!99 = !{!"cpool_bundle", !62, i64 0, !13, i64 32, !6, i64 40}
!100 = !{!99, !13, i64 32}
!101 = !{!97, !7, i64 776}
!102 = !{!97, !13, i64 80}
!103 = !{!77, !28, i64 104}
!104 = !{!77, !17, i64 120}
!105 = !{!77, !28, i64 112}
!106 = !{!"uint32_tbl", !11, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24}
!107 = !{!"p1 long", !10, i64 0}
!108 = !{!"uint32_bset", !107, i64 0, !7, i64 8, !7, i64 12}
!109 = !{!"p1 _ZTS10curl_thrdq", !10, i64 0}
!110 = !{!"curl_multi_ev", !14, i64 0}
!111 = !{!"p1 _ZTS11mntfy_chunk", !10, i64 0}
!112 = !{!"curl_multi_ntfy", !10, i64 0, !10, i64 8, !108, i64 16, !111, i64 32, !111, i64 40, !7, i64 48, !7, i64 52}
!113 = !{!"cshutdn", !62, i64 0, !28, i64 32, !7, i64 40}
!114 = !{!"Curl_multi", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 16, !106, i64 24, !108, i64 56, !108, i64 72, !108, i64 88, !108, i64 104, !62, i64 120, !16, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !82, i64 192, !85, i64 240, !109, i64 248, !84, i64 256, !15, i64 280, !60, i64 296, !35, i64 304, !13, i64 312, !35, i64 320, !13, i64 328, !35, i64 336, !13, i64 344, !110, i64 352, !112, i64 400, !14, i64 456, !113, i64 504, !18, i64 552, !13, i64 664, !13, i64 672, !10, i64 680, !10, i64 688, !13, i64 696, !15, i64 704, !6, i64 720, !7, i64 728, !7, i64 732, !7, i64 736, !7, i64 740, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 744, !7, i64 745, !7, i64 745, !7, i64 745}
!115 = !{!13, !13, i64 0}
!116 = !{i64 0, i64 8, !115, i64 8, i64 4, !92}
!117 = distinct !{null}
!118 = distinct !{!118, !91}
!119 = distinct !{!119, !91}
!120 = !{!6, !6, i64 0}
!121 = !{i64 0, i64 8, !120, i64 8, i64 128, !120, i64 136, i64 4, !92, i64 144, i64 8, !21}
!122 = !{!"", !6, i64 0}
!123 = !{!"sigaction", !6, i64 0, !122, i64 8, !7, i64 136, !10, i64 144}
!124 = !{!123, !7, i64 136}
!125 = !{!"_Bool", !6, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{i8 0, i8 2}
!128 = !{!18, !13, i64 64}
!129 = !{!77, !13, i64 8}
!130 = !{!77, !13, i64 2800}
!131 = distinct !{!131, !91}
!132 = distinct !{!132, !91}
!133 = distinct !{!133, !91}
!134 = !{!114, !13, i64 664}
!135 = !{!114, !13, i64 672}
!136 = distinct !{!136, !91}
!137 = distinct !{!137, !91}
!138 = distinct !{null, null}
!139 = distinct !{null, null}
!140 = !{!18, !13, i64 56}
!141 = !{!114, !7, i64 732}
!142 = distinct !{!142, !91}
!143 = distinct !{null, null}
!144 = distinct !{!144, !91}
end_hunk_1
