Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenc?download=true
inline.NumInlined: 471
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 28
begin_hunk_0_@mov_write_hdlr_tag:bb.a
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -128                 ; 2 uses
  %.not33.i = icmp ult i32 %i.am, 64
  %i.an = shl i32 %.022.i, 6
  %i.ao = add nuw nsw i32 %i.am, %i.an
  %i.ap = shl i32 %.020.i, 5
  br i1 %.not33.i, label %.preheader.i, label %utf8len.exit, !llvm.loop !3

bb.r:                                             ; preds = %.preheader.i
  %.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i, label %utf8len.exit, label %.lr.ph.i, !llvm.loop !4

utf8len.exit:                                     ; preds = %.lr.ph.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a
  %.050 = phi ptr [ @.str.266, %bb.a ], [ %i.g, %bb.n ], [ %i.g, %bb.p ], [ %i.g, %bb.o ], [ %i.g, %bb.q ], [ %i.g, %bb.r ], [ %i.g, %.lr.ph.i ]
  %.249 = phi ptr [ @.str.268, %bb.a ], [ %.047, %bb.n ], [ %.047, %bb.p ], [ %.047, %bb.o ], [ %i.aa, %bb.q ], [ %i.aa, %bb.r ], [ %i.aa, %.lr.ph.i ]
  %.2 = phi ptr [ @.str.267, %bb.a ], [ %.1, %bb.n ], [ %.1, %bb.p ], [ %.1, %bb.o ], [ %.1, %bb.q ], [ %.1, %bb.r ], [ %.1, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !475
  %.not63 = icmp eq i32 %i.ar, 0
  %spec.select = select i1 %.not63, ptr %.249, ptr @.str.293 ; 3 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1919706216) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %.050, i32 noundef 4) #18
  %i.as = load i32, ptr %.2, align 1
  call void @avio_wl32(ptr noundef %1, i32 noundef %i.as) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #21 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %utf8len.exit
  %i.au = load i32, ptr %2, align 8, !tbaa !120
  %i.av = icmp eq i32 %i.au, 2
  %i.aw = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.av, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  call void @avio_w8(ptr noundef %1, i32 noundef %i.aw) #18
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.t
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %spec.select, i32 noundef %i.aw) #18
  %i.ax = load i32, ptr %2, align 8, !tbaa !120
  %.not64 = icmp eq i32 %i.ax, 2
  br i1 %.not64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  br label %bb.v

.critedge:                                        ; preds = %utf8len.exit
  %i.ay = trunc i64 %i.at to i32                  ; 2 uses
  call void @avio_w8(ptr noundef %1, i32 noundef %i.ay) #18
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %spec.select, i32 noundef %i.ay) #18
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.u, %.thread
  %i.az = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.ba = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.d, i32 noundef 0) #18 ; 0 uses
  %i.bb = sub nsw i64 %i.az, %i.d
  %i.bc = trunc i64 %i.bb to i32
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.bc) #18
  %i.bd = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.az, i32 noundef 0) #18 ; 0 uses
  ret void
}

