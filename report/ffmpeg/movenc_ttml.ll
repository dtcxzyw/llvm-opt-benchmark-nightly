Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenc_ttml?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PacketList = type { ptr, ptr }

@.str = private unnamed_addr constant [42 x i8] c"Failed to initialize the TTML writer: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Calculated subtitle fragment start: %ld, duration: %ld\0A\00", align 1
@empty_ttml_document = internal constant [53 x i8] c"<tt xml:lang=\22\22 xmlns=\22http://www.w3.org/ns/ttml\22 />\00", align 16
@.str.2 = private unnamed_addr constant [69 x i8] c"Failed to generate a squashed TTML packet from the packet queue: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to create a TTML AVPacket from AVIO data: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ttml\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"Very late TTML packet in queue, dropping packet with pts: %ld, duration: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"TTML packet writeout: pts: %ld (%ld), duration: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Adjustments: pts: %ld, duration: %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_mov_generate_squashed_ttml_packet(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PacketList, align 8         ; 10 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [64 x i8], align 1                ; 3 uses
  %i.c = alloca [64 x i8], align 1                ; 3 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [64 x i8], align 1                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.h = getelementptr i8, ptr %1, i64 128        ; 3 uses
  %.val = load ptr, ptr %i.h, align 8, !tbaa !55  ; 2 uses
  %i.i = call i32 @avformat_alloc_output_context2(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null) #6 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.p = call ptr @avformat_new_stream(ptr noundef %i.o, ptr noundef null) #6 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = call i32 @avcodec_parameters_copy(ptr noundef %i.r, ptr noundef %i.t) #6 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0.i.ph = phi i32 [ %i.u, %bb.d ], [ -12, %bb.c ], [ %i.i, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.w = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %.0.i.ph, ptr noundef nonnull %i.b, i64 noundef 64) #6 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull %i.b) #6
  br label %bb.as

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !61
  store i64 %i.z, ptr %i.x, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !65
  %i.ac = and i32 %i.ab, 2
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67 ; 2 uses
  %.not44.i = icmp eq i32 %i.ag, 0
  br i1 %.not44.i, label %mov_calculate_start_and_end_of_other_tracks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  %wide.trip.count.i = zext i32 %i.ag to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %.lr.ph.i
  %.044 = phi i64 [ %i.ae, %.lr.ph.i ], [ %.1, %bb.o ] ; 5 uses
  %i.ak = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.bq, %bb.o ] ; 7 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %.03542.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %.1.i, %bb.o ] ; 5 uses
  %i.al = getelementptr inbounds nuw [1640 x i8], ptr %i.aj, i64 %indvars.iv.i ; 7 uses
  %i.am = icmp eq ptr %1, %i.al
  br i1 %i.am, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1584
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !69
  %.not.i34 = icmp eq i32 %i.ao, 0
  br i1 %.not.i34, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70
  %i.ar = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %i.ar, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !71
  %.not40.i = icmp eq i32 %i.at, 0
  br i1 %.not40.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !76
  %i.ba = sext i32 %i.az to i64
  %i.bb = add nsw i64 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bi = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bj = call i64 @av_rescale_q_rnd(i64 noundef %i.bb, i64 %i.bh, i64 %i.bi, i32 noundef 8197) #7 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !66
  %i.bm = call i64 @av_rescale_q_rnd(i64 noundef %i.bl, i64 %i.bh, i64 %i.bi, i32 noundef 8197) #7
  %i.bn = icmp eq i64 %i.ak, -9223372036854775808
  br i1 %i.bn, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not41.i = icmp slt i64 %i.bj, %i.ae
  br i1 %.not41.i, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %..i = call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.bj) ; 2 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.n, %bb.m
  %.2 = phi i64 [ %.044, %bb.m ], [ %..i, %bb.n ], [ %i.bj, %bb.l ]
  %i.bo = phi i64 [ %i.ak, %bb.m ], [ %..i, %bb.n ], [ %i.bj, %bb.l ]
  %i.bp = call i64 @llvm.smax.i64(i64 %.03542.i, i64 %i.bm)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.k, %bb.j, %bb.i, %bb.h
  %.1 = phi i64 [ %.044, %bb.h ], [ %.044, %bb.j ], [ %.044, %bb.k ], [ %.2, %.sink.split.i ], [ %.044, %bb.i ] ; 2 uses
  %i.bq = phi i64 [ %i.ak, %bb.h ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %i.bo, %.sink.split.i ], [ %i.ak, %bb.i ]
  %.1.i = phi i64 [ %.03542.i, %bb.h ], [ %.03542.i, %bb.j ], [ %.03542.i, %bb.k ], [ %i.bp, %.sink.split.i ], [ %.03542.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mov_calculate_start_and_end_of_other_tracks.exit, label %bb.h, !llvm.loop !9

mov_calculate_start_and_end_of_other_tracks.exit: ; preds = %bb.o, %bb.g
  %.3 = phi i64 [ %i.ae, %bb.g ], [ %.1, %bb.o ]  ; 4 uses
  %.035.lcssa.i = phi i64 [ %i.ae, %bb.g ], [ %.1.i, %bb.o ]
  %.not31 = icmp eq i64 %.3, -9223372036854775808
  br i1 %.not31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mov_calculate_start_and_end_of_other_tracks.exit
  %i.br = sub nsw i64 %.035.lcssa.i, %.3          ; 2 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.1, i64 noundef %.3, i64 noundef %i.br) #6
  br label %bb.q

