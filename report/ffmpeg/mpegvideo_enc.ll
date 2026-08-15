inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 123
begin_hunk_0_@encode_thread:bb.a
  %.str.144.sink = phi ptr [ @.str.144, %bb.l ], [ @.str.145, %bb.o ], [ @.str.145, %bb.n ]
  %i.bdf = load ptr, ptr %i.cr, align 8, !tbaa !57
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdf, i32 noundef 16, ptr noundef nonnull %.str.144.sink) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.et

.critedge853:                                     ; preds = %.critedge851, %bb.e
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.i, i64 3784
  %i.bdh = load i32, ptr %i.bdg, align 8, !tbaa !181
  %i.bdi = add i32 %i.bdh, -1
  %or.cond854 = icmp ult i32 %i.bdi, 3
  br i1 %or.cond854, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %.critedge853
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.i, i64 1280
  %i.bdk = load i32, ptr %i.bdj, align 16, !tbaa !341
  %i.bdl = icmp eq i32 %i.bdk, 1
  br i1 %i.bdl, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void @ff_msmpeg4_encode_ext_header(ptr noundef nonnull %i.i) #14
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %.critedge853
  call fastcc void @write_slice_end(ptr noundef nonnull %i.i)
  br label %bb.et

bb.et:                                            ; preds = %bb.ep, %bb.es
  %.5 = phi i32 [ 0, %bb.es ], [ -1, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.5
}

