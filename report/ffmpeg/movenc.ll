Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenc?download=true
inline.NumInlined: 471
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 28
begin_hunk_0_@avif_write_trailer:bb.a
bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i73
  %indvars.iv.i.i75 = phi i64 [ 0, %.lr.ph.i.i73 ], [ %indvars.iv.next.i.i76, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre101, i64 %indvars.iv.i.i75
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !39
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %mov_add_tref_tag.exit.thread85, label %bb.g

.loopexit.i71:                                    ; preds = %bb.g, %.loopexit.thread, %.loopexit
  %i.as = phi ptr [ %i.al, %.loopexit.thread ], [ %i.ao, %.loopexit ], [ %i.ao, %bb.g ]
  %i.at = phi ptr [ %i.ak, %.loopexit.thread ], [ %i.am, %.loopexit ], [ %i.am, %bb.g ] ; 2 uses
  %i.au = phi i32 [ 0, %.loopexit.thread ], [ %.pre, %.loopexit ], [ %.pre, %bb.g ]
  %i.av = phi ptr [ null, %.loopexit.thread ], [ %.pre101, %.loopexit ], [ %.pre101, %bb.g ]
  %i.aw = add nsw i32 %i.au, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call ptr @av_realloc_array(ptr noundef %i.av, i64 noundef %i.ax, i64 noundef 4) #18 ; 3 uses
  %.not15.not.i = icmp eq ptr %i.ay, null
  br i1 %.not15.not.i, label %mov_add_tref_tag.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i71
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !243
  %i.az = load i32, ptr %i.at, align 4, !tbaa !242 ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !242
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bb
  store i32 1, ptr %i.bc, align 4, !tbaa !39
  br label %mov_add_tref_tag.exit.thread85

mov_add_tref_tag.exit.thread85:                   ; preds = %bb.h, %bb.i, %bb.c, %bb.b
  %i.bd = tail call fastcc i32 @mov_write_identification(ptr noundef %i.e, ptr noundef %0) ; 0 uses
  tail call fastcc void @mov_write_meta_tag(ptr noundef %i.e, ptr noundef %i.g, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.bf = call i32 @ffio_open_null_buf(ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %get_moov_size.exit, label %bb.j

bb.j:                                             ; preds = %mov_add_tref_tag.exit.thread85
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.bi = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.bh, ptr noundef %i.be, ptr noundef nonnull %0) ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %get_moov_size.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.bl = call i32 @ffio_close_null_buf(ptr noundef %i.bk) #18
  br label %get_moov_size.exit

get_moov_size.exit:                               ; preds = %mov_add_tref_tag.exit.thread85, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.bl, %bb.k ], [ %i.bf, %mov_add_tref_tag.exit.thread85 ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !118
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_moov_size.exit
  %i.bp = sext i32 %.0.i to i64
  %i.bq = add nsw i64 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %get_moov_size.exit
  %i.bs = load i32, ptr %i.q, align 8, !tbaa !238
  %.not68 = icmp eq i32 %i.bs, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bt = call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #18
  %i.bu = add i64 %i.bq, %i.bt
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw [1640 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 336
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !210
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !118
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %bb.l, label %._crit_edge, !llvm.loop !387

bb.m:                                             ; preds = %._crit_edge
  %i.cb = call fastcc i32 @mov_write_moov_tag(ptr noundef %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %0) ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, -1
  br i1 %i.cc, label %bb.n, label %mov_add_tref_tag.exit

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !94
  %i.cf = call i32 @avio_get_dyn_buf(ptr noundef %i.ce, ptr noundef nonnull %i.c) #18 ; 2 uses
  %i.cg = add nsw i32 %i.cf, 8
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.cg) #18
  call void @avio_wl32(ptr noundef %i.e, i32 noundef 1952539757) #18
  %i.ch = call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  store i64 %i.ch, ptr %i.b, align 16, !tbaa !244
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !39
  %i.ck = sext i32 %i.cj to i64
  %i.cl = add nsw i64 %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !244
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !40
  call void @avio_write(ptr noundef %i.e, ptr noundef %i.cn, i32 noundef %i.cf) #18
  %i.co = call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !165
  %.not7090 = icmp sgt i32 %i.cq, 0
  br i1 %.not7090, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph93, %bb.p
  %indvars.iv97 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next98, %bb.p ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv97
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !244 ; 2 uses
  %.not69 = icmp ult i64 %i.ct, 4294967296
  br i1 %.not69, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.652) #18
  br label %mov_add_tref_tag.exit

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv97
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !244
  %i.cw = call i64 @avio_seek(ptr noundef %i.e, i64 noundef %i.cv, i32 noundef 0) #18 ; 0 uses
  %i.cx = trunc nuw i64 %i.ct to i32
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.cx) #18
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !165
  %i.cz = sext i32 %i.cy to i64
  %.not70 = icmp slt i64 %indvars.iv.next98, %i.cz
  br i1 %.not70, label %bb.o, label %._crit_edge94, !llvm.loop !388

