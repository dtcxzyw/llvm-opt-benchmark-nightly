Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tedcaptionsdec?download=true
inline.NumInlined: 28
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tedcaptions_read_header:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.fm = call i32 @avio_read(ptr noundef %i.y, ptr noundef nonnull %i.e, i32 noundef 1) #7 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  %i.fo = load i8, ptr %i.e, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = icmp eq i32 %i.fm, 0
  %i.fr = select i1 %i.fq, i32 -541478725, i32 %i.fm
  %i.fs = select i1 %i.fn, i32 %i.fp, i32 %i.fr
  store i32 %i.fs, ptr %i.t, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ft = call fastcc i32 @parse_label(ptr noundef %i.y, ptr noundef %i.t, ptr noundef %1) ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %select.unfold45, label %.lr.ph177.i

.preheader.i:                                     ; preds = %select.unfold40, %.critedge.i.i94.i
  %i.fv = phi i32 [ %.be173, %.critedge.i.i94.i ], [ %.promoted188.i, %select.unfold40 ] ; 3 uses
  switch i32 %i.fv, label %bb.q [
    i32 32, label %.critedge.i.i94.i
    i32 9, label %.critedge.i.i94.i
    i32 10, label %.critedge.i.i94.i
    i32 13, label %.critedge.i.i94.i
    i32 125, label %bb.r
  ]

.critedge.i.i94.i:                                ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.fw = call i32 @avio_read(ptr noundef %i.y, ptr noundef nonnull %i.d, i32 noundef 1) #7 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  %i.fy = load i8, ptr %i.d, align 1
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp eq i32 %i.fw, 0
  %i.gb = select i1 %i.ga, i32 -541478725, i32 %i.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %.be173 = select i1 %i.fx, i32 %i.fz, i32 %i.gb
  br label %.preheader.i

bb.q:                                             ; preds = %.preheader.i
  %i.gc = icmp slt i32 %i.fv, 0
  br i1 %i.gc, label %select.unfold45, label %.thread53

bb.r:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.gd = call i32 @avio_read(ptr noundef %i.y, ptr noundef nonnull %i.c, i32 noundef 1) #7 ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  %i.gf = load i8, ptr %i.c, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = icmp eq i32 %i.gd, 0
  %i.gi = select i1 %i.gh, i32 -541478725, i32 %i.gd
  %i.gj = select i1 %i.ge, i32 %i.gg, i32 %i.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.gk = load i32, ptr %i.bm, align 4, !tbaa !38
  %i.gl = icmp eq i32 %i.gk, 0
  %i.gm = icmp eq i64 %.1108.i, -9223372036854775808
  %or.cond.i = select i1 %i.gl, i1 true, i1 %i.gm
  %i.gn = icmp eq i64 %.1.i, -9223372036854775808
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.gn
  br i1 %or.cond3.i, label %.thread53, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.go = call ptr @ff_subtitles_queue_insert_bprint(ptr noundef nonnull %i.z, ptr noundef nonnull %2, i32 noundef 0) #7 ; 4 uses
  %.not58.i = icmp eq ptr %i.go, null
  br i1 %.not58.i, label %.thread55, label %bb.t