declare float @ff_rate_estimate_qscale(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @ff_clean_mpeg4_qscales(ptr noundef) local_unnamed_addr #0

declare void @ff_clean_h263_qscales(ptr noundef) local_unnamed_addr #0

declare i32 @ff_pre_estimate_p_frame_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @ff_init_block_index(ptr noundef) local_unnamed_addr #0

declare void @ff_estimate_b_frame_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @ff_estimate_p_frame_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @ff_mpeg4_init_partitions(ptr noundef) local_unnamed_addr #0

declare void @ff_speedhq_end_slice(ptr noundef) local_unnamed_addr #0

declare void @ff_set_qscale(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @ff_h261_reorder_mb_index(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @write_slice_end(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i32, ptr %i.a, align 16, !tbaa !135
  %i.c = icmp eq i32 %i.b, 12
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6444
  %i.e = load i32, ptr %i.d, align 4, !tbaa !384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ff_mpeg4_merge_partitions(ptr noundef nonnull %0) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4384
  tail call void @ff_mpeg4_stuffing(ptr noundef nonnull %i.f) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98
  switch i32 %i.h, label %bb.h [
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @ff_mjpeg_encode_stuffing(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @ff_speedhq_end_slice(ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59   ; 2 uses
  %i.m = icmp slt i32 %i.l, 32
  br i1 %i.m, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.n = load i32, ptr %i.j, align 16, !tbaa !58
  %i.o = shl i32 %i.n, %i.l                       ; 2 uses
  store i32 %i.o, ptr %i.j, align 16, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4408
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %i.r = phi i32 [ %i.z, %bb.k ], [ %i.o, %.lr.ph.i ]
  %i.s = load ptr, ptr %i.p, align 16, !tbaa !61  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef 160) #14
  tail call void @abort() #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.v = lshr i32 %i.r, 24
  %i.w = trunc nuw i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.x, ptr %i.p, align 16, !tbaa !61
  store i8 %i.w, ptr %i.s, align 1, !tbaa !47
  %i.y = load i32, ptr %i.j, align 16, !tbaa !58
  %i.z = shl i32 %i.y, 8                          ; 2 uses
  store i32 %i.z, ptr %i.j, align 16, !tbaa !58
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !59  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 8
  store i32 %i.ab, ptr %i.k, align 4, !tbaa !59
  %i.ac = icmp slt i32 %i.aa, 24
  br i1 %i.ac, label %bb.i, label %flush_put_bits.exit, !llvm.loop !395

flush_put_bits.exit:                              ; preds = %bb.k, %bb.h
  store i32 32, ptr %i.k, align 4, !tbaa !59
  store i32 0, ptr %i.j, align 16, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !137
  %i.ah = and i32 %i.ag, 512
  %.not13 = icmp eq i32 %i.ah, 0
  br i1 %.not13, label %bb.n, label %bb.l

bb.l:                                             ; preds = %flush_put_bits.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6444
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !384
  %.not14 = icmp eq i32 %i.aj, 0
  br i1 %.not14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !353
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %.tr.i.i = trunc i64 %i.aq to i32
  %i.ar = shl i32 %.tr.i.i, 3                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.at = load i32, ptr %i.as, align 16, !tbaa !381
  store i32 %i.ar, ptr %i.as, align 16, !tbaa !381
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !388
  %i.aw = sub i32 %i.av, %i.at
  %i.ax = add i32 %i.aw, %i.ar
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !388
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %flush_put_bits.exit
  ret void
}

declare void @ff_mpeg4_encode_video_packet_header(ptr noundef) local_unnamed_addr #0

declare void @ff_mpeg4_clean_buffers(ptr noundef) local_unnamed_addr #0

declare void @ff_h263_mpeg4_reset_dc(ptr noundef) local_unnamed_addr #0

declare void @ff_mpeg1_encode_slice_header(ptr noundef) local_unnamed_addr #0

declare void @ff_h263_encode_gob_header(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_mb_hq(ptr noundef initializes((1200, 1204), (1272, 1276), (2816, 2848), (4436, 4440), (6332, 6372), (6528, 6532)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, i32 noundef %8, i32 noundef %9) unnamed_addr #1 {
bb.a:
  %10 = alloca [3 x ptr], align 16                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !489
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6356 ; 2 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !453
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6360 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !49
  store i32 %i.h, ptr %i.g, align 4, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6364 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 2 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6332 ; 2 uses
  %i.q = load <4 x i32>, ptr %i.o, align 8, !tbaa !49
  store <4 x i32> %i.q, ptr %i.p, align 4, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !462
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !388
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6352
  store i32 0, ptr %i.u, align 16, !tbaa !381
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  store i32 0, ptr %i.v, align 16, !tbaa !408
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !467
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !468
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4436
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !461
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !470
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6528 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 16, !tbaa !469
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6784
  %i.ag = load i32, ptr %7, align 4, !tbaa !49
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [1536 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6248 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.al = getelementptr inbounds [32 x i8], ptr %3, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !tbaa.struct !471
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6440 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !327
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6488
  %i.ap = load i32, ptr %7, align 4, !tbaa !49
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [32 x i8], ptr %4, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !tbaa.struct !471
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6456
  %i.at = load i32, ptr %7, align 4, !tbaa !49
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [32 x i8], ptr %5, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !tbaa.struct !471
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aw = load i32, ptr %7, align 4, !tbaa !49
  %.not51 = icmp eq i32 %i.aw, 0
  br i1 %.not51, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 16 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 16, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !273 ; 2 uses
  %i.bc = shl nsw i64 %i.bb, 4
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store ptr %i.bf, ptr %i.bg, align 16, !tbaa !100
  %i.bh = icmp sgt i64 %i.bb, 31
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.37, i32 noundef 2711) #14
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @encode_mb(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %9)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !353
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %.tr.i = trunc i64 %i.bo to i32
  %i.br = shl i32 %.tr.i, 3
  %reass.sub.i = sub i32 %i.br, %i.bq             ; 2 uses
  %i.bs = add i32 %reass.sub.i, 32
  %i.bt = load i32, ptr %i.am, align 8, !tbaa !327
  %.not52 = icmp eq i32 %i.bt, 0
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 6504
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 6496
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !353
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 6492
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59
  %.tr.i54 = trunc i64 %i.ca to i32
  %i.cd = shl i32 %.tr.i54, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 6472
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 6464
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !353
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6460
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !59
  %.tr.i56 = trunc i64 %i.ck to i32
  %i.cn = shl i32 %.tr.i56, 3
  %i.co = add i32 %reass.sub.i, 96
  %i.cp = add i32 %i.co, %i.cd
  %i.cq = add i32 %i.cc, %i.cm
  %i.cr = sub i32 %i.cp, %i.cq
  %i.cs = add i32 %i.cr, %i.cn
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.cs, %bb.g ], [ %i.bs, %bb.f ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 284
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !161
  %i.cx = icmp eq i32 %i.cw, 2
  br i1 %i.cx, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.cy = load ptr, ptr %i.aj, align 8, !tbaa !262
  tail call fastcc void @mpv_reconstruct_mb(ptr noundef nonnull %0, ptr noundef %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !96
  %i.db = mul i32 %i.da, %.0
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3860 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !284 ; 3 uses
  %i.de = lshr i32 16, %i.dd                      ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3864 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !285 ; 3 uses
  %i.dh = lshr i32 16, %i.dg                      ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 5 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !380 ; 3 uses
  %i.dk = shl nsw i32 %i.dj, 4                    ; 4 uses
  %i.dl = add nsw i32 %i.dk, 16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dn = load i32, ptr %i.dm, align 16, !tbaa !173 ; 2 uses
  %i.do = icmp sgt i32 %i.dl, %i.dn
  %i.dp = sub nsw i32 %i.dn, %i.dk
  %spec.select.i = select i1 %i.do, i32 %i.dp, i32 16 ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 5 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !379 ; 3 uses
  %i.ds = shl nsw i32 %i.dr, 4                    ; 2 uses
  %i.dt = add nsw i32 %i.ds, 16
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !174 ; 2 uses
  %i.dw = icmp sgt i32 %i.dt, %i.dv
  %i.dx = sub nsw i32 %i.dv, %i.ds
  %.081.i = select i1 %i.dw, i32 %i.dx, i32 16    ; 6 uses
  %i.dy = icmp eq i32 %spec.select.i, 16          ; 2 uses
  %i.dz = icmp eq i32 %.081.i, 16                 ; 2 uses
  %or.cond.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 6584
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !223
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4464 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !194
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !100
  %i.ef = sext i32 %i.dk to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = sext i32 %i.dr to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ej = load i64, ptr %i.ei, align 16, !tbaa !273 ; 2 uses
  %i.ek = shl nsw i64 %i.eh, 4
  %i.el = mul i64 %i.ek, %i.ej
  %i.em = getelementptr inbounds i8, ptr %i.eg, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !100
  %i.ep = tail call i32 %i.eb(ptr noundef nonnull %0, ptr noundef %i.em, ptr noundef %i.eo, i64 noundef %i.ej, i32 noundef 16) #14, !inline_history !490
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 6592 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 16, !tbaa !223
  %i.es = load ptr, ptr %i.ec, align 16, !tbaa !194
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !100
  %i.ev = load i32, ptr %i.di, align 4, !tbaa !380
  %i.ew = mul nsw i32 %i.ev, %i.de
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = load i32, ptr %i.dq, align 8, !tbaa !379
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !274 ; 2 uses
  %i.fd = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.fe = mul nsw i64 %i.fa, %i.fd
  %i.ff = mul i64 %i.fe, %i.fc
  %i.fg = getelementptr inbounds i8, ptr %i.ey, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !100
  %i.fj = tail call i32 %i.er(ptr noundef nonnull %0, ptr noundef %i.fg, ptr noundef %i.fi, i64 noundef %i.fc, i32 noundef %i.dh) #14, !inline_history !490
  %i.fk = add nsw i32 %i.fj, %i.ep
  %i.fl = load ptr, ptr %i.eq, align 16, !tbaa !223
  %i.fm = load ptr, ptr %i.ec, align 16, !tbaa !194
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !100
  %i.fp = load i32, ptr %i.di, align 4, !tbaa !380
  %i.fq = mul nsw i32 %i.fp, %i.de
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  %i.ft = load i32, ptr %i.dq, align 8, !tbaa !379
  %i.fu = sext i32 %i.ft to i64
  %i.fv = load i64, ptr %i.fb, align 8, !tbaa !274 ; 2 uses
  %i.fw = mul nsw i64 %i.fu, %i.fd
  %i.fx = mul i64 %i.fw, %i.fv
  %i.fy = getelementptr inbounds i8, ptr %i.fs, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ga = load ptr, ptr %i.fz, align 16, !tbaa !100
  %i.gb = tail call i32 %i.fl(ptr noundef nonnull %0, ptr noundef %i.fy, ptr noundef %i.ga, i64 noundef %i.fv, i32 noundef %i.dh) #14, !inline_history !490
  %i.gc = add nsw i32 %i.fk, %i.gb
  br label %sse_mb.exit

bb.k:                                             ; preds = %bb.i
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4464 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 16, !tbaa !194 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !100
  %i.gg = sext i32 %i.dk to i64
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 %i.gg
  %i.gi = sext i32 %i.dr to i64                   ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !273 ; 3 uses
  %i.gl = shl nsw i64 %i.gi, 4
  %i.gm = mul i64 %i.gl, %i.gk
  %i.gn = getelementptr inbounds i8, ptr %i.gh, i64 %i.gm ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.gp = load ptr, ptr %i.go, align 16, !tbaa !100 ; 4 uses
  %or.cond.i.i = and i1 %i.dy, %i.dz
  br i1 %or.cond.i.i, label %.loopexit.sink.split.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = icmp eq i32 %spec.select.i, 8
  %i.gr = icmp eq i32 %.081.i, 8
  %or.cond3.i.i = and i1 %i.gq, %i.gr
  br i1 %or.cond3.i.i, label %.loopexit.sink.split.i.i, label %.preheader35.i.i

.preheader35.i.i:                                 ; preds = %bb.l
  %i.gs = icmp sgt i32 %.081.i, 0
  %i.gt = icmp sgt i32 %spec.select.i, 0
  %or.cond49.i.i = and i1 %i.gt, %i.gs
  br i1 %or.cond49.i.i, label %.preheader.us.preheader.i.i, label %sse.exit.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader35.i.i
  %sext.i = shl i64 %i.gk, 32
  %i.gu = ashr exact i64 %sext.i, 32
  %wide.trip.count46.i.i = zext nneg i32 %.081.i to i64
  %wide.trip.count.i.i = zext nneg i32 %spec.select.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.gv = icmp eq i32 %spec.select.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod72 = trunc i32 %spec.select.i to i1
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next44.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %.03338.us.i.i = phi i32 [ 0, %.preheader.us.preheader.i.i ], [ %.lcssa70, %._crit_edge.us.i.i ] ; 2 uses
  %i.gw = mul nsw i64 %indvars.iv43.i.i, %i.gu    ; 3 uses
  br i1 %i.gv, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ] ; 3 uses
  %.136.us.i.i = phi i32 [ %i.hs, %.preheader.us.i.i.new ], [ %.03338.us.i.i, %.preheader.us.i.i ]
end_hunk_0
begin_hunk_1_@encode_mb_hq:bb.a
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !47
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %i.iy, i64 %i.jv
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !47
  %i.kb = zext i8 %i.ka to i64
  %i.kc = sub nsw i64 %i.jy, %i.kb
  %i.kd = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !49
  %i.kf = add i32 %i.ke, %i.ju                    ; 3 uses
  %indvars.iv.next.i97.i.1 = add nuw nsw i64 %indvars.iv.i95.i, 2 ; 2 uses
  %niter79.next.1 = add i64 %niter79, 2           ; 2 uses
  %niter79.ncmp.1 = icmp eq i64 %niter79.next.1, %unroll_iter78
  br i1 %niter79.ncmp.1, label %._crit_edge.us.i99.i.unr-lcssa, label %.preheader.us.i92.i.new, !llvm.loop !484

._crit_edge.us.i99.i.unr-lcssa:                   ; preds = %.preheader.us.i92.i.new
  br i1 %lcmp.mod75.not, label %._crit_edge.us.i99.i, label %.epil.preheader73

.epil.preheader73:                                ; preds = %._crit_edge.us.i99.i.unr-lcssa, %.preheader.us.i92.i
  %indvars.iv.i95.i.epil.init = phi i64 [ 0, %.preheader.us.i92.i ], [ %indvars.iv.next.i97.i.1, %._crit_edge.us.i99.i.unr-lcssa ]
  %.136.us.i96.i.epil.init = phi i32 [ %.03338.us.i94.i, %.preheader.us.i92.i ], [ %i.kf, %._crit_edge.us.i99.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.kg = add nsw i64 %indvars.iv.i95.i.epil.init, %i.jj ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.iw, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !47
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %i.iy, i64 %i.kg
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !47
  %i.km = zext i8 %i.kl to i64
  %i.kn = sub nsw i64 %i.kj, %i.km
  %i.ko = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !49
  %i.kq = add i32 %i.kp, %.136.us.i96.i.epil.init
  br label %._crit_edge.us.i99.i

._crit_edge.us.i99.i:                             ; preds = %._crit_edge.us.i99.i.unr-lcssa, %.epil.preheader73
  %.lcssa69 = phi i32 [ %i.kf, %._crit_edge.us.i99.i.unr-lcssa ], [ %i.kq, %.epil.preheader73 ] ; 2 uses
  %indvars.iv.next44.i100.i = add nuw nsw i64 %indvars.iv43.i93.i, 1 ; 2 uses
  %exitcond47.not.i101.i = icmp eq i64 %indvars.iv.next44.i100.i, %wide.trip.count46.i90.i
  br i1 %exitcond47.not.i101.i, label %sse.exit105.i, label %.preheader.us.i92.i, !llvm.loop !485

.loopexit.sink.split.i102.i:                      ; preds = %bb.m, %sse.exit.i
  %.sink52.i103.i = phi i64 [ 6616, %sse.exit.i ], [ 6624, %bb.m ]
  %.sink50.i104.i = phi i32 [ 16, %sse.exit.i ], [ 8, %bb.m ]
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink52.i103.i
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !223
  %sext130.i = shl i64 %i.is, 32
  %i.kt = ashr exact i64 %sext130.i, 32
  %i.ku = tail call i32 %i.ks(ptr noundef null, ptr noundef %i.iw, ptr noundef %i.iy, i64 noundef %i.kt, i32 noundef %.sink50.i104.i) #14, !inline_history !491
  %.pre141.i = load ptr, ptr %i.gd, align 16, !tbaa !194
  %.pre142.i = load i32, ptr %i.di, align 4, !tbaa !380
  %.pre143.i = load i32, ptr %i.dq, align 8, !tbaa !379
  %.pre144.i = load i64, ptr %i.ir, align 8, !tbaa !274 ; 2 uses
  %.pre145.i = load i32, ptr %i.dc, align 4, !tbaa !284
  %.pre146.i = load i32, ptr %i.df, align 8, !tbaa !285
  %.pre148.i = mul nsw i32 %.pre142.i, %i.de
  %.pre150.i = sext i32 %.pre148.i to i64
  %.pre152.i = sext i32 %.pre143.i to i64
  %.pre154.i = mul nsw i64 %.pre152.i, %i.it
  %.pre156.i = mul i64 %.pre154.i, %.pre144.i
  %.pre158.i = ashr i32 %spec.select.i, %.pre145.i
  %.pre160.i = ashr i32 %.081.i, %.pre146.i
  br label %sse.exit105.i

sse.exit105.i:                                    ; preds = %._crit_edge.us.i99.i, %.loopexit.sink.split.i102.i, %.preheader35.i86.i
  %.pre-phi161.i = phi i32 [ %.pre160.i, %.loopexit.sink.split.i102.i ], [ %i.ja, %.preheader35.i86.i ], [ %i.ja, %._crit_edge.us.i99.i ] ; 4 uses
  %.pre-phi159.i = phi i32 [ %.pre158.i, %.loopexit.sink.split.i102.i ], [ %i.iz, %.preheader35.i86.i ], [ %i.iz, %._crit_edge.us.i99.i ] ; 6 uses
  %.pre-phi157.i = phi i64 [ %.pre156.i, %.loopexit.sink.split.i102.i ], [ %i.iv, %.preheader35.i86.i ], [ %i.iv, %._crit_edge.us.i99.i ]
  %.pre-phi151.i = phi i64 [ %.pre150.i, %.loopexit.sink.split.i102.i ], [ %i.ip, %.preheader35.i86.i ], [ %i.ip, %._crit_edge.us.i99.i ]
  %i.kv = phi i64 [ %.pre144.i, %.loopexit.sink.split.i102.i ], [ %i.is, %.preheader35.i86.i ], [ %i.is, %._crit_edge.us.i99.i ] ; 2 uses
  %i.kw = phi ptr [ %.pre141.i, %.loopexit.sink.split.i102.i ], [ %i.il, %.preheader35.i86.i ], [ %i.il, %._crit_edge.us.i99.i ]
  %.034.i88.i = phi i32 [ %i.ku, %.loopexit.sink.split.i102.i ], [ 0, %.preheader35.i86.i ], [ %.lcssa69, %._crit_edge.us.i99.i ]
  %i.kx = add nsw i32 %.034.i88.i, %.034.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !100
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %.pre-phi151.i
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %.pre-phi157.i ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ld = load ptr, ptr %i.lc, align 16, !tbaa !100 ; 4 uses
  %i.le = icmp eq i32 %.pre-phi159.i, 16
  %i.lf = icmp eq i32 %.pre-phi161.i, 16
  %or.cond.i106.i = and i1 %i.lf, %i.le
  br i1 %or.cond.i106.i, label %.loopexit.sink.split.i124.i, label %bb.n

bb.n:                                             ; preds = %sse.exit105.i
  %i.lg = icmp eq i32 %.pre-phi159.i, 8
  %i.lh = icmp eq i32 %.pre-phi161.i, 8
  %or.cond3.i107.i = and i1 %i.lh, %i.lg
  br i1 %or.cond3.i107.i, label %.loopexit.sink.split.i124.i, label %.preheader35.i108.i

.preheader35.i108.i:                              ; preds = %bb.n
  %i.li = icmp sgt i32 %.pre-phi161.i, 0
  %i.lj = icmp sgt i32 %.pre-phi159.i, 0
  %or.cond49.i109.i = and i1 %i.li, %i.lj
  br i1 %or.cond49.i109.i, label %.preheader.us.preheader.i111.i, label %sse.exit127.i

.preheader.us.preheader.i111.i:                   ; preds = %.preheader35.i108.i
  %sext131.i = shl i64 %i.kv, 32
  %i.lk = ashr exact i64 %sext131.i, 32
  %wide.trip.count46.i112.i = zext nneg i32 %.pre-phi161.i to i64
  %wide.trip.count.i113.i = zext nneg i32 %.pre-phi159.i to i64 ; 2 uses
  %xtraiter81 = and i64 %wide.trip.count.i113.i, 1
  %i.ll = icmp eq i32 %.pre-phi159.i, 1
  %unroll_iter85 = and i64 %wide.trip.count.i113.i, 2147483646
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  %lcmp.mod84 = trunc i32 %.pre-phi159.i to i1
  br label %.preheader.us.i114.i

.preheader.us.i114.i:                             ; preds = %._crit_edge.us.i121.i, %.preheader.us.preheader.i111.i
  %indvars.iv43.i115.i = phi i64 [ 0, %.preheader.us.preheader.i111.i ], [ %indvars.iv.next44.i122.i, %._crit_edge.us.i121.i ] ; 2 uses
  %.03338.us.i116.i = phi i32 [ 0, %.preheader.us.preheader.i111.i ], [ %.lcssa, %._crit_edge.us.i121.i ] ; 2 uses
  %i.lm = mul nsw i64 %indvars.iv43.i115.i, %i.lk ; 3 uses
  br i1 %i.ll, label %.epil.preheader80, label %.preheader.us.i114.i.new

.preheader.us.i114.i.new:                         ; preds = %.preheader.us.i114.i, %.preheader.us.i114.i.new
  %indvars.iv.i117.i = phi i64 [ %indvars.iv.next.i119.i.1, %.preheader.us.i114.i.new ], [ 0, %.preheader.us.i114.i ] ; 3 uses
  %.136.us.i118.i = phi i32 [ %i.mi, %.preheader.us.i114.i.new ], [ %.03338.us.i116.i, %.preheader.us.i114.i ]
  %niter86 = phi i64 [ %niter86.next.1, %.preheader.us.i114.i.new ], [ 0, %.preheader.us.i114.i ]
  %i.ln = add nsw i64 %indvars.iv.i117.i, %i.lm   ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.lb, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !47
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds i8, ptr %i.ld, i64 %i.ln
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !47
  %i.lt = zext i8 %i.ls to i64
  %i.lu = sub nsw i64 %i.lq, %i.lt
  %i.lv = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !49
  %i.lx = add i32 %i.lw, %.136.us.i118.i
  %indvars.iv.next.i119.i = or disjoint i64 %indvars.iv.i117.i, 1
  %i.ly = add nsw i64 %indvars.iv.next.i119.i, %i.lm ; 2 uses
  %i.lz = getelementptr inbounds i8, ptr %i.lb, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !47
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds i8, ptr %i.ld, i64 %i.ly
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !47
  %i.me = zext i8 %i.md to i64
  %i.mf = sub nsw i64 %i.mb, %i.me
  %i.mg = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !49
  %i.mi = add i32 %i.mh, %i.lx                    ; 3 uses
  %indvars.iv.next.i119.i.1 = add nuw nsw i64 %indvars.iv.i117.i, 2 ; 2 uses
  %niter86.next.1 = add i64 %niter86, 2           ; 2 uses
  %niter86.ncmp.1 = icmp eq i64 %niter86.next.1, %unroll_iter85
  br i1 %niter86.ncmp.1, label %._crit_edge.us.i121.i.unr-lcssa, label %.preheader.us.i114.i.new, !llvm.loop !484

._crit_edge.us.i121.i.unr-lcssa:                  ; preds = %.preheader.us.i114.i.new
  br i1 %lcmp.mod82.not, label %._crit_edge.us.i121.i, label %.epil.preheader80

.epil.preheader80:                                ; preds = %._crit_edge.us.i121.i.unr-lcssa, %.preheader.us.i114.i
  %indvars.iv.i117.i.epil.init = phi i64 [ 0, %.preheader.us.i114.i ], [ %indvars.iv.next.i119.i.1, %._crit_edge.us.i121.i.unr-lcssa ]
  %.136.us.i118.i.epil.init = phi i32 [ %.03338.us.i116.i, %.preheader.us.i114.i ], [ %i.mi, %._crit_edge.us.i121.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.mj = add nsw i64 %indvars.iv.i117.i.epil.init, %i.lm ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %i.lb, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !47
  %i.mm = zext i8 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %i.ld, i64 %i.mj
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !47
  %i.mp = zext i8 %i.mo to i64
  %i.mq = sub nsw i64 %i.mm, %i.mp
  %i.mr = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !49
  %i.mt = add i32 %i.ms, %.136.us.i118.i.epil.init
  br label %._crit_edge.us.i121.i

._crit_edge.us.i121.i:                            ; preds = %._crit_edge.us.i121.i.unr-lcssa, %.epil.preheader80
  %.lcssa = phi i32 [ %i.mi, %._crit_edge.us.i121.i.unr-lcssa ], [ %i.mt, %.epil.preheader80 ] ; 2 uses
  %indvars.iv.next44.i122.i = add nuw nsw i64 %indvars.iv43.i115.i, 1 ; 2 uses
  %exitcond47.not.i123.i = icmp eq i64 %indvars.iv.next44.i122.i, %wide.trip.count46.i112.i
  br i1 %exitcond47.not.i123.i, label %sse.exit127.i, label %.preheader.us.i114.i, !llvm.loop !485

.loopexit.sink.split.i124.i:                      ; preds = %bb.n, %sse.exit105.i
  %.sink52.i125.i = phi i64 [ 6616, %sse.exit105.i ], [ 6624, %bb.n ]
  %.sink50.i126.i = phi i32 [ 16, %sse.exit105.i ], [ 8, %bb.n ]
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 %.sink52.i125.i
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !223
  %sext132.i = shl i64 %i.kv, 32
  %i.mw = ashr exact i64 %sext132.i, 32
  %i.mx = tail call i32 %i.mv(ptr noundef null, ptr noundef %i.lb, ptr noundef %i.ld, i64 noundef %i.mw, i32 noundef %.sink50.i126.i) #14, !inline_history !491
  br label %sse.exit127.i

sse.exit127.i:                                    ; preds = %._crit_edge.us.i121.i, %.loopexit.sink.split.i124.i, %.preheader35.i108.i
  %.034.i110.i = phi i32 [ 0, %.preheader35.i108.i ], [ %i.mx, %.loopexit.sink.split.i124.i ], [ %.lcssa, %._crit_edge.us.i121.i ]
  %i.my = add nsw i32 %i.kx, %.034.i110.i
  br label %sse_mb.exit

sse_mb.exit:                                      ; preds = %bb.j, %sse.exit127.i
  %.0.i = phi i32 [ %i.gc, %bb.j ], [ %i.my, %sse.exit127.i ]
  %i.mz = shl i32 %.0.i, 7
  %i.na = add nsw i32 %i.mz, %i.db
  br label %bb.o

bb.o:                                             ; preds = %sse_mb.exit, %bb.h
  %.1 = phi i32 [ %i.na, %sse_mb.exit ], [ %.0, %bb.h ] ; 2 uses
  %i.nb = load i32, ptr %7, align 4, !tbaa !49
  %.not53 = icmp eq i32 %i.nb, 0
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 3168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.nc, ptr noundef nonnull align 16 dereferenceable(24) %10, i64 24, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.nd = load i32, ptr %6, align 4, !tbaa !49
  %i.ne = icmp slt i32 %.1, %i.nd
  br i1 %i.ne, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i32 %.1, ptr %6, align 4, !tbaa !49
  %i.nf = load i32, ptr %7, align 4, !tbaa !49
  %i.ng = xor i32 %i.nf, 1
  store i32 %i.ng, ptr %7, align 4, !tbaa !49
  %i.nh = load i32, ptr %i.am, align 8, !tbaa !327
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 2736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.ni, i64 64, i1 false)
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nj, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.nk = load i32, ptr %i.e, align 4, !tbaa !453
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i32 %i.nk, ptr %i.nl, align 8, !tbaa !489
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.nn = load i32, ptr %i.g, align 8, !tbaa !49
  store i32 %i.nn, ptr %i.nm, align 4, !tbaa !49
  %i.no = load i32, ptr %i.k, align 4, !tbaa !49
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.no, ptr %i.np, align 8, !tbaa !49
  %i.nq = load i32, ptr %i.n, align 16, !tbaa !49
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !49
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.nt = load <4 x i32>, ptr %i.p, align 4, !tbaa !49
  store <4 x i32> %i.nt, ptr %i.ns, align 8, !tbaa !49
  %i.nu = load i32, ptr %i.t, align 4, !tbaa !388
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 %i.nu, ptr %i.nv, align 8, !tbaa !462
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !78
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.nx, ptr %i.ny, align 8, !tbaa !476
  %i.nz = load i32, ptr %i.v, align 16, !tbaa !408
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !466
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.od = load <2 x i32>, ptr %i.oc, align 8, !tbaa !49
  %i.oe = shufflevector <2 x i32> %i.od, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.oe, ptr %i.ob, align 8, !tbaa !49
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.of, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !471
  %.not.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i, label %save_context_after_encode.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 6488
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.og, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.oh, i64 32, i1 false), !tbaa.struct !471
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 6456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.oj, i64 32, i1 false), !tbaa.struct !471
  br label %save_context_after_encode.exit

save_context_after_encode.exit:                   ; preds = %bb.r, %bb.s
  %i.ok = load ptr, ptr %i.aj, align 8, !tbaa !262
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !480
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.oo = load i32, ptr %i.om, align 4, !tbaa !49
  store i32 %i.oo, ptr %i.on, align 4, !tbaa !49
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !49
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i32 %i.oq, ptr %i.or, align 8, !tbaa !49
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !49
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 124
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !49
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ow = load i32, ptr %i.ov, align 16, !tbaa !49
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %i.ow, ptr %i.ox, align 8, !tbaa !49
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !49
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 %i.oz, ptr %i.pa, align 4, !tbaa !49
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !49
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.pc, ptr %i.pd, align 8, !tbaa !49
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !49
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !49
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pi = load i32, ptr %i.ph, align 16, !tbaa !49
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 %i.pi, ptr %i.pj, align 8, !tbaa !49
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !482
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 148
  store i32 %i.pl, ptr %i.pm, align 4, !tbaa !481
  %i.pn = load i32, ptr %i.y, align 8, !tbaa !349
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 %i.pn, ptr %i.po, align 8, !tbaa !467
  %i.pp = load i32, ptr %i.ae, align 16, !tbaa !469
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 196
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !470
  br label %bb.t

bb.t:                                             ; preds = %save_context_after_encode.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

declare i32 @ff_mpeg4_set_direct_mv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @ff_copy_bits(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @ff_h263_update_mb(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @mpv_reconstruct_mb(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 524
  %i.d = load i32, ptr %i.c, align 4, !tbaa !492
  %i.e = and i32 %i.d, 64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !379
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 48, ptr noundef nonnull @.str.147, i32 noundef %i.g, i32 noundef %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 6 uses
  br label %bb.g

.preheader.1:                                     ; preds = %bb.g
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.k, i32 noundef 48, ptr noundef nonnull @.str.149) #14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !47
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !48
  %i.s = sext i16 %i.r to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.m, i32 noundef 48, ptr noundef nonnull @.str.148, i32 noundef %i.s) #14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.1.not, label %.preheader.2, label %bb.b, !llvm.loop !493

.preheader.2:                                     ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 48, ptr noundef nonnull @.str.149) #14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader.2 ], [ %indvars.iv.next.2, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !47
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !48
  %i.ab = sext i16 %i.aa to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.v, i32 noundef 48, ptr noundef nonnull @.str.148, i32 noundef %i.ab) #14
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 64
  br i1 %exitcond.2.not, label %.preheader.3, label %bb.c, !llvm.loop !493

.preheader.3:                                     ; preds = %bb.c
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 48, ptr noundef nonnull @.str.149) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.3
  %indvars.iv.3 = phi i64 [ 0, %.preheader.3 ], [ %indvars.iv.next.3, %bb.d ] ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !48
  %i.ak = sext i16 %i.aj to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 48, ptr noundef nonnull @.str.148, i32 noundef %i.ak) #14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.3.not, label %.preheader.4, label %bb.d, !llvm.loop !493

.preheader.4:                                     ; preds = %bb.d
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.al, i32 noundef 48, ptr noundef nonnull @.str.149) #14
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 512
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.4
  %indvars.iv.4 = phi i64 [ 0, %.preheader.4 ], [ %indvars.iv.next.4, %bb.e ] ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !48
  %i.at = sext i16 %i.as to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.an, i32 noundef 48, ptr noundef nonnull @.str.148, i32 noundef %i.at) #14
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 2 uses
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, 64
  br i1 %exitcond.4.not, label %.preheader.5, label %bb.e, !llvm.loop !493

.preheader.5:                                     ; preds = %bb.e
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 48, ptr noundef nonnull @.str.149) #14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 640
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.5
  %indvars.iv.5 = phi i64 [ 0, %.preheader.5 ], [ %indvars.iv.next.5, %bb.f ] ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !47
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !48
  %i.bc = sext i16 %i.bb to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 48, ptr noundef nonnull @.str.148, i32 noundef %i.bc) #14
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 2 uses
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, 64
  br i1 %exitcond.5.not, label %.loopexit.loopexit, label %bb.f, !llvm.loop !493

