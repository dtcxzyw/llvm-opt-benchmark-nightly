Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiertexseq?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@seq_read_packet:bb.a
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @seq_parse_frame_data(ptr noundef nonnull %i.b, ptr noundef %i.d) ; 2 uses
  %.not54 = icmp eq i32 %i.g, 0
  br i1 %.not54, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 508 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 516 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70   ; 2 uses
  %i.l = sub i32 0, %i.k
  %.not55 = icmp eq i32 %i.i, %i.l
  br i1 %.not55, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.i, 1
  %i.n = add i32 %i.m, %i.k
  %i.o = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.n) #4 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = load i32, ptr %i.h, align 4, !tbaa !69
  %.not56 = icmp eq i32 %i.s, 0
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !71   ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72
  %i.aa = add i32 %i.z, %i.x
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.ab, i32 noundef 0) #4 ; 0 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i32, ptr %i.h, align 4, !tbaa !69
  %i.ag = tail call i32 @ffio_read_size(ptr noundef %i.d, ptr noundef nonnull %i.ae, i32 noundef %i.af) #4 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !70
  %.not57 = icmp eq i32 %i.ai, 0
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !71  ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = or i8 %i.ak, 2
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !14
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.an = load i32, ptr %i.h, align 4, !tbaa !69
  %i.ao = add i32 %i.an, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !73
  %i.at = load i32, ptr %i.j, align 4, !tbaa !70
  %i.au = zext i32 %i.at to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !42
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !75
  br label %.sink.split