.thread55:                                        ; preds = %bb.s
  %i.gp = call i32 @av_bprint_finalize(ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  store i64 %i.cd, ptr %i.gq, align 8, !tbaa !39
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %.1108.i, ptr %i.gr, align 8, !tbaa !44
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  store i64 %.1.i, ptr %i.gs, align 8, !tbaa !45
  call void @av_bprint_clear(ptr noundef nonnull %2) #7
  br label %select.unfold42

select.unfold42:                                  ; preds = %.critedge.i101.i, %bb.t
  %i.gt = phi i32 [ %i.gj, %bb.t ], [ %.be172, %.critedge.i101.i ] ; 3 uses
  switch i32 %i.gt, label %skip_spaces.exit102.i [
    i32 32, label %.critedge.i101.i
    i32 9, label %.critedge.i101.i
    i32 10, label %.critedge.i101.i
    i32 13, label %.critedge.i101.i
  ]

.critedge.i101.i:                                 ; preds = %select.unfold42, %select.unfold42, %select.unfold42, %select.unfold42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gu = call i32 @avio_read(ptr noundef %i.y, ptr noundef nonnull %i.b, i32 noundef 1) #7 ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  %i.gw = load i8, ptr %i.b, align 1
  %i.gx = zext i8 %i.gw to i32
  %i.gy = icmp eq i32 %i.gu, 0
  %i.gz = select i1 %i.gy, i32 -541478725, i32 %i.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.be172 = select i1 %i.gv, i32 %i.gx, i32 %i.gz
  br label %select.unfold42

skip_spaces.exit102.i:                            ; preds = %select.unfold42
  store i32 %i.gt, ptr %i.t, align 4
  %.not59.i = icmp eq i32 %i.gt, 44
  br i1 %.not59.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %skip_spaces.exit102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ha = call i32 @avio_read(ptr noundef %i.y, ptr noundef nonnull %i.a, i32 noundef 1) #7 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  %i.hc = load i8, ptr %i.a, align 1
  %i.hd = zext i8 %i.hc to i32
  %i.he = icmp eq i32 %i.ha, 0
  %i.hf = select i1 %i.he, i32 -541478725, i32 %i.ha
  %i.hg = select i1 %i.hb, i32 %i.hd, i32 %i.hf   ; 2 uses
  store i32 %i.hg, ptr %i.t, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %select.unfold36.backedge

bb.v:                                             ; preds = %skip_spaces.exit102.i
  %i.hh = call fastcc i32 @expect_byte(ptr noundef %i.y, ptr noundef %i.t, i8 noundef zeroext 93) ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %select.unfold45, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hj = call fastcc i32 @expect_byte(ptr noundef %i.y, ptr noundef %i.t, i8 noundef zeroext 125) ; 2 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %select.unfold45, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @skip_spaces(ptr noundef %i.y, ptr noundef %i.t)
  %i.hl = load i32, ptr %i.t, align 4, !tbaa !33  ; 3 uses
  %.not60.i = icmp eq i32 %i.hl, -541478725
  br i1 %.not60.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %select.unfold45, label %.thread53

.thread53:                                        ; preds = %bb.r, %._crit_edge.i.i, %skip_spaces.exit.i79.i, %bb.m, %skip_spaces.exit.i85.i, %.lr.ph.i87.i, %.lr.ph.i81.i, %select.unfold37, %.lr.ph.i.i, %bb.y, %bb.q, %bb.e
  %i.hn = call i32 @av_bprint_finalize(ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  br label %.sink.split

select.unfold45:                                  ; preds = %bb.f, %bb.p, %bb.i, %bb.y, %bb.q, %bb.e, %bb.v, %bb.w
  %.0.i.ph = phi i32 [ %i.fv, %bb.q ], [ %i.bn, %bb.e ], [ %i.hj, %bb.w ], [ %i.hh, %bb.v ], [ %i.hl, %bb.y ], [ %i.dc, %bb.i ], [ %i.ft, %bb.p ], [ %i.ce, %bb.f ] ; 2 uses
  %i.ho = call i32 @av_bprint_finalize(ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  %i.hp = icmp eq i32 %.0.i.ph, -1094995529
  br i1 %i.hp, label %bb.z, label %bb.ac

.sink.split:                                      ; preds = %select.unfold, %select.unfold35, %bb.b, %bb.c, %.thread53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %select.unfold45
  %i.hq = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.hr = call i64 @avio_seek(ptr noundef %i.hq, i64 noundef 0, i32 noundef 1) #7
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, i64 noundef %i.hr) #7
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.hs = call i32 @av_bprint_finalize(ptr noundef nonnull %2, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  call void @ff_subtitles_queue_finalize(ptr noundef %0, ptr noundef nonnull %i.z) #7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !46 ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  br i1 %i.hv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa
  %i.hw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !51
  %wide.trip.count = zext nneg i32 %i.hu to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !52
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !44
  %i.ic = add nsw i64 %i.ib, %i.hx
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.ab, %bb.aa
  %i.id = sext i32 %i.hu to i64
  %i.ie = getelementptr [8 x i8], ptr %.pre, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 -8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !52 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !55 ; 2 uses
  store i32 3, ptr %i.ii, align 8, !tbaa !58
  %3 = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 94210, ptr %3, align 4, !tbaa !61
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.w, i32 noundef 64, i32 noundef 1, i32 noundef 1000) #7
  %i.ij = getelementptr inbounds nuw i8, ptr %i.w, i64 804
  store i32 0, ptr %i.ij, align 4, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %i.ik, align 8, !tbaa !74
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.io = load i64, ptr %i.in, align 8, !tbaa !45
  %i.ip = add nsw i64 %i.io, %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !75
  %i.ir = getelementptr inbounds nuw i8, ptr %i.w, i64 848
  store i64 0, ptr %i.ir, align 8, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %.thread55, %select.unfold45, %bb.z, %bb.a, %._crit_edge
  %.030 = phi i32 [ -12, %bb.a ], [ 0, %._crit_edge ], [ -1094995529, %bb.z ], [ %.0.i.ph, %select.unfold45 ], [ -12, %.thread55 ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define internal i32 @tedcaptions_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @ff_subtitles_queue_read_packet(ptr noundef nonnull %i.c, ptr noundef %1) #7
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tedcaptions_read_close(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @ff_subtitles_queue_clean(ptr noundef nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tedcaptions_read_seek(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @ff_subtitles_queue_seek(ptr noundef nonnull %i.c, ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #7
  ret i32 %i.d
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_subtitles_queue_finalize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @expect_byte(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i8 noundef zeroext range(i8 34, 126) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %.pr.i = load i32, ptr %1, align 4, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %i.c = phi i32 [ %i.j, %.critedge.i ], [ %.pr.i, %bb.a ] ; 4 uses
  switch i32 %i.c, label %skip_spaces.exit [
    i32 32, label %.critedge.i
    i32 9, label %.critedge.i
    i32 10, label %.critedge.i
    i32 13, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1) #7 ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = load i8, ptr %i.b, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = icmp eq i32 %i.d, 0
  %i.i = select i1 %i.h, i32 -541478725, i32 %i.d
  %i.j = select i1 %i.e, i32 %i.g, i32 %i.i       ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.b, !llvm.loop !77

skip_spaces.exit:                                 ; preds = %bb.b
  %i.k = zext nneg i8 %2 to i32
  %.not = icmp eq i32 %i.c, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %skip_spaces.exit
  %i.l = icmp slt i32 %i.c, 0
  %spec.select = select i1 %i.l, i32 %i.c, i32 -1094995529
  br label %bb.e

bb.d:                                             ; preds = %skip_spaces.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.m = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #7 ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = load i8, ptr %i.a, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = icmp eq i32 %i.m, 0
  %i.r = select i1 %i.q, i32 -541478725, i32 %i.m
  %i.s = select i1 %i.n, i32 %i.p, i32 %i.r
  store i32 %i.s, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %spec.select, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @parse_label(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  tail call void @av_bprint_init(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1) #7
  %i.c = tail call fastcc i32 @parse_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i32, ptr %1, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i, %bb.b
  %i.e = phi i32 [ %i.l, %.critedge.i.i ], [ %.pr.i.i, %bb.b ] ; 3 uses
  switch i32 %i.e, label %bb.d [
    i32 32, label %.critedge.i.i
    i32 9, label %.critedge.i.i
    i32 10, label %.critedge.i.i
    i32 13, label %.critedge.i.i
    i32 58, label %expect_byte.exit
  ]

.critedge.i.i:                                    ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1) #7 ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = load i8, ptr %i.b, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = icmp eq i32 %i.f, 0
  %i.k = select i1 %i.j, i32 -541478725, i32 %i.f
  %i.l = select i1 %i.g, i32 %i.i, i32 %i.k       ; 2 uses
  store i32 %i.l, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.c, !llvm.loop !77

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.e, 0
  %spec.select = select i1 %i.m, i32 %i.e, i32 -1094995529
  br label %select.unfold

expect_byte.exit:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.n = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #7 ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = load i8, ptr %i.a, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = icmp eq i32 %i.n, 0
  %i.s = select i1 %i.r, i32 -541478725, i32 %i.n
  %i.t = select i1 %i.o, i32 %i.q, i32 %i.s
  store i32 %i.t, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %select.unfold

select.unfold:                                    ; preds = %bb.d, %expect_byte.exit, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %expect_byte.exit ], [ %spec.select, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 58, 48) i32 @parse_string(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 16 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %.pr.i.i = load i32, ptr %1, align 4, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.i, %bb.a
  %i.h = phi i32 [ %i.o, %.critedge.i.i ], [ %.pr.i.i, %bb.a ] ; 3 uses
  switch i32 %i.h, label %bb.c [
    i32 32, label %.critedge.i.i
    i32 9, label %.critedge.i.i
    i32 10, label %.critedge.i.i
    i32 13, label %.critedge.i.i
    i32 34, label %expect_byte.exit
  ]

.critedge.i.i:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.i = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef 1) #7 ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = load i8, ptr %i.g, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq i32 %i.i, 0
  %i.n = select i1 %i.m, i32 -541478725, i32 %i.i
  %i.o = select i1 %i.j, i32 %i.l, i32 %i.n       ; 2 uses
  store i32 %i.o, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %bb.b, !llvm.loop !77

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.h, 0
  %spec.select63 = select i1 %i.p, i32 %i.h, i32 -1094995529
  br label %expect_byte.exit.thread

expect_byte.exit:                                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.q = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 1) #7 ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = load i8, ptr %i.f, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = icmp eq i32 %i.q, 0
  %i.v = select i1 %i.u, i32 -541478725, i32 %i.q
  %i.w = select i1 %i.r, i32 %i.t, i32 %i.v       ; 5 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.x = icmp slt i32 %i.w, 1
  %.not76 = icmp eq i32 %i.w, 34
  %or.cond77 = or i1 %i.x, %.not76
  br i1 %or.cond77, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %expect_byte.exit, %av_bprint_utf8.exit.thread
  %i.y = phi i32 [ %i.ed, %av_bprint_utf8.exit.thread ], [ %i.w, %expect_byte.exit ] ; 2 uses
  %i.z = icmp eq i32 %i.y, 92
  br i1 %i.z, label %bb.d, label %av_bprint_utf8.exit.thread.sink.split

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.aa = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 1) #7 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = load i8, ptr %i.e, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = icmp eq i32 %i.aa, 0
  %i.af = select i1 %i.ae, i32 -541478725, i32 %i.aa
  %i.ag = select i1 %i.ab, i32 %i.ad, i32 %i.af   ; 4 uses
  store i32 %i.ag, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %expect_byte.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = and i32 %i.ag, 2147483615
  %i.aj = icmp eq i32 %i.ai, 85
  br i1 %i.aj, label %.preheader.preheader, label %av_bprint_utf8.exit.thread.sink.split

.preheader.preheader:                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.ak = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1) #7 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = load i8, ptr %i.d, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i32 %i.ak, 0
  %i.ap = select i1 %i.ao, i32 -541478725, i32 %i.ak
  %i.aq = select i1 %i.al, i32 %i.an, i32 %i.ap   ; 6 uses
  store i32 %i.aq, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %.preheader.1, label %bb.f

bb.f:                                             ; preds = %.preheader.preheader
  %i.at = or i32 %i.aq, 32                        ; 2 uses
  %i.au = add nsw i32 %i.at, -97
  %i.av = icmp ult i32 %i.au, 26
  br i1 %i.av, label %.preheader.1, label %av_bprint_utf8.exit

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.f
  %.pre-phi = phi i32 [ %i.at, %bb.f ], [ %i.aq, %.preheader.preheader ]
  %i.aw = icmp slt i32 %i.aq, 58
  %i.ax = add nuw nsw i32 %.pre-phi, 1048489
  %i.ay = select i1 %i.aw, i32 %i.ar, i32 %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.az = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1) #7 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = load i8, ptr %i.d, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = icmp eq i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 -541478725, i32 %i.az
  %i.bf = select i1 %i.ba, i32 %i.bc, i32 %i.be   ; 6 uses
  store i32 %i.bf, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10
  br i1 %i.bh, label %.preheader.2, label %bb.g

bb.g:                                             ; preds = %.preheader.1
  %i.bi = or i32 %i.bf, 32                        ; 2 uses
  %i.bj = add nsw i32 %i.bi, -97
  %i.bk = icmp ult i32 %i.bj, 26
  br i1 %i.bk, label %.preheader.2, label %av_bprint_utf8.exit

.preheader.2:                                     ; preds = %.preheader.1, %bb.g
  %.pre-phi86 = phi i32 [ %i.bi, %bb.g ], [ %i.bf, %.preheader.1 ]
  %i.bl = icmp slt i32 %i.bf, 58
  %i.bm = add nuw nsw i32 %.pre-phi86, 16777129
  %i.bn = select i1 %i.bl, i32 %i.bg, i32 %i.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bo = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1) #7 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = load i8, ptr %i.d, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = icmp eq i32 %i.bo, 0
  %i.bt = select i1 %i.bs, i32 -541478725, i32 %i.bo
  %i.bu = select i1 %i.bp, i32 %i.br, i32 %i.bt   ; 6 uses
  store i32 %i.bu, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %.preheader.3, label %bb.h

bb.h:                                             ; preds = %.preheader.2
  %i.bx = or i32 %i.bu, 32                        ; 2 uses
  %i.by = add nsw i32 %i.bx, -97
  %i.bz = icmp ult i32 %i.by, 26
  br i1 %i.bz, label %.preheader.3, label %av_bprint_utf8.exit

.preheader.3:                                     ; preds = %.preheader.2, %bb.h
  %.pre-phi88 = phi i32 [ %i.bx, %bb.h ], [ %i.bu, %.preheader.2 ]
  %i.ca = shl i32 %i.ay, 8
  %i.cb = shl i32 %i.bn, 4
  %i.cc = add i32 %i.ca, %i.cb
  %i.cd = icmp slt i32 %i.bu, 58
  %i.ce = add nuw nsw i32 %.pre-phi88, 268435369
  %i.cf = select i1 %i.cd, i32 %i.bv, i32 %i.ce
  %i.cg = add i32 %i.cf, %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.ch = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1) #7 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = load i8, ptr %i.d, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = icmp eq i32 %i.ch, 0
  %i.cm = select i1 %i.cl, i32 -541478725, i32 %i.ch
  %i.cn = select i1 %i.ci, i32 %i.ck, i32 %i.cm   ; 6 uses
  store i32 %i.cn, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.co = add nsw i32 %i.cn, -48                  ; 2 uses
  %i.cp = icmp ult i32 %i.co, 10
  br i1 %i.cp, label %.preheader.3._crit_edge, label %bb.i

bb.i:                                             ; preds = %.preheader.3
  %i.cq = or i32 %i.cn, 32                        ; 2 uses
  %i.cr = add nsw i32 %i.cq, -97
  %i.cs = icmp ult i32 %i.cr, 26
  br i1 %i.cs, label %.preheader.3._crit_edge, label %av_bprint_utf8.exit

.preheader.3._crit_edge:                          ; preds = %.preheader.3, %bb.i
  %.pre-phi90 = phi i32 [ %i.cq, %bb.i ], [ %i.cn, %.preheader.3 ]
  %i.ct = shl i32 %i.cg, 4
  %i.cu = icmp slt i32 %i.cn, 58
  %i.cv = add nsw i32 %.pre-phi90, -87
  %i.cw = select i1 %i.cu, i32 %i.co, i32 %i.cv
  %i.cx = add i32 %i.cw, %i.ct                    ; 7 uses
  %i.cy = icmp ult i32 %i.cx, 128
  br i1 %i.cy, label %av_bprint_utf8.exit.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %.preheader.3._crit_edge
  %i.cz = icmp ugt i32 %i.cx, 65535               ; 2 uses
  %i.da = lshr i32 %i.cx, 16
  %spec.select.i.i = select i1 %i.cz, i32 %i.da, i32 %i.cx ; 3 uses
  %spec.select11.i.i = select i1 %i.cz, i16 16, i16 0 ; 2 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.db = lshr i32 %spec.select.i.i, 8
  %i.dc = or disjoint i16 %spec.select11.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.db
  %.1.i.i = select i1 %.not.i.i, i16 %spec.select11.i.i, i16 %i.dc
  %i.dd = zext nneg i32 %.110.i.i to i64
  %i.de = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = zext i8 %i.df to i16
  %i.dh = add nsw i16 %.1.i.i, -2
  %.lhs.trunc.i = add nsw i16 %i.dh, %i.dg        ; 2 uses
  %i.di = sdiv i16 %.lhs.trunc.i, 5
  %.sext.i = zext nneg i16 %i.di to i32           ; 3 uses
  %i.dj = mul nuw nsw i32 %.sext.i, 6
  %i.dk = lshr i32 %i.cx, %i.dj
  %i.dl = lshr i32 65408, %.sext.i
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i8
  call void @av_bprint_chars(ptr noundef nonnull %2, i8 noundef signext %i.dn, i32 noundef 1) #7
  %i.do = icmp sgt i16 %.lhs.trunc.i, 4
  br i1 %i.do, label %.lr.ph.i, label %av_bprint_utf8.exit.thread

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.0.in14.i = phi i32 [ %.0.i51, %.lr.ph.i ], [ %.sext.i, %bb.j ] ; 2 uses
  %.0.i51 = add nsw i32 %.0.in14.i, -1            ; 2 uses
  %i.dp = mul nsw i32 %.0.i51, 6
  %i.dq = lshr i32 %i.cx, %i.dp
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = and i8 %i.dr, 63
  %i.dt = or disjoint i8 %i.ds, -128
  call void @av_bprint_chars(ptr noundef nonnull %2, i8 noundef signext %i.dt, i32 noundef 1) #7
  %i.du = icmp samesign ugt i32 %.0.in14.i, 1
  br i1 %i.du, label %.lr.ph.i, label %av_bprint_utf8.exit.thread, !llvm.loop !78

av_bprint_utf8.exit:                              ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa79 = phi i32 [ %i.aq, %bb.f ], [ %i.bf, %bb.g ], [ %i.bu, %bb.h ], [ %i.cn, %bb.i ] ; 2 uses
  %i.dv = icmp slt i32 %.lcssa79, 0
  %spec.select = select i1 %i.dv, i32 %.lcssa79, i32 -1094995529
  br label %expect_byte.exit.thread

av_bprint_utf8.exit.thread.sink.split:            ; preds = %.lr.ph, %bb.e, %.preheader.3._crit_edge
  %.sink99 = phi i32 [ %i.ag, %bb.e ], [ %i.cx, %.preheader.3._crit_edge ], [ %i.y, %.lr.ph ]
  %i.dw = trunc i32 %.sink99 to i8
  call void @av_bprint_chars(ptr noundef nonnull %2, i8 noundef signext %i.dw, i32 noundef 1) #7
  br label %av_bprint_utf8.exit.thread

av_bprint_utf8.exit.thread:                       ; preds = %.lr.ph.i, %av_bprint_utf8.exit.thread.sink.split, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.dx = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 1) #7 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load i8, ptr %i.c, align 1
  %i.ea = zext i8 %i.dz to i32
  %i.eb = icmp eq i32 %i.dx, 0
  %i.ec = select i1 %i.eb, i32 -541478725, i32 %i.dx
  %i.ed = select i1 %i.dy, i32 %i.ea, i32 %i.ec   ; 5 uses
  store i32 %i.ed, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.ee = icmp slt i32 %i.ed, 1
  %.not = icmp eq i32 %i.ed, 34
  %or.cond = or i1 %i.ee, %.not
  br i1 %or.cond, label %.critedge.preheader, label %.lr.ph, !llvm.loop !79

