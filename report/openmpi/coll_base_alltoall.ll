Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_alltoall?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
begin_hunk_0_@mca_coll_base_alltoall_intra_basic_inplace:bb.a
  br i1 %.not111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = add nsw i32 %.val95, %.val.val
  %i.u = getelementptr i8, ptr %3, i64 272
  %i.v = mul i64 %i.o, %i.k                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %.069112 = phi i32 [ 1, %.lr.ph ], [ %i.bu, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.p, ptr %6, align 8, !tbaa !77
  store i64 %i.l, ptr %i.s, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !53
  %i.w = add nsw i32 %.069112, %.val95
  %i.x = srem i32 %i.w, %.val.val                 ; 4 uses
  %i.y = sub i32 %i.t, %.069112
  %i.z = srem i32 %i.y, %.val.val                 ; 4 uses
  %.val99 = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %.val99, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ac = sext i32 %i.x to i64                    ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 4 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.d, label %ompi_comm_peer_lookup.exit, !prof !83

bb.d:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.af, 1
  %i.ai = and i64 %i.ah, 32767
  %i.aj = and i64 %i.af, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %i.ai, %i.aj
  %i.ak = call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #8 ; 5 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ac
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = cmpxchg volatile ptr %i.am, i64 %i.af, i64 %i.an acquire monotonic, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %bb.e, label %ompi_comm_peer_lookup.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.ar = load i8, ptr @opal_uses_threads, align 1, !tbaa !84, !range !85, !noundef !86
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g, !prof !83

bb.f:                                             ; preds = %bb.e
  %i.at = atomicrmw volatile add ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load volatile i32, ptr %i.aq, align 4, !tbaa !53
  %i.av = add nsw i32 %i.au, 1
  store volatile i32 %i.av, ptr %i.aq, align 4, !tbaa !53
  %i.aw = load volatile i32, ptr %i.aq, align 4, !tbaa !53 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

ompi_comm_peer_lookup.exit:                       ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.ae, %bb.c ], [ %i.ak, %bb.g ], [ %i.ak, %bb.f ], [ %i.ak, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = call i32 @opal_convertor_clone(ptr noundef %i.ay, ptr noundef nonnull %5, i32 noundef 0) #8 ; 0 uses
  %i.ba = mul i64 %i.v, %i.ac
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bc = call i32 @opal_convertor_prepare_for_send(ptr noundef nonnull %5, ptr noundef %2, i64 noundef %i.k, ptr noundef %i.bb) #8 ; 0 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !75
  %i.bd = call i32 @opal_convertor_pack(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not85 = icmp eq i32 %i.bd, 1
  br i1 %.not85, label %bb.h, label %.thread

bb.h:                                             ; preds = %ompi_comm_peer_lookup.exit
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !57
  %i.bf = call i32 %i.be(ptr noundef %i.bb, i64 noundef %i.k, ptr noundef %2, i32 noundef %i.x, i32 noundef -13, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not86 = icmp eq i32 %i.bf, 0
  br i1 %.not86, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not87 = icmp eq i32 %i.z, %i.x
  br i1 %.not87, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !92
  %i.bh = sext i32 %i.z to i64
  %i.bi = mul i64 %i.v, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi ; 2 uses
  %i.bk = call i32 %i.bg(ptr noundef %i.bj, i64 noundef %i.k, ptr noundef %2, i32 noundef %i.z, i32 noundef -13, i32 noundef 4, ptr noundef nonnull %3) #8 ; 2 uses
  %.not88 = icmp eq i32 %i.bk, 0
  br i1 %.not88, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !59
  %i.bm = call i32 %i.bl(ptr noundef nonnull %i.a, ptr noundef null) #8 ; 2 uses
  %.not89 = icmp eq i32 %i.bm, 0
  br i1 %.not89, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !57
  %i.bo = call i32 %i.bn(ptr noundef %i.bj, i64 noundef %i.k, ptr noundef %2, i32 noundef %i.z, i32 noundef -13, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not90 = icmp eq i32 %i.bo, 0
  br i1 %.not90, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !92
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !75
  %i.br = call i32 %i.bp(ptr noundef nonnull %i.p, i64 noundef %i.bq, ptr noundef nonnull @ompi_mpi_packed, i32 noundef %i.x, i32 noundef -13, i32 noundef 4, ptr noundef nonnull %3) #8 ; 2 uses
  %.not91 = icmp eq i32 %i.br, 0
  br i1 %.not91, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !59
  %i.bt = call i32 %i.bs(ptr noundef nonnull %i.a, ptr noundef null) #8 ; 2 uses
  %.not92 = icmp eq i32 %i.bt, 0
  br i1 %.not92, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.m, %ompi_comm_peer_lookup.exit, %bb.h, %bb.j, %bb.k, %bb.l, %bb.n
  %.1.ph = phi i32 [ %i.bt, %bb.n ], [ %i.bo, %bb.l ], [ %i.bm, %bb.k ], [ %i.bk, %bb.j ], [ %i.bf, %bb.h ], [ %i.bd, %ompi_comm_peer_lookup.exit ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bu = add nuw nsw i32 %.069112, 1
  %exitcond.not = icmp eq i32 %.069112, %i.r
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !74

.loopexit:                                        ; preds = %bb.o, %.preheader, %.thread
  %.2 = phi i32 [ %.1.ph, %.thread ], [ 0, %.preheader ], [ 0, %bb.o ]
  call void @free(ptr noundef nonnull %i.p) #8
  br label %.thread109

.thread109:                                       ; preds = %bb.b, %.loopexit, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ %.2, %.loopexit ], [ -2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.070
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @opal_convertor_clone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @opal_convertor_prepare_for_send(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @opal_convertor_pack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_alltoall_intra_pairwise(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @mca_coll_base_alltoall_intra_basic_inplace(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr poison)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.d, align 8, !tbaa !43 ; 5 uses
  %i.e = getelementptr i8, ptr %6, i64 220
  %.val47 = load i32, ptr %i.e, align 4, !tbaa !44 ; 3 uses
  %.not49 = icmp slt i32 %.val.val, 1
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.j = sub nsw i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51
  %i.o = sub nsw i64 %i.l, %i.n
  %i.p = add nsw i32 %.val47, %.val.val
  %i.q = sext i32 %1 to i64                       ; 2 uses
  %i.r = mul i64 %i.o, %i.q
  %i.s = sext i32 %4 to i64                       ; 2 uses
  %i.t = mul i64 %i.j, %i.s
  br label %bb.e

bb.d:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.u = add nuw nsw i32 %.050, 1                 ; 2 uses
  %.not = icmp sgt i32 %i.u, %.val.val
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !93

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.050 = phi i32 [ 1, %.lr.ph ], [ %i.u, %bb.d ] ; 3 uses
  %i.v = add nsw i32 %.050, %.val47
  %i.w = srem i32 %i.v, %.val.val                 ; 3 uses
  %i.x = sub i32 %i.p, %.050
  %i.y = srem i32 %i.x, %.val.val                 ; 4 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = mul i64 %i.r, %i.z
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.y to i64
  %i.ad = mul i64 %i.t, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad ; 2 uses
  %i.af = icmp eq i32 %i.w, %i.y
  %i.ag = icmp eq i32 %i.y, %.val47
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.ab, i32 noundef %1, ptr noundef %2, ptr noundef %i.ae, i32 noundef %4, ptr noundef %5) #8
  br label %ompi_coll_base_sendrecv.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.ab, i64 noundef range(i64 -2147483648, 2147483648) %i.q, ptr noundef %2, i32 noundef %i.w, i32 noundef -13, ptr noundef %i.ae, i64 noundef range(i64 -2147483648, 2147483648) %i.s, ptr noundef %5, i32 noundef %i.y, i32 noundef -13, ptr noundef %6, ptr noundef null) #8
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ah, %bb.f ], [ %i.ai, %bb.g ] ; 2 uses
  %.not46 = icmp eq i32 %.0.i, 0
  br i1 %.not46, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %ompi_coll_base_sendrecv.exit, %bb.c, %bb.b
  %.041 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.0.i, %ompi_coll_base_sendrecv.exit ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_alltoall_intra_bruck(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mca_coll_base_alltoall_intra_basic_inplace(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr poison)
  br label %.thread158

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.e, align 8, !tbaa !43 ; 13 uses
  %i.f = getelementptr i8, ptr %6, i64 220
  %.val127 = load i32, ptr %i.f, align 4, !tbaa !44 ; 9 uses
  %i.g = getelementptr i8, ptr %2, i64 48
  %.val130 = load i64, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr i8, ptr %2, i64 56
  %.val131 = load i64, ptr %i.h, align 8, !tbaa !52
  %i.i = sub nsw i64 %.val131, %.val130
  %i.j = getelementptr i8, ptr %5, i64 48         ; 2 uses
  %.val128 = load i64, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr i8, ptr %5, i64 56         ; 2 uses
  %.val129 = load i64, ptr %i.k, align 8, !tbaa !52
  %i.l = sub nsw i64 %.val129, %.val128           ; 5 uses
  %i.m = sext i32 %.val.val to i64                ; 3 uses
  %i.n = sext i32 %4 to i64                       ; 5 uses
  %i.o = mul nsw i64 %i.m, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50
  %i.r = icmp eq i64 %i.q, 0
  %i.s = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.s, %i.r
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.d, !prof !98

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !99   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !100
  %i.x = add nsw i64 %i.o, -1
  %i.y = mul i64 %i.l, %i.x
  %i.z = sub i64 %i.y, %i.u
  %i.aa = add i64 %i.z, %i.w
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %.0.i = phi i64 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ab = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread158, label %bb.e

bb.e:                                             ; preds = %opal_datatype_span.exit
  %i.ad = sub i64 0, %.0
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad ; 6 uses
  %i.af = sext i32 %.val127 to i64
  %i.ag = sext i32 %1 to i64
  %i.ah = mul nsw i64 %i.af, %i.ag
  %i.ai = mul nsw i64 %i.ah, %i.i
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = sub nsw i32 %.val.val, %.val127         ; 3 uses
  %i.al = mul nsw i32 %i.ak, %1
  %i.am = mul nsw i32 %i.ak, %4
  %i.an = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.aj, i32 noundef %i.al, ptr noundef nonnull %2, ptr noundef nonnull %i.ae, i32 noundef %i.am, ptr noundef nonnull %5) #8
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %.val127, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = mul nsw i32 %.val127, %1
  %i.aq = sext i32 %i.ak to i64
  %i.ar = mul nsw i64 %i.aq, %i.n
  %i.as = mul nsw i64 %i.ar, %i.l
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 %i.as
  %i.au = mul nsw i32 %.val127, %4
  %i.av = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %i.ap, ptr noundef nonnull %2, ptr noundef nonnull %i.at, i32 noundef %i.au, ptr noundef nonnull %5) #8
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = icmp sgt i32 %.val.val, 1
  br i1 %i.ax, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.ay = add i32 %.val127, %.val.val
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 152
  %factor.op.mul = mul i64 %i.l, %i.n
  br label %bb.j

bb.i:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread
  %i.ba = icmp slt i32 %i.bm, %.val.val
  br i1 %i.ba, label %bb.j, label %.preheader, !llvm.loop !94

.preheader:                                       ; preds = %bb.i, %bb.h
  %i.bb = icmp sgt i32 %.val.val, 0
  br i1 %i.bb, label %.lr.ph169, label %._crit_edge.split

.lr.ph169:                                        ; preds = %.preheader
  %i.bc = add i32 %.val127, %.val.val
  %i.bd = mul i64 %i.l, %i.n                      ; 2 uses
  %.not25.i = icmp eq i32 %4, 0
  br i1 %.not25.i, label %._crit_edge.split, label %.lr.ph.i137.preheader.preheader

.lr.ph.i137.preheader.preheader:                  ; preds = %.lr.ph169
  %wide.trip.count = zext nneg i32 %.val.val to i64
  br label %.lr.ph.i137.preheader

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.0108167 = phi i32 [ 1, %.lr.ph ], [ %i.bm, %bb.i ] ; 6 uses
  %i.be = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0108167, i1 true)
  %i.bf = lshr i32 %.val.val, %i.be
  %i.bg = add nuw nsw i32 %i.bf, 1
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !102
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %i.bi, 2
  %i.bk = mul i32 %i.bj, %i.bg
  %i.bl = call ptr @ompi_datatype_create(i32 noundef %i.bk) #8
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !104
  %i.bm = shl i32 %.0108167, 1                    ; 3 uses
  %i.bn = sext i32 %.0108167 to i64               ; 2 uses
  %i.bo = sext i32 %i.bm to i64
  %invariant.op = sub nsw i64 %i.m, %i.bn
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv = phi i64 [ %i.bn, %bb.j ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.not125 = icmp slt i64 %indvars.iv, %invariant.op
  %i.bp = trunc i64 %indvars.iv to i32
  %i.bq = sub i32 %.val.val, %i.bp
  %spec.select = select i1 %.not125, i32 %.0108167, i32 %i.bq
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.bs = mul nsw i32 %spec.select, %4
  %i.bt = sext i32 %i.bs to i64
  %.reass = mul i64 %indvars.iv, %factor.op.mul
  %i.bu = call i32 @opal_datatype_add(ptr noundef %i.br, ptr noundef nonnull %5, i64 noundef range(i64 -2147483648, 2147483648) %i.bt, i64 noundef %.reass, i64 noundef %i.l) #8 ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bo ; 2 uses
  %i.bv = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.bv, label %bb.k, label %bb.l, !llvm.loop !95

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %.0108167, %.val127
  %i.bx = srem i32 %i.bw, %.val.val               ; 2 uses
  %i.by = sub i32 %i.ay, %.0108167
  %i.bz = srem i32 %i.by, %.val.val               ; 3 uses
  %.val132 = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.ca = call i32 @opal_datatype_commit(ptr noundef %.val132) #8 ; 2 uses
  %.not122 = icmp eq i32 %i.ca, 0
  br i1 %.not122, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !104 ; 4 uses
  %i.cc = icmp eq i32 %i.bx, %i.bz
  %i.cd = icmp eq i32 %i.bz, %.val127
  %or.cond.i133 = and i1 %i.cc, %i.cd
  br i1 %or.cond.i133, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = call i32 @ompi_datatype_sndrcv(ptr noundef nonnull %i.ae, i32 noundef 1, ptr noundef %i.cb, ptr noundef %3, i32 noundef 1, ptr noundef %i.cb) #8
  br label %ompi_coll_base_sendrecv.exit

bb.o:                                             ; preds = %bb.m
  %i.cf = call i32 @ompi_coll_base_sendrecv_actual(ptr noundef nonnull %i.ae, i64 noundef 1, ptr noundef %i.cb, i32 noundef %i.bx, i32 noundef -13, ptr noundef %3, i64 noundef 1, ptr noundef %i.cb, i32 noundef %i.bz, i32 noundef -13, ptr noundef %6, ptr noundef null) #8
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.n, %bb.o
  %.0.i134 = phi i32 [ %i.ce, %bb.n ], [ %i.cf, %bb.o ] ; 2 uses
  %.not123 = icmp eq i32 %.0.i134, 0
  br i1 %.not123, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %ompi_coll_base_sendrecv.exit
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.ch = call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %i.cg, i32 noundef 1, ptr noundef nonnull %i.ae, ptr noundef %3) #8
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.thread, label %ompi_datatype_copy_content_same_ddt.exit.thread

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %.lr.ph.i
  %i.cj = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not124 = icmp eq i32 %i.cj, 0
  br i1 %.not124, label %bb.i, label %.thread

.lr.ph.i137.preheader:                            ; preds = %.lr.ph.i137.preheader.preheader, %ompi_datatype_copy_content_same_ddt.exit146.thread
  %indvars.iv175 = phi i64 [ 0, %.lr.ph.i137.preheader.preheader ], [ %indvars.iv.next176, %ompi_datatype_copy_content_same_ddt.exit146.thread ] ; 3 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv175 to i32
  %i.cl = sub i32 %i.bc, %i.ck
  %i.cm = srem i32 %i.cl, %.val.val
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.bd, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %3, i64 %i.co
  %i.cq = mul i64 %i.bd, %indvars.iv175
  %i.cr = getelementptr inbounds i8, ptr %i.ae, i64 %i.cq
  %.val.i135 = load i64, ptr %i.j, align 8, !tbaa !51
  %.val23.i136 = load i64, ptr %i.k, align 8, !tbaa !52
  %i.cs = sub nsw i64 %.val23.i136, %.val.i135
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %bb.p
  %.01728.i138 = phi ptr [ %i.cw, %bb.p ], [ %i.cr, %.lr.ph.i137.preheader ] ; 2 uses
  %.01827.i139 = phi ptr [ %i.cv, %bb.p ], [ %i.cp, %.lr.ph.i137.preheader ] ; 2 uses
  %.01926.i140 = phi i64 [ %i.cx, %bb.p ], [ %i.n, %.lr.ph.i137.preheader ] ; 2 uses
  %spec.select24.i141 = call i64 @llvm.umin.i64(i64 %.01926.i140, i64 2147483647) ; 3 uses
  %spec.select.i142 = trunc nuw nsw i64 %spec.select24.i141 to i32
  %i.ct = call i32 @opal_datatype_copy_content_same_ddt(ptr noundef nonnull %5, i32 noundef %spec.select.i142, ptr noundef %.01827.i139, ptr noundef %.01728.i138) #8 ; 2 uses
  %.not22.i143 = icmp eq i32 %i.ct, 0
  br i1 %.not22.i143, label %bb.p, label %ompi_datatype_copy_content_same_ddt.exit146

bb.p:                                             ; preds = %.lr.ph.i137
  %i.cu = mul nsw i64 %spec.select24.i141, %i.cs  ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.01827.i139, i64 %i.cu
  %i.cw = getelementptr inbounds i8, ptr %.01728.i138, i64 %i.cu
  %i.cx = sub nuw i64 %.01926.i140, %spec.select24.i141 ; 2 uses
  %.not.i145 = icmp eq i64 %i.cx, 0
  br i1 %.not.i145, label %ompi_datatype_copy_content_same_ddt.exit146.thread, label %.lr.ph.i137, !llvm.loop !96

ompi_datatype_copy_content_same_ddt.exit146:      ; preds = %.lr.ph.i137
  %i.cy = icmp slt i32 %i.ct, 0
  br i1 %i.cy, label %.thread, label %ompi_datatype_copy_content_same_ddt.exit146.thread

ompi_datatype_copy_content_same_ddt.exit146.thread: ; preds = %bb.p, %ompi_datatype_copy_content_same_ddt.exit146
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i137.preheader, !llvm.loop !97

._crit_edge.split:                                ; preds = %ompi_datatype_copy_content_same_ddt.exit146.thread, %.lr.ph169, %.preheader
  call void @free(ptr noundef %i.ab) #8
  br label %.thread158

.thread:                                          ; preds = %bb.l, %ompi_datatype_copy_content_same_ddt.exit.thread, %ompi_coll_base_sendrecv.exit, %.lr.ph.i, %ompi_datatype_copy_content_same_ddt.exit146, %bb.g, %bb.e
  %.0109156 = phi i32 [ -1, %ompi_datatype_copy_content_same_ddt.exit146 ], [ -1, %bb.g ], [ -1, %bb.e ], [ %i.ca, %bb.l ], [ -1, %.lr.ph.i ], [ %i.cj, %ompi_datatype_copy_content_same_ddt.exit.thread ], [ %.0.i134, %ompi_coll_base_sendrecv.exit ]
  call void @free(ptr noundef nonnull %i.ab) #8
  br label %.thread158

.thread158:                                       ; preds = %opal_datatype_span.exit, %.thread, %._crit_edge.split, %bb.b
  %.0111 = phi i32 [ %i.c, %bb.b ], [ 0, %._crit_edge.split ], [ -1, %opal_datatype_span.exit ], [ %.0109156, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0111
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @ompi_datatype_sndrcv(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ompi_datatype_create(i32 noundef) local_unnamed_addr #3

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_alltoall_intra_linear_sync(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mca_coll_base_alltoall_intra_basic_inplace(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr poison)
  br label %ompi_coll_base_free_reqs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.e, align 8, !tbaa !43 ; 10 uses
  %i.f = getelementptr i8, ptr %6, i64 220
  %.val199 = load i32, ptr %i.f, align 4, !tbaa !44 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %i.k = sub nsw i64 %i.j, %i.h
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %i.m = mul nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52
  %i.r = sub nsw i64 %i.q, %i.o
  %i.s = sext i32 %4 to i64                       ; 3 uses
  %i.t = mul nsw i64 %i.r, %i.s                   ; 3 uses
  %i.u = sext i32 %.val199 to i64                 ; 2 uses
  %i.v = mul nsw i64 %i.m, %i.u
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  %i.x = mul nsw i64 %i.t, %i.u
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x
  %i.z = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.w, i32 noundef %1, ptr noundef %2, ptr noundef %i.y, i32 noundef %4, ptr noundef %5) #8 ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %ompi_coll_base_free_reqs.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %.val.val, 1
  br i1 %i.aa, label %ompi_coll_base_free_reqs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %.val.val, -1                   ; 8 uses
  %i.ac = icmp slt i32 %8, 1
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 %i.ab)
  %i.ad = select i1 %i.ac, i32 %i.ab, i32 %9      ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = shl nuw nsw i32 %i.ad, 1
  %i.ai = tail call ptr @ompi_coll_base_comm_get_reqs(ptr noundef %i.ag, i32 noundef %i.ah) #8 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %ompi_coll_base_free_reqs.exit, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.e
  %.pn244 = add nsw i32 %.val199, 1
  %.0153245 = srem i32 %.pn244, %.val.val
  br label %.preheader230

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @ompi_request_null, ptr %i.ak, align 8, !tbaa !65
  store ptr @ompi_request_null, ptr %i.ai, align 8, !tbaa !65
  %.pn244316 = add nsw i32 %.val199, 1
  %.0153245317 = srem i32 %.pn244316, %.val.val
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.lr.ph

.preheader230:                                    ; preds = %bb.h, %bb.g
  %.0138319 = phi ptr [ null, %bb.g ], [ %i.ai, %bb.h ] ; 7 uses
  %.0145.lcssa = phi i32 [ 0, %bb.g ], [ %i.ad, %bb.h ] ; 5 uses
  %.0153.lcssa = phi i32 [ %.0153245, %bb.g ], [ %.0153, %bb.h ]
  %i.al = shl nsw i32 %i.ad, 1                    ; 5 uses
  %.pn190251 = add i32 %i.ab, %.val199
  %.0149252 = srem i32 %.pn190251, %.val.val      ; 2 uses
  %i.am = icmp slt i32 %.0145.lcssa, %i.al
  br i1 %i.am, label %.lr.ph256.preheader, label %._crit_edge

.lr.ph256.preheader:                              ; preds = %.preheader230
  %i.an = zext nneg i32 %.0145.lcssa to i64
  %i.ao = sub nsw i32 %i.al, %.0145.lcssa
  %wide.trip.count291 = zext nneg i32 %i.al to i64
  br label %.lr.ph256

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.0153248 = phi i32 [ %.0153245317, %.lr.ph.preheader ], [ %.0153, %bb.h ] ; 3 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !57
  %i.aq = sext i32 %.0153248 to i64
  %i.ar = mul nsw i64 %i.t, %i.aq
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.au = tail call i32 %i.ap(ptr noundef %i.as, i64 noundef %i.s, ptr noundef %5, i32 noundef %.0153248, i32 noundef -13, ptr noundef %6, ptr noundef nonnull %i.at) #8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.not197 = icmp eq i32 %i.au, 0
  br i1 %.not197, label %bb.h, label %.loopexit231.loopexit273

bb.h:                                             ; preds = %.lr.ph
  %.pn = add nsw i32 %.0153248, 1
  %.0153 = srem i32 %.pn, %.val.val               ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader230, label %.lr.ph, !llvm.loop !105

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %bb.i
  %indvars.iv288 = phi i64 [ %i.an, %.lr.ph256.preheader ], [ %indvars.iv.next289, %bb.i ] ; 2 uses
  %.0149255 = phi i32 [ %.0149252, %.lr.ph256.preheader ], [ %.0149, %bb.i ] ; 3 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !109
  %i.aw = sext i32 %.0149255 to i64
  %i.ax = mul nsw i64 %i.m, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0138319, i64 %indvars.iv288
  %i.ba = tail call i32 %i.av(ptr noundef %i.ay, i64 noundef %i.l, ptr noundef %2, i32 noundef %.0149255, i32 noundef -13, i32 noundef 4, ptr noundef %6, ptr noundef %i.az) #8 ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %.not195 = icmp eq i32 %i.ba, 0
  br i1 %.not195, label %bb.i, label %.loopexit231.loopexit

bb.i:                                             ; preds = %.lr.ph256
  %.pn190 = add i32 %i.ab, %.0149255
  %.0149 = srem i32 %.pn190, %.val.val            ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge, label %.lr.ph256, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.i, %.preheader230
  %.0142.lcssa = phi i32 [ 0, %.preheader230 ], [ %i.ao, %bb.i ]
  %.1141.lcssa = phi i32 [ %.0145.lcssa, %.preheader230 ], [ %i.al, %bb.i ] ; 4 uses
  %.0149.lcssa = phi i32 [ %.0149252, %.preheader230 ], [ %.0149, %bb.i ]
  %i.bb = shl nsw i32 %i.ab, 1                    ; 2 uses
  %i.bc = icmp eq i32 %.1141.lcssa, %i.bb
  br i1 %i.bc, label %bb.j, label %.preheader228

.preheader228:                                    ; preds = %._crit_edge
  %i.bd = icmp sgt i32 %.val.val, 1
  br i1 %i.bd, label %.lr.ph266, label %ompi_coll_base_free_reqs.exit

.lr.ph266:                                        ; preds = %.preheader228
  %i.be = sext i32 %i.al to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !66
  %i.bg = zext nneg i32 %.1141.lcssa to i64
  %i.bh = tail call i32 %i.bf(i64 noundef %i.bg, ptr noundef %.0138319, ptr noundef null) #8 ; 2 uses
  %.not194 = icmp eq i32 %i.bh, 0
  br i1 %.not194, label %ompi_coll_base_free_reqs.exit, label %.loopexit231

bb.k:                                             ; preds = %.lr.ph266, %bb.s
  %.0265 = phi i32 [ 0, %.lr.ph266 ], [ %i.bn, %bb.s ]
  %.1143264 = phi i32 [ %.0142.lcssa, %.lr.ph266 ], [ %.3, %bb.s ] ; 5 uses
  %.1146263 = phi i32 [ %.0145.lcssa, %.lr.ph266 ], [ %.3148, %bb.s ] ; 5 uses
  %.1150262 = phi i32 [ %.0149.lcssa, %.lr.ph266 ], [ %.3152, %bb.s ] ; 6 uses
  %.1154261 = phi i32 [ %.0153.lcssa, %.lr.ph266 ], [ %.3156, %bb.s ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 40), align 8, !tbaa !110
  %i.bj = call i32 %i.bi(i64 noundef %i.be, ptr noundef %.0138319, ptr noundef nonnull %i.a, ptr noundef null) #8 ; 2 uses
  %.not191 = icmp eq i32 %i.bj, 0
  br i1 %.not191, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !53  ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0138319, i64 %i.bl ; 3 uses
  store ptr @ompi_request_null, ptr %i.bm, align 8, !tbaa !65
  %i.bn = add nuw nsw i32 %.0265, 1               ; 2 uses
  %i.bo = icmp slt i32 %i.bk, %i.ad
  br i1 %i.bo, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp slt i32 %.1146263, %i.ab
  br i1 %i.bp, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !57
  %i.br = sext i32 %.1154261 to i64
  %i.bs = mul nsw i64 %i.t, %i.br
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.bs
  %i.bu = call i32 %i.bq(ptr noundef %i.bt, i64 noundef %i.s, ptr noundef %5, i32 noundef %.1154261, i32 noundef -13, ptr noundef %6, ptr noundef nonnull %i.bm) #8 ; 2 uses
  %.not193 = icmp eq i32 %i.bu, 0
  br i1 %.not193, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bv = add nuw nsw i32 %.1146263, 1
  %i.bw = add nsw i32 %.1154261, 1
  %i.bx = srem i32 %i.bw, %.val.val
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.by = icmp slt i32 %.1143264, %i.ab
  br i1 %i.by, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !109
  %i.ca = sext i32 %.1150262 to i64
  %i.cb = mul nsw i64 %i.m, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %0, i64 %i.cb
  %i.cd = call i32 %i.bz(ptr noundef %i.cc, i64 noundef %i.l, ptr noundef %2, i32 noundef %.1150262, i32 noundef -13, i32 noundef 4, ptr noundef %6, ptr noundef nonnull %i.bm) #8 ; 2 uses
  %.not192 = icmp eq i32 %i.cd, 0
  br i1 %.not192, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ce = add nsw i32 %.1143264, 1
  %i.cf = add i32 %i.ab, %.1150262
  %i.cg = srem i32 %i.cf, %.val.val
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.r, %bb.p
  %.3156 = phi i32 [ %.1154261, %bb.m ], [ %.1154261, %bb.r ], [ %.1154261, %bb.p ], [ %i.bx, %bb.o ]
  %.3152 = phi i32 [ %.1150262, %bb.m ], [ %i.cg, %bb.r ], [ %.1150262, %bb.p ], [ %.1150262, %bb.o ]
  %.3148 = phi i32 [ %.1146263, %bb.m ], [ %.1146263, %bb.r ], [ %.1146263, %bb.p ], [ %i.bv, %bb.o ]
  %.3 = phi i32 [ %.1143264, %bb.m ], [ %i.ce, %bb.r ], [ %.1143264, %bb.p ], [ %.1143264, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %exitcond293.not = icmp eq i32 %i.bn, %smax
  br i1 %exitcond293.not, label %ompi_coll_base_free_reqs.exit, label %bb.k, !llvm.loop !107

bb.t:                                             ; preds = %bb.n, %bb.k, %bb.q
  %.4161.ph = phi i32 [ %i.cd, %bb.q ], [ %i.bj, %bb.k ], [ %i.bu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit231

.loopexit231.loopexit:                            ; preds = %.lr.ph256
  %i.ch = trunc nuw i64 %indvars.iv.next289 to i32
  br label %.loopexit231

.loopexit231.loopexit273:                         ; preds = %.lr.ph
  %i.ci = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit231

.loopexit231:                                     ; preds = %.loopexit231.loopexit273, %.loopexit231.loopexit, %bb.t, %bb.j
  %.0138320 = phi ptr [ %.0138319, %bb.t ], [ %.0138319, %bb.j ], [ %.0138319, %.loopexit231.loopexit ], [ %i.ai, %.loopexit231.loopexit273 ] ; 3 uses
  %.6 = phi i32 [ %.4161.ph, %bb.t ], [ %i.bh, %bb.j ], [ %i.ba, %.loopexit231.loopexit ], [ %i.au, %.loopexit231.loopexit273 ] ; 2 uses
  %.2 = phi i32 [ %.1141.lcssa, %bb.t ], [ %.1141.lcssa, %bb.j ], [ %i.ch, %.loopexit231.loopexit ], [ %i.ci, %.loopexit231.loopexit273 ] ; 4 uses
  %i.cj = icmp eq i32 %.6, 18
  br i1 %i.cj, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit231
  %i.ck = icmp sgt i32 %.2, 0
  br i1 %i.ck, label %.lr.ph268.preheader, label %ompi_coll_base_free_reqs.exit

.lr.ph268.preheader:                              ; preds = %.preheader
  %wide.trip.count297 = zext nneg i32 %.2 to i64
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %bb.v
end_hunk_0
begin_hunk_1_@ompi_coll_base_alltoall_intra_basic_linear:bb.a
  %.val.val = load i32, ptr %i.f, align 8, !tbaa !43 ; 7 uses
  %i.g = getelementptr i8, ptr %6, i64 220
  %.val122 = load i32, ptr %i.g, align 4, !tbaa !44 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !52
  %i.l = sub nsw i64 %i.k, %i.i
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %i.n = mul nsw i64 %i.l, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !52
  %i.s = sub nsw i64 %i.r, %i.p
  %i.t = sext i32 %4 to i64                       ; 2 uses
  %i.u = mul nsw i64 %i.s, %i.t                   ; 2 uses
  %i.v = sext i32 %.val122 to i64                 ; 2 uses
  %i.w = mul nsw i64 %i.n, %i.v
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = mul nsw i64 %i.u, %i.v
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.x, i32 noundef %1, ptr noundef %2, ptr noundef %i.z, i32 noundef %4, ptr noundef %5) #8 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %ompi_coll_base_free_reqs.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %.val.val, 1
  br i1 %i.ab, label %ompi_coll_base_free_reqs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = shl i32 %.val.val, 1
  %i.ad = add i32 %i.ac, -2
  %i.ae = tail call ptr @ompi_coll_base_comm_get_reqs(ptr noundef %i.b, i32 noundef %i.ad) #8 ; 7 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %ompi_coll_base_free_reqs.exit, label %.preheader137

.preheader137:                                    ; preds = %bb.e
  %.pn145 = add nsw i32 %.val122, 1
  %.097146 = srem i32 %.pn145, %.val.val          ; 2 uses
  %.not114147 = icmp eq i32 %.097146, %.val122
  br i1 %.not114147, label %.preheader135, label %.lr.ph

.preheader135:                                    ; preds = %bb.f, %.preheader137
  %.094.lcssa = phi i32 [ 0, %.preheader137 ], [ %i.ag, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.ae, %.preheader137 ], [ %i.am, %bb.f ]
  %.pn115.in = add i32 %.val.val, -1              ; 2 uses
  %.pn115152 = add i32 %.pn115.in, %.val122
  %.198153 = srem i32 %.pn115152, %.val.val       ; 2 uses
  %.not116154 = icmp eq i32 %.198153, %.val122
  br i1 %.not116154, label %._crit_edge, label %.lr.ph158

.lr.ph:                                           ; preds = %.preheader137, %bb.f
  %.097150 = phi i32 [ %.097, %bb.f ], [ %.097146, %.preheader137 ] ; 3 uses
  %.0149 = phi ptr [ %i.am, %bb.f ], [ %i.ae, %.preheader137 ] ; 2 uses
  %.094148 = phi i32 [ %i.ag, %bb.f ], [ 0, %.preheader137 ]
  %i.ag = add nuw nsw i32 %.094148, 1             ; 3 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 56), align 8, !tbaa !115
  %i.ai = sext i32 %.097150 to i64
  %i.aj = mul nsw i64 %i.u, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.aj
  %i.al = tail call i32 %i.ah(ptr noundef %i.ak, i64 noundef %i.t, ptr noundef %5, i32 noundef %.097150, i32 noundef -13, ptr noundef %6, ptr noundef nonnull %.0149) #8 ; 2 uses
  %.not120 = icmp eq i32 %i.al, 0
  br i1 %.not120, label %bb.f, label %.loopexit136

bb.f:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.0149, i64 8 ; 2 uses
  %.pn = add nsw i32 %.097150, 1
  %.097 = srem i32 %.pn, %.val.val                ; 2 uses
  %.not114 = icmp eq i32 %.097, %.val122
  br i1 %.not114, label %.preheader135, label %.lr.ph, !llvm.loop !112

bb.g:                                             ; preds = %.lr.ph158
  %i.an = getelementptr inbounds nuw i8, ptr %.093156, i64 8
  %.pn115 = add i32 %.pn115.in, %.198157
  %.198 = srem i32 %.pn115, %.val.val             ; 2 uses
  %.not116 = icmp eq i32 %.198, %.val122
  br i1 %.not116, label %._crit_edge, label %.lr.ph158, !llvm.loop !113

.lr.ph158:                                        ; preds = %.preheader135, %bb.g
  %.198157 = phi i32 [ %.198, %bb.g ], [ %.198153, %.preheader135 ] ; 3 uses
  %.093156 = phi ptr [ %i.an, %bb.g ], [ %.0.lcssa, %.preheader135 ] ; 2 uses
  %.1155 = phi i32 [ %i.ao, %bb.g ], [ %.094.lcssa, %.preheader135 ]
  %i.ao = add nuw nsw i32 %.1155, 1               ; 3 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 80), align 8, !tbaa !116
  %i.aq = sext i32 %.198157 to i64
  %i.ar = mul nsw i64 %i.n, %i.aq
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = tail call i32 %i.ap(ptr noundef %i.as, i64 noundef %i.m, ptr noundef %2, i32 noundef %.198157, i32 noundef -13, i32 noundef 4, ptr noundef %6, ptr noundef nonnull %.093156) #8 ; 2 uses
  %.not118 = icmp eq i32 %i.at, 0
  br i1 %.not118, label %bb.g, label %.loopexit136

._crit_edge:                                      ; preds = %bb.g, %.preheader135
  %.1.lcssa = phi i32 [ %.094.lcssa, %.preheader135 ], [ %i.ao, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 120), align 8, !tbaa !117
  %i.av = zext nneg i32 %.1.lcssa to i64          ; 2 uses
  %i.aw = tail call i32 %i.au(i64 noundef %i.av, ptr noundef nonnull %i.ae) #8 ; 0 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !66
  %i.ay = tail call i32 %i.ax(i64 noundef %i.av, ptr noundef nonnull %i.ae, ptr noundef null) #8
  br label %.loopexit136

.loopexit136:                                     ; preds = %.lr.ph, %.lr.ph158, %._crit_edge
  %.095 = phi i32 [ %i.ay, %._crit_edge ], [ %i.at, %.lr.ph158 ], [ %i.al, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.ao, %.lr.ph158 ], [ %i.ag, %.lr.ph ] ; 4 uses
  %i.az = icmp eq i32 %.095, 18
  br i1 %i.az, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit136
  %i.ba = icmp sgt i32 %.2, 0
  br i1 %i.ba, label %.lr.ph161.preheader, label %ompi_coll_base_free_reqs.exit

.lr.ph161.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.2 to i64
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, @ompi_request_null
  br i1 %i.bd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph161
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !71 ; 2 uses
  switch i32 %i.bf, label %.loopexit [
    i32 19, label %bb.i
    i32 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %.lr.ph161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph161, !llvm.loop !114

.loopexit:                                        ; preds = %bb.i, %bb.h, %.loopexit136
  %.196 = phi i32 [ %.095, %.loopexit136 ], [ %i.bf, %bb.h ], [ 18, %bb.i ] ; 2 uses
  %i.bg = icmp sgt i32 %.2, 0
  br i1 %i.bg, label %.lr.ph.preheader.i, label %ompi_coll_base_free_reqs.exit, !prof !118

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %wide.trip.count.i = zext nneg i32 %.2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !65 ; 5 uses
  %.not.i = icmp eq ptr %i.bi, @ompi_request_null
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !71
  %.off.i = add i32 %i.bk, -75
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %ompi_request_cancel.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %i.bi, i32 noundef 1) #8, !inline_history !0 ; 0 uses
  br label %ompi_request_cancel.exit.i

ompi_request_cancel.exit.i:                       ; preds = %bb.l, %bb.k
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !59
  %i.bp = tail call i32 %i.bo(ptr noundef nonnull %i.bh, ptr noundef null) #8, !inline_history !1 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !73
  %i.bs = tail call i32 %i.br(ptr noundef nonnull %i.bh) #8, !inline_history !2 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ompi_request_cancel.exit.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_coll_base_free_reqs.exit, label %.lr.ph.i, !llvm.loop !3

ompi_coll_base_free_reqs.exit:                    ; preds = %bb.n, %.preheader, %bb.e, %.loopexit, %bb.d, %bb.c, %bb.b
  %.0100 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.d ], [ %i.aa, %bb.c ], [ -2, %bb.e ], [ %.196, %.loopexit ], [ 18, %.preheader ], [ %.196, %bb.n ]
  ret i32 %.0100
}