bb.q:                                             ; preds = %mov_calculate_start_and_end_of_other_tracks.exit, %bb.p, %bb.f
  %.150 = phi i64 [ -9223372036854775808, %bb.f ], [ -9223372036854775808, %mov_calculate_start_and_end_of_other_tracks.exit ], [ %.3, %bb.p ] ; 14 uses
  %.146 = phi i64 [ 0, %bb.f ], [ 0, %mov_calculate_start_and_end_of_other_tracks.exit ], [ %i.br, %bb.p ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1592 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !78
  %.not32 = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !30  ; 5 uses
  br i1 %.not32, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79
  call void @avio_write(ptr noundef %i.bw, ptr noundef nonnull @empty_ttml_document, i32 noundef 52) #6
  %i.bx = icmp eq i64 %.150, -9223372036854775808 ; 2 uses
  %spec.select = select i1 %i.bx, i64 0, i64 %.150
  %spec.select65 = select i1 %i.bx, i64 0, i64 %.146
  br label %bb.ap

bb.s:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !70 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, -9223372036854775808
  br i1 %i.ca, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = add nsw i64 %i.cc, %i.bz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = phi i64 [ %i.cd, %bb.t ], [ 0, %bb.s ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not.i35 = icmp eq i64 %.150, -9223372036854775808 ; 3 uses
  %i.cf = add nsw i64 %.146, %.150
  %spec.select66 = select i1 %.not.i35, i64 %i.ce, i64 %.150 ; 4 uses
  %spec.select67 = select i1 %.not.i35, i64 %i.ce, i64 %i.cf ; 2 uses
  %i.cg = call i32 @avformat_write_header(ptr noundef %i.bu, ptr noundef null) #6 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %mov_write_ttml_document_from_queue.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %i.ci = call i32 @ff_packet_list_get(ptr noundef nonnull %i.bs, ptr noundef %2) #6
  %.not116138.i = icmp eq i32 %i.ci, 0
  br i1 %.not116138.i, label %.lr.ph.i36, label %.thread127.i

.lr.ph.i36:                                       ; preds = %.preheader.i
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 136
end_hunk_0
begin_hunk_1_@ff_mov_generate_squashed_ttml_packet:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.ak, %.lr.ph.i36
  %.195139.i = phi i64 [ %spec.select67, %.lr.ph.i36 ], [ %.3.i, %bb.ak ] ; 8 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !81 ; 8 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !82 ; 6 uses
  %i.cr = add i64 %i.cq, %i.cp                    ; 4 uses
  br i1 %.not.i35, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = icmp slt i64 %i.cr, %.150
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.5, i64 noundef %i.cp, i64 noundef %i.cq) #6
  br label %bb.ak, !llvm.loop !10

bb.y:                                             ; preds = %bb.w
  %.not118.i = icmp slt i64 %i.cp, %.195139.i
  br i1 %.not118.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = call i32 @ff_packet_list_put(ptr noundef nonnull %i.bs, ptr noundef nonnull %2, ptr noundef null, i32 noundef 1) #6 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.thread123.i, label %.thread127.i

bb.aa:                                            ; preds = %bb.y
  %i.cv = icmp slt i64 %i.cp, %.150
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.cr, %.150                    ; 2 uses
  store i64 %i.cw, ptr %i.ck, align 8, !tbaa !82
  store i64 %.150, ptr %i.cj, align 8, !tbaa !81
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cx = phi i64 [ %i.cw, %bb.ab ], [ %i.cq, %bb.aa ]
  %i.cy = phi i64 [ %.150, %bb.ab ], [ %i.cp, %bb.aa ] ; 2 uses
  %i.cz = icmp sgt i64 %i.cr, %.195139.i
  br i1 %i.cz, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.da = call i32 @ff_packet_list_put(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull @av_packet_ref, i32 noundef 1) #6 ; 2 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %.thread.i, label %.thread123.i

.thread.i:                                        ; preds = %bb.ad
  %i.dc = sub nsw i64 %.195139.i, %i.cy           ; 4 uses
  %i.dd = load ptr, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !85
  %i.dg = add nsw i64 %i.df, %i.dc                ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !86
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !85
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 72 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !87
  %i.dk = sub nsw i64 %i.dj, %i.dc
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !87
  store i64 %i.dc, ptr %i.ck, align 8, !tbaa !82
  %.pre.i = load i64, ptr %i.cj, align 8, !tbaa !81
  br label %bb.af

bb.ae:                                            ; preds = %bb.v
  %.195..i = call i64 @llvm.smax.i64(i64 %.195139.i, i64 %i.cr)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread.i, %bb.ac
  %i.dl = phi i64 [ %i.dc, %.thread.i ], [ %i.cx, %bb.ac ], [ %i.cq, %bb.ae ]
  %i.dm = phi i64 [ %.pre.i, %.thread.i ], [ %i.cy, %bb.ac ], [ %i.cp, %bb.ae ] ; 2 uses
  %.2.i = phi i64 [ %.195139.i, %.thread.i ], [ %.195139.i, %bb.ac ], [ %.195..i, %bb.ae ]
  %i.dn = sub nsw i64 %i.dm, %spec.select66
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.6, i64 noundef %i.dm, i64 noundef %i.dn, i64 noundef %i.dl) #6
  %i.do = load i64, ptr %i.cj, align 8, !tbaa !81 ; 2 uses
  %.not119.i = icmp eq i64 %i.do, %i.cp
  %.pre147.i = load i64, ptr %i.ck, align 8, !tbaa !82 ; 2 uses
  %.not120.i = icmp eq i64 %.pre147.i, %i.cq
  %or.cond.i = select i1 %.not119.i, i1 %.not120.i, i1 false
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = sub nsw i64 %i.do, %i.cp
  %i.dq = sub nsw i64 %.pre147.i, %i.cq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.7, i64 noundef %i.dp, i64 noundef %i.dq) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dr = load ptr, ptr %i.cl, align 8, !tbaa !88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !91
  %i.du = icmp eq i32 %i.dt, 1886938724
  br i1 %i.du, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dv = load i64, ptr %i.cj, align 8, !tbaa !81
  %i.dw = sub nsw i64 %i.dv, %spec.select66       ; 2 uses
  store i64 %i.dw, ptr %i.cj, align 8, !tbaa !81
  store i64 %i.dw, ptr %i.cm, align 8, !tbaa !92
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 0, ptr %i.cn, align 4, !tbaa !93
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.co, align 8, !tbaa !94
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !95
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i64, ptr %i.dy, align 8
  %i.ed = load i64, ptr %i.eb, align 8
  call void @av_packet_rescale_ts(ptr noundef nonnull %2, i64 %i.ec, i64 %i.ed) #6
  %i.ee = call i32 @av_write_frame(ptr noundef %i.bu, ptr noundef nonnull %2) #6 ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.thread123.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %.3.i = phi i64 [ %.195139.i, %bb.x ], [ %.2.i, %bb.aj ] ; 2 uses
  call void @av_packet_unref(ptr noundef nonnull %2) #6
  %i.eg = call i32 @ff_packet_list_get(ptr noundef nonnull %i.bs, ptr noundef nonnull %2) #6
  %.not116.i = icmp eq i32 %i.eg, 0
  br i1 %.not116.i, label %bb.v, label %.thread127.i