.critedge.preheader:                              ; preds = %av_bprint_utf8.exit.thread, %expect_byte.exit
  %.ph = phi i32 [ %i.w, %expect_byte.exit ], [ %i.ed, %av_bprint_utf8.exit.thread ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge.i.i53
  %i.ef = phi i32 [ %i.em, %.critedge.i.i53 ], [ %.ph, %.critedge.preheader ] ; 3 uses
  switch i32 %i.ef, label %bb.k [
    i32 32, label %.critedge.i.i53
    i32 9, label %.critedge.i.i53
    i32 10, label %.critedge.i.i53
    i32 13, label %.critedge.i.i53
    i32 34, label %bb.l
  ]

.critedge.i.i53:                                  ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.eg = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1) #7 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  %i.ei = load i8, ptr %i.b, align 1
  %i.ej = zext i8 %i.ei to i32
  %i.ek = icmp eq i32 %i.eg, 0
  %i.el = select i1 %i.ek, i32 -541478725, i32 %i.eg
  %i.em = select i1 %i.eh, i32 %i.ej, i32 %i.el   ; 2 uses
  store i32 %i.em, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.critedge, !llvm.loop !77

bb.k:                                             ; preds = %.critedge
  %i.en = icmp slt i32 %i.ef, 0
  %spec.select64 = select i1 %i.en, i32 %i.ef, i32 -1094995529
  br label %expect_byte.exit.thread