declare ptr @av_fourcc_make_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_gmhd_tag(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1684565351) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 24) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1852403047) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 64) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 32768) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 32768) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 32768) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107
  %.not = icmp eq i32 %i.c, 942683747
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 44) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1954047348) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 1) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 1) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 16384) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !195
  switch i32 %i.g, label %bb.f [
    i32 1684237684, label %bb.d
    i32 1684893799, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1684237684) #18
  %i.i = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1768776564) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 12) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 65535) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 65535) #18
  tail call void @avio_wb16(ptr noundef %0, i32 noundef 65535) #18
  tail call void @avio_w8(ptr noundef %0, i32 noundef 13) #18
  tail call void @avio_write(ptr noundef %0, ptr noundef nonnull @.str.301, i32 noundef 13) #18
  %i.j = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.k = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.i, i32 noundef 0) #18 ; 0 uses
  %i.l = sub nsw i64 %i.j, %i.i
  %i.m = trunc i64 %i.l to i32
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.m) #18
  %i.n = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.j, i32 noundef 0) #18 ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.o = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1684893799) #18
  tail call void @avio_wb32(ptr noundef %0, i32 noundef 0) #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink45 = phi i64 [ %i.o, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.p = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.q = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %.sink45, i32 noundef 0) #18 ; 0 uses
  %i.r = sub nsw i64 %i.p, %.sink45
  %i.s = trunc i64 %i.r to i32
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.s) #18
  %i.t = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.p, i32 noundef 0) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %i.u = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.v = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) #18 ; 0 uses
  %i.w = sub nsw i64 %i.u, %i.a
  %i.x = trunc i64 %i.w to i32
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %i.x) #18
  %i.y = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.u, i32 noundef 0) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mov_write_stsd_tag(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %struct.AVChannelLayout, align 8    ; 12 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  tail call void @avio_wl32(ptr noundef %1, i32 noundef 1685288051) #18
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !112
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.l) #18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 20 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !114
  store i32 0, ptr %i.m, align 8, !tbaa !114
  %i.o = load i32, ptr %i.k, align 4, !tbaa !112  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 29 uses
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1608
  %i.ag = getelementptr i8, ptr %3, i64 400       ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 244
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 280
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %mov_write_audio_tag.exit.thread70
  %i.ar = phi i32 [ %i.o, %.lr.ph ], [ %i.xr, %mov_write_audio_tag.exit.thread70 ]
  %i.as = phi i32 [ 0, %.lr.ph ], [ %i.xt, %mov_write_audio_tag.exit.thread70 ]
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !170
  switch i32 %i.au, label %bb.ei [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.dy
  ]

bb.c:                                             ; preds = %bb.b
  %i.av = call fastcc i32 @mov_write_video_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %mov_write_audio_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.aw = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.ax = load i32, ptr %i.s, align 8, !tbaa !107 ; 7 uses
  %i.ay = load i32, ptr %3, align 8, !tbaa !120
  switch i32 %i.ay, label %mov_get_lpcm_flags.exit.i [
    i32 2, label %bb.e
    i32 1, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !75  ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !150
  %i.bc = icmp sgt i32 %i.bb, 65535
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 132
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !175 ; 2 uses
  %.not.i = icmp eq i32 %i.be, 0
  %i.bf = icmp sgt i32 %i.be, 2
  %or.cond237.i = or i1 %.not.i, %i.bf
  br i1 %or.cond237.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !98
  switch i32 %i.bh, label %mov_get_lpcm_flags.exit.i [
    i32 65556, label %mov_get_lpcm_flags.exit.thread.i
    i32 65558, label %mov_get_lpcm_flags.exit.thread.i
    i32 65557, label %mov_get_lpcm_flags.exit.thread.i
    i32 65559, label %mov_get_lpcm_flags.exit.thread.i
    i32 65541, label %mov_get_lpcm_flags.exit.thread.i
    i32 65537, label %mov_get_lpcm_flags.exit.thread.i
    i32 65549, label %mov_get_lpcm_flags.exit.thread.i
    i32 65545, label %mov_get_lpcm_flags.exit.thread.i
    i32 65540, label %mov_get_lpcm_flags.exit.thread.i
    i32 65536, label %mov_get_lpcm_flags.exit.thread.i
    i32 65548, label %mov_get_lpcm_flags.exit.thread.i
    i32 65544, label %mov_get_lpcm_flags.exit.thread.i
  ]

mov_get_lpcm_flags.exit.thread.i:                 ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br label %mov_get_lpcm_flags.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bi = load i32, ptr %i.x, align 4, !tbaa !235
  %.not226.i = icmp eq i32 %i.bi, 0
  br i1 %.not226.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !98
  switch i32 %i.bk, label %mov_get_lpcm_flags.exit.i [
    i32 65557, label %bb.l
    i32 65548, label %bb.l
    i32 65544, label %bb.l
    i32 65559, label %bb.l
    i32 65556, label %bb.l
    i32 65549, label %bb.l
    i32 65545, label %bb.l
    i32 65558, label %bb.l
    i32 69638, label %bb.l
    i32 69633, label %bb.l
    i32 86035, label %bb.l
  ]

bb.j:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !150
  %i.bo = icmp sgt i32 %i.bn, 65535
  br i1 %i.bo, label %bb.k, label %mov_get_lpcm_flags.exit.i

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ax, label %mov_get_lpcm_flags.exit.i [
    i32 1835233385, label %bb.l
    i32 1835233382, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.h
  br label %mov_get_lpcm_flags.exit.i

mov_get_lpcm_flags.exit.i:                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %mov_get_lpcm_flags.exit.thread.i, %bb.g, %bb.d
  %i.bp = phi i1 [ false, %bb.d ], [ true, %mov_get_lpcm_flags.exit.thread.i ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ true, %bb.g ]
  %i.bq = phi i1 [ false, %bb.d ], [ false, %mov_get_lpcm_flags.exit.thread.i ], [ false, %bb.i ], [ true, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.g ] ; 5 uses
  %.0210.i = phi i32 [ 0, %bb.d ], [ 2, %mov_get_lpcm_flags.exit.thread.i ], [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 2, %bb.g ] ; 2 uses
  %.1209.i = phi i32 [ %i.ax, %bb.d ], [ 1835233388, %mov_get_lpcm_flags.exit.thread.i ], [ %i.ax, %bb.i ], [ %i.ax, %bb.l ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %i.ax, %bb.g ] ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.br = load i32, ptr %i.y, align 8, !tbaa !231
  %.not230.i = icmp eq i32 %i.br, 0
  %.1209..i = select i1 %.not230.i, i32 %.1209.i, i32 1633906277
  call void @avio_wl32(ptr noundef %1, i32 noundef %.1209..i) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 1) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef %.0210.i) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  br i1 %i.bp, label %bb.m, label %bb.w

