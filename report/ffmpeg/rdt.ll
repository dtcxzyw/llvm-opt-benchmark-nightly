Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rdt?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_real_parse_sdp_a_line:bb.a
  br i1 %.not.i, label %real_parse_asm_rulebook.exit, label %.lr.ph.split.i

real_parse_asm_rulebook.exit:                     ; preds = %bb.h, %bb.e, %bb.c, %.lr.ph.split.us.i, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @av_strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @rdt_init(ptr noundef %0, i32 %1, ptr noundef initializes((0, 8)) %2) #5 {
bb.a:
  %i.a = tail call ptr @avformat_alloc_context() #10 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !68
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ff_copy_whiteblacklists(ptr noundef nonnull %i.a, ptr noundef %0) #10 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @avformat_open_input(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @ff_rdt_demuxer, ptr noundef null) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -12, %bb.a ], [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @rdt_parse_sdp_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.FFIOContext, align 8        ; 14 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %3, ptr %i.a, align 8, !tbaa !49
  %i.g = call i32 @av_strstart(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #11
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !47
  %i.m = icmp eq i8 %i.l, 34                      ; 2 uses
  %i.n = add nsw i32 %i.k, -2
  %.0.i = select i1 %i.m, i32 %i.n, i32 %i.k
  %i.o = mul nsw i32 %.0.i, 3
  %i.p = sdiv i32 %i.o, 4                         ; 2 uses
  store i32 %i.p, ptr %i.h, align 4, !tbaa !48
  %i.q = add nsw i32 %i.p, 64
  %i.r = zext i32 %i.q to i64
  %i.s = call noalias ptr @av_mallocz(i64 noundef %i.r) #10 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %rdt_parse_b64buf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.012.idx.i = zext i1 %i.m to i64
  %.012.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.012.idx.i
  %i.t = load i32, ptr %i.h, align 4, !tbaa !48
  %i.u = call i32 @av_base64_decode(ptr noundef nonnull %i.s, ptr noundef nonnull %.012.i, i32 noundef %i.t) #10 ; 0 uses
  br label %rdt_parse_b64buf.exit

rdt_parse_b64buf.exit:                            ; preds = %bb.b, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.s, ptr %i.v, align 8, !tbaa !83
  br label %.thread58

bb.d:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.x = call i32 @av_strstart(ptr noundef %i.w, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #10
  %.not50 = icmp eq i32 %i.x, 0
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i64 @strtol(ptr noundef nonnull captures(none) %i.y, ptr noundef null, i32 noundef 10) #10, !inline_history !80
  %sext = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext, 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 840
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !65
  br label %.thread58

bb.f:                                             ; preds = %bb.d
  %i.ac = call i32 @av_strstart(ptr noundef %i.y, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #10
  %.not51 = icmp eq i32 %i.ac, 0
  br i1 %.not51, label %.thread58, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30 ; 2 uses
  %.not5461.not = icmp eq i32 %i.ae, 0
  br i1 %.not5461.not, label %.thread58, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %i.ak = phi i32 [ %i.ae, %.lr.ph ], [ %i.cx, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %.04263 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.t ] ; 3 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40
  %i.aq = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.au = add nsw i32 %i.at, 1                    ; 3 uses
  %i.av = icmp eq i32 %.04263, -1
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select = select i1 %i.av, i32 %i.aw, i32 %.04263 ; 2 uses
  %i.ax = load i32, ptr %i.ag, align 8, !tbaa !70
  %.not52 = icmp sgt i32 %i.ax, %i.at
  br i1 %.not52, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = sext i32 %i.au to i64
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = call i32 @av_reallocp(ptr noundef nonnull %i.ah, i64 noundef %i.az) #10 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  br label %.thread58

bb.k:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.bd = load i32, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = sub nsw i32 %i.au, %i.bd
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bi, i1 false)
  store i32 %i.au, ptr %i.ag, align 8, !tbaa !70
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.bj = call ptr @ff_rm_alloc_rmstream() #10    ; 2 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bq
  store ptr %i.bj, ptr %i.br, align 8, !tbaa !73
  %.not53 = icmp eq ptr %i.bj, null
  br i1 %.not53, label %.thread58, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = sub nsw i32 %i.aw, %spec.select         ; 3 uses
  %i.bt = shl nsw i32 %i.bs, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bu, null
  br i1 %.not.i55, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.aj, align 8, !tbaa !84
  call void @ffio_init_read_context(ptr noundef nonnull %4, ptr noundef nonnull %i.bu, i32 noundef %i.bv) #10
  %i.bw = call i32 @avio_rl32(ptr noundef nonnull %4) #10
  %i.bx = icmp eq i32 %i.bw, 1230261325
  br i1 %i.bx, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.by = call i32 @avio_rb16(ptr noundef nonnull %4) #10 ; 2 uses
  %i.bz = icmp sgt i32 %i.bs, -1
  %.not39.i = icmp slt i32 %i.bt, %i.by
  %or.cond.i = select i1 %i.bz, i1 %.not39.i, i1 false
  br i1 %or.cond.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ca = shl nuw nsw i32 %i.bs, 2
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = call i64 @avio_skip(ptr noundef nonnull %4, i64 noundef %i.cb) #10 ; 0 uses
  %i.cd = call i32 @avio_rb16(ptr noundef nonnull %4) #10 ; 3 uses
  %i.ce = xor i32 %i.bt, -1
  %i.cf = add i32 %i.by, %i.ce
  %i.cg = shl nsw i32 %i.cf, 1
  %5 = sext i32 %i.cg to i64
  %i.ch = call i64 @avio_skip(ptr noundef nonnull %4, i64 noundef %5) #10 ; 0 uses
  %i.ci = call i32 @avio_rb16(ptr noundef nonnull %4) #10
  %.not40.i = icmp slt i32 %i.cd, %i.ci
  br i1 %.not40.i, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.p
  %.not4142.i = icmp eq i32 %i.cd, 0
  br i1 %.not4142.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.043.i = phi i32 [ %i.cj, %.lr.ph.i ], [ %i.cd, %.preheader.i ]
  %i.cj = add nsw i32 %.043.i, -1                 ; 2 uses
  %i.ck = call i32 @avio_rb32(ptr noundef nonnull %4) #10
  %i.cl = zext i32 %i.ck to i64
  %i.cm = call i64 @avio_skip(ptr noundef nonnull %4, i64 noundef %i.cl) #10 ; 0 uses
  %.not41.i = icmp eq i32 %i.cj, 0
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !81

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %i.cn = call i32 @avio_rb32(ptr noundef nonnull %4) #10
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.aj, align 8, !tbaa !84
  %i.cp = call i64 @avio_seek(ptr noundef nonnull %4, i64 noundef 0, i32 noundef 0) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %.1.i = phi i32 [ %i.cn, %._crit_edge.i ], [ %i.co, %bb.q ]
  %i.cq = load ptr, ptr %2, align 8, !tbaa !68
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.cs = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !73
  %i.cw = call i32 @ff_rm_read_mdpr_codecdata(ptr noundef %i.cq, ptr noundef nonnull %4, ptr noundef nonnull %i.bn, ptr noundef %i.cv, i32 noundef %.1.i, ptr noundef null) #10 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %i.cx = phi i32 [ %.pre, %bb.s ], [ %i.ak, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.s ], [ %.04263, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %.not54 = icmp samesign ult i64 %indvars.iv.next, %i.cy
  br i1 %.not54, label %bb.g, label %.thread58, !llvm.loop !82

.thread58:                                        ; preds = %bb.t, %bb.l, %.preheader, %bb.j, %rdt_parse_b64buf.exit, %bb.f, %bb.e
  %.4 = phi i32 [ 0, %rdt_parse_b64buf.exit ], [ %i.ba, %bb.j ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.preheader ], [ 0, %bb.t ], [ -12, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal void @rdt_close_context(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.k, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 2 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ff_rm_free_rmstream(ptr noundef nonnull %i.h) #10
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @av_freep(ptr noundef %i.j) #10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !68
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @avformat_close_input(ptr noundef nonnull %0) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.p) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @rdt_parse_packet(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6, i16 zeroext %7, i32 noundef %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %struct.FFIOContext, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 1, ptr %i.a, align 4, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8292 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @ffio_init_read_context(ptr noundef nonnull %9, ptr noundef %5, i32 noundef %6) #10
  %i.e = shl i32 %8, 1
  %i.f = and i32 %i.e, 2
  %i.g = load ptr, ptr %1, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !69
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = load i32, ptr %4, align 4, !tbaa !48
  %i.p = zext i32 %i.o to i64
  %i.q = call i32 @ff_rm_parse_packet(ptr noundef %i.g, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %i.n, i32 noundef %6, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.f, i64 noundef %i.p) #10 ; 3 uses
  %i.r = call i64 @avio_seek(ptr noundef nonnull %9, i64 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp slt i32 %i.q, 0
  br i1 %i.t, label %.thread44, label %bb.c

.thread44:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !87
  %i.y = icmp eq i32 %i.x, 86018
  br i1 %i.y, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %sext = shl i64 %i.r, 32
  %i.aa = ashr exact i64 %sext, 32
  %i.ab = getelementptr inbounds i8, ptr %5, i64 %i.aa
  %i.ac = sub nsw i32 %6, %i.s                    ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  %i.ae = call ptr @avio_alloc_context(ptr noundef nonnull %i.z, i32 noundef %i.ac, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %i.af = load ptr, ptr %1, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.j

bb.g:                                             ; preds = %.thread, %bb.a
  %i.ah = load ptr, ptr %1, align 8, !tbaa !68    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !69
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.ar = call i32 @ff_rm_retrieve_cache(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %2, ptr noundef %i.aq, ptr noundef %3) #10 ; 2 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !86
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
end_hunk_0