bb.j:                                             ; preds = %bb.c, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !76 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !40
  %i.bh = add i32 %i.bg, %i.bd
  %i.bi = zext i32 %i.bh to i64
  %i.bj = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.bi, i32 noundef 0) #4 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 500
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !77
  %i.bm = tail call i32 @av_get_packet(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.bl) #4 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !42
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !42
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.l
  %.sink = phi i32 [ 0, %bb.l ], [ 1, %bb.i ]
  store i32 %.sink, ptr %i.e, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k, %bb.j, %bb.d, %bb.b, %bb.f
  %.1 = phi i32 [ %i.o, %bb.d ], [ -541478725, %bb.j ], [ %i.bm, %bb.k ], [ %i.ag, %bb.f ], [ %i.g, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @seq_read_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.d) #4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.e) #4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.f) #4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.g) #4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.h) #4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.i) #4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @av_freep(ptr noundef nonnull %i.k) #4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @av_freep(ptr noundef nonnull %i.l) #4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @av_freep(ptr noundef nonnull %i.m) #4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @av_freep(ptr noundef nonnull %i.n) #4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  tail call void @av_freep(ptr noundef nonnull %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  tail call void @av_freep(ptr noundef nonnull %i.p) #4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @av_freep(ptr noundef nonnull %i.q) #4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  tail call void @av_freep(ptr noundef nonnull %i.r) #4
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  tail call void @av_freep(ptr noundef nonnull %i.s) #4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  tail call void @av_freep(ptr noundef nonnull %i.t) #4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  tail call void @av_freep(ptr noundef nonnull %i.u) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  tail call void @av_freep(ptr noundef nonnull %i.v) #4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  tail call void @av_freep(ptr noundef nonnull %i.w) #4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  tail call void @av_freep(ptr noundef nonnull %i.x) #4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  tail call void @av_freep(ptr noundef nonnull %i.y) #4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  tail call void @av_freep(ptr noundef nonnull %i.z) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  tail call void @av_freep(ptr noundef nonnull %i.aa) #4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  tail call void @av_freep(ptr noundef nonnull %i.ab) #4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  tail call void @av_freep(ptr noundef nonnull %i.ac) #4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  tail call void @av_freep(ptr noundef nonnull %i.ad) #4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  tail call void @av_freep(ptr noundef nonnull %i.ae) #4
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  tail call void @av_freep(ptr noundef nonnull %i.af) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @seq_parse_frame_data(ptr nofree noundef captures(none) initializes((500, 516)) %0, ptr noundef %1) unnamed_addr #1 {
.preheader54.preheader:
  %.sroa.2 = alloca [3 x i32], align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = add nsw i32 %i.b, 6144                   ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !40
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.d, i32 noundef 0) #4 ; 0 uses
  %i.f = tail call i32 @avio_rl16(ptr noundef %1) #4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.f, ptr %i.g, align 8, !tbaa !76
  %.not = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not, i32 0, i32 1764
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 500
  store i32 %spec.select, ptr %i.h, align 4, !tbaa !77
  %i.i = tail call i32 @avio_rl16(ptr noundef %1) #4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 %i.i, ptr %i.j, align 8, !tbaa !72
  %.not48 = icmp eq i32 %i.i, 0
  %.sink71 = select i1 %.not48, i32 0, i32 768
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %.sink71, ptr %i.k, align 4, !tbaa !69
  %i.l = tail call i32 @avio_r8(ptr noundef %1) #4 ; 3 uses
  %i.m = tail call i32 @avio_r8(ptr noundef %1) #4 ; 2 uses
  %i.n = tail call i32 @avio_r8(ptr noundef %1) #4 ; 2 uses
  %i.o = tail call i32 @avio_r8(ptr noundef %1) #4 ; 2 uses
  %i.p = tail call i32 @avio_rl16(ptr noundef %1) #4 ; 3 uses
  %i.q = tail call i32 @avio_rl16(ptr noundef %1) #4 ; 5 uses
  store i32 %i.q, ptr %.sroa.2, align 4, !tbaa !62
  %i.r = tail call i32 @avio_rl16(ptr noundef %1) #4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !62
  %i.t = tail call i32 @avio_rl16(ptr noundef %1) #4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not50 = icmp eq i32 %i.p, 0
  br i1 %.not50, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader54.preheader
  %i.w = icmp eq i32 %i.q, 0
  %i.x = icmp eq i32 %i.r, 0
  %spec.select84 = select i1 %i.x, i64 8, i64 4
  %.0.lcssa.ph = select i1 %i.w, i64 %spec.select84, i64 0
  %.sroa.2.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 %.0.lcssa.ph
  %i.y = load i32, ptr %.sroa.2.4..sroa_idx, align 4, !tbaa !62
  %i.z = sub i32 %i.y, %i.p                       ; 4 uses
  %i.aa = icmp sgt i32 %i.m, 29
  br i1 %i.aa, label %seq_fill_buffer.exit.thread, label %bb.a

bb.a:                                             ; preds = %.lr.ph.preheader
  %i.ab = sext i32 %i.m to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.ab ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.ae = add nsw i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !35
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  %i.ai = icmp slt i32 %i.z, 1
  %or.cond.i = or i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %seq_fill_buffer.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !40
  %i.ak = add i32 %i.aj, %i.p
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.al, i32 noundef 0) #4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  %i.as = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef %i.ar, i32 noundef %i.z) #4 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %seq_fill_buffer.exit.thread, label %seq_fill_buffer.exit