._crit_edge94:                                    ; preds = %bb.p, %bb.n
  %i.da = call i64 @avio_seek(ptr noundef %i.e, i64 noundef %i.co, i32 noundef 0) #18 ; 0 uses
  br label %mov_add_tref_tag.exit

mov_add_tref_tag.exit:                            ; preds = %.loopexit.i, %.thread, %.loopexit.i71, %bb.a, %bb.m, %._crit_edge94
  %.6 = phi i32 [ -12, %.loopexit.i71 ], [ 0, %._crit_edge94 ], [ -1094995529, %.thread ], [ %i.cb, %bb.m ], [ 0, %bb.a ], [ -12, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.6
}

declare i32 @avio_get_dyn_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ffio_reset_dyn_buf(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare i32 @avpriv_ac3_parse_header(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_packet_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_grow_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare void @av_packet_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avio_wl32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avpriv_find_start_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @mov_write_identification(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 9 uses
  %i.c = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !222  ; 2 uses
  %.not155.i = icmp eq i32 %i.e, 0
  br i1 %.not155.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !223
  %wide.trip.count.i = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !225
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !227
  %i.l = add i32 %i.k, -1
  %switch.i = icmp ult i32 %i.l, 2                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond164.i = select i1 %switch.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond164.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !389

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %2 = xor i1 %switch.i, true
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.2.i = phi i1 [ true, %bb.a ], [ %2, %._crit_edge.loopexit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !165  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph148.i, label %._crit_edge149.i

.lr.ph148.i:                                      ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.c

._crit_edge149.loopexit.i:                        ; preds = %bb.g
  %i.q = icmp eq i32 %.2101.i, 0
  %i.r = icmp eq i32 %.295.i, 0
  %i.s = icmp eq i32 %.292.i, 0
  br label %._crit_edge149.i

._crit_edge149.i:                                 ; preds = %._crit_edge149.loopexit.i, %._crit_edge.i
  %.0102.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %.2104.i, %._crit_edge149.loopexit.i ] ; 3 uses
  %.099.lcssa.i = phi i1 [ true, %._crit_edge.i ], [ %i.q, %._crit_edge149.loopexit.i ]
  %.096.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %.298.i, %._crit_edge149.loopexit.i ] ; 2 uses
  %.093.lcssa.i = phi i1 [ true, %._crit_edge.i ], [ %i.r, %._crit_edge149.loopexit.i ]
  %.090.lcssa.i = phi i1 [ true, %._crit_edge.i ], [ %i.s, %._crit_edge149.loopexit.i ]
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1887007846) #18
  %.val135.i = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call fastcc void @mov_write_ftyp_tag_internal(ptr noundef %0, ptr %.val135.i, i32 noundef %.0102.lcssa.i, i32 noundef %.096.lcssa.i, i32 noundef 1)
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call fastcc void @mov_write_ftyp_tag_internal(ptr noundef %0, ptr %.val.i, i32 noundef %.0102.lcssa.i, i32 noundef %.096.lcssa.i, i32 noundef 0)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !88   ; 3 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %.split.i, label %bb.w

.split.i:                                         ; preds = %._crit_edge149.i
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.u, i1 true)
  switch i32 %i.x, label %bb.w [
    i32 6, label %thread-pre-split.sink.split.i
    i32 8, label %bb.h
    i32 1, label %bb.ae
    i32 0, label %bb.n
  ]

bb.c:                                             ; preds = %bb.g, %.lr.ph148.i
  %i.y = phi i32 [ %i.n, %.lr.ph148.i ], [ %i.aw, %bb.g ]
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph148.i ], [ %indvars.iv.next158.i, %bb.g ] ; 2 uses
  %.090145.i = phi i32 [ 0, %.lr.ph148.i ], [ %.292.i, %bb.g ] ; 2 uses
  %.093144.i = phi i32 [ 0, %.lr.ph148.i ], [ %.295.i, %bb.g ] ; 2 uses
  %.096143.i = phi i32 [ 0, %.lr.ph148.i ], [ %.298.i, %bb.g ] ; 2 uses
  %.099142.i = phi i32 [ 0, %.lr.ph148.i ], [ %.2101.i, %bb.g ] ; 2 uses
  %.0102141.i = phi i32 [ 0, %.lr.ph148.i ], [ %.2104.i, %bb.g ] ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw [1640 x i8], ptr %i.z, i64 %indvars.iv157.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !115 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %is_cover_image.exit.thread.i, label %is_cover_image.exit.i