.thread127.i:                                     ; preds = %bb.ak, %bb.z, %.preheader.i
  %.195137.i = phi i64 [ %.195139.i, %bb.z ], [ %spec.select67, %.preheader.i ], [ %.3.i, %bb.ak ]
  %i.eh = call i32 @av_write_trailer(ptr noundef %i.bu) #6 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %.thread123.i, label %bb.al

bb.al:                                            ; preds = %.thread127.i
  %i.ej = sub nsw i64 %.195137.i, %spec.select66
  br label %.thread123.i

.thread123.i:                                     ; preds = %bb.aj, %bb.ad, %bb.al, %.thread127.i, %bb.z
  %.352 = phi i64 [ %.150, %bb.z ], [ %.150, %.thread127.i ], [ %spec.select66, %bb.al ], [ %.150, %bb.ad ], [ %.150, %bb.aj ] ; 2 uses
  %.348 = phi i64 [ %.146, %bb.z ], [ %.146, %.thread127.i ], [ %i.ej, %bb.al ], [ %.146, %bb.ad ], [ %.146, %bb.aj ] ; 2 uses
  %.299.i = phi i32 [ %i.ct, %bb.z ], [ %i.eh, %.thread127.i ], [ 0, %bb.al ], [ %i.ee, %bb.aj ], [ %i.da, %bb.ad ] ; 2 uses
  call void @av_packet_unref(ptr noundef %2) #6
  %i.ek = call i32 @ff_packet_list_get(ptr noundef nonnull %3, ptr noundef %2) #6
  %.not121141.i = icmp eq i32 %i.ek, 0
  br i1 %.not121141.i, label %.lr.ph142.i, label %mov_write_ttml_document_from_queue.exit