bb.m:                                             ; preds = %mov_get_lpcm_flags.exit.i
  call void @avio_wb16(ptr noundef %1, i32 noundef 3) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 16) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 65534) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 65536) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 72) #18
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !150
  %i.bv = sitofp nsz i32 %i.bu to double
  %i.bw = bitcast double %i.bv to i64
  call void @avio_wb64(ptr noundef %1, i64 noundef %i.bw) #18
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 132
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !175
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.bz) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 2130706432) #18
  %i.ca = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !98
  %i.cd = call i32 @av_get_bits_per_sample(i32 noundef %i.cc) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.cd) #18
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !98
  %switch.tableidx = add i32 %i.cg, -65536        ; 2 uses
  %i.ch = icmp ult i32 %switch.tableidx, 24
  br i1 %i.ch, label %switch.lookup, label %mov_get_lpcm_flags.exit240.i

switch.lookup:                                    ; preds = %bb.m
  %i.ci = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.mov_write_stsd_tag, i64 %i.ci
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %mov_get_lpcm_flags.exit240.i

mov_get_lpcm_flags.exit240.i:                     ; preds = %bb.m, %switch.lookup
  %.0.i239.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.m ]
  call void @avio_wb32(ptr noundef %1, i32 noundef %.0.i239.i) #18
  %i.cj = load i64, ptr %i.z, align 8, !tbaa !104
  %i.ck = trunc i64 %i.cj to i32
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.ck) #18
  %i.cl = load i32, ptr %i.x, align 4, !tbaa !235
  %.not.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i, label %get_samples_per_packet.exit.i, label %bb.n

bb.n:                                             ; preds = %mov_get_lpcm_flags.exit240.i
  %i.cm = load i32, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cm, 0
  br i1 %.not.i.i.i, label %bb.o, label %get_samples_per_packet.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cn = icmp eq i32 %i.cm, 1                    ; 2 uses
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !83
  %i.cp = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.cq = add nsw i64 %i.cp, %i.co
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !77
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.ab, align 8, !tbaa !77 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cu = phi ptr [ %.pre.i.i.i, %bb.p ], [ %i.cr, %bb.q ]
  %.0.i.i.i = phi i64 [ %i.cq, %bb.p ], [ %i.ct, %bb.q ]
