Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/ogg_decoder_aspect?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0_@FLAC__ogg_decoder_aspect_reset:bb.a
  %i.b = tail call i32 @ogg_stream_reset(ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = tail call i32 @ogg_sync_reset(ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 0, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 0, ptr %i.h, align 4, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 0, ptr %i.i, align 8, !tbaa !36
  %i.j = load i32, ptr %0, align 8, !tbaa !24
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.m, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 1, ptr %i.n, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %i.o, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define hidden void @FLAC__ogg_decoder_aspect_next_link(ptr nofree noundef captures(none) initializes((468, 476), (480, 484)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 1, ptr %i.e, align 4, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %i.f, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @FLAC__ogg_decoder_aspect_set_decode_chained_stream(ptr nofree noundef writeonly captures(none) initializes((484, 488)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 %1, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @FLAC__ogg_decoder_aspect_get_decode_chained_stream(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @FLAC__ogg_decoder_aspect_get_target_link(ptr nofree noundef captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.034 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.d ]
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 3 uses
  %i.h = add i64 %i.g, %.034                      ; 2 uses
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.m = load <2 x i64>, ptr %i.e, align 8, !tbaa !41
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !41
  %i.n = sub i64 %i.i, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 %i.n, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.q, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i64 %i.g, ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %i.k, ptr %i.t, align 8, !tbaa !58
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !54

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.028 = phi ptr [ %i.l, %bb.c ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.028
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @FLAC__ogg_decoder_aspect_set_seek_parameters(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.d, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %i.d, ptr %i.f, align 8, !tbaa !36
  %i.g = load i64, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = trunc i64 %i.g to i32
  %i.k = tail call i32 @ogg_stream_reset_serialno(ptr noundef nonnull %i.i, i32 noundef %i.j) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i32 %.sink, ptr %i.l, align 4, !tbaa !43
  ret void
}

declare i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 9) i32 @FLAC__ogg_decoder_aspect_read_callback_wrapper(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !41     ; 4 uses
  store i64 0, ptr %2, align 8, !tbaa !41
  %.not176 = icmp eq i64 %i.c, 0
  br i1 %.not176, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.not147 = icmp eq ptr %4, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i8, ptr @FLAC__OGG_MAPPING_FIRST_HEADER_PACKET_TYPE, align 1
  %i.x = load ptr, ptr @FLAC__OGG_MAPPING_MAGIC, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %check_size_of_link_allocation_.exit.thread156
  %.0119173 = phi ptr [ %1, %.lr.ph ], [ %.3122, %check_size_of_link_allocation_.exit.thread156 ] ; 10 uses
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %.pr, %check_size_of_link_allocation_.exit.thread156 ] ; 3 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !27
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %.pre = load i32, ptr %i.f, align 8, !tbaa !28
  %.not136 = icmp eq i32 %.pre, 0
  br i1 %.not136, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not149 = icmp eq i64 %i.ac, 0
  %. = select i1 %.not149, i32 2, i32 0
  br label %check_size_of_link_allocation_.exit

bb.e:                                             ; preds = %bb.c
  %7 = load i32, ptr %i.e, align 8, !tbaa !29
  %.not134 = icmp eq i32 %7, 0
  br i1 %.not134, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !44
  %.not139 = icmp eq i32 %i.ae, 0
  br i1 %.not139, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub nuw i64 %i.c, %i.ac                 ; 6 uses
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !62  ; 4 uses
  %.not142 = icmp ugt i64 %i.ag, %i.af
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  br i1 %.not142, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0119173, ptr noundef nonnull align 1 %i.ah, i64 noundef %i.ag, i1 noundef false) #14
  %i.ai = load i64, ptr %2, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %2, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %.0119173, i64 %i.ag ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !44
  %i.al = load i64, ptr %i.j, align 8, !tbaa !64
  %.not143 = icmp eq i64 %i.al, 0
  br i1 %.not143, label %check_size_of_link_allocation_.exit.thread156, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.k, align 4, !tbaa !25
  %.not144 = icmp eq i32 %i.am, 0
  br i1 %.not144, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.d, align 4, !tbaa !27
  br label %check_size_of_link_allocation_.exit.thread156

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %i.e, align 8, !tbaa !29
  %i.an = load i32, ptr %i.l, align 4, !tbaa !35  ; 3 uses
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.m, align 8, !tbaa !36
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !31  ; 3 uses
  %.not.i = icmp ult i32 %i.an, %i.ap
  %.not16.i = icmp ult i32 %i.ao, %i.ap
  %or.cond = and i1 %.not.i, %.not16.i
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ar = shl i32 %i.ap, 1
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, 56
  %i.au = call noalias noundef ptr @realloc(ptr noundef %i.aq, i64 noundef %i.at) #15 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %check_size_of_link_allocation_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  store ptr %i.au, ptr %i.o, align 8, !tbaa !30
  %i.aw = load i32, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %i.ax
  %i.az = mul nuw nsw i64 %i.ax, 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ay, i8 noundef 0, i64 noundef range(i64 0, 240518168521) %i.az, i1 noundef false) #14
  %i.ba = shl i32 %i.aw, 1
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !31
  %.pre181 = load i32, ptr %i.l, align 4, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %.thread.i
  %i.bb = phi i32 [ %i.an, %bb.k ], [ %.pre181, %.thread.i ] ; 2 uses
  %i.bc = load i32, ptr %i.p, align 4, !tbaa !39
  %.not146 = icmp ult i32 %i.bb, %i.bc
  br i1 %.not146, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bd = load i64, ptr %i.q, align 8, !tbaa !65
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.bf = zext i32 %i.bb to i64
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !40
  br i1 %.not147, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = call i32 %4(ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef %6) #14
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !41
  %i.bl = load i32, ptr %i.r, align 4, !tbaa !45
  %i.bm = sext i32 %i.bl to i64
  %i.bn = sub i64 %i.bk, %i.bm
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !46
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add i64 %i.bn, %i.bp
  %i.br = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !35
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.bq, ptr %i.bv, align 8, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bw = load i32, ptr %i.p, align 4, !tbaa !39
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.p, align 4, !tbaa !39
  store i32 1, ptr %i.t, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %i.by = load i32, ptr %i.u, align 4, !tbaa !43
  %.not148 = icmp eq i32 %i.by, 0
  br i1 %.not148, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.t, align 8, !tbaa !26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i32 0, ptr %i.f, align 8, !tbaa !28
  br label %check_size_of_link_allocation_.exit.thread156

bb.u:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0119173, ptr noundef nonnull align 1 %i.ah, i64 noundef %i.af, i1 noundef false) #14
  %i.bz = load i64, ptr %2, align 8, !tbaa !41
  %i.ca = add i64 %i.bz, %i.af
  store i64 %i.ca, ptr %2, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %.0119173, i64 %i.af
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.af
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !63
  %i.ce = load i64, ptr %i.i, align 8, !tbaa !62
  %i.cf = sub i64 %i.ce, %i.af
  store i64 %i.cf, ptr %i.i, align 8, !tbaa !62
  br label %check_size_of_link_allocation_.exit.thread156

bb.v:                                             ; preds = %bb.f
  %i.cg = call i32 @ogg_stream_packetout(ptr noundef nonnull %i.v, ptr noundef nonnull %i.h) #14 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.g, align 8, !tbaa !44
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !62  ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %bb.x, label %check_size_of_link_allocation_.exit.thread156

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !63  ; 5 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !47
  %i.cm = icmp eq i8 %i.cl, %i.w
  br i1 %i.cm, label %bb.y, label %check_size_of_link_allocation_.exit.thread156

bb.y:                                             ; preds = %bb.x
  %i.cn = icmp samesign ult i64 %i.ci, 9
  br i1 %i.cn, label %check_size_of_link_allocation_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = load i32, ptr %i.x, align 1
  %i.cr = icmp ne i32 %i.cp, %i.cq
  %i.cs = zext i1 %i.cr to i32
  %.not140 = icmp eq i32 %i.cs, 0
  br i1 %.not140, label %bb.aa, label %check_size_of_link_allocation_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 5
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !47  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  store i32 %i.cv, ptr %i.y, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !47
  %i.cy = zext i8 %i.cx to i32
  store i32 %i.cy, ptr %i.z, align 4, !tbaa !23
  %.not141 = icmp eq i8 %i.cu, 1
  br i1 %.not141, label %bb.ab, label %check_size_of_link_allocation_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  store ptr %i.cz, ptr %i.h, align 8, !tbaa !63
  %i.da = add nsw i64 %i.ci, -9
  store i64 %i.da, ptr %i.i, align 8, !tbaa !62
  br label %check_size_of_link_allocation_.exit.thread156

bb.ac:                                            ; preds = %bb.v
  %i.db = icmp eq i32 %i.cg, 0
  br i1 %i.db, label %bb.ad, label %check_size_of_link_allocation_.exit

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.f, align 8, !tbaa !28
  br label %check_size_of_link_allocation_.exit.thread156

.thread:                                          ; preds = %bb.c
  %i.dc = call i32 @ogg_sync_pageout(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) #14 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.thread
  %i.de = call fastcc i32 @process_page_(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 2 uses
  %.not138 = icmp eq i32 %i.de, 0
  br i1 %.not138, label %check_size_of_link_allocation_.exit.thread156, label %check_size_of_link_allocation_.exit

bb.af:                                            ; preds = %.thread
  %i.df = icmp eq i32 %i.dc, 0
  br i1 %i.df, label %bb.ag, label %check_size_of_link_allocation_.exit

bb.ag:                                            ; preds = %bb.af
  %i.dg = load i64, ptr %2, align 8, !tbaa !41
  %i.dh = sub i64 %i.c, %i.dg
  %i.di = call i64 @llvm.umax.i64(i64 %i.dh, i64 8192) ; 2 uses
  %i.dj = call ptr @ogg_sync_buffer(ptr noundef nonnull %i.aa, i64 noundef %i.di) #14 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %check_size_of_link_allocation_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.di, ptr %i.a, align 8, !tbaa !41
  %i.dl = call i32 %3(ptr noundef %5, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.a, ptr noundef %6) #14, !inline_history !0
  switch i32 %i.dl, label %bb.aj [
    i32 6, label %.thread.i152
    i32 1, label %bb.ai
  ]

.thread.i152:                                     ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %check_size_of_link_allocation_.exit

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %i.d, align 4, !tbaa !27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !41
  %i.dn = call i32 @ogg_sync_wrote(ptr noundef nonnull %i.aa, i64 noundef %i.dm) #14
  %.fr.i = freeze i32 %i.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.inv.i = icmp slt i32 %.fr.i, 0
  br i1 %.inv.i, label %check_size_of_link_allocation_.exit, label %check_size_of_link_allocation_.exit.thread156

check_size_of_link_allocation_.exit.thread156:    ; preds = %bb.aj, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.ad, %bb.j, %bb.t, %bb.h, %bb.u
  %.3122 = phi ptr [ %.0119173, %bb.ab ], [ %i.cb, %bb.u ], [ %.0119173, %bb.ae ], [ %i.ak, %bb.h ], [ %i.ak, %bb.j ], [ %i.ak, %bb.t ], [ %.0119173, %bb.ad ], [ %.0119173, %bb.w ], [ %.0119173, %bb.x ], [ %.0119173, %bb.aj ]
  %.pr = load i64, ptr %2, align 8, !tbaa !41     ; 3 uses
  %i.do = icmp ult i64 %.pr, %i.c
  br i1 %i.do, label %bb.b, label %.critedge.loopexit, !llvm.loop !61

.critedge.loopexit:                               ; preds = %check_size_of_link_allocation_.exit.thread156, %bb.b
  %.lcssa.ph = phi i64 [ %i.ac, %bb.b ], [ %.pr, %check_size_of_link_allocation_.exit.thread156 ]
  %i.dp = icmp eq i64 %.lcssa.ph, 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.dp, %.critedge.loopexit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !27
  %.not133 = icmp ne i32 %i.dr, 0
  %or.cond169 = and i1 %.lcssa, %.not133
  br i1 %or.cond169, label %bb.ak, label %check_size_of_link_allocation_.exit

bb.ak:                                            ; preds = %.critedge
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !35
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [56 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store i32 1, ptr %i.dy, align 8, !tbaa !48
  br label %check_size_of_link_allocation_.exit

check_size_of_link_allocation_.exit:              ; preds = %bb.aj, %bb.ag, %bb.ae, %bb.af, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.l, %.thread.i152, %.critedge, %bb.d, %bb.ak
  %.10 = phi i32 [ %., %bb.d ], [ 1, %bb.ak ], [ 0, %.critedge ], [ 6, %.thread.i152 ], [ 8, %bb.ag ], [ %i.de, %bb.ae ], [ 3, %bb.af ], [ 4, %bb.y ], [ 5, %bb.aa ], [ 3, %bb.ac ], [ 7, %bb.aj ], [ 4, %bb.z ], [ 8, %bb.l ]
  ret i32 %.10
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @check_size_of_link_allocation_(ptr nofree noundef captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36
  %.not16 = icmp ult i32 %i.f, %i.d
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = shl i32 %i.d, 1
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 56
  %i.l = tail call noalias noundef ptr @realloc(ptr noundef %i.h, i64 noundef %i.k) #15 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !tbaa !30
  %i.n = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.o
  %i.q = mul nuw nsw i64 %i.o, 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.p, i8 noundef 0, i64 noundef range(i64 0, 240518168521) %i.q, i1 noundef false) #14
  %i.r = shl i32 %i.n, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 1, %.thread ], [ 1, %bb.b ]
  ret i32 %.1
}

declare i32 @ogg_stream_packetout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ogg_sync_pageout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 9) i32 @process_page_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp sgt i64 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47
  %i.k = load i8, ptr @FLAC__OGG_MAPPING_FIRST_HEADER_PACKET_TYPE, align 1, !tbaa !47
  %i.l = icmp eq i8 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @FLAC__OGG_MAPPING_MAGIC, align 8, !tbaa !67
  %i.n = load i32, ptr %i.e, align 1
  %i.o = load i32, ptr %i.m, align 1
  %i.p = icmp ne i32 %i.n, %i.o
  %i.q = zext i1 %i.p to i32
  %.not58 = icmp eq i32 %i.q, 0
  br i1 %.not58, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 1, ptr %i.r, align 8, !tbaa !38
  %i.s = tail call i32 @ogg_page_serialno(ptr noundef nonnull %i.d) #14 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = tail call i32 @ogg_stream_reset_serialno(ptr noundef nonnull %i.v, i32 noundef %i.s) #14 ; 0 uses
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !68
  %.not59 = icmp ult i32 %i.y, %i.aa
  br i1 %.not59, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ab = add i32 %i.y, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !68
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.af = zext i32 %i.y to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.af
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !50
  %.not60 = icmp eq ptr %1, null
  br i1 %.not60, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3) #14
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.am = sext i32 %i.al to i64
end_hunk_0