seq_fill_buffer.exit:                             ; preds = %bb.b
  %i.au = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.av = add nsw i32 %i.au, %i.z
  store i32 %i.av, ptr %i.ac, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %seq_fill_buffer.exit, %.preheader54.preheader
  %.not50.1 = icmp eq i32 %i.q, 0
  br i1 %.not50.1, label %bb.f, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.c
  %i.aw = icmp eq i32 %i.r, 0
  %spec.select85.sroa.sel.v = select i1 %i.aw, i64 8, i64 4
  %spec.select85.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 %spec.select85.sroa.sel.v
  %i.ax = load i32, ptr %spec.select85.sroa.sel, align 4, !tbaa !62
  %i.ay = sub i32 %i.ax, %i.q                     ; 4 uses
  %i.az = icmp sgt i32 %i.n, 29
  br i1 %i.az, label %seq_fill_buffer.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader.1
  %i.ba = sext i32 %i.n to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.ba ; 6 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !33
  %i.bd = add nsw i32 %i.bc, %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !35
  %i.bg = icmp sgt i32 %i.bd, %i.bf
  %i.bh = icmp slt i32 %i.ay, 1
  %or.cond.i.1 = or i1 %i.bh, %i.bg
  br i1 %or.cond.i.1, label %seq_fill_buffer.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !40
  %i.bj = add i32 %i.bi, %i.q
  %i.bk = zext i32 %i.bj to i64
  %i.bl = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.bk, i32 noundef 0) #4 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bo = load i32, ptr %i.bb, align 8, !tbaa !33
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp
  %i.br = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef %i.bq, i32 noundef %i.ay) #4 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %seq_fill_buffer.exit.thread, label %seq_fill_buffer.exit.1

seq_fill_buffer.exit.1:                           ; preds = %bb.e
  %i.bt = load i32, ptr %i.bb, align 8, !tbaa !33
  %i.bu = add nsw i32 %i.bt, %i.ay
  store i32 %i.bu, ptr %i.bb, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %seq_fill_buffer.exit.1, %bb.c
  %.not50.2 = icmp eq i32 %i.r, 0
  br i1 %.not50.2, label %bb.i, label %.critedge.2

.critedge.2:                                      ; preds = %bb.f
  %i.bv = sub i32 %i.t, %i.r                      ; 4 uses
  %i.bw = icmp sgt i32 %i.o, 29
  br i1 %i.bw, label %seq_fill_buffer.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge.2
  %i.bx = sext i32 %i.o to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.bx ; 6 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !33
  %i.ca = add nsw i32 %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !35
  %i.cd = icmp sgt i32 %i.ca, %i.cc
  %i.ce = icmp slt i32 %i.bv, 1
  %or.cond.i.2 = or i1 %i.ce, %i.cd
  br i1 %or.cond.i.2, label %seq_fill_buffer.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !40
  %i.cg = add i32 %i.cf, %i.r
  %i.ch = zext i32 %i.cg to i64
  %i.ci = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.ch, i32 noundef 0) #4 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  %i.cl = load i32, ptr %i.by, align 8, !tbaa !33
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.ck, i64 %i.cm
  %i.co = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef %i.cn, i32 noundef %i.bv) #4 ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %seq_fill_buffer.exit.thread, label %seq_fill_buffer.exit.2

seq_fill_buffer.exit.2:                           ; preds = %bb.h
  %i.cq = load i32, ptr %i.by, align 8, !tbaa !33
  %i.cr = add nsw i32 %i.cq, %i.bv
  store i32 %i.cr, ptr %i.by, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %seq_fill_buffer.exit.2, %bb.f
  %.not49 = icmp eq i32 %i.l, 255
  br i1 %.not49, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = icmp ugt i32 %i.l, 29
  br i1 %i.cs, label %seq_fill_buffer.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = zext nneg i32 %i.l to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ct ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !70
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !73
  store i32 0, ptr %i.cu, align 8, !tbaa !33
  br label %seq_fill_buffer.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 0, ptr %i.da, align 4, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr null, ptr %i.db, align 8, !tbaa !73
  br label %seq_fill_buffer.exit.thread