end_hunk_0
begin_hunk_1_@mov_write_stsd_tag:bb.a
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  call void @avio_wb16(ptr noundef %1, i32 noundef %.1.i) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !98
  %.not232.i = icmp eq i32 %i.eo, 86060
  br i1 %.not232.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @avio_wb16(ptr noundef %1, i32 noundef 0) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %get_samples_per_packet.exit.i
  %i.ep = load i32, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 2
  %or.cond3.i = and i1 %i.bq, %i.eq
  br i1 %or.cond3.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !98
  %switch.tableidx119 = add i32 %i.et, -65544     ; 2 uses
  %i.eu = icmp ult i32 %switch.tableidx119, 16
  %switch.maskindex = trunc i32 %switch.tableidx119 to i16
  %switch.shifted = lshr i16 -4045, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.eu, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %mov_pcm_le_gt16.exit241.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 160
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !103
  br label %mov_pcm_le_gt16.exit241.thread.i

mov_pcm_le_gt16.exit241.thread.i:                 ; preds = %bb.ap, %bb.aq
  %.sink296.i = phi i32 [ %i.ew, %bb.aq ], [ 1, %bb.ap ]
  call void @avio_wb32(ptr noundef %1, i32 noundef %.sink296.i) #18
  %i.ex = load i64, ptr %i.z, align 8, !tbaa !104
  %i.ey = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 132
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !175
  %i.fb = sext i32 %i.fa to i64
  %i.fc = sdiv i64 %i.ex, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.fd) #18
  %i.fe = load i64, ptr %i.z, align 8, !tbaa !104
  %i.ff = trunc i64 %i.fe to i32
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.ff) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 2) #18
  %.pr.i = load i32, ptr %3, align 8, !tbaa !120
  br label %bb.ar

bb.ar:                                            ; preds = %mov_pcm_le_gt16.exit241.thread.i, %bb.ao
  %i.fg = phi i32 [ %.pr.i, %mov_pcm_le_gt16.exit241.thread.i ], [ %i.ep, %bb.ao ]
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.fi = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !98 ; 4 uses
  switch i32 %i.fk, label %.split.i [
    i32 86018, label %bb.au
    i32 86019, label %bb.au
    i32 86056, label %bb.au
    i32 73728, label %bb.au
    i32 86032, label %bb.au
    i32 69638, label %bb.au
    i32 69633, label %bb.au
    i32 86035, label %bb.au
    i32 65557, label %mov_pcm_le_gt16.exit243.i
    i32 65548, label %mov_pcm_le_gt16.exit243.i
    i32 65544, label %mov_pcm_le_gt16.exit243.i
  ]

.split.i:                                         ; preds = %bb.as
  %i.fl = icmp eq i32 %i.fk, 65559
  %i.fm = and i1 %i.bq, %i.fl
  br i1 %i.fm, label %bb.au, label %bb.at

mov_pcm_le_gt16.exit243.i:                        ; preds = %bb.as, %bb.as, %bb.as
  br i1 %i.bq, label %bb.au, label %bb.at

bb.at:                                            ; preds = %mov_pcm_le_gt16.exit243.i, %.split.i
  switch i32 %i.fk, label %.split294.i [
    i32 65556, label %mov_pcm_be_gt16.exit244.i
    i32 65549, label %mov_pcm_be_gt16.exit244.i
    i32 65545, label %mov_pcm_be_gt16.exit244.i
  ]

.split294.i:                                      ; preds = %bb.at
  %i.fn = icmp eq i32 %i.fk, 65558
  %i.fo = and i1 %i.bq, %i.fn
  br i1 %i.fo, label %bb.au, label %bb.bc