is_cover_image.exit.i:                            ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !168
  %.not.i = icmp eq i32 %i.ae, 1024
  br i1 %.not.i, label %bb.g, label %is_cover_image.exit.thread.i

is_cover_image.exit.thread.i:                     ; preds = %is_cover_image.exit.i, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !169 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !170
  %i.ai = icmp eq i32 %i.ah, 0
  %spec.select.i = select i1 %i.ai, i32 1, i32 %.096143.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !98 ; 3 uses
  %i.al = icmp eq i32 %i.ak, 27
  %.1103.i = select i1 %i.al, i32 1, i32 %.0102141.i
  %i.am = icmp eq i32 %i.ak, 222
  %.1100.i = select i1 %i.am, i32 1, i32 %.099142.i
  switch i32 %i.ak, label %bb.d [
    i32 86019, label %bb.e
    i32 86056, label %bb.e
    i32 86060, label %bb.e
  ]

bb.d:                                             ; preds = %is_cover_image.exit.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !245
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !246
  %i.ar = tail call ptr @av_packet_side_data_get(ptr noundef %i.ao, i32 noundef %i.aq, i32 noundef 29) #18
  %.not128.i = icmp eq ptr %i.ar, null
  br i1 %.not128.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %is_cover_image.exit.thread.i, %is_cover_image.exit.thread.i, %is_cover_image.exit.thread.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.194.i = phi i32 [ 1, %bb.e ], [ %.093144.i, %bb.d ]
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !169
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !98
  %i.av = icmp eq i32 %i.au, 98313
  %spec.select129.i = select i1 %i.av, i32 1, i32 %.090145.i
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !165
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %is_cover_image.exit.i
  %i.aw = phi i32 [ %.pre.i, %bb.f ], [ %i.y, %is_cover_image.exit.i ] ; 2 uses
  %.2104.i = phi i32 [ %.1103.i, %bb.f ], [ %.0102141.i, %is_cover_image.exit.i ] ; 2 uses
  %.2101.i = phi i32 [ %.1100.i, %bb.f ], [ %.099142.i, %is_cover_image.exit.i ] ; 2 uses
  %.298.i = phi i32 [ %spec.select.i, %bb.f ], [ %.096143.i, %is_cover_image.exit.i ] ; 2 uses
  %.295.i = phi i32 [ %.194.i, %bb.f ], [ %.093144.i, %is_cover_image.exit.i ] ; 2 uses
  %.292.i = phi i32 [ %spec.select129.i, %bb.f ], [ %.090145.i, %is_cover_image.exit.i ] ; 2 uses
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next158.i, %i.ax
  br i1 %i.ay, label %bb.c, label %._crit_edge149.loopexit.i, !llvm.loop !390

bb.h:                                             ; preds = %.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !169
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !209
  %i.bg = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.bf) #18 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !248
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !238
  %.not121.i = icmp eq i32 %i.bk, 0
  br i1 %.not121.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1718187617) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 828797805) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 946828137) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 828795245) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1717660013) #18
  %i.bl = and i32 %i.bi, -3
  %or.cond.i = icmp eq i32 %i.bl, 8
  br i1 %or.cond.i, label %bb.k, label %thread-pre-split.i

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !392
  %.not122.i = icmp eq i8 %i.bn, 0
  br i1 %.not122.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !393
  %.not123.i = icmp eq i8 %i.bp, 0
  br i1 %.not123.i, label %thread-pre-split.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %thread-pre-split.sink.split.i

bb.n:                                             ; preds = %.split.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !87 ; 2 uses
  %i.bs = and i32 %i.br, 4194304
  %.not111.i = icmp eq i32 %i.bs, 0
  br i1 %.not111.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1667657059) #18
  %.pre160.i = load i32, ptr %i.bq, align 8, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = phi i32 [ %.pre160.i, %bb.o ], [ %i.br, %bb.n ]
  %i.bu = and i32 %i.bt, 524290
  %or.cond130.i = icmp eq i32 %i.bu, 2
  br i1 %or.cond130.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 913273705) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.099.lcssa.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 825259617) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.093.lcssa.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 830038628) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.2.i, label %bb.aa, label %.sink.split.i

bb.w:                                             ; preds = %.split.i, %._crit_edge149.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
end_hunk_0