bb.am:                                            ; preds = %.lr.ph142.i
  %i.el = call i32 @ff_packet_list_get(ptr noundef nonnull %3, ptr noundef %2) #6
  %.not121.i = icmp eq i32 %i.el, 0
  br i1 %.not121.i, label %.lr.ph142.i, label %mov_write_ttml_document_from_queue.exit.thread60, !llvm.loop !11

mov_write_ttml_document_from_queue.exit.thread60: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.ap

.lr.ph142.i:                                      ; preds = %.thread123.i, %bb.am
  %i.em = call i32 @ff_packet_list_put(ptr noundef nonnull %i.bs, ptr noundef %2, ptr noundef nonnull @av_packet_ref, i32 noundef 1) #6 ; 2 uses
  call void @av_packet_unref(ptr noundef %2) #6
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.an, label %bb.am, !llvm.loop !11

bb.an:                                            ; preds = %.lr.ph142.i
  call void @ff_packet_list_free(ptr noundef nonnull %3) #6
  br label %mov_write_ttml_document_from_queue.exit.thread

mov_write_ttml_document_from_queue.exit.thread:   ; preds = %bb.u, %bb.an
  %.0102.i.ph = phi i32 [ %i.em, %bb.an ], [ %i.cg, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.ao

mov_write_ttml_document_from_queue.exit:          ; preds = %.thread123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.eo = icmp slt i32 %.299.i, 0
  br i1 %i.eo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %mov_write_ttml_document_from_queue.exit.thread, %mov_write_ttml_document_from_queue.exit
  %.0102.i59 = phi i32 [ %.0102.i.ph, %mov_write_ttml_document_from_queue.exit.thread ], [ %.299.i, %mov_write_ttml_document_from_queue.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.ep = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %.0102.i59, ptr noundef nonnull %i.c, i64 noundef 64) #6 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) #6
  br label %bb.as

bb.ap:                                            ; preds = %bb.r, %mov_write_ttml_document_from_queue.exit.thread60, %mov_write_ttml_document_from_queue.exit
  %.251 = phi i64 [ %.352, %mov_write_ttml_document_from_queue.exit.thread60 ], [ %spec.select, %bb.r ], [ %.352, %mov_write_ttml_document_from_queue.exit ] ; 2 uses
  %.247 = phi i64 [ %.348, %mov_write_ttml_document_from_queue.exit.thread60 ], [ %spec.select65, %bb.r ], [ %.348, %mov_write_ttml_document_from_queue.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr null, ptr %i.d, align 8, !tbaa !96
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79
  %i.et = call i32 @avio_close_dyn_buf(ptr noundef %i.es, ptr noundef nonnull %i.d) #6
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr null, ptr %i.ev, align 8, !tbaa !79
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.ex = call i32 @av_packet_from_data(ptr noundef %2, ptr noundef %i.ew, i32 noundef %i.et) #6 ; 3 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.ez = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %i.ex, ptr noundef nonnull %i.e, i64 noundef 64) #6 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e) #6
  call void @av_freep(ptr noundef nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.251, ptr %i.fa, align 8, !tbaa !92
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.251, ptr %i.fb, align 8, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.247, ptr %i.fc, align 8, !tbaa !82
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !97
  %i.ff = or i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.e
  %.024 = phi i32 [ %.0.i.ph, %bb.e ], [ %.0102.i59, %bb.ao ], [ 0, %bb.ar ], [ %i.ex, %bb.aq ]
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %.not33 = icmp eq ptr %i.fg, null
  br i1 %.not33, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.fh) #6
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fi = phi ptr [ %.pre, %bb.at ], [ null, %bb.as ]
  call void @avformat_free_context(ptr noundef %i.fi) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_close_dyn_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_packet_from_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ffio_free_dyn_buf(ptr noundef) local_unnamed_addr #2

declare void @avformat_free_context(ptr noundef) local_unnamed_addr #2

declare i32 @avformat_alloc_output_context2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_open_dyn_buf(ptr noundef) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_parameters_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q_rnd(i64 noundef, i64, i64, i32 noundef) local_unnamed_addr #4

declare i32 @avformat_write_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_packet_list_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare i32 @ff_packet_list_put(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_packet_ref(ptr noundef, ptr noundef) #2

declare void @av_packet_rescale_ts(ptr noundef, i64, i64) local_unnamed_addr #2

declare i32 @av_write_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_write_trailer(ptr noundef) local_unnamed_addr #2

declare void @ff_packet_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !77}
!10 = distinct !{!10, !77}
!11 = distinct !{!11, !77}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!14 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!15 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!16 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!19 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!20 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!24 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!25 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!26 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!27 = !{!"AVFormatContext", !13, i64 0, !14, i64 8, !15, i64 16, !12, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !18, i64 48, !6, i64 56, !19, i64 64, !6, i64 72, !20, i64 80, !21, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !22, i64 136, !22, i64 144, !21, i64 152, !6, i64 160, !6, i64 164, !23, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !24, i64 192, !22, i64 200, !6, i64 208, !6, i64 212, !25, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !22, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !22, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !21, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !6, i64 368, !26, i64 376, !26, i64 384, !26, i64 392, !26, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !22, i64 432, !21, i64 440, !12, i64 448, !12, i64 456, !22, i64 464, !21, i64 472}
!28 = !{!27, !12, i64 24}
!29 = !{!"p1 _ZTS15AVFormatContext", !12, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p2 omnipotent char", !17, i64 0}
!32 = !{!"p1 int", !12, i64 0}
!33 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!34 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!35 = !{!"p1 _ZTS9MOVIentry", !12, i64 0}
!36 = !{!"p1 _ZTS6MovTag", !12, i64 0}
!37 = !{!"p1 _ZTS10HintSample", !12, i64 0}
!38 = !{!"HintSampleQueue", !6, i64 0, !6, i64 4, !37, i64 8}
!39 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!40 = !{!"p1 _ZTS15MOVFragmentInfo", !12, i64 0}
!41 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!42 = !{!"p1 _ZTS8AVAESCTR", !12, i64 0}
!43 = !{!"short", !5, i64 0}
!44 = !{!"p1 _ZTS19MOVMuxCencAV1TGInfo", !12, i64 0}
!45 = !{!"p1 _ZTS21CodedBitstreamContext", !12, i64 0}
!46 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!47 = !{!"p1 _ZTS18CodedBitstreamUnit", !12, i64 0}
!48 = !{!"CodedBitstreamFragment", !21, i64 0, !22, i64 8, !22, i64 16, !46, i64 24, !6, i64 32, !6, i64 36, !47, i64 40}
!49 = !{!"", !42, i64 0, !21, i64 8, !22, i64 16, !22, i64 24, !6, i64 32, !6, i64 36, !43, i64 40, !22, i64 48, !21, i64 56, !22, i64 64, !44, i64 72, !6, i64 80, !6, i64 84, !45, i64 88, !48, i64 96}
!50 = !{!"p1 _ZTS15PacketListEntry", !12, i64 0}
!51 = !{!"PacketList", !50, i64 0, !50, i64 8}
!52 = !{!"p1 _ZTS11IAMFContext", !12, i64 0}
!53 = !{!"p1 _ZTS29APVDecoderConfigurationRecord", !12, i64 0}
!54 = !{!"MOVTrack", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !22, i64 24, !22, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !31, i64 56, !32, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !33, i64 128, !34, i64 136, !6, i64 144, !6, i64 148, !35, i64 152, !35, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !36, i64 184, !22, i64 192, !22, i64 200, !22, i64 208, !22, i64 216, !6, i64 224, !22, i64 232, !6, i64 240, !6, i64 244, !32, i64 248, !29, i64 256, !6, i64 264, !22, i64 272, !6, i64 280, !22, i64 288, !6, i64 296, !6, i64 300, !38, i64 304, !39, i64 320, !16, i64 328, !22, i64 336, !6, i64 344, !6, i64 348, !6, i64 352, !40, i64 360, !6, i64 368, !41, i64 372, !12, i64 400, !49, i64 408, !5, i64 552, !6, i64 1576, !6, i64 1580, !6, i64 1584, !51, i64 1592, !52, i64 1608, !6, i64 1616, !6, i64 1620, !16, i64 1624, !53, i64 1632}
!55 = !{!54, !33, i64 128}
!56 = !{!"AVRational", !6, i64 0, !6, i64 4}
!57 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!58 = !{!"AVPacket", !46, i64 0, !22, i64 8, !22, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !57, i64 48, !6, i64 56, !22, i64 64, !22, i64 72, !12, i64 80, !46, i64 88, !56, i64 96}
!59 = !{!"AVStream", !13, i64 0, !6, i64 8, !6, i64 12, !34, i64 16, !12, i64 24, !56, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !6, i64 64, !6, i64 68, !56, i64 72, !24, i64 80, !56, i64 88, !58, i64 96, !6, i64 200, !56, i64 204, !6, i64 212}
!60 = !{!59, !34, i64 16}
!61 = !{!6, !6, i64 0}
!62 = !{!"p1 _ZTS8MOVTrack", !12, i64 0}
!63 = !{!"float", !5, i64 0}
!64 = !{!"MOVMuxContext", !13, i64 0, !6, i64 8, !22, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !22, i64 40, !22, i64 48, !62, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !16, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !22, i64 136, !21, i64 144, !6, i64 152, !29, i64 160, !39, i64 168, !6, i64 176, !63, i64 180, !6, i64 184, !6, i64 188, !21, i64 192, !6, i64 200, !21, i64 208, !6, i64 216, !21, i64 224, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !5, i64 264, !5, i64 280, !6, i64 288, !6, i64 292}
!65 = !{!64, !6, i64 64}
!66 = !{!54, !22, i64 208}
!67 = !{!27, !6, i64 44}
!68 = !{!64, !62, i64 56}
!69 = !{!54, !6, i64 1584}
!70 = !{!54, !22, i64 192}
!71 = !{!54, !6, i64 8}
!72 = !{!54, !35, i64 152}
!73 = !{!"AVProducerReferenceTime", !22, i64 0, !6, i64 8}
!74 = !{!"MOVIentry", !22, i64 0, !22, i64 8, !22, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !73, i64 56}
!75 = !{!74, !22, i64 8}
!76 = !{!74, !6, i64 44}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!54, !50, i64 1592}
!79 = !{!27, !16, i64 32}
!80 = !{!54, !22, i64 32}
!81 = !{!58, !22, i64 8}
!82 = !{!58, !22, i64 64}
!83 = !{!51, !50, i64 0}
!84 = !{!"PacketListEntry", !50, i64 0, !58, i64 8}
!85 = !{!84, !22, i64 16}
!86 = !{!84, !22, i64 24}
!87 = !{!84, !22, i64 72}
!88 = !{!54, !34, i64 136}
!89 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !12, i64 16}
!90 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !21, i64 16, !6, i64 24, !57, i64 32, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !56, i64 80, !56, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !89, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!91 = !{!90, !6, i64 8}
!92 = !{!58, !22, i64 16}
!93 = !{!58, !6, i64 36}
!94 = !{!27, !18, i64 48}
!95 = !{!33, !33, i64 0}
!96 = !{!21, !21, i64 0}
!97 = !{!58, !6, i64 40}
end_hunk_1