mov_pcm_be_gt16.exit244.i:                        ; preds = %bb.at, %bb.at, %bb.at
  br i1 %i.bq, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %mov_pcm_be_gt16.exit244.i, %.split294.i, %mov_pcm_le_gt16.exit243.i, %.split.i, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %i.fp = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1702257015) #18
  %i.fq = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !98
  %.not.i245.i = icmp eq i32 %i.fs, 86035
  br i1 %.not.i245.i, label %.thread.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @avio_wb32(ptr noundef %1, i32 noundef 12) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1634562662) #18
  %i.ft = load i32, ptr %i.s, align 8, !tbaa !107
  call void @avio_wl32(ptr noundef %1, i32 noundef %i.ft) #18
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !75
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %.pre49.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !98
  switch i32 %.pre49.i.i, label %mov_write_wave_tag.exit.i [
    i32 86018, label %bb.aw
    i32 65557, label %mov_pcm_le_gt16.exit.thread.i.i
    i32 65548, label %mov_pcm_le_gt16.exit.thread.i.i
    i32 65544, label %mov_pcm_le_gt16.exit.thread.i.i
    i32 65559, label %mov_pcm_le_gt16.exit.thread.i.i
    i32 65556, label %mov_pcm_be_gt16.exit.thread.i.i
    i32 65549, label %mov_pcm_be_gt16.exit.thread.i.i
    i32 65545, label %mov_pcm_be_gt16.exit.thread.i.i
    i32 65558, label %mov_pcm_be_gt16.exit.thread.i.i
    i32 73728, label %bb.ax
    i32 86019, label %bb.ay
    i32 86056, label %bb.az
    i32 86032, label %.thread.i.i
    i32 86035, label %.thread.i.i
    i32 69638, label %bb.ba
    i32 69633, label %bb.ba
  ]

bb.aw:                                            ; preds = %bb.av
  call void @avio_wb32(ptr noundef %1, i32 noundef 12) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1630826605) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.fu = call fastcc i32 @mov_write_esds_tag(ptr noundef %1, ptr noundef nonnull readonly %3) ; 0 uses
  br label %mov_write_wave_tag.exit.i

mov_pcm_le_gt16.exit.thread.i.i:                  ; preds = %bb.av, %bb.av, %bb.av, %bb.av
  call void @avio_wb32(ptr noundef %1, i32 noundef 10) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1633971813) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 1) #18
  br label %mov_write_wave_tag.exit.i

mov_pcm_be_gt16.exit.thread.i.i:                  ; preds = %bb.av, %bb.av, %bb.av, %bb.av
  call void @avio_wb32(ptr noundef %1, i32 noundef 10) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1633971813) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 0) #18
  br label %mov_write_wave_tag.exit.i

bb.ax:                                            ; preds = %bb.av
  call void @avio_wb32(ptr noundef %1, i32 noundef 17) #18
  %i.fv = load i32, ptr %3, align 8, !tbaa !120
  %i.fw = icmp eq i32 %i.fv, 2
  %..i66 = select i1 %i.fw, i32 1919770995, i32 1919770980
  call void @avio_wl32(ptr noundef %1, i32 noundef %..i66) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1347241542) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 33279) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 1) #18
  br label %mov_write_wave_tag.exit.i

bb.ay:                                            ; preds = %bb.av
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !121
  %i.fx = call fastcc i32 @mov_write_ac3_tag(ptr noundef %0, ptr noundef %1, ptr %.val.i.i) ; 0 uses
  br label %mov_write_wave_tag.exit.i

bb.az:                                            ; preds = %bb.av
  %.val44.i.i = load ptr, ptr %i.ag, align 8, !tbaa !121
  %i.fy = call fastcc i32 @mov_write_eac3_tag(ptr noundef %0, ptr noundef %1, ptr %.val44.i.i) ; 0 uses
  br label %mov_write_wave_tag.exit.i

.thread.i.i:                                      ; preds = %bb.av, %bb.av, %bb.au
  %i.fz = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.ga = load i32, ptr %i.m, align 8, !tbaa !114
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !40
  %i.ge = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gb
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !39
  call void @avio_write(ptr noundef %1, ptr noundef %i.gd, i32 noundef %i.gg) #18
  br label %mov_write_wave_tag.exit.i