bb.l:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.eo = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #7 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  %i.eq = load i8, ptr %i.a, align 1
  %i.er = zext i8 %i.eq to i32
  %i.es = icmp eq i32 %i.eo, 0
  %i.et = select i1 %i.es, i32 -541478725, i32 %i.eo
  %i.eu = select i1 %i.ep, i32 %i.er, i32 %i.et
  store i32 %i.eu, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not48 = icmp eq i32 %3, 0
  br i1 %.not48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ev = getelementptr i8, ptr %2, i64 8
  %.val = load i32, ptr %i.ev, align 8, !tbaa !80
  %i.ew = getelementptr i8, ptr %2, i64 12
  %.val50 = load i32, ptr %i.ew, align 4, !tbaa !38
  %.not65 = icmp ult i32 %.val, %.val50
  br i1 %.not65, label %bb.n, label %expect_byte.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %expect_byte.exit.thread

expect_byte.exit.thread:                          ; preds = %bb.d, %bb.k, %bb.c, %av_bprint_utf8.exit, %bb.m, %bb.n
  %.3 = phi i32 [ %spec.select63, %bb.c ], [ -12, %bb.m ], [ %spec.select, %av_bprint_utf8.exit ], [ %spec.select64, %bb.k ], [ 0, %bb.n ], [ -1094995529, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @skip_spaces(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %.pr = load i32, ptr %1, align 4, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.b = phi i32 [ %i.i, %.critedge ], [ %.pr, %bb.a ]
  switch i32 %i.b, label %bb.c [
    i32 32, label %.critedge
    i32 9, label %.critedge
    i32 10, label %.critedge
    i32 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #7 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = load i8, ptr %i.a, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = icmp eq i32 %i.c, 0
  %i.h = select i1 %i.g, i32 -541478725, i32 %i.c
  %i.i = select i1 %i.d, i32 %i.f, i32 %i.h       ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.b, !llvm.loop !77

bb.c:                                             ; preds = %bb.b
  ret void
}

declare ptr @ff_subtitles_queue_insert_bprint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_bprint_clear(ptr noundef) local_unnamed_addr #3

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @avio_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #3

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_subtitles_queue_read_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_subtitles_queue_clean(ptr noundef) local_unnamed_addr #3

declare i32 @ff_subtitles_queue_seek(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!11, !11, i64 0}
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
!33 = !{!6, !6, i64 0}
!34 = !{!35, !11, i64 0}
!35 = !{!"AVBPrint", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = !{!35, !6, i64 12}
!39 = !{!40, !27, i64 72}
!40 = !{!"AVPacket", !41, i64 0, !27, i64 8, !27, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !42, i64 48, !6, i64 56, !27, i64 64, !27, i64 72, !12, i64 80, !41, i64 88, !43, i64 96}
!41 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!43 = !{!"AVRational", !6, i64 0, !6, i64 4}
!44 = !{!40, !27, i64 8}
!45 = !{!40, !27, i64 64}
!46 = !{!47, !6, i64 24}
!47 = !{!"", !19, i64 0, !27, i64 8, !48, i64 16}
!48 = !{!"", !49, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!49 = !{!"p2 _ZTS8AVPacket", !24, i64 0}
!50 = !{!47, !49, i64 16}
!51 = !{!47, !27, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!54 = distinct !{!54, !16}
!55 = !{!56, !57, i64 16}
!56 = !{!"AVStream", !19, i64 0, !6, i64 8, !6, i64 12, !57, i64 16, !12, i64 24, !43, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !6, i64 64, !6, i64 68, !43, i64 72, !29, i64 80, !43, i64 88, !40, i64 96, !6, i64 200, !43, i64 204, !6, i64 212}
!57 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!58 = !{!59, !6, i64 0}
!59 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !42, i64 32, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !43, i64 80, !43, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !60, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!60 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!61 = !{!59, !6, i64 4}
!62 = !{!63, !6, i64 804}
!63 = !{!"FFStream", !56, i64 0, !64, i64 216, !6, i64 224, !65, i64 232, !6, i64 240, !66, i64 248, !6, i64 256, !67, i64 264, !6, i64 280, !6, i64 284, !68, i64 288, !69, i64 312, !70, i64 320, !6, i64 328, !6, i64 332, !27, i64 336, !27, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !27, i64 368, !27, i64 376, !27, i64 384, !6, i64 392, !27, i64 400, !27, i64 408, !27, i64 416, !6, i64 424, !6, i64 428, !7, i64 432, !7, i64 568, !7, i64 592, !27, i64 728, !7, i64 736, !7, i64 737, !43, i64 740, !10, i64 752, !71, i64 784, !27, i64 792, !6, i64 800, !6, i64 804, !6, i64 808, !72, i64 816, !53, i64 824, !6, i64 832, !6, i64 836, !27, i64 840, !27, i64 848, !73, i64 856}
!64 = !{!"p1 _ZTS15AVFormatContext", !12, i64 0}
!65 = !{!"p1 _ZTS12AVBSFContext", !12, i64 0}
!66 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!67 = !{!"", !65, i64 0, !6, i64 8}
!68 = !{!"FFFrac", !27, i64 0, !27, i64 8, !27, i64 16}
!69 = !{!"p1 _ZTS12FFStreamInfo", !12, i64 0}
!70 = !{!"p1 _ZTS12AVIndexEntry", !12, i64 0}
!71 = !{!"p1 _ZTS15PacketListEntry", !12, i64 0}
!72 = !{!"p1 _ZTS20AVCodecParserContext", !12, i64 0}
!73 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!74 = !{!56, !27, i64 40}
!75 = !{!56, !27, i64 48}
!76 = !{!63, !27, i64 848}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = !{!35, !6, i64 8}
end_hunk_0