declare ptr @ompi_proc_for_name(i64) local_unnamed_addr #3

declare i32 @ompi_coll_base_sendrecv_actual(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @opal_datatype_add(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @opal_datatype_commit(ptr noundef) local_unnamed_addr #3

declare i32 @opal_datatype_copy_content_same_ddt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !60}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!15 = !{!"opal_object_t", !14, i64 0, !9, i64 8}
!16 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!17 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!18 = !{!"opal_hash_table_t", !15, i64 0, !16, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !17, i64 64}
!19 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!20 = !{!"opal_infosubscriber_t", !15, i64 0, !18, i64 16, !19, i64 88}
!21 = !{!"opal_mutex_t", !15, i64 0, !8, i64 16, !9, i64 56}
!22 = !{!"p1 omnipotent char", !13, i64 0}
!23 = !{!"ompi_comm_extended_cid_t", !12, i64 0, !8, i64 8}
!24 = !{!"ompi_comm_extended_cid_block_t", !23, i64 0, !12, i64 16, !8, i64 24, !8, i64 25}
!25 = !{!"p1 int", !13, i64 0}
!26 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!27 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!28 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!29 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!30 = !{!"any p2 pointer", !13, i64 0}
!31 = !{!"p2 _ZTS20ompi_peruse_handle_t", !30, i64 0}
!32 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!33 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!34 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!35 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!36 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!37 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!38 = !{!"_Bool", !8, i64 0}
!39 = !{!"ompi_communicator_t", !20, i64 0, !21, i64 96, !22, i64 160, !23, i64 168, !24, i64 184, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !25, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !26, i64 264, !26, i64 272, !27, i64 280, !28, i64 288, !29, i64 296, !31, i64 304, !32, i64 312, !9, i64 320, !33, i64 328, !34, i64 336, !35, i64 344, !36, i64 352, !37, i64 360, !9, i64 368, !9, i64 372, !38, i64 376, !38, i64 377, !38, i64 378}
!40 = !{!39, !26, i64 264}
!41 = !{!"p2 _ZTS11ompi_proc_t", !30, i64 0}
!42 = !{!"ompi_group_t", !15, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !41, i64 32, !9, i64 40, !26, i64 48, !8, i64 56, !36, i64 72}
!43 = !{!42, !9, i64 16}
!44 = !{!39, !9, i64 220}
!45 = !{!"short", !8, i64 0}
!46 = !{!"p1 _ZTS12dt_elem_desc", !13, i64 0}
!47 = !{!"dt_type_desc_t", !12, i64 0, !12, i64 8, !46, i64 16}
!48 = !{!"p1 long", !13, i64 0}
!49 = !{!"opal_datatype_t", !15, i64 0, !45, i64 16, !45, i64 18, !9, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !9, i64 72, !9, i64 76, !8, i64 80, !47, i64 144, !47, i64 168, !48, i64 192}
!50 = !{!49, !12, i64 24}
!51 = !{!49, !12, i64 48}
!52 = !{!49, !12, i64 56}
!53 = !{!9, !9, i64 0}
!54 = !{!"p1 _ZTS16opal_list_item_t", !13, i64 0}
!55 = !{!"opal_list_item_t", !15, i64 0, !54, i64 16, !54, i64 24, !9, i64 32}
!56 = !{!"mca_pml_base_module_2_1_0_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !13, i64 184}
!57 = !{!56, !13, i64 64}
!58 = !{!"ompi_request_fns_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!59 = !{!58, !13, i64 32}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"p1 _ZTS20mca_coll_base_comm_t", !13, i64 0}
!62 = !{!"mca_coll_base_module_2_4_0_t", !15, i64 0, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !61, i64 592}
!63 = !{!62, !61, i64 592}
!64 = !{!"p1 _ZTS14ompi_request_t", !13, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!58, !13, i64 48}
!67 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !13, i64 0}
!68 = !{!"opal_free_list_item_t", !55, i64 0, !67, i64 40, !13, i64 48}
!69 = !{!"ompi_status_public_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16}
!70 = !{!"ompi_request_t", !68, i64 0, !9, i64 56, !69, i64 64, !13, i64 88, !9, i64 96, !38, i64 100, !9, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !8, i64 152}
!71 = !{!70, !9, i64 72}
!72 = !{!70, !13, i64 128}
!73 = !{!70, !13, i64 120}
!74 = distinct !{!74, !60}
!75 = !{!12, !12, i64 0}
!76 = !{!"iovec", !13, i64 0, !12, i64 8}
!77 = !{!76, !13, i64 0}
!78 = !{!76, !12, i64 8}
!79 = !{!39, !26, i64 272}
!80 = !{!42, !41, i64 32}
!81 = !{!"p1 _ZTS11ompi_proc_t", !13, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!84 = !{!38, !38, i64 0}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!"", !9, i64 0, !9, i64 4}
!88 = !{!"p1 _ZTS16opal_convertor_t", !13, i64 0}
!89 = !{!"opal_proc_t", !55, i64 0, !87, i64 40, !9, i64 48, !45, i64 52, !88, i64 56}
!90 = !{!"ompi_proc_t", !89, i64 0, !38, i64 64, !8, i64 72, !8, i64 80}
!91 = !{!90, !88, i64 56}
!92 = !{!56, !13, i64 96}
!93 = distinct !{!93, !60}
!94 = distinct !{!94, !60}
!95 = distinct !{!95, !60}
!96 = distinct !{!96, !60}
!97 = distinct !{!97, !60}
!98 = !{!"branch_weights", i32 2002, i32 2000}
!99 = !{!49, !12, i64 32}
!100 = !{!49, !12, i64 40}
!101 = !{!"ompi_datatype_t", !49, i64 0, !9, i64 200, !9, i64 204, !28, i64 208, !13, i64 216, !12, i64 224, !12, i64 232, !8, i64 240}
!102 = !{!101, !12, i64 152}
!103 = !{!"p1 _ZTS15ompi_datatype_t", !13, i64 0}
!104 = !{!103, !103, i64 0}
!105 = distinct !{!105, !60}
!106 = distinct !{!106, !60}
!107 = distinct !{!107, !60}
!108 = distinct !{!108, !60}
!109 = !{!56, !13, i64 88}
!110 = !{!58, !13, i64 40}
!111 = !{!"branch_weights", i32 1770786305, i32 376697343}
!112 = distinct !{!112, !60}
!113 = distinct !{!113, !60}
!114 = distinct !{!114, !60}
!115 = !{!56, !13, i64 56}
!116 = !{!56, !13, i64 80}
!117 = !{!56, !13, i64 120}
!118 = !{!"branch_weights", i32 2113388744, i32 34094904}
end_hunk_1