bb.ba:                                            ; preds = %bb.av, %bb.av
  %i.gh = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.gi = load i32, ptr %i.s, align 8, !tbaa !107
  call void @avio_wl32(ptr noundef %1, i32 noundef %i.gi) #18
  %5 = load i32, ptr %i.s, align 8, !tbaa !107
  %6 = lshr i32 %5, 16
  %7 = trunc nuw i32 %6 to i16
  %i.gj = call i16 @llvm.bswap.i16(i16 %7)
  %i.gk = zext i16 %i.gj to i32
  %i.gl = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 %i.gk, ptr %i.gm, align 8, !tbaa !195
  %i.gn = call i32 @ff_put_wav_header(ptr noundef %0, ptr noundef %1, ptr noundef %i.gl, i32 noundef 0) #18
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %mov_write_wave_tag.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.gq = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.gh, i32 noundef 0) #18 ; 0 uses
  %i.gr = sub nsw i64 %i.gp, %i.gh
  %i.gs = trunc i64 %i.gr to i32
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.gs) #18
  %i.gt = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.gp, i32 noundef 0) #18 ; 0 uses
  br label %mov_write_wave_tag.exit.i

mov_write_wave_tag.exit.i:                        ; preds = %bb.bb, %bb.ba, %.thread.i.i, %bb.az, %bb.ay, %bb.ax, %mov_pcm_be_gt16.exit.thread.i.i, %mov_pcm_le_gt16.exit.thread.i.i, %bb.aw, %bb.av
  call void @avio_wb32(ptr noundef %1, i32 noundef 8) #18
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  %i.gu = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.gv = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.fp, i32 noundef 0) #18 ; 0 uses
  %i.gw = sub nsw i64 %i.gu, %i.fp
  %i.gx = trunc i64 %i.gw to i32                  ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.gx) #18
  %i.gy = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.gu, i32 noundef 0) #18 ; 0 uses
  br label %mov_write_wfex_tag.exit

bb.bc:                                            ; preds = %mov_pcm_be_gt16.exit244.i, %.split294.i, %bb.ar
  %i.gz = load i32, ptr %i.s, align 8, !tbaa !107
  switch i32 %i.gz, label %bb.bi [
    i32 1630826605, label %bb.bd
    i32 1718444393, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ha = call fastcc i32 @mov_write_esds_tag(ptr noundef %1, ptr noundef nonnull %3)
  br label %mov_write_wfex_tag.exit

bb.be:                                            ; preds = %bb.bc
  %i.hb = load ptr, ptr %i.ae, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.hc = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store ptr null, ptr %i.i, align 8, !tbaa !40
  %i.hd = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.h) #18 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %mov_write_iacb_tag.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1650680169) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 1) #18
  %i.hf = load ptr, ptr %i.af, align 8, !tbaa !201
  %i.hg = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.hh = call i32 @ff_iamf_write_descriptors(ptr noundef %i.hf, ptr noundef %i.hg, ptr noundef %i.hb) #18 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.h) #18
  br label %mov_write_iacb_tag.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.hj = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.hk = call i32 @avio_close_dyn_buf(ptr noundef %i.hj, ptr noundef nonnull %i.i) #18 ; 2 uses
  call void @ffio_write_leb(ptr noundef %1, i32 noundef %i.hk) #18
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !40
  call void @avio_write(ptr noundef %1, ptr noundef %i.hl, i32 noundef %i.hk) #18
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !40
  call void @av_free(ptr noundef %i.hm) #18
  %i.hn = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.ho = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.hc, i32 noundef 0) #18 ; 0 uses
  %i.hp = sub nsw i64 %i.hn, %i.hc
  %i.hq = trunc i64 %i.hp to i32                  ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.hq) #18
  %i.hr = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.hn, i32 noundef 0) #18 ; 0 uses
  br label %mov_write_iacb_tag.exit.i