seq_fill_buffer.exit.thread:                      ; preds = %bb.b, %bb.a, %.lr.ph.preheader, %.lr.ph.preheader.1, %bb.d, %bb.e, %.critedge.2, %bb.g, %bb.h, %bb.k, %bb.l, %bb.j
  %.045 = phi i32 [ -1094995529, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ %i.as, %bb.b ], [ -1094995529, %bb.a ], [ -1094995529, %.lr.ph.preheader ], [ -1094995529, %.lr.ph.preheader.1 ], [ -1094995529, %bb.d ], [ %i.br, %bb.e ], [ -1094995529, %.critedge.2 ], [ -1094995529, %bb.g ], [ %i.co, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2)
  ret i32 %.045
}

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @avio_rl16(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #3

declare i32 @ffio_read_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !12, i64 24}
!18 = !{!"AVFormatContext", !19, i64 0, !20, i64 8, !21, i64 16, !12, i64 24, !22, i64 32, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !25, i64 64, !6, i64 72, !26, i64 80, !11, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !27, i64 136, !27, i64 144, !11, i64 152, !6, i64 160, !6, i64 164, !28, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !29, i64 192, !27, i64 200, !6, i64 208, !6, i64 212, !30, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !27, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !27, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !31, i64 376, !31, i64 384, !31, i64 392, !31, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !27, i64 432, !11, i64 440, !12, i64 448, !12, i64 456, !27, i64 464, !11, i64 472}
!19 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!20 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!21 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!22 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!23 = !{!"p2 _ZTS8AVStream", !24, i64 0}
!24 = !{!"any p2 pointer", !12, i64 0}
!25 = !{!"p2 _ZTS13AVStreamGroup", !24, i64 0}
!26 = !{!"p2 _ZTS9AVChapter", !24, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"p2 _ZTS9AVProgram", !24, i64 0}
!29 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!30 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!31 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!32 = !{!18, !22, i64 32}
!33 = !{!34, !6, i64 0}
!34 = !{!"TiertexSeqFrameBuffer", !6, i64 0, !6, i64 4, !11, i64 8}
!35 = !{!34, !6, i64 4}
!36 = !{!34, !11, i64 8}
!37 = distinct !{!37, !16}
!38 = !{!39, !6, i64 496}
!39 = !{!"SeqDemuxContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !11, i64 520, !6, i64 528}
!40 = !{!39, !6, i64 12}
!41 = distinct !{!41, !16}
!42 = !{!39, !6, i64 8}
!43 = !{!39, !6, i64 528}
!44 = !{!45, !6, i64 8}
!45 = !{!"AVStream", !19, i64 0, !6, i64 8, !6, i64 12, !46, i64 16, !12, i64 24, !47, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !6, i64 64, !6, i64 68, !47, i64 72, !29, i64 80, !47, i64 88, !48, i64 96, !6, i64 200, !47, i64 204, !6, i64 212}
!46 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!47 = !{!"AVRational", !6, i64 0, !6, i64 4}
!48 = !{!"AVPacket", !49, i64 0, !27, i64 8, !27, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !50, i64 48, !6, i64 56, !27, i64 64, !27, i64 72, !12, i64 80, !49, i64 88, !47, i64 96}
!49 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!50 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!51 = !{!39, !6, i64 4}
!52 = !{!45, !46, i64 16}
!53 = !{!54, !6, i64 0}
!54 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !50, i64 32, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !47, i64 80, !47, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !55, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!55 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!56 = !{!54, !6, i64 4}
!57 = !{!54, !6, i64 8}
!58 = !{!54, !6, i64 72}
!59 = !{!54, !6, i64 76}
!60 = !{!45, !27, i64 40}
!61 = !{!39, !6, i64 0}
!62 = !{!6, !6, i64 0}
!63 = !{!12, !12, i64 0}
!64 = !{!54, !6, i64 152}
!65 = !{!54, !6, i64 56}
!66 = !{!54, !6, i64 132}
!67 = !{!54, !27, i64 48}
!68 = !{!54, !6, i64 156}
!69 = !{!39, !6, i64 508}
!70 = !{!39, !6, i64 516}
!71 = !{!48, !11, i64 24}
!72 = !{!39, !6, i64 512}
!73 = !{!39, !11, i64 520}
!74 = !{!48, !6, i64 36}
!75 = !{!48, !27, i64 8}
!76 = !{!39, !6, i64 504}
!77 = !{!39, !6, i64 500}
end_hunk_0