.loopexit.loopexit:                               ; preds = %bb.f
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bd, i32 noundef 48, ptr noundef nonnull @.str.149) #14
  br label %.loopexit

bb.g:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !47
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !48
  %i.bk = sext i16 %i.bj to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.be, i32 noundef 48, ptr noundef nonnull @.str.148, i32 noundef %i.bk) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader.1, label %bb.g, !llvm.loop !493

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.bm = load i32, ptr %i.bl, align 16, !tbaa !341
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4460
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !189
  %i.bq = and i32 %i.bn, %i.bp
  %.not141 = icmp eq i32 %i.bq, 0
  br i1 %.not141, label %add_dequant_dct.exit150, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !100 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !100 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !207
  %i.bz = trunc i64 %i.by to i32                  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.cb = load i64, ptr %i.ca, align 16, !tbaa !207 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !482 ; 2 uses
  %i.ce = shl i32 %i.bz, %i.cd                    ; 7 uses
  %.not142 = icmp eq i32 %i.cd, 0
  %i.cf = shl nsw i32 %i.bz, 3
  %i.cg = select i1 %.not142, i32 %i.cf, i32 %i.bz ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !78
  %.not143 = icmp eq i32 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 8 uses
  br i1 %.not143, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !49
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %bb.j, label %add_dequant_dct.exit

bb.j:                                             ; preds = %bb.i
  %i.cn = load i32, ptr %i.cj, align 8, !tbaa !349
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !494
  tail call void %i.cp(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.cn) #14, !inline_history !495
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !496
  %i.cs = sext i32 %i.ce to i64
  tail call void %i.cr(ptr noundef %i.bs, i64 noundef %i.cs, ptr noundef %1) #14, !inline_history !495
  br label %add_dequant_dct.exit

add_dequant_dct.exit:                             ; preds = %bb.i, %bb.j
end_hunk_1