mov_write_iacb_tag.exit.i:                        ; preds = %bb.bh, %bb.bg, %bb.be
  %.0.i246.i = phi i32 [ %i.hq, %bb.bh ], [ %i.hh, %bb.bg ], [ %i.hd, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %mov_write_wfex_tag.exit

bb.bi:                                            ; preds = %bb.bc
  %i.hs = load ptr, ptr %i.q, align 8, !tbaa !75  ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !98
  switch i32 %i.hu, label %bb.cd [
    i32 73728, label %bb.bj
    i32 86019, label %bb.bk
    i32 86056, label %bb.bl
    i32 86032, label %bb.bm
    i32 86053, label %bb.bn
    i32 86028, label %bb.bp
    i32 86076, label %bb.br
    i32 86060, label %bb.by
  ]

bb.bj:                                            ; preds = %bb.bi
  call void @avio_wb32(ptr noundef %1, i32 noundef 17) #18
  %i.hv = load i32, ptr %3, align 8, !tbaa !120
  %i.hw = icmp eq i32 %i.hv, 2
  %..i = select i1 %i.hw, i32 1919770995, i32 1919770980
  call void @avio_wl32(ptr noundef %1, i32 noundef %..i) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1347241542) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb16(ptr noundef %1, i32 noundef 33279) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 1) #18
  br label %.thread263.i

bb.bk:                                            ; preds = %bb.bi
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !121
  %i.hx = call fastcc i32 @mov_write_ac3_tag(ptr noundef %0, ptr noundef %1, ptr %.val.i)
  br label %mov_write_wfex_tag.exit

bb.bl:                                            ; preds = %bb.bi
  %.val238.i = load ptr, ptr %i.ag, align 8, !tbaa !121
  %i.hy = call fastcc i32 @mov_write_eac3_tag(ptr noundef %0, ptr noundef %1, ptr %.val238.i)
  br label %mov_write_wfex_tag.exit

bb.bm:                                            ; preds = %bb.bi
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.ia = load i32, ptr %i.m, align 8, !tbaa !114
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !40
  %i.ie = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.ib
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !39
  call void @avio_write(ptr noundef %1, ptr noundef %i.id, i32 noundef %i.ig) #18
  %i.ih = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.ii = load i32, ptr %i.m, align 8, !tbaa !114
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !39
  br label %mov_write_wfex_tag.exit

bb.bn:                                            ; preds = %bb.bi
  %i.im = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 2019911287) #18
  %i.in = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !169
  %i.iq = call i32 @ff_put_wav_header(ptr noundef %0, ptr noundef %1, ptr noundef %i.ip, i32 noundef 1) #18 ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %mov_write_audio_tag.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.is = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.it = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.im, i32 noundef 0) #18 ; 0 uses
  %i.iu = sub nsw i64 %i.is, %i.im
  %i.iv = trunc i64 %i.iu to i32                  ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.iv) #18
  %i.iw = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.is, i32 noundef 0) #18 ; 0 uses
  br label %mov_write_wfex_tag.exit

bb.bp:                                            ; preds = %bb.bi
  %i.ix = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %1, i32 noundef 1632396900) #18
  call void @avio_w8(ptr noundef %1, i32 noundef 0) #18
  call void @avio_wb24(ptr noundef %1, i32 noundef 0) #18
  %i.iy = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.iz = load i32, ptr %i.m, align 8, !tbaa !114
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !39
  %.not.i63 = icmp eq i32 %i.jc, 34
  br i1 %.not.i63, label %bb.bq, label %mov_write_audio_tag.exit.thread

bb.bq:                                            ; preds = %bb.bp
  call void @avio_w8(ptr noundef %1, i32 noundef 128) #18
  %i.jd = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.je = load i32, ptr %i.m, align 8, !tbaa !114
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !39
  call void @avio_wb24(ptr noundef %1, i32 noundef %i.jh) #18
  %i.ji = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.jj = load i32, ptr %i.m, align 8, !tbaa !114
  %i.jk = sext i32 %i.jj to i64                   ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !40
  %i.jn = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jk
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !39
  call void @avio_write(ptr noundef %1, ptr noundef %i.jm, i32 noundef %i.jp) #18
  %i.jq = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.jr = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.ix, i32 noundef 0) #18 ; 0 uses
  %i.js = sub nsw i64 %i.jq, %i.ix
  %i.jt = trunc i64 %i.js to i32                  ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.jt) #18
  %i.ju = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.jq, i32 noundef 0) #18 ; 0 uses
  br label %mov_write_wfex_tag.exit

bb.br:                                            ; preds = %bb.bi
end_hunk_1
