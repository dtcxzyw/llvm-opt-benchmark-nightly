Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/matroskaenc?download=true
inline.NumInlined: 332
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0
@.str.73 = private unnamed_addr constant [49 x i8] c"Invalid cropping dimensions in stream side data\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Overflow in display width\0A\00", align 1
@.str.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ff_matroska_video_stereo_mode = external local_unnamed_addr constant [15 x ptr], align 16
@mkv_write_stereo_mode.conversion_table = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\02\0C", [2 x i8] c"\04\03", [2 x i8] c"\0E\0F", [2 x i8] c"\06\05", [2 x i8] zeroinitializer, [2 x i8] c"\08\07", [2 x i8] c"\0A\09"], align 16
@.str.76 = private unnamed_addr constant [10 x i8] c" for WebM\00", align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"The specified stereo mode is not valid%s.\0A\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"Unknown projection type\0A\00", align 1
@.str.80 = private unnamed_addr constant [67 x i8] c"Ignoring display matrix indicating non-orthogonal transformation.\0A\00", align 1
@.str.81 = private unnamed_addr constant [62 x i8] c"Error parsing AAC extradata, unable to determine samplerate.\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Dolby Vision configuration\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"HEVC enhancement-layer configuration\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"codec %s is not supported by this format\0A\00", align 1
@.str.85 = private unnamed_addr constant [37 x i8] c"No bmp codec tag found for codec %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [37 x i8] c"No wav codec tag found for codec %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [64 x i8] c"Invalid extradata found, ALAC expects a 36-byte QuickTime atom.\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"Unset/unknown ARIB caption profile %d utilized!\0A\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"Extradata corrupt.\0A\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"WAVEFORMATEXTENSIBLE_CHANNEL_MASK\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"Invalid chapter start (%ld) or end (%ld).\0A\00", align 1
@ff_mkv_metadata_conv = external constant [0 x %struct.AVMetadataConv], align 8
@.str.93 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"mimetype\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"Attachment stream %d has no filename tag.\0A\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"size >= 2\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"Flushing cluster at offset %lu bytes\0A\00", align 1
@.str.101 = private unnamed_addr constant [44 x i8] c"Could not write cached audio packet ret:%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [55 x i8] c"Invalid FLAC STREAMINFO metadata for output stream %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [51 x i8] c"Ignoring new extradata in a packet for stream %d.\0A\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"Can't write packet with unknown timestamp\0A\00", align 1
@.str.105 = private unnamed_addr constant [39 x i8] c"Starting new cluster due to timestamp\0A\00", align 1
@.str.106 = private unnamed_addr constant [61 x i8] c"Starting new cluster with timestamp %ld at offset %ld bytes\0A\00", align 1
@.str.107 = private unnamed_addr constant [139 x i8] c"Writing block of size %d with pts %ld, dts %ld, duration %ld at relative offset %ld in cluster at offset %ld. TrackNumber %u, keyframe %d\0A\00", align 1
@ff_opus_frame_duration = external hidden local_unnamed_addr constant [32 x i16], align 16
@.str.108 = private unnamed_addr constant [73 x i8] c"Insufficient space reserved for Cues: %d < %lu. No Cues will be output.\0A\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"end duration = %lu\0A\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"track->max_blockaddid <= 0xFF\00", align 1
@.str.111 = private unnamed_addr constant [30 x i8] c"stream %d end duration = %lu\0A\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"%02d:%02d:%012.9f\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"idx >= 0 && idx < num_tracks\00", align 1
@.str.114 = private unnamed_addr constant [51 x i8] c"The Matroska muxer does not yet support muxing %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [64 x i8] c"Stream %d will be ignored as WebM doesn't support attachments.\0A\00", align 1
@.str.116 = private unnamed_addr constant [86 x i8] c"Attachment stream %d has no mimetype tag and it cannot be deduced from the codec id.\0A\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"aac_adtstoasc\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"vp9_superframe\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"pgs_frame_merge\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mkv_write_header(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %1 = alloca [6 x %struct.EbmlElement], align 16 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %2 = alloca [8 x %struct.EbmlElement], align 16 ; 26 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.k = tail call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.j) #14 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %mkv_write_tags.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = tail call ptr @av_dict_get(ptr noundef %i.q, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0) #14
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.t = tail call ptr @av_dict_get(ptr noundef %i.s, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0) #14
  %.not88 = icmp eq ptr %i.t, null
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.077 = phi i32 [ 4, %bb.e ], [ 2, %bb.d ]      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 10 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %.not176 = icmp eq i32 %i.v, 0
  br i1 %.not176, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.al, %bb.f
  %.1.lcssa = phi i32 [ %.077, %bb.f ], [ %.2, %bb.al ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i32 440786851, ptr %2, align 16, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 7, ptr %i.aa, align 4, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <4 x i32> <i32 -1, i32 -1, i32 17030, i32 0>, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 1, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 17143, ptr %i.ad, align 16, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.ae, align 4, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 1, ptr %i.af, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 17138, ptr %i.ag, align 16, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 0, ptr %i.ah, align 4, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 4, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 17139, ptr %i.aj, align 16, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 0, ptr %i.ak, align 4, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 8, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 17026, ptr %i.am, align 16, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i32 4, ptr %i.an, align 4, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.z, ptr %i.ao, align 8, !tbaa !56
  %i.ap = zext nneg i32 %.1.lcssa to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i32 17031, ptr %i.aq, align 16, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 196
  store i32 0, ptr %i.ar, align 4, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 %i.ap, ptr %i.as, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i32 17029, ptr %i.at, align 16, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 228
  store i32 0, ptr %i.au, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2, ptr %i.av, align 8, !tbaa !56
  %i.aw = call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %2, i32 noundef 8)
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %ebml_write_header.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ay = call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %2, ptr noundef %i.i) ; 0 uses
  br label %ebml_write_header.exit

ebml_write_header.exit:                           ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 24), align 8, !tbaa !56
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 31
  %i.bc = lshr i32 %i.bb, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ebml_write_header.exit, %.lr.ph.i
  %.05.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %i.bc, %ebml_write_header.exit ]
  %i.bd = add nsw i32 %.05.i, -1                  ; 3 uses
  %i.be = shl nsw i32 %i.bd, 3
  %i.bf = lshr i32 408125543, %i.be
  %i.bg = and i32 %i.bf, 255
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef %i.bg) #14
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 1) #14
  tail call void @ffio_fill(ptr noundef %i.i, i32 noundef 255, i64 noundef 7) #14
  %i.bh = tail call i64 @avio_seek(ptr noundef %i.i, i64 noundef 0, i32 noundef 1) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !58
  %i.bj = tail call i64 @avio_seek(ptr noundef %i.i, i64 noundef 0, i32 noundef 1) #14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !171
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  store i32 161, ptr %i.bl, align 4, !tbaa !172
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bn, 7
  %i.bp = lshr i32 %i.bo, 3                       ; 4 uses
  %.not4.i.i.i = icmp eq i32 %i.bp, 0             ; 3 uses
  br i1 %.not4.i.i.i, label %mkv_start_seekhead.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %put_ebml_id.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.bq, %.lr.ph.i.i.i ], [ %i.bp, %put_ebml_id.exit ]
  %i.bq = add nsw i32 %.05.i.i.i, -1              ; 3 uses
  %i.br = shl nsw i32 %i.bq, 3
  %i.bs = lshr i32 236, %i.br
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef %i.bs) #14
  %.not.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i, label %mkv_start_seekhead.exit, label %.lr.ph.i.i.i, !llvm.loop !0

mkv_start_seekhead.exit:                          ; preds = %.lr.ph.i.i.i, %put_ebml_id.exit
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 1) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 0) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 0) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 0) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 0) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 0) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 0) #14
  tail call void @avio_w8(ptr noundef %i.i, i32 noundef 152) #14
  tail call void @ffio_fill(ptr noundef %i.i, i32 noundef 0, i64 noundef 152) #14
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !31  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %mkv_start_seekhead.exit
  %i.bw = tail call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.bu) #14 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %mkv_write_info.exit.thread, label %._crit_edge.i

mkv_write_info.exit.thread:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %mkv_write_tags.exit.thread

._crit_edge.i:                                    ; preds = %bb.h
  %.pre126.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %mkv_start_seekhead.exit
  %.pre126.i = phi ptr [ %.pre126.pre.i, %._crit_edge.i ], [ %i.bv, %mkv_start_seekhead.exit ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 368
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !60
  %.not6.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.j ]
  %i.ca = add nsw i32 %.05.i.i.i.i, -1            ; 3 uses
  %i.cb = shl nsw i32 %i.ca, 3
  %i.cc = lshr i32 236, %i.cb
  tail call void @avio_w8(ptr noundef %.pre126.i, i32 noundef %i.cc) #14
  %.not.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i7.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i7.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  tail call void @avio_w8(ptr noundef %.pre126.i, i32 noundef 132) #14
  tail call void @ffio_fill(ptr noundef %.pre126.i, i32 noundef 0, i64 noundef 4) #14
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i7.i.i, %bb.i
  %i.cd = phi ptr [ %.pre.i, %.lr.ph.i.i7.i.i ], [ %.pre126.i, %bb.i ] ; 37 uses
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 42), align 2, !tbaa !56
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, 23
  %i.ch = lshr i32 %i.cg, 3
  br label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i99, %bb.k
  %.05.i.i.i100 = phi i32 [ %i.ci, %.lr.ph.i.i.i99 ], [ %i.ch, %bb.k ]
  %i.ci = add nsw i32 %.05.i.i.i100, -1           ; 3 uses
  %i.cj = shl nsw i32 %i.ci, 3
  %i.ck = lshr i32 2807729, %i.cj
  %i.cl = and i32 %i.ck, 255
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.cl) #14
  %.not.i.i.i101 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i101, label %.lr.ph.i.i151, label %.lr.ph.i.i.i99, !llvm.loop !0

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i.i99
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 131) #14
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 15) #14
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 66) #14
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 64) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.co = tail call ptr @av_dict_get(ptr noundef %i.cn, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not.i102 = icmp eq ptr %i.co, null
  br i1 %.not.i102, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i151
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !63 ; 2 uses
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cq) #15 ; 2 uses
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 123), align 1, !tbaa !56
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, 15
  %i.cv = lshr i32 %i.cu, 3
  br label %.lr.ph.i.i.i60.i

.lr.ph.i.i.i60.i:                                 ; preds = %.lr.ph.i.i.i60.i, %bb.l
  %.05.i.i.i61.i = phi i32 [ %i.cw, %.lr.ph.i.i.i60.i ], [ %i.cv, %bb.l ]
  %i.cw = add nsw i32 %.05.i.i.i61.i, -1          ; 3 uses
  %i.cx = shl nsw i32 %i.cw, 3
  %i.cy = lshr i32 31657, %i.cx
  %i.cz = and i32 %i.cy, 251
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.cz) #14
  %.not.i.i.i62.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i62.i, label %put_ebml_string.exit.i, label %.lr.ph.i.i.i60.i, !llvm.loop !0

put_ebml_string.exit.i:                           ; preds = %.lr.ph.i.i.i60.i
  %i.da = trunc i64 %i.cr to i32
  %sext.i.i = shl i64 %i.cr, 32
  %i.db = ashr exact i64 %sext.i.i, 32
  tail call fastcc void @put_ebml_length(ptr noundef %i.cd, i64 noundef %i.db, i32 noundef 0)
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.cq, i32 noundef %i.da) #14
  br label %bb.m

bb.m:                                             ; preds = %put_ebml_string.exit.i, %.lr.ph.i.i151
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !64
  %i.de = and i32 %i.dd, 1024
  %.not53.i = icmp eq i32 %i.de, 0
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 77), align 1, !tbaa !56
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dg, 15
  %i.di = lshr i32 %i.dh, 3                       ; 2 uses
  br i1 %.not53.i, label %.lr.ph.i.i.i64.i, label %.lr.ph.i.i.i86.i

.lr.ph.i.i.i64.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i64.i
  %.05.i.i.i65.i = phi i32 [ %i.dj, %.lr.ph.i.i.i64.i ], [ %i.di, %bb.m ]
  %i.dj = add nsw i32 %.05.i.i.i65.i, -1          ; 3 uses
  %i.dk = shl nsw i32 %i.dj, 3
  %i.dl = lshr i32 19840, %i.dk
  %i.dm = and i32 %i.dl, 205
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.dm) #14
  %.not.i.i.i66.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i66.i, label %.lr.ph.i.i143, label %.lr.ph.i.i.i64.i, !llvm.loop !0

.lr.ph.i.i143:                                    ; preds = %.lr.ph.i.i.i64.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 140) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.49, i32 noundef 12) #14
  %i.dn = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.do = tail call ptr @av_dict_get(ptr noundef %i.dn, ptr noundef nonnull @.str.50, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not54.i = icmp eq ptr %i.do, null
  br i1 %.not54.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i143
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !63 ; 2 uses
  %i.dr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #15 ; 2 uses
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 87), align 1, !tbaa !56
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, 15
  %i.dv = lshr i32 %i.du, 3
  br label %.lr.ph.i.i.i70.i

.lr.ph.i.i.i70.i:                                 ; preds = %.lr.ph.i.i.i70.i, %bb.n
  %.05.i.i.i71.i = phi i32 [ %i.dw, %.lr.ph.i.i.i70.i ], [ %i.dv, %bb.n ]
  %i.dw = add nsw i32 %.05.i.i.i71.i, -1          ; 3 uses
  %i.dx = shl nsw i32 %i.dw, 3
  %i.dy = lshr i32 22337, %i.dx
  %i.dz = and i32 %i.dy, 87
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.dz) #14
  %.not.i.i.i72.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i72.i, label %put_ebml_string.exit74.i, label %.lr.ph.i.i.i70.i, !llvm.loop !0

put_ebml_string.exit74.i:                         ; preds = %.lr.ph.i.i.i70.i
  %i.ea = trunc i64 %i.dr to i32
  %sext.i73.i = shl i64 %i.dr, 32
  %i.eb = ashr exact i64 %sext.i73.i, 32
  tail call fastcc void @put_ebml_length(ptr noundef %i.cd, i64 noundef %i.eb, i32 noundef 0)
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.dq, i32 noundef %i.ea) #14
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i143
  %i.ec = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 87), align 1, !tbaa !56
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 15
  %i.ef = lshr i32 %i.ee, 3
  br label %.lr.ph.i.i.i76.i

.lr.ph.i.i.i76.i:                                 ; preds = %.lr.ph.i.i.i76.i, %bb.o
  %.05.i.i.i77.i = phi i32 [ %i.eg, %.lr.ph.i.i.i76.i ], [ %i.ef, %bb.o ]
  %i.eg = add nsw i32 %.05.i.i.i77.i, -1          ; 3 uses
  %i.eh = shl nsw i32 %i.eg, 3
  %i.ei = lshr i32 22337, %i.eh
  %i.ej = and i32 %i.ei, 87
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.ej) #14
  %.not.i.i.i78.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i78.i, label %.lr.ph.i.i135, label %.lr.ph.i.i.i76.i, !llvm.loop !0

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i.i.i76.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 140) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.49, i32 noundef 12) #14
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i135, %put_ebml_string.exit74.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !45
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 115), align 1, !tbaa !56
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.eo, 15
  %i.eq = lshr i32 %i.ep, 3
  br label %.lr.ph.i.i81.i

.lr.ph.i.i81.i:                                   ; preds = %.lr.ph.i.i81.i, %bb.q
  %.05.i.i82.i = phi i32 [ %i.er, %.lr.ph.i.i81.i ], [ %i.eq, %bb.q ]
  %i.er = add nsw i32 %.05.i.i82.i, -1            ; 3 uses
  %i.es = shl nsw i32 %i.er, 3
  %i.et = lshr i32 29604, %i.es
  %i.eu = and i32 %i.et, 247
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.eu) #14
  %.not.i.i83.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i83.i, label %.lr.ph.i.i115.i, label %.lr.ph.i.i81.i, !llvm.loop !0

.lr.ph.i.i115.i:                                  ; preds = %.lr.ph.i.i81.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bt, i64 400
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 144) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.ev, i32 noundef 16) #14
  br label %bb.r

.lr.ph.i.i.i86.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i86.i
  %.05.i.i.i87.i = phi i32 [ %i.ew, %.lr.ph.i.i.i86.i ], [ %i.di, %bb.m ]
  %i.ew = add nsw i32 %.05.i.i.i87.i, -1          ; 3 uses
  %i.ex = shl nsw i32 %i.ew, 3
  %i.ey = lshr i32 19840, %i.ex
  %i.ez = and i32 %i.ey, 205
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.ez) #14
  %.not.i.i.i88.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i88.i, label %.lr.ph.i.i127, label %.lr.ph.i.i.i86.i, !llvm.loop !0

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i.i86.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 132) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.51, i32 noundef 4) #14
  %i.fa = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 87), align 1, !tbaa !56
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add nuw nsw i32 %i.fb, 15
  %i.fd = lshr i32 %i.fc, 3
  br label %.lr.ph.i.i.i92.i

.lr.ph.i.i.i92.i:                                 ; preds = %.lr.ph.i.i.i92.i, %.lr.ph.i.i127
  %.05.i.i.i93.i = phi i32 [ %i.fe, %.lr.ph.i.i.i92.i ], [ %i.fd, %.lr.ph.i.i127 ]
  %i.fe = add nsw i32 %.05.i.i.i93.i, -1          ; 3 uses
  %i.ff = shl nsw i32 %i.fe, 3
  %i.fg = lshr i32 22337, %i.ff
  %i.fh = and i32 %i.fg, 87
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.fh) #14
  %.not.i.i.i94.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i.i94.i, label %.lr.ph.i.i122, label %.lr.ph.i.i.i92.i, !llvm.loop !0

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i.i92.i
  tail call void @avio_w8(ptr noundef %i.cd, i32 noundef 132) #14
  tail call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull @.str.51, i32 noundef 4) #14
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i122, %.lr.ph.i.i115.i, %bb.p
  %i.fi = call i32 @ff_parse_creation_time_metadata(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 0) #14
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = load i64, ptr %i.d, align 8, !tbaa !65
  %i.fl = mul i64 %i.fk, 1000
  %i.fm = add i64 %i.fl, -978307200000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.fn = call noundef i64 @llvm.bswap.i64(i64 %i.fm)
  store i64 %i.fn, ptr %i.e, align 8, !tbaa !56
  %i.fo = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4, !tbaa !56
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add nuw nsw i32 %i.fp, 15
  %i.fr = lshr i32 %i.fq, 3
  br label %.lr.ph.i.i97.i

.lr.ph.i.i97.i:                                   ; preds = %.lr.ph.i.i97.i, %bb.s
  %.05.i.i98.i = phi i32 [ %i.fs, %.lr.ph.i.i97.i ], [ %i.fr, %bb.s ]
  %i.fs = add nsw i32 %.05.i.i98.i, -1            ; 3 uses
  %i.ft = shl nsw i32 %i.fs, 3
  %i.fu = lshr i32 17505, %i.ft
  %i.fv = and i32 %i.fu, 101
  call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.fv) #14
  %.not.i.i99.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i99.i, label %.lr.ph.i.i120.i, label %.lr.ph.i.i97.i, !llvm.loop !0

.lr.ph.i.i120.i:                                  ; preds = %.lr.ph.i.i97.i
  call void @avio_w8(ptr noundef %i.cd, i32 noundef 136) #14
  call void @avio_write(ptr noundef %i.cd, ptr noundef nonnull %i.e, i32 noundef 8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i120.i, %bb.r
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  store i64 0, ptr %i.fw, align 8, !tbaa !66
  %i.fx = call i64 @avio_seek(ptr noundef %i.cd, i64 noundef 0, i32 noundef 1) #14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bt, i64 372
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !68
  %.not55.i = icmp eq i32 %i.ga, 0
  br i1 %.not55.i, label %bb.u, label %mkv_write_info.exit

bb.u:                                             ; preds = %bb.t
  %i.gb = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.gc = call ptr @av_dict_get(ptr noundef %i.gb, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not.i102.i = icmp eq ptr %i.gc, null
  br i1 %.not.i102.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !63
  %i.gf = call i32 @av_parse_time(ptr noundef nonnull %i.b, ptr noundef %i.ge, i32 noundef 1) #14
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = load i64, ptr %i.b, align 8             ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, 0
  %or.cond.i.i = select i1 %i.gg, i1 %i.gi, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.57, i64 noundef %i.gh) #14
  %i.gj = load i64, ptr %i.b, align 8, !tbaa !65
  br label %get_metadata_duration.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.gk = load i32, ptr %i.u, align 4, !tbaa !47
  %.not25.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.ab, %bb.x
  %.017.lcssa.i.i = phi i64 [ 0, %bb.x ], [ %.1.i.i, %bb.ab ] ; 2 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.58, i64 noundef %.017.lcssa.i.i) #14
  br label %get_metadata_duration.exit.i

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i.i
  %indvars.iv.i103.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i104.i, %bb.ab ] ; 2 uses
  %.01723.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !69
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.i103.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !71
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !78
  %i.gr = call ptr @av_dict_get(ptr noundef %i.gq, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.gr, null
  br i1 %.not22.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !63
  %i.gu = call i32 @av_parse_time(ptr noundef nonnull %i.c, ptr noundef %i.gt, i32 noundef 1) #14
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gw = load i64, ptr %i.c, align 8, !tbaa !65
  %i.gx = call i64 @llvm.smax.i64(i64 %.01723.i.i, i64 %i.gw)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.i.i = phi i64 [ %i.gx, %bb.aa ], [ %.01723.i.i, %bb.z ], [ %.01723.i.i, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %indvars.iv.next.i104.i = add nuw nsw i64 %indvars.iv.i103.i, 1 ; 2 uses
  %i.gy = load i32, ptr %i.u, align 4, !tbaa !47
  %i.gz = zext i32 %i.gy to i64
  %i.ha = icmp samesign ult i64 %indvars.iv.next.i104.i, %i.gz
  br i1 %i.ha, label %bb.y, label %._crit_edge.i.i, !llvm.loop !166

get_metadata_duration.exit.i:                     ; preds = %._crit_edge.i.i, %bb.w
  %.018.i.i = phi i64 [ %i.gj, %bb.w ], [ %.017.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !173 ; 2 uses
  %i.hd = icmp sgt i64 %i.hc, 0
  br i1 %i.hd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %get_metadata_duration.exit.i
  %i.he = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4, !tbaa !56
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nuw nsw i32 %i.hf, 15
  %i.hh = lshr i32 %i.hg, 3
  br label %.lr.ph.i.i105.i

.lr.ph.i.i105.i:                                  ; preds = %.lr.ph.i.i105.i, %bb.ac
  %.05.i.i106.i = phi i32 [ %i.hi, %.lr.ph.i.i105.i ], [ %i.hh, %bb.ac ]
  %i.hi = add nsw i32 %.05.i.i106.i, -1           ; 3 uses
  %i.hj = shl nsw i32 %i.hi, 3
  %i.hk = lshr i32 17545, %i.hj
  %i.hl = and i32 %i.hk, 205
  call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.hl) #14
  %.not.i.i107.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i107.i, label %put_ebml_float.exit.i, label %.lr.ph.i.i105.i, !llvm.loop !0

put_ebml_float.exit.i:                            ; preds = %.lr.ph.i.i105.i
  %i.hm = call i64 @av_rescale(i64 noundef %i.hc, i64 noundef 1000, i64 noundef 1000000) #16 ; 2 uses
  %i.hn = sitofp nsz i64 %i.hm to double
  call void @avio_w8(ptr noundef %i.cd, i32 noundef 136) #14
  %i.ho = bitcast double %i.hn to i64
  call void @avio_wb64(ptr noundef %i.cd, i64 noundef %i.ho) #14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.52, i64 noundef %i.hm) #14
  br label %mkv_write_info.exit

bb.ad:                                            ; preds = %get_metadata_duration.exit.i
  %i.hp = icmp sgt i64 %.018.i.i, 0
  br i1 %i.hp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hq = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4, !tbaa !56
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, 15
  %i.ht = lshr i32 %i.hs, 3
  br label %.lr.ph.i.i109.i

.lr.ph.i.i109.i:                                  ; preds = %.lr.ph.i.i109.i, %bb.ae
  %.05.i.i110.i = phi i32 [ %i.hu, %.lr.ph.i.i109.i ], [ %i.ht, %bb.ae ]
  %i.hu = add nsw i32 %.05.i.i110.i, -1           ; 3 uses
  %i.hv = shl nsw i32 %i.hu, 3
  %i.hw = lshr i32 17545, %i.hv
  %i.hx = and i32 %i.hw, 205
  call void @avio_w8(ptr noundef %i.cd, i32 noundef %i.hx) #14
  %.not.i.i111.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i111.i, label %put_ebml_float.exit113.i, label %.lr.ph.i.i109.i, !llvm.loop !0

put_ebml_float.exit113.i:                         ; preds = %.lr.ph.i.i109.i
  %i.hy = call i64 @av_rescale(i64 noundef %.018.i.i, i64 noundef 1000, i64 noundef 1000000) #16 ; 2 uses
  %i.hz = sitofp nsz i64 %i.hy to double
  call void @avio_w8(ptr noundef %i.cd, i32 noundef 136) #14
  %i.ia = bitcast double %i.hz to i64
  call void @avio_wb64(ptr noundef %i.cd, i64 noundef %i.ia) #14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.53, i64 noundef %i.hy) #14
  br label %mkv_write_info.exit

bb.af:                                            ; preds = %bb.ad
  %i.ib = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 144
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !80
  %i.ie = and i32 %i.id, 1
  %.not56.i = icmp eq i32 %i.ie, 0
  br i1 %.not56.i, label %mkv_write_info.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call fastcc void @put_ebml_void(ptr noundef %i.cd, i32 noundef 11)
  br label %mkv_write_info.exit

mkv_write_info.exit:                              ; preds = %bb.t, %put_ebml_float.exit.i, %put_ebml_float.exit113.i, %bb.af, %bb.ag
  %i.if = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.ig = call fastcc i32 @end_ebml_master_crc32_tentatively(ptr noundef %i.if, ptr noundef nonnull %i.bu, ptr noundef %i.bt, i32 noundef 357149030) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %mkv_write_tags.exit.thread, label %bb.am

bb.ah:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 3 uses
  %.1174 = phi i32 [ %.077, %.lr.ph ], [ %.2, %bb.al ]
  %i.ii = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !71 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !81
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !84
  %i.ip = icmp eq i32 %i.io, 86076
  br i1 %i.ip, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 80
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !78
  %i.is = tail call ptr @av_dict_get(ptr noundef %i.ir, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0) #14
  %.not97 = icmp eq ptr %i.is, null
  br i1 %.not97, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.it = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !71
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !78
  %i.iy = tail call ptr @av_dict_get(ptr noundef %i.ix, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0) #14
  %.not98 = icmp eq ptr %i.iy, null
  br i1 %.not98, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.2 = phi i32 [ 4, %bb.ak ], [ %.1174, %bb.aj ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iz = load i32, ptr %i.u, align 4, !tbaa !47
  %i.ja = zext i32 %i.iz to i64
  %i.jb = icmp samesign ult i64 %indvars.iv.next, %i.ja
  br i1 %i.jb, label %bb.ah, label %._crit_edge, !llvm.loop !167

bb.am:                                            ; preds = %mkv_write_info.exit
  %i.jc = call fastcc i32 @mkv_write_tracks(ptr noundef nonnull %0) ; 2 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %mkv_write_tags.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.je = call fastcc i32 @mkv_write_chapters(ptr noundef nonnull %0) ; 2 uses
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %mkv_write_tags.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jg = load i32, ptr %i.m, align 8, !tbaa !45
  %i.jh = icmp eq i32 %i.jg, 2
  %.pre189 = load ptr, ptr %i.f, align 8, !tbaa !31 ; 6 uses
  %.pre191 = load ptr, ptr %i.h, align 8, !tbaa !32 ; 3 uses
  br i1 %i.jh, label %bb.bf, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !59
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre189, i64 336
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !85
  %.not.i103 = icmp eq i32 %i.jj, 0
  br i1 %.not.i103, label %mkv_write_attachments.exit.thread157, label %bb.aq

mkv_write_attachments.exit.thread157:             ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ap
  %i.jk = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %mkv_write_attachments.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre189, i64 368
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !60
  %.not6.i.i104 = icmp eq i32 %i.jn, 0
  br i1 %.not6.i.i104, label %start_ebml_master_crc32.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i.i109, label %.lr.ph.i.i.i.i106

.lr.ph.i.i.i.i106:                                ; preds = %bb.as, %.lr.ph.i.i.i.i106
  %.05.i.i.i.i107 = phi i32 [ %i.jp, %.lr.ph.i.i.i.i106 ], [ %i.bp, %bb.as ]
  %i.jp = add nsw i32 %.05.i.i.i.i107, -1         ; 3 uses
  %i.jq = shl nsw i32 %i.jp, 3
  %i.jr = lshr i32 236, %i.jq
  call void @avio_w8(ptr noundef %i.jo, i32 noundef %i.jr) #14
  %.not.i.i.i.i108 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i.i.i108, label %.lr.ph.i.i7.i.i109, label %.lr.ph.i.i.i.i106, !llvm.loop !0

.lr.ph.i.i7.i.i109:                               ; preds = %.lr.ph.i.i.i.i106, %bb.as
  call void @avio_w8(ptr noundef %i.jo, i32 noundef 132) #14
  call void @ffio_fill(ptr noundef %i.jo, i32 noundef 0, i64 noundef 4) #14
  br label %start_ebml_master_crc32.exit.i

start_ebml_master_crc32.exit.i:                   ; preds = %.lr.ph.i.i7.i.i109, %bb.ar
  %i.js = load i32, ptr %i.u, align 4, !tbaa !47  ; 2 uses
  %.not72.i = icmp eq i32 %i.js, 0
  br i1 %.not72.i, label %mkv_write_attachments.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %start_ebml_master_crc32.exit.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ju = getelementptr inbounds nuw i8, ptr %.pre189, i64 120
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.at

bb.at:                                            ; preds = %bb.be, %.lr.ph.i110
  %i.kb = phi i32 [ %i.js, %.lr.ph.i110 ], [ %i.mh, %bb.be ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i110 ], [ %indvars.iv.next.i, %bb.be ] ; 4 uses
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !69
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.i
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !71 ; 2 uses
  %i.kf = load ptr, ptr %i.ju, align 8, !tbaa !86
  %i.kg = getelementptr inbounds nuw [120 x i8], ptr %i.kf, i64 %indvars.iv.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 4 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !81
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !87
  %.not38.i = icmp eq i32 %i.kj, 4
  br i1 %.not38.i, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  store i32 24999, ptr %1, align 16, !tbaa !53
  store i32 7, ptr %i.jv, align 4, !tbaa !54
  store i32 -1, ptr %i.jx, align 4, !tbaa !89
  store i32 -1, ptr %i.jw, align 8, !tbaa !90
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 80 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !78
  %i.km = call ptr @av_dict_get(ptr noundef %i.kl, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not39.i = icmp eq ptr %i.km, null
  br i1 %.not39.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !63
  store i32 18046, ptr %i.jy, align 16, !tbaa !53
  store i32 4, ptr %i.jz, align 4, !tbaa !54
  store ptr %i.ko, ptr %i.ka, align 8, !tbaa !56
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0.i = phi i32 [ 1, %bb.au ], [ 2, %bb.av ] ; 2 uses
  %i.kp = load ptr, ptr %i.kk, align 8, !tbaa !78
  %i.kq = call ptr @av_dict_get(ptr noundef %i.kp, ptr noundef nonnull @.str.95, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not40.i = icmp eq ptr %i.kq, null
  br i1 %.not40.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kr = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.97, i32 noundef %i.kr) #14
  br label %.thread.i

bb.ay:                                            ; preds = %bb.aw
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.ku = zext nneg i32 %.sroa.0.0.i to i64
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ku ; 13 uses
  store i32 18030, ptr %i.kv, align 16, !tbaa !53
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store i32 4, ptr %i.kw, align 4, !tbaa !54
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  store ptr %i.kt, ptr %i.kx, align 8, !tbaa !56
  %i.ky = load ptr, ptr %i.kk, align 8, !tbaa !78
  %i.kz = call ptr @av_dict_get(ptr noundef %i.ky, ptr noundef nonnull @.str.96, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not.i42.i = icmp eq ptr %i.kz, null
  br i1 %.not.i42.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  br label %get_mimetype.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.lb = load ptr, ptr %i.kh, align 8, !tbaa !81
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !84 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.ld, 0
  br i1 %.not14.i.i, label %get_mimetype.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.le = call ptr @avcodec_descriptor_get(i32 noundef %i.ld) #14 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.le, null
  br i1 %.not15.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !94 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.lg, null
  br i1 %.not16.i.i, label %bb.bd, label %get_mimetype.exit.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lh = load ptr, ptr %i.kh, align 8, !tbaa !81 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !84
  %.not19.i.i = icmp eq i32 %i.lj, 94210
  br i1 %.not19.i.i, label %get_mimetype.exit.thread60.i, label %get_mimetype.exit.thread.i

get_mimetype.exit.i:                              ; preds = %bb.bc, %bb.az
  %.1.i.in.i = phi ptr [ %i.la, %bb.az ], [ %i.lg, %bb.bc ]
  %.1.i.i112 = load ptr, ptr %.1.i.in.i, align 8, !tbaa !95 ; 2 uses
  %.not41.i = icmp eq ptr %.1.i.i112, null
  br i1 %.not41.i, label %get_mimetype.exit.thread.i, label %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i

get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i: ; preds = %get_mimetype.exit.i
  %.pre.i113 = load ptr, ptr %i.kh, align 8, !tbaa !81
  br label %get_mimetype.exit.thread60.i

get_mimetype.exit.thread.i:                       ; preds = %get_mimetype.exit.i, %bb.bd, %bb.ba
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.47, i32 noundef 2548) #14
  call void @abort() #17
  unreachable

get_mimetype.exit.thread60.i:                     ; preds = %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i, %bb.bd
  %i.lk = phi ptr [ %.pre.i113, %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i ], [ %i.lh, %bb.bd ] ; 2 uses
  %.1.i63.i = phi ptr [ %.1.i.i112, %get_mimetype.exit.get_mimetype.exit.thread60_crit_edge.i ], [ @.str.98, %bb.bd ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store i32 18016, ptr %i.ll, align 16, !tbaa !53
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 36
  store i32 4, ptr %i.lm, align 4, !tbaa !54
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  store ptr %.1.i63.i, ptr %i.ln, align 8, !tbaa !56
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !96
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !97
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  store i32 18012, ptr %i.lt, align 16, !tbaa !53
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kv, i64 68
  store i32 5, ptr %i.lu, align 4, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kv, i64 80
  store i64 %i.ls, ptr %i.lv, align 16, !tbaa !98
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kv, i64 88
  store ptr %i.lp, ptr %i.lw, align 8, !tbaa !56
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !100
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  store i32 18094, ptr %i.lz, align 16, !tbaa !53
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 100
  store i32 3, ptr %i.ma, align 4, !tbaa !54
  %i.mb = or disjoint i32 %.sroa.0.0.i, 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kv, i64 120
  store i64 %i.ly, ptr %i.mc, align 8, !tbaa !56
  %i.md = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.me = call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %1, i32 noundef %i.mb) ; 2 uses
  %i.mf = icmp slt i32 %i.me, 0
  br i1 %i.mf, label %.thread.i, label %ebml_writer_write.exit.i

ebml_writer_write.exit.i:                         ; preds = %get_mimetype.exit.thread60.i
  %i.mg = call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %1, ptr noundef %i.md) ; 0 uses
  %.pre77.i = load i32, ptr %i.u, align 4, !tbaa !47
  br label %bb.be

.thread.i:                                        ; preds = %get_mimetype.exit.thread60.i, %bb.ax
  %.1.ph.i = phi i32 [ -22, %bb.ax ], [ %i.me, %get_mimetype.exit.thread60.i ]
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %mkv_write_attachments.exit.thread

bb.be:                                            ; preds = %ebml_writer_write.exit.i, %bb.at
  %i.mh = phi i32 [ %i.kb, %bb.at ], [ %.pre77.i, %ebml_writer_write.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv.next.i, %i.mi
  br i1 %i.mj, label %bb.at, label %mkv_write_attachments.exit, !llvm.loop !168

mkv_write_attachments.exit.thread:                ; preds = %.thread.i, %bb.aq
  %.2.i.ph = phi i32 [ %i.jk, %bb.aq ], [ %.1.ph.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %mkv_write_tags.exit.thread

mkv_write_attachments.exit:                       ; preds = %bb.be, %start_ebml_master_crc32.exit.i
  %i.mk = call fastcc i32 @end_ebml_master_crc32(ptr noundef %.pre191, ptr noundef nonnull %i.a, ptr noundef nonnull %.pre189, i32 noundef 423732329, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %mkv_write_tags.exit.thread, label %mkv_write_attachments.exit._crit_edge

mkv_write_attachments.exit._crit_edge:            ; preds = %mkv_write_attachments.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !31
  %.pre190 = load ptr, ptr %i.h, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@mkv_write_flush_packet:bb.a
  br i1 %.not17.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 9 uses
  %wide.trip.count.i = zext i32 %i.i to i64       ; 2 uses
  %xtraiter32 = and i64 %wide.trip.count.i, 7     ; 3 uses
  %i.l = icmp ult i32 %i.i, 8
  br i1 %i.l, label %.epil.preheader31, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter36 = and i64 %wide.trip.count.i, 4294967288
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.d ] ; 9 uses
  %niter37 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter37.next.7, %bb.d ]
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !111
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 124
  store i32 0, ptr %i.p, align 4, !tbaa !111
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 244
  store i32 0, ptr %i.r, align 4, !tbaa !111
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 364
  store i32 0, ptr %i.t, align 4, !tbaa !111
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 484
  store i32 0, ptr %i.v, align 4, !tbaa !111
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 604
  store i32 0, ptr %i.x, align 4, !tbaa !111
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 724
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 844
  store i32 0, ptr %i.ab, align 4, !tbaa !111
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter37.next.7 = add i64 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i64 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod34.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %.loopexit.i, label %.epil.preheader31

.epil.preheader31:                                ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader31
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader31 ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %epil.iter33 = phi i64 [ 0, %.epil.preheader31 ], [ %epil.iter33.next, %bb.e ]
  %i.ac = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.i.epil
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !111
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter33.next = add i64 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i64 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %.loopexit.i, label %bb.e, !llvm.loop !175

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.e, %.preheader.i, %bb.c
  store i64 -1, ptr %i.d, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ah = tail call fastcc i32 @end_ebml_master_crc32(ptr noundef %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.c, i32 noundef 524531317, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.loopexit.i
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !32
  tail call void @avio_write_marker(ptr noundef %i.aj, i64 noundef -9223372036854775808, i32 noundef 5) #14
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.al = tail call i64 @avio_seek(ptr noundef %i.ak, i64 noundef 0, i32 noundef 1) #14
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.100, i64 noundef %i.al) #14
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81 ; 9 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !87 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !114 ; 2 uses
  %i.ay = trunc i32 %i.ax to i1                   ; 2 uses
  %i.az = and i32 %i.ax, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bc = getelementptr inbounds [120 x i8], ptr %i.bb, i64 %i.aq ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bd = call ptr @av_packet_get_side_data(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.a) #14 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !84
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !65  ; 5 uses
  %.not77.i.i = icmp eq i64 %i.bg, 0              ; 4 uses
  switch i32 %i.bf, label %bb.ae [
    i32 86018, label %bb.h
    i32 86028, label %bb.u
    i32 222, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not77.i.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !115
  %.not73.i.i = icmp eq ptr %i.bi, null
  br i1 %.not73.i.i, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bl = call i32 @avpriv_mpeg4audio_get_config2(ptr noundef nonnull %2, ptr noundef %i.bd, i32 noundef %i.bj, i32 noundef 1, ptr noundef nonnull %0) #14
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %.critedge.i.i.i

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.l, label %get_aac_sample_rates.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !80
  %i.br = and i32 %i.bq, 1
  %.not13.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not13.i.i.i, label %get_aac_sample_rates.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 372
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !68
  %.not14.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not14.i.i.i, label %bb.n, label %get_aac_sample_rates.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bk, align 4, !tbaa !55 ; 2 uses
  br label %bb.o

.critedge.i.i.i:                                  ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !117 ; 2 uses
  store i32 %i.bw, ptr %i.bk, align 4, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !118
  br label %bb.o

get_aac_sample_rates.exit.i.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.81) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %mkv_check_new_extra_data.exit.thread.i

bb.o:                                             ; preds = %.critedge.i.i.i, %bb.n
  %i.bz = phi i32 [ %i.bu, %bb.n ], [ %i.bw, %.critedge.i.i.i ]
  %.186.ph.i.i = phi i32 [ %i.bu, %bb.n ], [ %i.by, %.critedge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.not76.i.i = icmp eq i32 %.186.ph.i.i, 0
  %spec.select.i.i = select i1 %.not76.i.i, i32 %i.bz, i32 %.186.ph.i.i
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !65
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !115
  %i.cd = getelementptr i8, ptr %i.c, i64 320
  %.val79.i.i = load ptr, ptr %i.cd, align 8, !tbaa !119
  %i.ce = call fastcc i32 @mkv_update_codecprivate(ptr noundef nonnull %0, ptr %.val79.i.i, ptr noundef %i.bd, i32 noundef %i.cb, ptr noundef nonnull %i.au, ptr noundef %i.cc, ptr noundef nonnull %i.bc, i32 noundef 0) ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %mkv_check_new_extra_data.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !115
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !120
  %i.cj = call i64 @avio_seek(ptr noundef %i.cg, i64 noundef %i.ci, i32 noundef 0) #14 ; 0 uses
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.cl = load i32, ptr %i.bk, align 8, !tbaa !177
  %i.cm = sitofp nsz i32 %i.cl to double
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 181), align 1, !tbaa !56
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nuw nsw i32 %i.co, 7
  %i.cq = lshr i32 %i.cp, 3                       ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not4.i.i.i.i, label %put_ebml_float.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.cq, %bb.p ]
  %i.cr = add nsw i32 %.05.i.i.i.i, -1            ; 3 uses
  %i.cs = shl nsw i32 %i.cr, 3
  %i.ct = lshr i32 181, %i.cs
  call void @avio_w8(ptr noundef %i.ck, i32 noundef %i.ct) #14
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i, label %put_ebml_float.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

put_ebml_float.exit.i.i:                          ; preds = %.lr.ph.i.i.i.i, %bb.p
  call void @avio_w8(ptr noundef %i.ck, i32 noundef 136) #14
  %i.cu = bitcast double %i.cm to i64
  call void @avio_wb64(ptr noundef %i.ck, i64 noundef %i.cu) #14
  %i.cv = load ptr, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 120), align 8, !tbaa !56
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nuw nsw i32 %i.cx, 15
  %i.cz = lshr i32 %i.cy, 3
  br label %.lr.ph.i.i81.i.i

.lr.ph.i.i81.i.i:                                 ; preds = %.lr.ph.i.i81.i.i, %put_ebml_float.exit.i.i
  %.05.i.i82.i.i = phi i32 [ %i.da, %.lr.ph.i.i81.i.i ], [ %i.cz, %put_ebml_float.exit.i.i ]
  %i.da = add nsw i32 %.05.i.i82.i.i, -1          ; 3 uses
  %i.db = shl nsw i32 %i.da, 3
  %i.dc = lshr i32 30901, %i.db
  %i.dd = and i32 %i.dc, 253
  call void @avio_w8(ptr noundef %i.cv, i32 noundef %i.dd) #14
  %.not.i.i83.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i83.i.i, label %bb.q, label %.lr.ph.i.i81.i.i, !llvm.loop !0

bb.q:                                             ; preds = %.lr.ph.i.i81.i.i
  %i.de = sitofp nsz i32 %spec.select.i.i to double
  call void @avio_w8(ptr noundef %i.cv, i32 noundef 136) #14
  %i.df = bitcast double %i.de to i64
  call void @avio_wb64(ptr noundef %i.cv, i64 noundef %i.df) #14
  br label %bb.ag

bb.r:                                             ; preds = %bb.i, %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !97
  %.not74.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not74.i.i, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !177
  %.not75.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not75.i.i, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.81) #14
  br label %mkv_check_new_extra_data.exit.thread.i

bb.u:                                             ; preds = %bb.g
  br i1 %.not77.i.i, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !115 ; 2 uses
  %.not70.i.i = icmp eq ptr %i.dl, null
  br i1 %.not70.i.i, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !97
  %i.do = sext i32 %i.dn to i64
  %.not71.i.i = icmp eq i64 %i.bg, %i.do
  br i1 %.not71.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load i32, ptr %i.ao, align 4, !tbaa !113
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.102, i32 noundef %i.dp) #14
  br label %mkv_check_new_extra_data.exit.thread.i

bb.y:                                             ; preds = %bb.w
  %i.dq = trunc nsw i64 %i.bg to i32
  %i.dr = getelementptr i8, ptr %i.c, i64 320
  %.val78.i.i = load ptr, ptr %i.dr, align 8, !tbaa !119
  %i.ds = call fastcc i32 @mkv_update_codecprivate(ptr noundef nonnull %0, ptr %.val78.i.i, ptr noundef %i.bd, i32 noundef %i.dq, ptr noundef nonnull %i.au, ptr noundef nonnull %i.dl, ptr noundef %i.bc, i32 noundef 0) ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %mkv_check_new_extra_data.exit.thread.i, label %bb.ag

bb.z:                                             ; preds = %bb.g
  br i1 %.not77.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !115 ; 2 uses
  %.not66.i.i = icmp eq ptr %i.dv, null
  br i1 %.not66.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !97
  %.not67.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not67.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = trunc i64 %i.bg to i32
  %i.dz = getelementptr i8, ptr %i.c, i64 320
  %.val.i.i = load ptr, ptr %i.dz, align 8, !tbaa !119
  %i.ea = call fastcc i32 @mkv_update_codecprivate(ptr noundef nonnull %0, ptr %.val.i.i, ptr noundef %i.bd, i32 noundef %i.dy, ptr noundef nonnull %i.au, ptr noundef nonnull %i.dv, ptr noundef %i.bc, i32 noundef 4) ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %mkv_check_new_extra_data.exit.thread.i, label %bb.ag

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !97
  %.not68.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not68.i.i, label %mkv_check_new_extra_data.exit.thread.i, label %bb.ag

bb.ae:                                            ; preds = %bb.g
  br i1 %.not77.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = load i32, ptr %i.ao, align 4, !tbaa !113
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.103, i32 noundef %i.ee) #14
  br label %bb.ag

mkv_check_new_extra_data.exit.thread.i:           ; preds = %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.t, %bb.o, %get_aac_sample_rates.exit.i.i
  %.1.i.ph.i = phi i32 [ -22, %get_aac_sample_rates.exit.i.i ], [ %i.ce, %bb.o ], [ %i.ea, %bb.ac ], [ %i.ds, %bb.y ], [ -22, %bb.x ], [ -22, %bb.t ], [ -1094995529, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.y, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !107
  %.not.i14 = icmp eq i64 %i.eg, -1
  br i1 %.not.i14, label %.critedge83.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.ei = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [120 x i8], ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !121
  %.not78.i = icmp eq i32 %i.el, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.en = load i64, ptr %i.em, align 8, !tbaa !122
  %..i = select i1 %.not78.i, i64 8, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !65
  %i.eq = sub nsw i64 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.es = load i64, ptr %i.er, align 8, !tbaa !123
  %i.et = add nsw i64 %i.es, %i.eq                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !124
  %i.ew = call i64 @avio_seek(ptr noundef %i.ev, i64 noundef 0, i32 noundef 1) #14
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !125 ; 2 uses
  %i.fa = icmp ne i32 %i.ez, 0                    ; 2 uses
  %i.fb = icmp eq i32 %i.av, 0                    ; 2 uses
  %or.cond.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = icmp eq i32 %i.az, 0
  br i1 %i.fc, label %.critedge83.i, label %.critedge.i

bb.aj:                                            ; preds = %bb.ah
  %i.fd = icmp eq i32 %i.av, 1
  %or.cond3.i = select i1 %i.fa, i1 %i.fd, i1 false
  br i1 %or.cond3.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !108
  %i.fg = icmp sgt i64 %i.et, %i.ff
  br i1 %i.fg, label %.critedge.i, label %.critedge83.i

bb.al:                                            ; preds = %bb.aj
  %.not79.i = icmp eq i32 %i.ez, 0
  br i1 %.not79.i, label %bb.am, label %.critedge83.i

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !109
  %i.fj = icmp slt i32 %i.fi, %i.ex
  br i1 %i.fj, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !108
  %i.fm = icmp sgt i64 %i.et, %i.fl
  br i1 %i.fm, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %or.cond5.i = select i1 %i.fb, i1 %i.ay, i1 false
  %i.fn = icmp sgt i32 %i.ex, 4096
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.fn, i1 false
  br i1 %or.cond7.i, label %.critedge.i, label %.critedge83.i

.critedge.i:                                      ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.ai
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !31  ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 340
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !110
  %.not.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %.critedge.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !47 ; 3 uses
  %.not17.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not17.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 9 uses
  %wide.trip.count.i.i = zext i32 %i.fs to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.fv = icmp ult i32 %i.fs, 8
  br i1 %i.fv, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967288
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.ap ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.ap ]
  %i.fw = getelementptr inbounds nuw [120 x i8], ptr %i.fu, i64 %indvars.iv.i.i
end_hunk_1
begin_hunk_2_@mkv_write_flush_packet:bb.a
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge83.thread.i
  %i.hm = phi i32 [ 2, %.critedge83.thread.i ], [ %i.hl, %bb.ar ]
  call void @avio_write_marker(ptr noundef %i.gx, i64 noundef %i.hh, i32 noundef %i.hm) #14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge83.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !127 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !128
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hs = call fastcc i32 @mkv_write_packet_internal(ptr noundef nonnull %0, ptr noundef nonnull %i.ho) ; 3 uses
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !127
  call void @av_packet_unref(ptr noundef %i.ht) #14
  %i.hu = icmp slt i32 %i.hs, 0
  br i1 %i.hu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.101, i32 noundef %i.hs) #14
  br label %.critedge

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.hv = icmp eq i32 %i.av, 1
  br i1 %i.hv, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !128
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %i.hz = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.ia = call i32 @av_packet_ref(ptr noundef %i.hz, ptr noundef nonnull %1) #14
  br label %.critedge

bb.az:                                            ; preds = %bb.aw
  %i.ib = call fastcc i32 @mkv_write_packet_internal(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %.critedge

.critedge:                                        ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av, %.loopexit.i.i, %mkv_check_new_extra_data.exit.thread.i, %.loopexit.i, %bb.b, %bb.f
  %.1 = phi i32 [ %i.ah, %.loopexit.i ], [ 1, %bb.b ], [ 1, %bb.f ], [ %i.ib, %bb.az ], [ %.1.i.ph.i, %mkv_check_new_extra_data.exit.thread.i ], [ %i.hs, %bb.av ], [ %i.ia, %bb.ay ], [ 0, %bb.ax ], [ %i.gs, %.loopexit.i.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @mkv_write_trailer(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca [20 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 30 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !128
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = tail call fastcc i32 @mkv_write_packet_internal(ptr noundef nonnull %0, ptr noundef nonnull %i.i) ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.101, i32 noundef %i.m) #14
  br label %bb.cb

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !107
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.r = tail call fastcc i32 @end_ebml_master_crc32(ptr noundef %i.g, ptr noundef nonnull %i.q, ptr noundef nonnull %i.e, i32 noundef 524531317, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.cb, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = tail call fastcc i32 @mkv_write_chapters(ptr noundef nonnull %0) ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.cb, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %i.x = and i32 %i.w, 1
  %.not208 = icmp eq i32 %i.x, 0
  br i1 %.not208, label %bb.cb, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  %i.z = load i32, ptr %i.y, align 4, !tbaa !68
  %.not209 = icmp eq i32 %i.z, 0
  br i1 %.not209, label %bb.i, label %bb.cb

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 1) #14 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.ac = getelementptr i8, ptr %i.e, i64 264     ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %.not210 = icmp eq i32 %i.ad, 0
  br i1 %.not210, label %bb.bf, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !104
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.bf

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 7
  %i.al = lshr i32 %i.ak, 3                       ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 179), align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ar, 7
  %i.at = lshr i32 %i.as, 3                       ; 2 uses
  %.not4.i.i.i223 = icmp eq i32 %i.at, 0
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 183), align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, 7
  %i.ax = lshr i32 %i.aw, 3                       ; 2 uses
  %.not4.i.i62.i = icmp eq i32 %i.ax, 0
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 247), align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.az, 7
  %i.bb = lshr i32 %i.ba, 3                       ; 2 uses
  %.not4.i.i72.i = icmp eq i32 %i.bb, 0
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 241), align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 7
  %i.bf = lshr i32 %i.be, 3                       ; 2 uses
  %.not4.i.i85.i = icmp eq i32 %i.bf, 0
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 240), align 16
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, 7
  %i.bj = lshr i32 %i.bi, 3                       ; 2 uses
  %.not4.i.i98.i = icmp eq i32 %i.bj, 0
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 178), align 2
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 7
  %i.bn = lshr i32 %i.bm, 3                       ; 2 uses
  %.not4.i.i111.i = icmp eq i32 %i.bn, 0
  %i.bo = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 187), align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, 7
  %i.br = lshr i32 %i.bq, 3                       ; 2 uses
  %.not4.i.i119.i = icmp eq i32 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 396 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.ar, %bb.k
  %i.bt = phi ptr [ %.pr, %bb.ar ], [ null, %bb.k ] ; 2 uses
  %.0185 = phi i32 [ %i.iv, %bb.ar ], [ 0, %bb.k ]
  %.0183 = phi i64 [ %i.jf, %bb.ar ], [ 0, %bb.k ] ; 5 uses
  %.0181 = phi i64 [ %i.iz, %bb.ar ], [ undef, %bb.k ]
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.b) #14 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %start_ebml_master_crc32.exit.thread274, label %._crit_edge370

._crit_edge370:                                   ; preds = %bb.m
  %.pre368.pre = load ptr, ptr %i.b, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge370, %bb.l
  %.pre368 = phi ptr [ %.pre368.pre, %._crit_edge370 ], [ %i.bt, %bb.l ] ; 4 uses
  %i.bw = load i32, ptr %i.ah, align 8, !tbaa !60
  %.not6.i = icmp eq i32 %i.bw, 0
  br i1 %.not6.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.bx, %.lr.ph.i.i.i ], [ %i.al, %bb.o ]
  %i.bx = add nsw i32 %.05.i.i.i, -1              ; 3 uses
  %i.by = shl nsw i32 %i.bx, 3
  %i.bz = lshr i32 236, %i.by
  call void @avio_w8(ptr noundef %.pre368, i32 noundef %i.bz) #14
  %.not.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i.i, %bb.o
  call void @avio_w8(ptr noundef %.pre368, i32 noundef 132) #14
  call void @ffio_fill(ptr noundef %.pre368, i32 noundef 0, i64 noundef 4) #14
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !59
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i7.i, %bb.n
  %i.ca = phi ptr [ %.pre, %.lr.ph.i.i7.i ], [ %.pre368, %bb.n ] ; 3 uses
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !119 ; 25 uses
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !86 ; 10 uses
  %i.ce = load i32, ptr %i.ap, align 4, !tbaa !47 ; 4 uses
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 2 uses
  %.val222 = load i32, ptr %i.ac, align 8, !tbaa !130 ; 2 uses
  %i.cf = sext i32 %.val222 to i64
  %.idx.i = mul nsw i64 %i.cf, 40
  %i.cg = getelementptr inbounds i8, ptr %.val, i64 %.idx.i
  %i.ch = icmp sgt i32 %.val222, 0
  br i1 %i.ch, label %.lr.ph14.i, label %.loopexit

.lr.ph14.i:                                       ; preds = %bb.p
  %i.ci = icmp sgt i32 %i.ce, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 84
  %wide.trip.count.i = zext i32 %i.ce to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ck = icmp ult i32 %i.ce, 8
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod517 = icmp ne i64 %xtraiter, 0
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph14.i
  %.05013.i = phi ptr [ %.val, %.lr.ph14.i ], [ %i.ie, %.loopexit.i ] ; 2 uses
  %i.cl = load i64, ptr %.05013.i, align 8, !tbaa !132 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.r ], [ 1, %bb.q ] ; 3 uses
  %.0.i.i = phi i64 [ %i.cm, %bb.r ], [ %i.cl, %bb.q ]
  %i.cm = lshr i64 %.0.i.i, 8                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.cm, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i.i, label %bb.s, label %bb.r, !llvm.loop !2

bb.s:                                             ; preds = %bb.r
  br i1 %.not4.i.i.i223, label %put_ebml_id.exit.i.i, label %.lr.ph.i.i.i224

.lr.ph.i.i.i224:                                  ; preds = %bb.s, %.lr.ph.i.i.i224
  %.05.i.i.i225 = phi i32 [ %i.cn, %.lr.ph.i.i.i224 ], [ %i.at, %bb.s ]
  %i.cn = add nsw i32 %.05.i.i.i225, -1           ; 3 uses
  %i.co = shl nsw i32 %i.cn, 3
  %i.cp = lshr i32 179, %i.co
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.cp) #14
  %.not.i.i.i226 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i226, label %put_ebml_id.exit.i.i, label %.lr.ph.i.i.i224, !llvm.loop !0

put_ebml_id.exit.i.i:                             ; preds = %.lr.ph.i.i.i224, %bb.s
  %i.cq = and i64 %indvars.iv.i.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.cc, i64 noundef %i.cq, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %put_ebml_id.exit.i.i
  %indvars.iv16.i.i = phi i64 [ %indvars.iv.i.i, %put_ebml_id.exit.i.i ], [ %indvars.iv.next17.i.i, %bb.t ] ; 2 uses
  %indvars.iv.next17.i.i = add nsw i64 %indvars.iv16.i.i, -1 ; 2 uses
  %i.cr = shl nuw nsw i64 %indvars.iv.next17.i.i, 3
  %i.cs = lshr i64 %i.cl, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.cu) #14
  %i.cv = icmp sgt i64 %indvars.iv16.i.i, 1
  br i1 %i.cv, label %bb.t, label %put_ebml_uint.exit.preheader.i, !llvm.loop !3

put_ebml_uint.exit.preheader.i:                   ; preds = %bb.t
  br i1 %i.ci, label %put_ebml_uint.exit.i.preheader, label %.preheader5.i.preheader

put_ebml_uint.exit.i.preheader:                   ; preds = %put_ebml_uint.exit.preheader.i
  br i1 %i.ck, label %put_ebml_uint.exit.i.epil.preheader, label %put_ebml_uint.exit.i

put_ebml_uint.exit.i:                             ; preds = %put_ebml_uint.exit.i.preheader, %put_ebml_uint.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %put_ebml_uint.exit.i ], [ 0, %put_ebml_uint.exit.i.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %put_ebml_uint.exit.i ], [ 0, %put_ebml_uint.exit.i.preheader ]
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 0, ptr %i.cx, align 4, !tbaa !111
  %i.cy = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 124
  store i32 0, ptr %i.cz, align 4, !tbaa !111
  %i.da = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 244
  store i32 0, ptr %i.db, align 4, !tbaa !111
  %i.dc = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 364
  store i32 0, ptr %i.dd, align 4, !tbaa !111
  %i.de = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 484
  store i32 0, ptr %i.df, align 4, !tbaa !111
  %i.dg = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 604
  store i32 0, ptr %i.dh, align 4, !tbaa !111
  %i.di = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 724
  store i32 0, ptr %i.dj, align 4, !tbaa !111
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 844
  store i32 0, ptr %i.dl, align 4, !tbaa !111
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader5.i.preheader.loopexit.unr-lcssa, label %put_ebml_uint.exit.i, !llvm.loop !178

.preheader5.i.preheader.loopexit.unr-lcssa:       ; preds = %put_ebml_uint.exit.i
  br i1 %lcmp.mod.not, label %.preheader5.i.preheader, label %put_ebml_uint.exit.i.epil.preheader

put_ebml_uint.exit.i.epil.preheader:              ; preds = %.preheader5.i.preheader.loopexit.unr-lcssa, %put_ebml_uint.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %put_ebml_uint.exit.i.preheader ], [ %indvars.iv.next.i.7, %.preheader5.i.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod517)
  br label %put_ebml_uint.exit.i.epil

put_ebml_uint.exit.i.epil:                        ; preds = %put_ebml_uint.exit.i.epil, %put_ebml_uint.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %put_ebml_uint.exit.i.epil ], [ %indvars.iv.i.epil.init, %put_ebml_uint.exit.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %put_ebml_uint.exit.i.epil ], [ 0, %put_ebml_uint.exit.i.epil.preheader ]
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %indvars.iv.i.epil
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 0, ptr %i.dn, align 4, !tbaa !111
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader5.i.preheader, label %put_ebml_uint.exit.i.epil, !llvm.loop !179

.preheader5.i.preheader:                          ; preds = %.preheader5.i.preheader.loopexit.unr-lcssa, %put_ebml_uint.exit.i.epil, %put_ebml_uint.exit.preheader.i
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %.preheader5.i.preheader, %bb.ak
  %.151.i = phi ptr [ %i.ie, %bb.ak ], [ %.05013.i, %.preheader5.i.preheader ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.151.i, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !133 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  %i.dr = icmp slt i32 %i.dp, %i.ce
  %or.cond.i = and i1 %i.dq, %i.dr
  br i1 %or.cond.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader5.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.47, i32 noundef 1014) #14
  call void @abort() #17
  unreachable

bb.v:                                             ; preds = %.preheader5.i
  %i.ds = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw [120 x i8], ptr %i.cd, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !111
  %.not.i227 = icmp eq i32 %i.dv, 0
  br i1 %.not.i227, label %ebml_length_size.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ds
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !71
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !81
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !87
  %.not61.i = icmp eq i32 %i.ea, 3
  br i1 %.not61.i, label %ebml_length_size.exit.i.i, label %end_ebml_master.exit.i

ebml_length_size.exit.i.i:                        ; preds = %bb.w, %bb.v
  store i32 1, ptr %i.du, align 4, !tbaa !111
  br i1 %.not4.i.i62.i, label %put_ebml_id.exit.i66.i, label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %ebml_length_size.exit.i.i, %.lr.ph.i.i63.i
  %.05.i.i64.i = phi i32 [ %i.eb, %.lr.ph.i.i63.i ], [ %i.ax, %ebml_length_size.exit.i.i ]
  %i.eb = add nsw i32 %.05.i.i64.i, -1            ; 3 uses
  %i.ec = shl nsw i32 %i.eb, 3
  %i.ed = lshr i32 183, %i.ec
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.ed) #14
  %.not.i.i65.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i65.i, label %put_ebml_id.exit.i66.i, label %.lr.ph.i.i63.i, !llvm.loop !0

put_ebml_id.exit.i66.i:                           ; preds = %.lr.ph.i.i63.i, %ebml_length_size.exit.i.i
  call void @avio_w8(ptr noundef %i.cc, i32 noundef 255) #14
  %i.ee = call i64 @avio_seek(ptr noundef %i.cc, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !134 ; 4 uses
  %i.eh = zext i32 %i.eg to i64
  %.not.i70.i = icmp ult i32 %i.eg, 256
  br i1 %.not.i70.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %put_ebml_id.exit.i66.i
  %.not.i70.i.1 = icmp ult i32 %i.eg, 65536
  br i1 %.not.i70.i.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i70.i.2 = icmp ult i32 %i.eg, 16777216
  %spec.select553 = select i1 %.not.i70.i.2, i64 3, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %put_ebml_id.exit.i66.i
  %indvars.iv.i67.i.lcssa = phi i64 [ 1, %put_ebml_id.exit.i66.i ], [ 2, %bb.x ], [ %spec.select553, %bb.y ] ; 2 uses
  br i1 %.not4.i.i72.i, label %put_ebml_id.exit.i76.i, label %.lr.ph.i.i73.i

.lr.ph.i.i73.i:                                   ; preds = %bb.z, %.lr.ph.i.i73.i
  %.05.i.i74.i = phi i32 [ %i.ei, %.lr.ph.i.i73.i ], [ %i.bb, %bb.z ]
  %i.ei = add nsw i32 %.05.i.i74.i, -1            ; 3 uses
  %i.ej = shl nsw i32 %i.ei, 3
  %i.ek = lshr i32 247, %i.ej
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.ek) #14
  %.not.i.i75.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i75.i, label %put_ebml_id.exit.i76.i, label %.lr.ph.i.i73.i, !llvm.loop !0

put_ebml_id.exit.i76.i:                           ; preds = %.lr.ph.i.i73.i, %bb.z
  %i.el = and i64 %indvars.iv.i67.i.lcssa, 4294967295 ; 2 uses
  %.not.i.i.i126.i = icmp samesign ult i64 %i.el, 127
  %.lcssa = select i1 %.not.i.i.i126.i, i32 1, i32 2 ; 2 uses
  %i.em = mul nuw nsw i32 %.lcssa, 7
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw nsw i64 1, %i.en
  %i.ep = or i64 %i.eo, %i.el
  %i.eq = zext nneg i32 %.lcssa to i64
  br label %.lr.ph.i.i128.i

.lr.ph.i.i128.i:                                  ; preds = %.lr.ph.i.i128.i, %put_ebml_id.exit.i76.i
  %indvars.iv.i.i.i = phi i64 [ %i.eq, %put_ebml_id.exit.i76.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i128.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.er = shl nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.es = lshr i64 %i.ep, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = and i32 %i.et, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.eu) #14
  %i.ev = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.ev, label %.lr.ph.i.i128.i, label %put_ebml_length.exit.i, !llvm.loop !4

put_ebml_length.exit.i:                           ; preds = %.lr.ph.i.i128.i, %put_ebml_length.exit.i
  %indvars.iv16.i77.i = phi i64 [ %indvars.iv.next17.i78.i, %put_ebml_length.exit.i ], [ %indvars.iv.i67.i.lcssa, %.lr.ph.i.i128.i ] ; 2 uses
  %indvars.iv.next17.i78.i = add nsw i64 %indvars.iv16.i77.i, -1 ; 2 uses
  %i.ew = shl nuw nsw i64 %indvars.iv.next17.i78.i, 3
  %i.ex = lshr i64 %i.eh, %i.ew
  %i.ey = trunc nuw i64 %i.ex to i32
  %i.ez = and i32 %i.ey, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.ez) #14
  %i.fa = icmp sgt i64 %indvars.iv16.i77.i, 1
  br i1 %i.fa, label %put_ebml_length.exit.i, label %put_ebml_uint.exit79.i, !llvm.loop !3

put_ebml_uint.exit79.i:                           ; preds = %put_ebml_length.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.151.i, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !135
  %i.fd = add i64 %i.fc, %.0183                   ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %put_ebml_uint.exit79.i
  %indvars.iv.i80.i = phi i64 [ %indvars.iv.next.i84.i, %bb.aa ], [ 1, %put_ebml_uint.exit79.i ] ; 3 uses
  %.0.i82.i = phi i64 [ %i.fe, %bb.aa ], [ %i.fd, %put_ebml_uint.exit79.i ]
  %i.fe = lshr i64 %.0.i82.i, 8                   ; 2 uses
  %.not.i83.i = icmp eq i64 %i.fe, 0
  %indvars.iv.next.i84.i = add nuw nsw i64 %indvars.iv.i80.i, 1
  br i1 %.not.i83.i, label %bb.ab, label %bb.aa, !llvm.loop !2

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not4.i.i85.i, label %put_ebml_id.exit.i89.i, label %.lr.ph.i.i86.i

.lr.ph.i.i86.i:                                   ; preds = %bb.ab, %.lr.ph.i.i86.i
  %.05.i.i87.i = phi i32 [ %i.ff, %.lr.ph.i.i86.i ], [ %i.bf, %bb.ab ]
  %i.ff = add nsw i32 %.05.i.i87.i, -1            ; 3 uses
  %i.fg = shl nsw i32 %i.ff, 3
  %i.fh = lshr i32 241, %i.fg
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.fh) #14
  %.not.i.i88.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i88.i, label %put_ebml_id.exit.i89.i, label %.lr.ph.i.i86.i, !llvm.loop !0

put_ebml_id.exit.i89.i:                           ; preds = %.lr.ph.i.i86.i, %bb.ab
  %i.fi = and i64 %indvars.iv.i80.i, 4294967295   ; 2 uses
  %.not.i.i.i131.i = icmp samesign ult i64 %i.fi, 127
  %.lcssa479 = select i1 %.not.i.i.i131.i, i32 1, i32 2 ; 2 uses
  %i.fj = mul nuw nsw i32 %.lcssa479, 7
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 1, %i.fk
  %i.fm = or i64 %i.fl, %i.fi
  %i.fn = zext nneg i32 %.lcssa479 to i64
  br label %.lr.ph.i.i133.i

.lr.ph.i.i133.i:                                  ; preds = %.lr.ph.i.i133.i, %put_ebml_id.exit.i89.i
  %indvars.iv.i.i134.i = phi i64 [ %i.fn, %put_ebml_id.exit.i89.i ], [ %indvars.iv.next.i.i135.i, %.lr.ph.i.i133.i ] ; 2 uses
  %indvars.iv.next.i.i135.i = add nsw i64 %indvars.iv.i.i134.i, -1 ; 2 uses
  %i.fo = shl nuw nsw i64 %indvars.iv.next.i.i135.i, 3
  %i.fp = lshr i64 %i.fm, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = and i32 %i.fq, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.fr) #14
  %i.fs = icmp samesign ugt i64 %indvars.iv.i.i134.i, 1
  br i1 %i.fs, label %.lr.ph.i.i133.i, label %put_ebml_length.exit136.i, !llvm.loop !4

put_ebml_length.exit136.i:                        ; preds = %.lr.ph.i.i133.i, %put_ebml_length.exit136.i
  %indvars.iv16.i90.i = phi i64 [ %indvars.iv.next17.i91.i, %put_ebml_length.exit136.i ], [ %indvars.iv.i80.i, %.lr.ph.i.i133.i ] ; 2 uses
  %indvars.iv.next17.i91.i = add nsw i64 %indvars.iv16.i90.i, -1 ; 2 uses
  %i.ft = shl nuw nsw i64 %indvars.iv.next17.i91.i, 3
  %i.fu = lshr i64 %i.fd, %i.ft
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = and i32 %i.fv, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.fw) #14
  %i.fx = icmp sgt i64 %indvars.iv16.i90.i, 1
  br i1 %i.fx, label %put_ebml_length.exit136.i, label %put_ebml_uint.exit92.i, !llvm.loop !3

put_ebml_uint.exit92.i:                           ; preds = %put_ebml_length.exit136.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.151.i, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !136 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %put_ebml_uint.exit92.i
  %indvars.iv.i93.i = phi i64 [ %indvars.iv.next.i97.i, %bb.ac ], [ 1, %put_ebml_uint.exit92.i ] ; 3 uses
  %.0.i95.i = phi i64 [ %i.ga, %bb.ac ], [ %i.fz, %put_ebml_uint.exit92.i ]
  %i.ga = lshr i64 %.0.i95.i, 8                   ; 2 uses
  %.not.i96.i = icmp eq i64 %i.ga, 0
  %indvars.iv.next.i97.i = add nuw nsw i64 %indvars.iv.i93.i, 1
  br i1 %.not.i96.i, label %bb.ad, label %bb.ac, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not4.i.i98.i, label %put_ebml_id.exit.i102.i, label %.lr.ph.i.i99.i

.lr.ph.i.i99.i:                                   ; preds = %bb.ad, %.lr.ph.i.i99.i
  %.05.i.i100.i = phi i32 [ %i.gb, %.lr.ph.i.i99.i ], [ %i.bj, %bb.ad ]
  %i.gb = add nsw i32 %.05.i.i100.i, -1           ; 3 uses
  %i.gc = shl nsw i32 %i.gb, 3
  %i.gd = lshr i32 240, %i.gc
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.gd) #14
  %.not.i.i101.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i101.i, label %put_ebml_id.exit.i102.i, label %.lr.ph.i.i99.i, !llvm.loop !0

put_ebml_id.exit.i102.i:                          ; preds = %.lr.ph.i.i99.i, %bb.ad
  %i.ge = and i64 %indvars.iv.i93.i, 4294967295   ; 2 uses
  %.not.i.i.i139.i = icmp samesign ult i64 %i.ge, 127
  %.lcssa480 = select i1 %.not.i.i.i139.i, i32 1, i32 2 ; 2 uses
  %i.gf = mul nuw nsw i32 %.lcssa480, 7
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 1, %i.gg
  %i.gi = or i64 %i.gh, %i.ge
  %i.gj = zext nneg i32 %.lcssa480 to i64
  br label %.lr.ph.i.i141.i

.lr.ph.i.i141.i:                                  ; preds = %.lr.ph.i.i141.i, %put_ebml_id.exit.i102.i
  %indvars.iv.i.i142.i = phi i64 [ %i.gj, %put_ebml_id.exit.i102.i ], [ %indvars.iv.next.i.i143.i, %.lr.ph.i.i141.i ] ; 2 uses
  %indvars.iv.next.i.i143.i = add nsw i64 %indvars.iv.i.i142.i, -1 ; 2 uses
  %i.gk = shl nuw nsw i64 %indvars.iv.next.i.i143.i, 3
  %i.gl = lshr i64 %i.gi, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.gn) #14
  %i.go = icmp samesign ugt i64 %indvars.iv.i.i142.i, 1
  br i1 %i.go, label %.lr.ph.i.i141.i, label %put_ebml_length.exit144.i, !llvm.loop !4

put_ebml_length.exit144.i:                        ; preds = %.lr.ph.i.i141.i, %put_ebml_length.exit144.i
  %indvars.iv16.i103.i = phi i64 [ %indvars.iv.next17.i104.i, %put_ebml_length.exit144.i ], [ %indvars.iv.i93.i, %.lr.ph.i.i141.i ] ; 2 uses
  %indvars.iv.next17.i104.i = add nsw i64 %indvars.iv16.i103.i, -1 ; 2 uses
  %i.gp = shl nuw nsw i64 %indvars.iv.next17.i104.i, 3
  %i.gq = lshr i64 %i.fz, %i.gp
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = and i32 %i.gr, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.gs) #14
  %i.gt = icmp sgt i64 %indvars.iv16.i103.i, 1
  br i1 %i.gt, label %put_ebml_length.exit144.i, label %put_ebml_uint.exit105.i, !llvm.loop !3

put_ebml_uint.exit105.i:                          ; preds = %put_ebml_length.exit144.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137 ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, 0
  br i1 %i.gw, label %.preheader.i, label %put_ebml_uint.exit118.i

.preheader.i:                                     ; preds = %put_ebml_uint.exit105.i, %.preheader.i
  %indvars.iv.i106.i = phi i64 [ %indvars.iv.next.i110.i, %.preheader.i ], [ 1, %put_ebml_uint.exit105.i ] ; 3 uses
  %.0.i108.i = phi i64 [ %i.gx, %.preheader.i ], [ %i.gv, %put_ebml_uint.exit105.i ]
  %i.gx = lshr i64 %.0.i108.i, 8                  ; 2 uses
  %.not.i109.i = icmp eq i64 %i.gx, 0
  %indvars.iv.next.i110.i = add nuw nsw i64 %indvars.iv.i106.i, 1
  br i1 %.not.i109.i, label %bb.ae, label %.preheader.i, !llvm.loop !2

bb.ae:                                            ; preds = %.preheader.i
  br i1 %.not4.i.i111.i, label %put_ebml_id.exit.i115.i, label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %bb.ae, %.lr.ph.i.i112.i
  %.05.i.i113.i = phi i32 [ %i.gy, %.lr.ph.i.i112.i ], [ %i.bn, %bb.ae ]
  %i.gy = add nsw i32 %.05.i.i113.i, -1           ; 3 uses
  %i.gz = shl nsw i32 %i.gy, 3
  %i.ha = lshr i32 178, %i.gz
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.ha) #14
  %.not.i.i114.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i114.i, label %put_ebml_id.exit.i115.i, label %.lr.ph.i.i112.i, !llvm.loop !0

put_ebml_id.exit.i115.i:                          ; preds = %.lr.ph.i.i112.i, %bb.ae
  %i.hb = and i64 %indvars.iv.i106.i, 4294967295  ; 2 uses
  %.not.i.i.i147.i = icmp samesign ult i64 %i.hb, 127
  %.lcssa481 = select i1 %.not.i.i.i147.i, i32 1, i32 2 ; 2 uses
  %i.hc = mul nuw nsw i32 %.lcssa481, 7
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i64 1, %i.hd
  %i.hf = or i64 %i.he, %i.hb
  %i.hg = zext nneg i32 %.lcssa481 to i64
  br label %.lr.ph.i.i149.i

.lr.ph.i.i149.i:                                  ; preds = %.lr.ph.i.i149.i, %put_ebml_id.exit.i115.i
  %indvars.iv.i.i150.i = phi i64 [ %i.hg, %put_ebml_id.exit.i115.i ], [ %indvars.iv.next.i.i151.i, %.lr.ph.i.i149.i ] ; 2 uses
  %indvars.iv.next.i.i151.i = add nsw i64 %indvars.iv.i.i150.i, -1 ; 2 uses
  %i.hh = shl nuw nsw i64 %indvars.iv.next.i.i151.i, 3
  %i.hi = lshr i64 %i.hf, %i.hh
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = and i32 %i.hj, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hk) #14
  %i.hl = icmp samesign ugt i64 %indvars.iv.i.i150.i, 1
  br i1 %i.hl, label %.lr.ph.i.i149.i, label %put_ebml_length.exit152.i, !llvm.loop !4

put_ebml_length.exit152.i:                        ; preds = %.lr.ph.i.i149.i, %put_ebml_length.exit152.i
  %indvars.iv16.i116.i = phi i64 [ %indvars.iv.next17.i117.i, %put_ebml_length.exit152.i ], [ %indvars.iv.i106.i, %.lr.ph.i.i149.i ] ; 2 uses
  %indvars.iv.next17.i117.i = add nsw i64 %indvars.iv16.i116.i, -1 ; 2 uses
  %i.hm = shl nuw nsw i64 %indvars.iv.next17.i117.i, 3
  %i.hn = lshr i64 %i.gv, %i.hm
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = and i32 %i.ho, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hp) #14
  %i.hq = icmp sgt i64 %indvars.iv16.i116.i, 1
  br i1 %i.hq, label %put_ebml_length.exit152.i, label %put_ebml_uint.exit118.i, !llvm.loop !3

put_ebml_uint.exit118.i:                          ; preds = %put_ebml_length.exit152.i, %put_ebml_uint.exit105.i
  %i.hr = call i64 @avio_seek(ptr noundef %i.cc, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.hs = add nsw i64 %i.ee, -1
  %i.ht = call i64 @avio_seek(ptr noundef %i.cc, i64 noundef %i.hs, i32 noundef 0) #14
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %end_ebml_master.exit.i, label %bb.af

bb.af:                                            ; preds = %put_ebml_uint.exit118.i
  %i.hv = sub nsw i64 %i.hr, %i.ee                ; 3 uses
  %i.hw = add i64 %i.hv, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.03.i.i.i153.i = phi i64 [ %i.hw, %bb.af ], [ %i.hy, %bb.ag ]
  %.0.i.i.i154.i = phi i32 [ 0, %bb.af ], [ %i.hx, %bb.ag ] ; 2 uses
  %i.hx = add nuw nsw i32 %.0.i.i.i154.i, 1
  %i.hy = lshr i64 %.03.i.i.i153.i, 7             ; 2 uses
  %.not.i.i.i155.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i155.i, label %ebml_length_size.exit.i156.i, label %bb.ag, !llvm.loop !5

ebml_length_size.exit.i156.i:                     ; preds = %bb.ag
  %i.hz = icmp ult i64 %i.hv, 72057594037927935
  br i1 %i.hz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %ebml_length_size.exit.i156.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.47, i32 noundef 384) #14
  call void @abort() #17
  unreachable

bb.ai:                                            ; preds = %ebml_length_size.exit.i156.i
  %.not.not.i.i = icmp eq i32 %.0.i.i.i154.i, 0
  br i1 %.not.not.i.i, label %.lr.ph.preheader.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47, i32 noundef 390) #14
  call void @abort() #17
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ai
  %i.ia = trunc i64 %i.hv to i32
  %i.ib = and i32 %i.ia, 127
  %i.ic = or disjoint i32 %i.ib, 128
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.ic) #14
  %i.id = call i64 @avio_seek(ptr noundef %i.cc, i64 noundef %i.hr, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit.i

end_ebml_master.exit.i:                           ; preds = %.lr.ph.preheader.i.i.i, %put_ebml_uint.exit118.i, %bb.w
  %i.ie = getelementptr inbounds nuw i8, ptr %.151.i, i64 40 ; 4 uses
  %i.if = icmp ult ptr %i.ie, %i.cg               ; 2 uses
  br i1 %i.if, label %bb.ak, label %.critedge.i

bb.ak:                                            ; preds = %end_ebml_master.exit.i
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !132
  %i.ih = icmp eq i64 %i.ig, %i.cl
  br i1 %i.ih, label %.preheader5.i, label %.critedge.i, !llvm.loop !180

.critedge.i:                                      ; preds = %bb.ak, %end_ebml_master.exit.i
  %i.ii = call i32 @avio_get_dyn_buf(ptr noundef %i.cc, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.ij = load i32, ptr %i.cj, align 4, !tbaa !138 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, -1
  br i1 %i.ik, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge.i
  %i.il = load ptr, ptr %i.a, align 8, !tbaa !95
  br i1 %.not4.i.i119.i, label %.loopexit.i, label %.lr.ph.i.i120.i

.lr.ph.i.i120.i:                                  ; preds = %bb.al, %.lr.ph.i.i120.i
  %.05.i.i121.i = phi i32 [ %i.im, %.lr.ph.i.i120.i ], [ %i.br, %bb.al ]
  %i.im = add nsw i32 %.05.i.i121.i, -1           ; 3 uses
  %i.in = shl nsw i32 %i.im, 3
  %i.io = lshr i32 187, %i.in
  call void @avio_w8(ptr noundef %i.ca, i32 noundef %i.io) #14
  %.not.i.i122.i = icmp eq i32 %i.im, 0
  br i1 %.not.i.i122.i, label %.loopexit.i, label %.lr.ph.i.i120.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.lr.ph.i.i120.i, %bb.al
  %i.ip = sext i32 %i.ii to i64
  call fastcc void @put_ebml_length(ptr noundef %i.ca, i64 noundef %i.ip, i32 noundef 0)
  call void @avio_write(ptr noundef %i.ca, ptr noundef %i.il, i32 noundef %i.ii) #14
  call void @ffio_reset_dyn_buf(ptr noundef nonnull %i.cc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.if, label %bb.q, label %.loopexit, !llvm.loop !181

bb.am:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.b) #14
  br label %start_ebml_master_crc32.exit.thread274

.loopexit:                                        ; preds = %.loopexit.i, %bb.p
  %i.iq = load i32, ptr %i.ae, align 8, !tbaa !104
  %.not211 = icmp eq i32 %i.iq, 0
  br i1 %.not211, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  %i.ir = load i32, ptr %i.bs, align 4, !tbaa !105
  %.not212 = icmp eq i32 %i.ir, 0
  br i1 %.not212, label %.loopexit280, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.it = call i64 @avio_seek(ptr noundef %i.is, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.iu = add i64 %i.it, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.03.i.i = phi i64 [ %i.iu, %bb.ao ], [ %i.iw, %bb.ap ]
  %.0.i.i228 = phi i32 [ 0, %bb.ao ], [ %i.iv, %bb.ap ] ; 3 uses
  %i.iv = add nuw nsw i32 %.0.i.i228, 1           ; 3 uses
  %i.iw = lshr i64 %.03.i.i, 7                    ; 2 uses
  %.not.i.i229 = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i229, label %ebml_length_size.exit, label %bb.ap, !llvm.loop !5

ebml_length_size.exit:                            ; preds = %bb.ap
  %i.ix = add nuw nsw i32 %.0.i.i228, 5
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = add i64 %i.it, %i.iy                    ; 6 uses
  %i.ja = load i32, ptr %i.ae, align 8, !tbaa !104 ; 2 uses
  %i.jb = sext i32 %i.ja to i64                   ; 3 uses
  %i.jc = add i64 %.0183, %i.jb
  %i.jd = icmp ult i64 %i.jc, %i.iz
  br i1 %i.jd, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %ebml_length_size.exit
  %i.je = load i32, ptr %i.bs, align 4, !tbaa !105
  %.not216 = icmp eq i32 %i.je, 0
  br i1 %.not216, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jf = sub i64 %i.iz, %i.jb
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !59
  call void @ffio_reset_dyn_buf(ptr noundef %i.jg) #14
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !59
  br label %bb.l

bb.as:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.108, i32 noundef %i.ja, i64 noundef %i.iz) #14
  br label %start_ebml_master_crc32.exit

bb.at:                                            ; preds = %ebml_length_size.exit
  %.not213 = icmp eq i64 %.0183, 0
  br i1 %.not213, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !106
  %i.jj = add nsw i64 %i.ji, %i.jb
  %i.jk = trunc i64 %.0183 to i32
  %i.jl = call i32 @ff_format_shift_data(ptr noundef nonnull %0, i64 noundef %i.jj, i32 noundef %i.jk) #14 ; 2 uses
  %i.jm = icmp slt i32 %i.jl, 0
  br i1 %i.jm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.b) #14
  br label %start_ebml_master_crc32.exit.thread274

bb.aw:                                            ; preds = %bb.au
  %i.jn = add i64 %.0183, %i.aa
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.0170 = phi i64 [ %i.jn, %bb.aw ], [ %i.aa, %bb.at ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !106
  %i.jq = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.jp, i32 noundef 0) #14 ; 2 uses
  %i.jr = icmp slt i64 %i.jq, 0
  br i1 %i.jr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.b) #14
  %i.js = trunc i64 %i.jq to i32
  br label %start_ebml_master_crc32.exit.thread274

bb.az:                                            ; preds = %bb.ax
  %i.jt = load i32, ptr %i.ae, align 8, !tbaa !104
  %i.ju = sext i32 %i.jt to i64
  %i.jv = add i64 %i.iz, 1                        ; 2 uses
  %i.jw = icmp eq i64 %i.jv, %i.ju                ; 2 uses
  %i.jx = add nuw nsw i32 %.0.i.i228, 2
  %spec.select = select i1 %i.jw, i32 %i.jx, i32 %i.iv
  %spec.select221 = select i1 %i.jw, i64 %i.jv, i64 %i.iz
  br label %.loopexit280

.loopexit280:                                     ; preds = %bb.an, %bb.az
  %.1186 = phi i32 [ %spec.select, %bb.az ], [ %.0185, %bb.an ]
  %.1182 = phi i64 [ %spec.select221, %bb.az ], [ %.0181, %bb.an ] ; 2 uses
  %.1171 = phi i64 [ %.0170, %bb.az ], [ %i.aa, %bb.an ] ; 3 uses
  %i.jy = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef 475249515, i32 noundef %.1186, i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %start_ebml_master_crc32.exit.thread274, label %bb.ba

bb.ba:                                            ; preds = %.loopexit280
  %i.ka = load i32, ptr %i.ae, align 8, !tbaa !104 ; 3 uses
  %.not214 = icmp eq i32 %i.ka, 0
  br i1 %.not214, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp ult i64 %.1182, %i.kb
  br i1 %i.kc, label %bb.bc, label %start_ebml_master_crc32.exit

bb.bc:                                            ; preds = %bb.bb
  %i.kd = trunc i64 %.1182 to i32
  %i.ke = sub i32 %i.ka, %i.kd
  call fastcc void @put_ebml_void(ptr noundef nonnull %i.g, i32 noundef %i.ke)
  br label %start_ebml_master_crc32.exit

bb.bd:                                            ; preds = %bb.ba
  %i.kf = load i32, ptr %i.bs, align 4, !tbaa !105
  %.not215 = icmp eq i32 %i.kf, 0
  br i1 %.not215, label %bb.be, label %start_ebml_master_crc32.exit

bb.be:                                            ; preds = %bb.bd
  %i.kg = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 1) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit.thread274:           ; preds = %bb.m, %.loopexit280, %bb.am, %bb.av, %bb.ay
  %.0.ph = phi i32 [ %i.jy, %.loopexit280 ], [ %i.js, %bb.ay ], [ %i.jl, %bb.av ], [ %i.ij, %bb.am ], [ %i.bu, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cb

start_ebml_master_crc32.exit:                     ; preds = %bb.bc, %bb.bb, %bb.be, %bb.bd, %bb.as
  %.0175 = phi i32 [ 0, %bb.bc ], [ 0, %bb.bd ], [ -22, %bb.as ], [ 0, %bb.be ], [ 0, %bb.bb ]
  %.3173 = phi i64 [ %.1171, %bb.bc ], [ %.1171, %bb.bd ], [ %i.aa, %bb.as ], [ %i.kg, %bb.be ], [ %.1171, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.bf

bb.bf:                                            ; preds = %start_ebml_master_crc32.exit, %bb.i, %bb.j
  %.1176 = phi i32 [ 0, %bb.i ], [ %.0175, %start_ebml_master_crc32.exit ], [ 0, %bb.j ]
  %.4174 = phi i64 [ %i.aa, %bb.i ], [ %.3173, %start_ebml_master_crc32.exit ], [ %i.aa, %bb.j ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !58 ; 2 uses
  %i.kj = sub nsw i64 %.4174, %i.ki
  %i.kk = icmp ult i64 %i.kj, 72057594037927935
  br i1 %i.kk, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.kl = add nsw i64 %i.ki, -8
  %i.km = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.kl, i32 noundef 0) #14 ; 2 uses
  %i.kn = icmp slt i64 %i.km, 0
  br i1 %i.kn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ko = trunc i64 %i.km to i32
  br label %bb.cb

bb.bi:                                            ; preds = %bb.bg
  %i.kp = load i64, ptr %i.kh, align 8, !tbaa !58
  %i.kq = sub nsw i64 %.4174, %i.kp
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.g, i64 noundef %i.kq, i32 noundef 8)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !185
  %i.ku = call fastcc i32 @mkv_write_seekhead(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef 1, i64 noundef %i.kt) ; 2 uses
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %bb.cb, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kw = load ptr, ptr %i.kr, align 8, !tbaa !61
  %.not217 = icmp eq ptr %i.kw, null
  br i1 %.not217, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !66
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.109, i64 noundef %i.ky) #14
  %i.kz = load ptr, ptr %i.kr, align 8, !tbaa !61
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !67
  %i.lc = call i64 @avio_seek(ptr noundef %i.kz, i64 noundef %i.lb, i32 noundef 0) #14 ; 0 uses
  %i.ld = load ptr, ptr %i.kr, align 8, !tbaa !61
  %i.le = load i64, ptr %i.kx, align 8, !tbaa !66
  %i.lf = sitofp nsz i64 %i.le to double
  call fastcc void @put_ebml_float(ptr noundef %i.ld, i32 noundef 17545, double noundef %i.lf)
  %i.lg = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.kr, ptr noundef nonnull %i.e, i32 noundef 357149030, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.lh = icmp slt i32 %i.lg, 0
  br i1 %i.lh, label %bb.cb, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.li = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !115 ; 16 uses
  %.not218 = icmp eq ptr %i.lj, null
  br i1 %.not218, label %bb.bv, label %.preheader279

.preheader279:                                    ; preds = %bb.bm
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !47
  %.not323 = icmp eq i32 %i.ll, 0
  br i1 %.not323, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader279
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ln = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 85), align 1
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nuw nsw i32 %i.lo, 15
  %i.lq = lshr i32 %i.lp, 3
  %i.lr = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 65), align 1
  %i.ls = zext i8 %i.lr to i32
  %i.lt = add nuw nsw i32 %i.ls, 15
  %i.lu = lshr i32 %i.lt, 3                       ; 2 uses
  br label %bb.bn

._crit_edge:                                      ; preds = %end_ebml_master.exit, %.preheader279
  %i.lv = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !186
  %i.lx = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.lw, i32 noundef 0) #14 ; 0 uses
  %i.ly = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.li, ptr noundef nonnull %i.e, i32 noundef 374648427, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, -1
  br i1 %i.lz, label %bb.bv, label %bb.cb

bb.bn:                                            ; preds = %.lr.ph, %end_ebml_master.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %end_ebml_master.exit ] ; 2 uses
  %i.ma = load ptr, ptr %i.lm, align 8, !tbaa !86
  %i.mb = getelementptr inbounds nuw [120 x i8], ptr %i.ma, i64 %indvars.iv ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 64 ; 3 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !139 ; 2 uses
  %.not220 = icmp eq i64 %i.md, 0
  br i1 %.not220, label %end_ebml_master.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.me = icmp ult i64 %i.md, 256
  br i1 %i.me, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.47, i32 noundef 3429) #14
  call void @abort() #17
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 72
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !140
  %i.mh = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef %i.mg, i32 noundef 0) #14 ; 0 uses
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !139 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233, %bb.br ], [ 1, %bb.bq ] ; 3 uses
  %.0.i231 = phi i64 [ %i.mj, %bb.br ], [ %i.mi, %bb.bq ]
  %i.mj = lshr i64 %.0.i231, 8                    ; 2 uses
  %.not.i232 = icmp eq i64 %i.mj, 0
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1
  br i1 %.not.i232, label %.lr.ph.i.i, label %bb.br, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.br, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.mk, %.lr.ph.i.i ], [ %i.lq, %bb.br ]
  %i.mk = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.ml = shl nsw i32 %i.mk, 3
  %i.mm = lshr i32 21998, %i.ml
  %i.mn = and i32 %i.mm, 255
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.mn) #14
  %.not.i.i234 = icmp eq i32 %i.mk, 0
  br i1 %.not.i.i234, label %put_ebml_id.exit.i, label %.lr.ph.i.i, !llvm.loop !0

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i
  %i.mo = and i64 %indvars.iv.i230, 4294967295
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef %i.mo, i32 noundef 0)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %put_ebml_id.exit.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.i230, %put_ebml_id.exit.i ], [ %indvars.iv.next17.i, %bb.bs ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.mp = shl nuw nsw i64 %indvars.iv.next17.i, 3
  %i.mq = lshr i64 %i.mi, %i.mp
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = and i32 %i.mr, 255
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.ms) #14
  %i.mt = icmp sgt i64 %indvars.iv16.i, 1
  br i1 %i.mt, label %bb.bs, label %put_ebml_uint.exit, !llvm.loop !3

put_ebml_uint.exit:                               ; preds = %bb.bs
  %i.mu = load i64, ptr %i.mc, align 8, !tbaa !139
  %i.mv = icmp eq i64 %i.mu, 4
  br i1 %i.mv, label %bb.bt, label %end_ebml_master.exit

bb.bt:                                            ; preds = %put_ebml_uint.exit
  %i.mw = call fastcc { i64, i32 } @start_ebml_master(ptr noundef nonnull %i.lj, i32 noundef 16868, i64 noundef 8) ; 2 uses
  br label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %bb.bt, %.lr.ph.i.i240
  %.05.i.i241 = phi i32 [ %i.mx, %.lr.ph.i.i240 ], [ %i.lu, %bb.bt ]
  %i.mx = add nsw i32 %.05.i.i241, -1             ; 3 uses
  %i.my = shl nsw i32 %i.mx, 3
  %i.mz = lshr i32 16871, %i.my
  %i.na = and i32 %i.mz, 231
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.na) #14
  %.not.i.i242 = icmp eq i32 %i.mx, 0
  br i1 %.not.i.i242, label %put_ebml_id.exit.i243, label %.lr.ph.i.i240, !llvm.loop !0

put_ebml_id.exit.i243:                            ; preds = %.lr.ph.i.i240
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef 4) #14
  br label %.lr.ph.i.i252, !llvm.loop !2

.lr.ph.i.i252:                                    ; preds = %put_ebml_id.exit.i243, %.lr.ph.i.i252
  %.05.i.i253 = phi i32 [ %i.nb, %.lr.ph.i.i252 ], [ %i.lu, %put_ebml_id.exit.i243 ]
  %i.nb = add nsw i32 %.05.i.i253, -1             ; 3 uses
  %i.nc = shl nsw i32 %i.nb, 3
  %i.nd = lshr i32 16880, %i.nc
  %i.ne = and i32 %i.nd, 241
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef %i.ne) #14
  %.not.i.i254 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i254, label %put_ebml_id.exit.i255, label %.lr.ph.i.i252, !llvm.loop !0

put_ebml_id.exit.i255:                            ; preds = %.lr.ph.i.i252
  %i.nf = extractvalue { i64, i32 } %i.mw, 0      ; 2 uses
  %i.ng = extractvalue { i64, i32 } %i.mw, 1      ; 2 uses
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef nonnull %i.lj, i32 noundef 4) #14
  %i.nh = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.ni = sext i32 %i.ng to i64
  %i.nj = sub nsw i64 %i.nf, %i.ni
  %i.nk = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef %i.nj, i32 noundef 0) #14
  %i.nl = icmp slt i64 %i.nk, 0
  br i1 %i.nl, label %end_ebml_master.exit, label %bb.bu

bb.bu:                                            ; preds = %put_ebml_id.exit.i255
  %i.nm = sub nsw i64 %i.nh, %i.nf
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.lj, i64 noundef %i.nm, i32 noundef range(i32 -2147483647, -2147483648) %i.ng)
  %i.nn = call i64 @avio_seek(ptr noundef nonnull %i.lj, i64 noundef %i.nh, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit

end_ebml_master.exit:                             ; preds = %bb.bu, %put_ebml_id.exit.i255, %put_ebml_uint.exit, %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.no = load i32, ptr %i.lk, align 4, !tbaa !47
  %i.np = zext i32 %i.no to i64
  %i.nq = icmp samesign ult i64 %indvars.iv.next, %i.np
  br i1 %i.nq, label %bb.bn, label %._crit_edge, !llvm.loop !182

bb.bv:                                            ; preds = %._crit_edge, %bb.bm
  %i.nr = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !102 ; 13 uses
  %.not219 = icmp eq ptr %i.ns, null
  br i1 %.not219, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bv
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !47 ; 2 uses
  %.not324 = icmp eq i32 %i.nu, 0
  br i1 %.not324, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader
  %i.nv = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nx = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 69), align 1
  %i.ny = zext i8 %i.nx to i32
  %i.nz = add nuw nsw i32 %i.ny, 15
  %i.oa = lshr i32 %i.nz, 3
  %i.ob = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 68), align 4
  %i.oc = zext i8 %i.ob to i32
  %i.od = add nuw nsw i32 %i.oc, 15
  %i.oe = lshr i32 %i.od, 3
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph321, %bb.bz
  %i.of = phi i32 [ %i.nu, %.lr.ph321 ], [ %i.pz, %bb.bz ]
  %indvars.iv365 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next366, %bb.bz ] ; 4 uses
  %i.og = load ptr, ptr %i.nv, align 8, !tbaa !86
  %i.oh = getelementptr inbounds nuw [120 x i8], ptr %i.og, i64 %indvars.iv365 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 56 ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !103
  %i.ok = icmp sgt i64 %i.oj, 0
  br i1 %i.ok, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.ol = load ptr, ptr %i.nw, align 8, !tbaa !69
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv365
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !71
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 48 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !141
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.or = load i64, ptr %i.oq, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  %i.os = load i64, ptr %i.oo, align 8, !tbaa !141
  %i.ot = trunc nuw nsw i64 %indvars.iv365 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.111, i32 noundef %i.ot, i64 noundef %i.os) #14
  %i.ou = load i64, ptr %i.oi, align 8, !tbaa !103
  %i.ov = call i64 @avio_seek(ptr noundef nonnull %i.ns, i64 noundef %i.ou, i32 noundef 0) #14 ; 0 uses
  %i.ow = call fastcc { i64, i32 } @start_ebml_master(ptr noundef nonnull %i.ns, i32 noundef 26568, i64 noundef 34) ; 2 uses
  br label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %bb.bx, %.lr.ph.i.i.i260
  %.05.i.i.i261 = phi i32 [ %i.ox, %.lr.ph.i.i.i260 ], [ %i.oa, %bb.bx ]
  %i.ox = add nsw i32 %.05.i.i.i261, -1           ; 3 uses
  %i.oy = shl nsw i32 %i.ox, 3
  %i.oz = lshr i32 17827, %i.oy
  %i.pa = and i32 %i.oz, 231
  call void @avio_w8(ptr noundef nonnull %i.ns, i32 noundef %i.pa) #14
  %.not.i.i.i262 = icmp eq i32 %i.ox, 0
  br i1 %.not.i.i.i262, label %put_ebml_string.exit, label %.lr.ph.i.i.i260, !llvm.loop !0

put_ebml_string.exit:                             ; preds = %.lr.ph.i.i.i260
  %i.pb = sitofp nsz i64 %i.op to double
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.or to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.or, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.pc = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.pd = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.pe = fdiv nsz double %i.pc, %i.pd
  %i.pf = fmul nsz double %i.pe, %i.pb            ; 2 uses
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.ns, i64 noundef 8, i32 noundef 0)
  call void @avio_write(ptr noundef nonnull %i.ns, ptr noundef nonnull @.str.56, i32 noundef 8) #14
  %i.pg = fptosi double %i.pf to i32              ; 2 uses
  %i.ph = sdiv i32 %i.pg, 3600
  %i.pi = sdiv i32 %i.pg, 60
  %i.pj = srem i32 %i.pi, 60
  %i.pk = frem nsz double %i.pf, 6.000000e+01
  %i.pl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.112, i32 noundef %i.ph, i32 noundef %i.pj, double noundef %i.pk) #14 ; 0 uses
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %put_ebml_string.exit, %.lr.ph.i.i263
  %.05.i.i264 = phi i32 [ %i.pm, %.lr.ph.i.i263 ], [ %i.oe, %put_ebml_string.exit ]
  %i.pm = add nsw i32 %.05.i.i264, -1             ; 3 uses
  %i.pn = shl nsw i32 %i.pm, 3
  %i.po = lshr i32 17543, %i.pn
  %i.pp = and i32 %i.po, 199
  call void @avio_w8(ptr noundef nonnull %i.ns, i32 noundef %i.pp) #14
  %.not.i.i265 = icmp eq i32 %i.pm, 0
  br i1 %.not.i.i265, label %.lr.ph.i.i269, label %.lr.ph.i.i263, !llvm.loop !0

.lr.ph.i.i269:                                    ; preds = %.lr.ph.i.i263
  %i.pq = extractvalue { i64, i32 } %i.ow, 0      ; 2 uses
  %i.pr = extractvalue { i64, i32 } %i.ow, 1      ; 2 uses
  call void @avio_w8(ptr noundef nonnull %i.ns, i32 noundef 147) #14
  call void @avio_write(ptr noundef nonnull %i.ns, ptr noundef nonnull %i.c, i32 noundef 19) #14
  %i.ps = call i64 @avio_seek(ptr noundef nonnull %i.ns, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.pt = sext i32 %i.pr to i64
  %i.pu = sub nsw i64 %i.pq, %i.pt
  %i.pv = call i64 @avio_seek(ptr noundef nonnull %i.ns, i64 noundef %i.pu, i32 noundef 0) #14
  %i.pw = icmp slt i64 %i.pv, 0
  br i1 %i.pw, label %end_ebml_master.exit267, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i269
  %i.px = sub nsw i64 %i.ps, %i.pq
  call fastcc void @put_ebml_length(ptr noundef nonnull %i.ns, i64 noundef %i.px, i32 noundef range(i32 -2147483647, -2147483648) %i.pr)
  %i.py = call i64 @avio_seek(ptr noundef nonnull %i.ns, i64 noundef %i.ps, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit267

end_ebml_master.exit267:                          ; preds = %.lr.ph.i.i269, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %.pre369 = load i32, ptr %i.nt, align 4, !tbaa !47
  br label %bb.bz

bb.bz:                                            ; preds = %end_ebml_master.exit267, %bb.bw
  %i.pz = phi i32 [ %.pre369, %end_ebml_master.exit267 ], [ %i.of, %bb.bw ] ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.qa = zext i32 %i.pz to i64
  %i.qb = icmp samesign ult i64 %indvars.iv.next366, %i.qa
  br i1 %i.qb, label %bb.bw, label %._crit_edge322, !llvm.loop !183

._crit_edge322:                                   ; preds = %bb.bz, %.preheader
  %i.qc = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !187
  %i.qe = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %i.qd, i32 noundef 0) #14 ; 0 uses
  %i.qf = call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %i.g, ptr noundef nonnull %i.nr, ptr noundef nonnull %i.e, i32 noundef 307544935, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.qg = icmp sgt i32 %i.qf, -1
  br i1 %i.qg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %._crit_edge322, %bb.bv
  %i.qh = call i64 @avio_seek(ptr noundef nonnull %i.g, i64 noundef %.4174, i32 noundef 0) #14 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %start_ebml_master_crc32.exit.thread274, %bb.bl, %bb.bj, %bb.g, %bb.h, %bb.f, %bb.e, %._crit_edge, %._crit_edge322, %bb.ca, %bb.bh, %bb.c
  %.5 = phi i32 [ %i.m, %bb.c ], [ %i.ly, %._crit_edge ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %.0.ph, %start_ebml_master_crc32.exit.thread274 ], [ %i.ko, %bb.bh ], [ 0, %bb.g ], [ %i.ku, %bb.bj ], [ %.1176, %bb.ca ], [ %i.qf, %._crit_edge322 ], [ 0, %bb.h ], [ %i.lg, %bb.bl ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @mkv_query_codec(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mkv_codec_tags, i64 24), align 4, !tbaa !143 ; 2 uses
  %.not17 = icmp eq i32 %i.a, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw [28 x i8], ptr @ff_mkv_codec_tags, i64 %indvars.iv.next
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !143  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !188

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ]
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = icmp slt i32 %1, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.h = tail call i32 @avcodec_get_type(i32 noundef %0) #14
  %or.cond = icmp ugt i32 %i.h, 1
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @mkv_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVLFG, align 4              ; 29 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 3 uses
  %.not141 = icmp eq i32 %i.e, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !84   ; 2 uses
  switch i32 %i.m, label %bb.d [
    i32 86047, label %bb.c
    i32 86036, label %bb.c
    i32 77825, label %bb.c
    i32 86057, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 68, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = tail call ptr @avcodec_get_name(i32 noundef %i.m) #14
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.114, ptr noundef %i.n) #14
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !192
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  store i32 1, ptr %i.o, align 8, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 1, ptr %i.r, align 8, !tbaa !148
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(5) @.str.4) #15
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 0, ptr %i.w, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ 2, %bb.g ], [ 1, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %.sink, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !127
  %i.ab = zext i32 %i.e to i64
  %i.ac = tail call noalias ptr @av_calloc(i64 noundef %i.ab, i64 noundef 120) #14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !86
  %.not98 = icmp eq ptr %i.ac, null
  br i1 %.not98, label %bb.an, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !64
  %i.ag = and i32 %i.af, 1024
  %.not99 = icmp eq i32 %i.ag, 0
  br i1 %.not99, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %i.ah = tail call i32 @av_get_random_seed() #14
  call void @av_lfg_init(ptr noundef nonnull %1, i32 noundef %i.ah) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !195 ; 13 uses
  %i.al = add i32 %i.ak, 40
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !55
  %i.aq = add i32 %i.ak, 9
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
end_hunk_2
begin_hunk_3_@mkv_init:bb.a

bb.al:                                            ; preds = %bb.ak
  %.not.i103.3 = icmp ult i32 %i.io, 268435456
  %spec.select = select i1 %.not.i103.3, i32 4, i32 5
  br label %ebml_num_size.exit

ebml_num_size.exit:                               ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.lcssa186 = phi i32 [ 1, %bb.ai ], [ 2, %bb.aj ], [ 3, %bb.ak ], [ %spec.select, %bb.al ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i32 %.lcssa186, ptr %i.iq, align 4, !tbaa !151
  br label %bb.am

get_mimetype.exit.thread:                         ; preds = %bb.af, %bb.ac, %get_mimetype.exit
  %i.ir = trunc nuw nsw i64 %indvars.iv156 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.116, i32 noundef %i.ir) #14
  br label %bb.an

bb.am:                                            ; preds = %get_mimetype.exit.thread107, %ebml_num_size.exit
  %.193.ph = phi i32 [ %i.il, %ebml_num_size.exit ], [ %.092134, %get_mimetype.exit.thread107 ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.is = load i32, ptr %i.d, align 4, !tbaa !47
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign ult i64 %indvars.iv.next157, %i.it
  br i1 %i.iu, label %bb.j, label %._crit_edge139.loopexit, !llvm.loop !191

._crit_edge139.loopexit:                          ; preds = %bb.am
  %i.iv = icmp ne i32 %.193.ph, 1
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.loopexit, %.loopexit
  %.092.lcssa = phi i1 [ true, %.loopexit ], [ %i.iv, %._crit_edge139.loopexit ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !125
  %i.iy = icmp ne i32 %i.ix, 0
  %or.cond = select i1 %i.iy, i1 %.092.lcssa, i1 false
  %. = select i1 %or.cond, i32 -22, i32 0
  br label %bb.an

bb.an:                                            ; preds = %get_mimetype.exit.thread, %._crit_edge139, %bb.h, %bb.c
  %.296 = phi i32 [ -1163346256, %bb.c ], [ -22, %get_mimetype.exit.thread ], [ %., %._crit_edge139 ], [ -12, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.296
}

; Function Attrs: nounwind uwtable
define internal void @mkv_deinit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  tail call void @ffio_free_dyn_buf(ptr noundef nonnull %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  tail call void @av_freep(ptr noundef nonnull %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  tail call void @av_freep(ptr noundef nonnull %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.j) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mkv_check_bitstream(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  switch i32 %i.d, label %bb.e [
    i32 86018, label %bb.b
    i32 166, label %.sink.split
    i32 94214, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !128
  %i.g = icmp sgt i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !152
  %i.j = load i16, ptr %i.i, align 1, !tbaa !56
  %i.k = tail call i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = icmp ugt i16 %i.k, -17
  br i1 %i.l, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c, %bb.d
  %.str.118.sink = phi ptr [ @.str.117, %bb.c ], [ @.str.119, %bb.d ], [ @.str.118, %bb.a ]
  %i.m = tail call i32 @ff_stream_add_bitstream_filter(ptr noundef nonnull %1, ptr noundef nonnull %.str.118.sink, ptr noundef null) #14
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ], [ %i.m, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal range(i32 0, 2) i32 @webm_query_codec(i32 noundef %0, i32 %1) #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_webm_codec_tags, i64 24), align 4, !tbaa !143 ; 2 uses
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.b = getelementptr inbounds nuw [28 x i8], ptr @ff_webm_codec_tags, i64 %indvars.iv.next
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !143  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !197

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ]
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %i.g
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @avio_open_dyn_buf(ptr noundef) local_unnamed_addr #2

declare ptr @av_dict_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mkv_write_tracks(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %1 = alloca %struct.MPEG4AudioConfig, align 4   ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [20 x i8], align 16               ; 10 uses
  %2 = alloca [41 x %struct.EbmlElement], align 16 ; 47 uses
  %3 = alloca %struct.AVRational, align 4         ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  %i.n = load i32, ptr %i.m, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %start_ebml_master_crc32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.r) #14 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %start_ebml_master_crc32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !59   ; 3 uses
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.z, 7
  %i.ab = lshr i32 %i.aa, 3                       ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %bb.e ]
  %i.ac = add nsw i32 %.05.i.i.i, -1              ; 3 uses
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 236, %i.ad
  tail call void @avio_w8(ptr noundef %i.x, i32 noundef %i.ae) #14
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i.i, %bb.e
  tail call void @avio_w8(ptr noundef %i.x, i32 noundef 132) #14
  tail call void @ffio_fill(ptr noundef %i.x, i32 noundef 0, i64 noundef 4) #14
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i7.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !202 ; 2 uses
  %.not = icmp eq i32 %i.ag, 2
  %.pre = load i32, ptr %i.o, align 4, !tbaa !47  ; 2 uses
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.067243 = add i32 %.pre, -1                    ; 2 uses
  %i.ah = icmp sgt i32 %.067243, -1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ak = zext nneg i32 %.067243 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 6 uses
  %.0249 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.l ] ; 3 uses
  %.062248 = phi i32 [ -1, %.lr.ph ], [ %.163, %bb.l ] ; 3 uses
  %.064247 = phi i32 [ -1, %.lr.ph ], [ %.165, %bb.l ] ; 3 uses
  %.069246 = phi i32 [ -1, %.lr.ph ], [ %.170, %bb.l ] ; 4 uses
  %.071245 = phi i32 [ -1, %.lr.ph ], [ %.172, %bb.l ] ; 4 uses
  %.074244 = phi i32 [ -1, %.lr.ph ], [ %.175, %bb.l ] ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !87
  switch i32 %i.ap, label %bb.l [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !203
  %i.as = and i32 %i.ar, 1
  %.not86 = icmp eq i32 %i.as, 0
  %i.at = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select = select i1 %.not86, i32 %.074244, i32 %i.at
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !203
  %i.aw = and i32 %i.av, 1
  %.not85 = icmp eq i32 %i.aw, 0
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select87 = select i1 %.not85, i32 %.071245, i32 %i.ax
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !203
  %i.ba = and i32 %i.az, 1
  %.not84 = icmp eq i32 %i.ba, 0
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select88 = select i1 %.not84, i32 %.069246, i32 %i.bb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.175 = phi i32 [ %.074244, %bb.h ], [ %.074244, %bb.j ], [ %.074244, %bb.k ], [ %spec.select, %bb.i ] ; 2 uses
  %.172 = phi i32 [ %.071245, %bb.h ], [ %spec.select87, %bb.j ], [ %.071245, %bb.k ], [ %.071245, %bb.i ] ; 2 uses
  %.170 = phi i32 [ %.069246, %bb.h ], [ %.069246, %bb.j ], [ %spec.select88, %bb.k ], [ %.069246, %bb.i ] ; 3 uses
  %.165 = phi i32 [ %.064247, %bb.h ], [ %.064247, %bb.j ], [ %.064247, %bb.k ], [ %i.at, %bb.i ] ; 2 uses
  %.163 = phi i32 [ %.062248, %bb.h ], [ %i.ax, %bb.j ], [ %.062248, %bb.k ], [ %.062248, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %.0249, %bb.h ], [ %.0249, %bb.j ], [ %i.bb, %bb.k ], [ %.0249, %bb.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bc = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bc, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !198

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.bd = tail call i32 @llvm.smax.i32(i32 %.175, i32 %.165)
  %i.be = tail call i32 @llvm.smax.i32(i32 %.172, i32 %.163)
  %i.bf = tail call i32 @llvm.smax.i32(i32 %.170, i32 %.1)
  %i.bg = zext i32 %i.be to i64
  %i.bh = zext i32 %i.bd to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.074.lcssa = phi i64 [ 4294967295, %bb.g ], [ %i.bh, %._crit_edge.loopexit ]
  %.071.lcssa = phi i64 [ 4294967295, %bb.g ], [ %i.bg, %._crit_edge.loopexit ]
  %.069.lcssa = phi i32 [ -1, %bb.g ], [ %.170, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ -1, %bb.g ], [ %i.bf, %._crit_edge.loopexit ]
  %.not82 = icmp eq i32 %i.ag, 1
  %.2 = select i1 %.not82, i32 %.069.lcssa, i32 %.0.lcssa
  %i.bi = zext i32 %.2 to i64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.f
  %.276 = phi i64 [ %.074.lcssa, %._crit_edge ], [ 4294967295, %bb.f ]
  %.273 = phi i64 [ %.071.lcssa, %._crit_edge ], [ 4294967295, %bb.f ]
  %.3 = phi i64 [ %i.bi, %._crit_edge ], [ 4294967295, %bb.f ]
  %.not260 = icmp eq i32 %.pre, 0
  br i1 %.not260, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.bl = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 215), align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bm, 7
  %i.bo = lshr i32 %i.bn, 3                       ; 2 uses
  %.not4.i.i.i90 = icmp eq i32 %i.bo, 0
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 115), align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bq, 15
  %i.bs = lshr i32 %i.br, 3
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 156), align 4
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 7
  %i.bw = lshr i32 %i.bv, 3                       ; 2 uses
  %.not4.i.i286.i = icmp eq i32 %i.bw, 0
  %i.bx = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 83), align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.by, 15
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 34), align 2
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.cc, 23
  %i.ce = lshr i32 %i.cd, 3
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 136), align 8
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, 7
  %i.ci = lshr i32 %i.ch, 3                       ; 2 uses
  %.not4.i.i304.i = icmp eq i32 %i.ci, 0
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 85), align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ck, 15
  %i.cm = lshr i32 %i.cl, 3                       ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 134), align 2
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, 7
  %i.cs = lshr i32 %i.cr, 3                       ; 6 uses
  %.not4.i.i.i382.i = icmp eq i32 %i.cs, 0        ; 5 uses
  %i.ct = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 131), align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cu, 7
  %i.cw = lshr i32 %i.cv, 3                       ; 4 uses
  %.not4.i.i517.i = icmp eq i32 %i.cw, 0          ; 3 uses
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 86), align 2
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cy, 15
  %i.da = lshr i32 %i.cz, 3                       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 372 ; 2 uses
  %i.de = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 35), align 1
  %i.df = zext i8 %i.de to i32
  %i.dg = add nuw nsw i32 %i.df, 23
  %i.dh = lshr i32 %i.dg, 3                       ; 2 uses
  %i.di = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 159), align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dj, 7
  %i.dl = lshr i32 %i.dk, 3                       ; 2 uses
  %.not4.i.i480.i = icmp eq i32 %i.dl, 0
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 181), align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dn, 7
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %.not4.i.i488.i = icmp eq i32 %i.dp, 0
  %i.dq = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 120), align 8
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dr, 15
  %i.dt = lshr i32 %i.ds, 3
  %i.du = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 98), align 2
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nuw nsw i32 %i.dv, 15
  %i.dx = lshr i32 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 340
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sink18.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sink18.i.i.sroa.gep209.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.en = load ptr, ptr @ff_matroska_video_stereo_mode, align 16
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 8), align 8
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 16), align 16
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 24), align 8
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 32), align 16
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 40), align 8
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 48), align 16
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 56), align 8
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 64), align 16
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 72), align 8
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 80), align 16
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 88), align 8
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 96), align 16
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 104), align 8
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_matroska_video_stereo_mode, i64 112), align 16
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.ff = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fg, 7
  %i.fi = lshr i32 %i.fh, 3                       ; 2 uses
  %.not4.i.i.i531.i = icmp eq i32 %i.fi, 0
  %i.fj = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 65), align 1
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nuw nsw i32 %i.fk, 15
  %i.fm = lshr i32 %i.fl, 3                       ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 320 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph258, %mkv_write_track.exit.thread222
  %indvars.iv280 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next281, %mkv_write_track.exit.thread222 ] ; 6 uses
  %i.fo = load ptr, ptr %i.bj, align 8, !tbaa !69
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv280
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !71 ; 11 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64 ; 8 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !203
  %.not83 = trunc i32 %i.fs to i1
  %i.ft = icmp ne i64 %indvars.iv280, %.276
  %not..not83 = xor i1 %.not83, true
  %or.cond = select i1 %not..not83, i1 %i.ft, i1 false
  %i.fu = icmp ne i64 %indvars.iv280, %.273
  %or.cond89 = select i1 %or.cond, i1 %i.fu, i1 false
  %i.fv = icmp ne i64 %indvars.iv280, %.3
  %narrow = select i1 %or.cond89, i1 %i.fv, i1 false
  %i.fw = load ptr, ptr %i.bk, align 8, !tbaa !86
  %i.fx = getelementptr inbounds nuw [120 x i8], ptr %i.fw, i64 %indvars.iv280 ; 13 uses
  %i.fy = load ptr, ptr %i.r, align 8, !tbaa !115 ; 144 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !81 ; 41 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 152 ; 4 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !153 ; 4 uses
  %i.gd = load i32, ptr %i.ga, align 8, !tbaa !87
  %i.ge = icmp eq i32 %i.gd, 4
  br i1 %i.ge, label %mkv_write_track.exit.thread222, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gf = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.fy, i32 noundef 174, i64 noundef 0) ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !134 ; 4 uses
  %i.gi = zext i32 %i.gh to i64
  %.not.i.i = icmp ult i32 %i.gh, 256
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.1 = icmp ult i32 %i.gh, 65536
  br i1 %.not.i.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.2 = icmp ult i32 %i.gh, 16777216
  %spec.select421 = select i1 %.not.i.i.2, i64 3, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %indvars.iv.i.i.lcssa = phi i64 [ 1, %bb.o ], [ 2, %bb.p ], [ %spec.select421, %bb.q ] ; 2 uses
  %i.gj = extractvalue { i64, i32 } %i.gf, 0      ; 2 uses
  %i.gk = extractvalue { i64, i32 } %i.gf, 1      ; 2 uses
  br i1 %.not4.i.i.i90, label %put_ebml_id.exit.i.i, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %bb.r, %.lr.ph.i.i.i91
  %.05.i.i.i92 = phi i32 [ %i.gl, %.lr.ph.i.i.i91 ], [ %i.bo, %bb.r ]
  %i.gl = add nsw i32 %.05.i.i.i92, -1            ; 3 uses
  %i.gm = shl nsw i32 %i.gl, 3
  %i.gn = lshr i32 215, %i.gm
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.gn) #14
  %.not.i.i.i93 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i.i93, label %put_ebml_id.exit.i.i, label %.lr.ph.i.i.i91, !llvm.loop !0

put_ebml_id.exit.i.i:                             ; preds = %.lr.ph.i.i.i91, %bb.r
  %i.go = and i64 %indvars.iv.i.i.lcssa, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.go, i32 noundef 0)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %put_ebml_id.exit.i.i
  %indvars.iv16.i.i = phi i64 [ %indvars.iv.i.i.lcssa, %put_ebml_id.exit.i.i ], [ %indvars.iv.next17.i.i, %bb.s ] ; 2 uses
  %indvars.iv.next17.i.i = add nsw i64 %indvars.iv16.i.i, -1 ; 2 uses
  %i.gp = shl nuw nsw i64 %indvars.iv.next17.i.i, 3
  %i.gq = lshr i64 %i.gi, %i.gp
  %i.gr = trunc nuw i64 %i.gq to i32
  %i.gs = and i32 %i.gr, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.gs) #14
  %i.gt = icmp sgt i64 %indvars.iv16.i.i, 1
  br i1 %i.gt, label %bb.s, label %put_ebml_uint.exit.i, !llvm.loop !3

put_ebml_uint.exit.i:                             ; preds = %bb.s
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !100
  br label %.lr.ph.i.i278.i

.lr.ph.i.i278.i:                                  ; preds = %.lr.ph.i.i278.i, %put_ebml_uint.exit.i
  %.05.i.i279.i = phi i32 [ %i.gw, %.lr.ph.i.i278.i ], [ %i.bs, %put_ebml_uint.exit.i ]
  %i.gw = add nsw i32 %.05.i.i279.i, -1           ; 3 uses
  %i.gx = shl nsw i32 %i.gw, 3
  %i.gy = lshr i32 29637, %i.gx
  %i.gz = and i32 %i.gy, 247
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.gz) #14
  %.not.i.i280.i = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i280.i, label %put_ebml_uid.exit.i, label %.lr.ph.i.i278.i, !llvm.loop !0

put_ebml_uid.exit.i:                              ; preds = %.lr.ph.i.i278.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 136) #14
  call void @avio_wb64(ptr noundef %i.fy, i64 noundef %i.gv) #14
  br i1 %.not4.i.i286.i, label %.lr.ph.i.i215, label %.lr.ph.i.i287.i

.lr.ph.i.i287.i:                                  ; preds = %put_ebml_uid.exit.i, %.lr.ph.i.i287.i
  %.05.i.i288.i = phi i32 [ %i.ha, %.lr.ph.i.i287.i ], [ %i.bw, %put_ebml_uid.exit.i ]
  %i.ha = add nsw i32 %.05.i.i288.i, -1           ; 3 uses
  %i.hb = shl nsw i32 %i.ha, 3
  %i.hc = lshr i32 156, %i.hb
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.hc) #14
  %.not.i.i289.i = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i289.i, label %.lr.ph.i.i215, label %.lr.ph.i.i287.i, !llvm.loop !0

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i287.i, %put_ebml_uid.exit.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fq, i64 80 ; 4 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !78
  %i.hf = call ptr @av_dict_get(ptr noundef %i.he, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not.i94 = icmp eq ptr %i.hf, null
  br i1 %.not.i94, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i215
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !63 ; 2 uses
  %i.hi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hh) #15 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.t
  %.05.i.i.i.i = phi i32 [ %i.hj, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.t ]
  %i.hj = add nsw i32 %.05.i.i.i.i, -1            ; 3 uses
  %i.hk = shl nsw i32 %i.hj, 3
  %i.hl = lshr i32 21358, %i.hk
  %i.hm = and i32 %i.hl, 127
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.hm) #14
  %.not.i.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.i.i, label %put_ebml_string.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

put_ebml_string.exit.i:                           ; preds = %.lr.ph.i.i.i.i
  %i.hn = trunc i64 %i.hi to i32
  %sext.i.i = shl i64 %i.hi, 32
  %i.ho = ashr exact i64 %sext.i.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.ho, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %i.hh, i32 noundef %i.hn) #14
  br label %bb.u

bb.u:                                             ; preds = %put_ebml_string.exit.i, %.lr.ph.i.i215
  %i.hp = load ptr, ptr %i.hd, align 8, !tbaa !78
  %i.hq = call ptr @av_dict_get(ptr noundef %i.hp, ptr noundef nonnull @.str.59, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not237.i = icmp eq ptr %i.hq, null
  br i1 %.not237.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !63 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !56
  %.not238.i = icmp eq i8 %i.ht, 0
  %spec.select.i = select i1 %.not238.i, ptr @.str.60, ptr %i.hs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hu = phi ptr [ @.str.60, %bb.u ], [ %spec.select.i, %bb.v ] ; 2 uses
  %i.hv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hu) #15 ; 2 uses
  br label %.lr.ph.i.i.i294.i

.lr.ph.i.i.i294.i:                                ; preds = %.lr.ph.i.i.i294.i, %bb.w
  %.05.i.i.i295.i = phi i32 [ %i.hw, %.lr.ph.i.i.i294.i ], [ %i.ce, %bb.w ]
  %i.hw = add nsw i32 %.05.i.i.i295.i, -1         ; 3 uses
  %i.hx = shl nsw i32 %i.hw, 3
  %i.hy = lshr i32 2274716, %i.hx
  %i.hz = and i32 %i.hy, 191
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.hz) #14
  %.not.i.i.i296.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i.i296.i, label %put_ebml_string.exit298.i, label %.lr.ph.i.i.i294.i, !llvm.loop !0

put_ebml_string.exit298.i:                        ; preds = %.lr.ph.i.i.i294.i
  %i.ia = trunc i64 %i.hv to i32
  %sext.i297.i = shl i64 %i.hv, 32
  %i.ib = ashr exact i64 %sext.i297.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.ib, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %i.hu, i32 noundef %i.ia) #14
  br i1 %narrow, label %bb.x, label %put_ebml_uint.exit311.i

bb.x:                                             ; preds = %put_ebml_string.exit298.i
  br i1 %.not4.i.i304.i, label %.lr.ph.i.i206, label %.lr.ph.i.i305.i

.lr.ph.i.i305.i:                                  ; preds = %bb.x, %.lr.ph.i.i305.i
  %.05.i.i306.i = phi i32 [ %i.ic, %.lr.ph.i.i305.i ], [ %i.ci, %bb.x ]
  %i.ic = add nsw i32 %.05.i.i306.i, -1           ; 3 uses
  %i.id = shl nsw i32 %i.ic, 3
  %i.ie = lshr i32 136, %i.id
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ie) #14
  %.not.i.i307.i = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i307.i, label %.lr.ph.i.i206, label %.lr.ph.i.i305.i, !llvm.loop !0

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i305.i, %bb.x
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  br label %put_ebml_uint.exit311.i

put_ebml_uint.exit311.i:                          ; preds = %.lr.ph.i.i206, %put_ebml_string.exit298.i
  %i.if = load i32, ptr %i.fr, align 8, !tbaa !203
  %i.ig = and i32 %i.if, 64
  %.not240.i = icmp eq i32 %i.ig, 0
  br i1 %.not240.i, label %put_ebml_uint.exit324.i, label %.lr.ph.i.i318.i

.lr.ph.i.i318.i:                                  ; preds = %put_ebml_uint.exit311.i, %.lr.ph.i.i318.i
  %.05.i.i319.i = phi i32 [ %i.ih, %.lr.ph.i.i318.i ], [ %i.cm, %put_ebml_uint.exit311.i ]
  %i.ih = add nsw i32 %.05.i.i319.i, -1           ; 3 uses
  %i.ii = shl nsw i32 %i.ih, 3
  %i.ij = lshr i32 21930, %i.ii
  %i.ik = and i32 %i.ij, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ik) #14
  %.not.i.i320.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i320.i, label %.lr.ph.i.i197, label %.lr.ph.i.i318.i, !llvm.loop !0

.lr.ph.i.i197:                                    ; preds = %.lr.ph.i.i318.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  br label %put_ebml_uint.exit324.i

put_ebml_uint.exit324.i:                          ; preds = %.lr.ph.i.i197, %put_ebml_uint.exit311.i
  %i.il = load i32, ptr %i.cn, align 8, !tbaa !45
  %i.im = icmp eq i32 %i.il, 2
  br i1 %i.im, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %put_ebml_uint.exit324.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !84 ; 2 uses
  %.not250.i = icmp eq i32 %i.io, 94226
  br i1 %.not250.i, label %bb.aa, label %.preheader625.i

.preheader625.i:                                  ; preds = %bb.y
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_webm_codec_tags, i64 24), align 4, !tbaa !143 ; 2 uses
  %.not254632.i = icmp eq i32 %i.ip, 0
  br i1 %.not254632.i, label %.thread580.i, label %.lr.ph634.i

bb.z:                                             ; preds = %.lr.ph634.i
  %indvars.iv.next641.i = add nuw nsw i64 %indvars.iv640.i, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [28 x i8], ptr @ff_webm_codec_tags, i64 %indvars.iv.next641.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !143 ; 2 uses
  %.not254.i = icmp eq i32 %i.is, 0
  br i1 %.not254.i, label %.thread580.i, label %.lr.ph634.i, !llvm.loop !199

.lr.ph634.i:                                      ; preds = %.preheader625.i, %bb.z
  %indvars.iv640.i = phi i64 [ %indvars.iv.next641.i, %bb.z ], [ 0, %.preheader625.i ] ; 2 uses
  %i.it = phi i32 [ %i.is, %bb.z ], [ %i.ip, %.preheader625.i ]
  %i.iu = icmp eq i32 %i.it, %i.io
  br i1 %i.iu, label %.loopexit626.loopexit.i, label %bb.z

bb.aa:                                            ; preds = %bb.y
  %i.iv = load i32, ptr %i.fr, align 8, !tbaa !203 ; 3 uses
  %i.iw = and i32 %i.iv, 65536
  %.not251.i = icmp eq i32 %i.iw, 0
  br i1 %.not251.i, label %bb.ab, label %.loopexit626.i

bb.ab:                                            ; preds = %bb.aa
  %i.ix = and i32 %i.iv, 131072
  %.not252.i = icmp eq i32 %i.ix, 0
  br i1 %.not252.i, label %bb.ac, label %.loopexit626.i

bb.ac:                                            ; preds = %bb.ab
  %i.iy = and i32 %i.iv, 262144
  %.not253.i = icmp eq i32 %i.iy, 0               ; 2 uses
  %.str.64..str.63.i = select i1 %.not253.i, ptr @.str.64, ptr @.str.63
  %..i = select i1 %.not253.i, i32 17, i32 33
  br label %.loopexit626.i

.thread580.i:                                     ; preds = %.preheader625.i, %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.65) #14
  br label %start_ebml_master_crc32.exit

.loopexit626.loopexit.i:                          ; preds = %.lr.ph634.i
  %i.iz = getelementptr inbounds nuw [28 x i8], ptr @ff_webm_codec_tags, i64 %indvars.iv640.i
  br label %.loopexit626.i

.loopexit626.i:                                   ; preds = %.loopexit626.loopexit.i, %bb.ac, %bb.ab, %bb.aa
  %.0214.ph.i = phi ptr [ %.str.64..str.63.i, %bb.ac ], [ @.str.61, %bb.aa ], [ @.str.62, %bb.ab ], [ %i.iz, %.loopexit626.loopexit.i ] ; 3 uses
  %.0202.ph.i = phi i32 [ %..i, %bb.ac ], [ 17, %bb.aa ], [ 33, %bb.ab ], [ 1, %.loopexit626.loopexit.i ] ; 2 uses
  %i.ja = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0214.ph.i) #15 ; 2 uses
  br i1 %.not4.i.i.i382.i, label %.loopexit627.sink.split.i, label %.lr.ph.i.i.i325.i

.lr.ph.i.i.i325.i:                                ; preds = %.loopexit626.i, %.lr.ph.i.i.i325.i
  %.05.i.i.i326.i = phi i32 [ %i.jb, %.lr.ph.i.i.i325.i ], [ %i.cs, %.loopexit626.i ]
  %i.jb = add nsw i32 %.05.i.i.i326.i, -1         ; 3 uses
  %i.jc = shl nsw i32 %i.jb, 3
  %i.jd = lshr i32 134, %i.jc
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jd) #14
  %.not.i.i.i327.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i327.i, label %.loopexit627.sink.split.i, label %.lr.ph.i.i.i325.i, !llvm.loop !0

bb.ad:                                            ; preds = %put_ebml_uint.exit324.i
  %i.je = load i32, ptr %i.fr, align 8, !tbaa !203 ; 2 uses
  %i.jf = and i32 %i.je, 8
  %.not241.i = icmp eq i32 %i.jf, 0
  br i1 %.not241.i, label %put_ebml_uint.exit342.i, label %.lr.ph.i.i336.i

.lr.ph.i.i336.i:                                  ; preds = %bb.ad, %.lr.ph.i.i336.i
  %.05.i.i337.i = phi i32 [ %i.jg, %.lr.ph.i.i336.i ], [ %i.cm, %bb.ad ]
  %i.jg = add nsw i32 %.05.i.i337.i, -1           ; 3 uses
  %i.jh = shl nsw i32 %i.jg, 3
  %i.ji = lshr i32 21935, %i.jh
  %i.jj = and i32 %i.ji, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jj) #14
  %.not.i.i338.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i338.i, label %.lr.ph.i.i188, label %.lr.ph.i.i336.i, !llvm.loop !0

.lr.ph.i.i188:                                    ; preds = %.lr.ph.i.i336.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pre.i = load i32, ptr %i.fr, align 8, !tbaa !203
  br label %put_ebml_uint.exit342.i

put_ebml_uint.exit342.i:                          ; preds = %.lr.ph.i.i188, %bb.ad
  %i.jk = phi i32 [ %.pre.i, %.lr.ph.i.i188 ], [ %i.je, %bb.ad ] ; 2 uses
  %i.jl = and i32 %i.jk, 128
  %.not242.i = icmp eq i32 %i.jl, 0
  br i1 %.not242.i, label %put_ebml_uint.exit355.i, label %.lr.ph.i.i349.i

.lr.ph.i.i349.i:                                  ; preds = %put_ebml_uint.exit342.i, %.lr.ph.i.i349.i
  %.05.i.i350.i = phi i32 [ %i.jm, %.lr.ph.i.i349.i ], [ %i.cm, %put_ebml_uint.exit342.i ]
  %i.jm = add nsw i32 %.05.i.i350.i, -1           ; 3 uses
  %i.jn = shl nsw i32 %i.jm, 3
  %i.jo = lshr i32 21931, %i.jn
  %i.jp = and i32 %i.jo, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jp) #14
  %.not.i.i351.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i351.i, label %.lr.ph.i.i179, label %.lr.ph.i.i349.i, !llvm.loop !0

.lr.ph.i.i179:                                    ; preds = %.lr.ph.i.i349.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pre648.i = load i32, ptr %i.fr, align 8, !tbaa !203
  br label %put_ebml_uint.exit355.i

put_ebml_uint.exit355.i:                          ; preds = %.lr.ph.i.i179, %put_ebml_uint.exit342.i
  %i.jq = phi i32 [ %.pre648.i, %.lr.ph.i.i179 ], [ %i.jk, %put_ebml_uint.exit342.i ] ; 2 uses
  %i.jr = and i32 %i.jq, 256
  %.not243.i = icmp eq i32 %i.jr, 0
  br i1 %.not243.i, label %put_ebml_uint.exit368.i, label %.lr.ph.i.i362.i

.lr.ph.i.i362.i:                                  ; preds = %put_ebml_uint.exit355.i, %.lr.ph.i.i362.i
  %.05.i.i363.i = phi i32 [ %i.js, %.lr.ph.i.i362.i ], [ %i.cm, %put_ebml_uint.exit355.i ]
  %i.js = add nsw i32 %.05.i.i363.i, -1           ; 3 uses
  %i.jt = shl nsw i32 %i.js, 3
  %i.ju = lshr i32 21932, %i.jt
  %i.jv = and i32 %i.ju, 253
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.jv) #14
  %.not.i.i364.i = icmp eq i32 %i.js, 0
  br i1 %.not.i.i364.i, label %.lr.ph.i.i170, label %.lr.ph.i.i362.i, !llvm.loop !0

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i362.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pre649.i = load i32, ptr %i.fr, align 8, !tbaa !203
  br label %put_ebml_uint.exit368.i

put_ebml_uint.exit368.i:                          ; preds = %.lr.ph.i.i170, %put_ebml_uint.exit355.i
  %i.jw = phi i32 [ %.pre649.i, %.lr.ph.i.i170 ], [ %i.jq, %put_ebml_uint.exit355.i ] ; 2 uses
  %i.jx = and i32 %i.jw, 6
  %.off.i = add nsw i32 %i.jx, -1
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %.lr.ph.i.i375.i, label %put_ebml_uint.exit381.i

.lr.ph.i.i375.i:                                  ; preds = %put_ebml_uint.exit368.i, %.lr.ph.i.i375.i
  %.05.i.i376.i = phi i32 [ %i.jy, %.lr.ph.i.i375.i ], [ %i.cm, %put_ebml_uint.exit368.i ]
  %i.jy = add nsw i32 %.05.i.i376.i, -1           ; 3 uses
  %i.jz = shl nsw i32 %i.jy, 3
  %i.ka = lshr i32 21934, %i.jz
  %i.kb = and i32 %i.ka, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.kb) #14
  %.not.i.i377.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i377.i, label %put_ebml_id.exit.i378.i, label %.lr.ph.i.i375.i, !llvm.loop !0

put_ebml_id.exit.i378.i:                          ; preds = %.lr.ph.i.i375.i
  %i.kc = lshr i32 %i.jw, 2
  %.lobit.i = and i32 %i.kc, 1
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %.lobit.i) #14
  br label %put_ebml_uint.exit381.i

put_ebml_uint.exit381.i:                          ; preds = %put_ebml_id.exit.i378.i, %put_ebml_uint.exit368.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !84 ; 2 uses
  switch i32 %i.ke, label %bb.af [
    i32 88, label %.loopexit627.i
    i32 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %put_ebml_uint.exit381.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !154
  %.not247.i = icmp eq i32 %i.kg, 0
  br i1 %.not247.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %put_ebml_uint.exit381.i
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mkv_codec_tags, i64 24), align 4, !tbaa !143 ; 2 uses
  %.not249630.i = icmp eq i32 %i.kh, 0
  br i1 %.not249630.i, label %.loopexit627.i, label %.lr.ph.i

bb.ag:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [28 x i8], ptr @ff_mkv_codec_tags, i64 %indvars.iv.next.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !143 ; 2 uses
  %.not249.i = icmp eq i32 %i.kk, 0
  br i1 %.not249.i, label %.loopexit627.i, label %.lr.ph.i, !llvm.loop !200

.lr.ph.i:                                         ; preds = %bb.af, %bb.ag
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.kl = phi i32 [ %i.kk, %bb.ag ], [ %i.kh, %bb.af ]
  %i.km = icmp eq i32 %i.kl, %i.ke
  br i1 %i.km, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph.i
  %i.kn = getelementptr inbounds nuw [28 x i8], ptr @ff_mkv_codec_tags, i64 %indvars.iv.i ; 3 uses
  %i.ko = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kn) #15 ; 2 uses
  br i1 %.not4.i.i.i382.i, label %.loopexit627.sink.split.i, label %.lr.ph.i.i.i383.i

.lr.ph.i.i.i383.i:                                ; preds = %bb.ah, %.lr.ph.i.i.i383.i
  %.05.i.i.i384.i = phi i32 [ %i.kp, %.lr.ph.i.i.i383.i ], [ %i.cs, %bb.ah ]
  %i.kp = add nsw i32 %.05.i.i.i384.i, -1         ; 3 uses
  %i.kq = shl nsw i32 %i.kp, 3
  %i.kr = lshr i32 134, %i.kq
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.kr) #14
  %.not.i.i.i385.i = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i.i385.i, label %.loopexit627.sink.split.i, label %.lr.ph.i.i.i383.i, !llvm.loop !0

bb.ai:                                            ; preds = %bb.ae
  %i.ks = load i32, ptr %i.co, align 8, !tbaa !204
  %.not248.i = icmp eq i32 %i.ks, 0
  br i1 %.not248.i, label %bb.aj, label %.loopexit627.i

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.66) #14
  br label %start_ebml_master_crc32.exit

.loopexit627.sink.split.i:                        ; preds = %.lr.ph.i.i.i383.i, %.lr.ph.i.i.i325.i, %bb.ah, %.loopexit626.i
  %.sink717.i = phi i64 [ %i.ja, %.loopexit626.i ], [ %i.ko, %bb.ah ], [ %i.ja, %.lr.ph.i.i.i325.i ], [ %i.ko, %.lr.ph.i.i.i383.i ] ; 2 uses
  %.0214.ph.sink.i = phi ptr [ %.0214.ph.i, %.loopexit626.i ], [ %i.kn, %bb.ah ], [ %.0214.ph.i, %.lr.ph.i.i.i325.i ], [ %i.kn, %.lr.ph.i.i.i383.i ]
  %.1203.ph.i = phi i32 [ %.0202.ph.i, %.loopexit626.i ], [ 1, %bb.ah ], [ %.0202.ph.i, %.lr.ph.i.i.i325.i ], [ 1, %.lr.ph.i.i.i383.i ]
  %i.kt = trunc i64 %.sink717.i to i32
  %sext.i328.i = shl i64 %.sink717.i, 32
  %i.ku = ashr exact i64 %sext.i328.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.ku, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %.0214.ph.sink.i, i32 noundef %i.kt) #14
  br label %.loopexit627.i

.loopexit627.i:                                   ; preds = %bb.ag, %.loopexit627.sink.split.i, %bb.ai, %bb.af, %put_ebml_uint.exit381.i
  %.1203.i = phi i32 [ 0, %bb.af ], [ 0, %put_ebml_uint.exit381.i ], [ %.1203.ph.i, %.loopexit627.sink.split.i ], [ 0, %bb.ai ], [ 0, %bb.ag ] ; 7 uses
  %i.kv = load i32, ptr %i.ga, align 8, !tbaa !87
  switch i32 %i.kv, label %bb.fz [
    i32 0, label %bb.ak
    i32 1, label %bb.ev
    i32 3, label %bb.fu
  ]

bb.ak:                                            ; preds = %.loopexit627.i
  store i32 1, ptr %i.dy, align 4, !tbaa !110
  br i1 %.not4.i.i517.i, label %.lr.ph.i.i152, label %.lr.ph.i.i394.i

.lr.ph.i.i394.i:                                  ; preds = %bb.ak, %.lr.ph.i.i394.i
  %.05.i.i395.i = phi i32 [ %i.kw, %.lr.ph.i.i394.i ], [ %i.cw, %bb.ak ]
  %i.kw = add nsw i32 %.05.i.i395.i, -1           ; 3 uses
  %i.kx = shl nsw i32 %i.kw, 3
  %i.ky = lshr i32 131, %i.kx
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ky) #14
  %.not.i.i396.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i396.i, label %.lr.ph.i.i152, label %.lr.ph.i.i394.i, !llvm.loop !0

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i394.i, %bb.ak
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !205 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i152
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fq, i64 92
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !206 ; 2 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %select.unfold.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i152
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fq, i64 204
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !207 ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.li = getelementptr inbounds nuw i8, ptr %i.fq, i64 208
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !208 ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %select.unfold.i, label %bb.aq

select.unfold.i:                                  ; preds = %bb.an, %bb.al
  %.sroa.519.0.ph.i = phi i32 [ %i.ld, %bb.al ], [ %i.lj, %bb.an ]
  %.sroa.016.0.ph.i = phi i32 [ %i.la, %bb.al ], [ %i.lg, %bb.an ]
  %.sroa.519.0.insert.ext.i = zext nneg i32 %.sroa.519.0.ph.i to i64
  %.sroa.519.0.insert.shift.i = shl nuw nsw i64 %.sroa.519.0.insert.ext.i, 32
  %.sroa.016.0.insert.ext.i = zext nneg i32 %.sroa.016.0.ph.i to i64
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.519.0.insert.shift.i, %.sroa.016.0.insert.ext.i ; 2 uses
  %.sroa.01.0.insert.insert.i.i = call range(i64 1, -2147483648) i64 @llvm.fshl.i64(i64 range(i64 4294967296, 9223372034707292160) %.sroa.016.0.insert.insert.i, i64 range(i64 4294967296, 9223372034707292160) %.sroa.016.0.insert.insert.i, i64 32) ; 2 uses
  %sext.i401.i = and i64 %.sroa.01.0.insert.insert.i.i, 2147483647 ; 2 uses
  %i.ll = mul nuw nsw i64 %sext.i401.i, 1000000000
  %i.lm = lshr i64 %.sroa.01.0.insert.insert.i.i, 32 ; 3 uses
  %i.ln = udiv i64 %i.ll, %i.lm                   ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %select.unfold.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ao ], [ 1, %select.unfold.i ] ; 3 uses
  %.0.i.i.i = phi i64 [ %i.lo, %bb.ao ], [ %i.ln, %select.unfold.i ]
  %i.lo = lshr i64 %.0.i.i.i, 8                   ; 2 uses
  %.not.i.i402.i = icmp eq i64 %i.lo, 0
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %.not.i.i402.i, label %.lr.ph.i.i.i403.i, label %bb.ao, !llvm.loop !2

.lr.ph.i.i.i403.i:                                ; preds = %bb.ao, %.lr.ph.i.i.i403.i
  %.05.i.i.i404.i = phi i32 [ %i.lp, %.lr.ph.i.i.i403.i ], [ %i.dh, %bb.ao ]
  %i.lp = add nsw i32 %.05.i.i.i404.i, -1         ; 3 uses
  %i.lq = shl nsw i32 %i.lp, 3
  %i.lr = lshr i32 2352003, %i.lq
  %i.ls = and i32 %i.lr, 227
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ls) #14
  %.not.i.i.i405.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i405.i, label %put_ebml_id.exit.i.i.i, label %.lr.ph.i.i.i403.i, !llvm.loop !0

put_ebml_id.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i403.i
  %i.lt = and i64 %indvars.iv.i.i.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.lt, i32 noundef 0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %put_ebml_id.exit.i.i.i
  %indvars.iv16.i.i.i = phi i64 [ %indvars.iv.i.i.i, %put_ebml_id.exit.i.i.i ], [ %indvars.iv.next17.i.i.i, %bb.ap ] ; 2 uses
  %indvars.iv.next17.i.i.i = add nsw i64 %indvars.iv16.i.i.i, -1 ; 2 uses
  %i.lu = shl nuw nsw i64 %indvars.iv.next17.i.i.i, 3
  %i.lv = lshr i64 %i.ln, %i.lu
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = and i32 %i.lw, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.lx) #14
  %i.ly = icmp sgt i64 %indvars.iv16.i.i.i, 1
  br i1 %i.ly, label %bb.ap, label %mkv_write_default_duration.exit.i, !llvm.loop !3

mkv_write_default_duration.exit.i:                ; preds = %bb.ap
  %i.lz = mul nuw nsw i64 %sext.i401.i, 1000      ; 2 uses
  %i.ma = udiv i64 %i.lz, %i.lm                   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.fx, i64 96
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !155
  %i.mc = urem i64 %i.lz, %i.lm
  %i.md = icmp ne i64 %i.mc, 0
  %i.me = zext i1 %i.md to i64
  %i.mf = add nuw nsw i64 %i.ma, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.fx, i64 104
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !156
  br label %bb.aq

bb.aq:                                            ; preds = %mkv_write_default_duration.exit.i, %bb.an, %bb.am
  %.not269.i = icmp eq i32 %.1203.i, 0
  br i1 %.not269.i, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !84
  %i.mj = call i32 @ff_codec_get_tag(ptr noundef nonnull @ff_codec_movvideo_tags, i32 noundef %i.mi) #14
  %.not270.i = icmp eq i32 %i.mj, 0
  br i1 %.not270.i, label %.thread589.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = load i32, ptr %i.mh, align 4, !tbaa !84
  %i.ml = call i32 @ff_codec_get_tag(ptr noundef nonnull @ff_codec_bmp_tags, i32 noundef %i.mk) #14
  %.not271.i = icmp eq i32 %i.ml, 0
  %i.mm = load i32, ptr %i.mh, align 4, !tbaa !84 ; 2 uses
  br i1 %.not271.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.not272.i = icmp eq i32 %i.mm, 13
  br i1 %.not272.i, label %.thread589.i, label %bb.av

bb.au:                                            ; preds = %bb.as
  switch i32 %i.mm, label %.thread589.i [
    i32 22, label %bb.av
    i32 23, label %bb.av
    i32 43, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.at
  br i1 %.not4.i.i.i382.i, label %.lr.ph.i.i143, label %.lr.ph.i.i.i407.i

.lr.ph.i.i.i407.i:                                ; preds = %bb.av, %.lr.ph.i.i.i407.i
  %.05.i.i.i408.i = phi i32 [ %i.mn, %.lr.ph.i.i.i407.i ], [ %i.cs, %bb.av ]
  %i.mn = add nsw i32 %.05.i.i.i408.i, -1         ; 3 uses
  %i.mo = shl nsw i32 %i.mn, 3
  %i.mp = lshr i32 134, %i.mo
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.mp) #14
  %.not.i.i.i409.i = icmp eq i32 %i.mn, 0
  br i1 %.not.i.i.i409.i, label %.lr.ph.i.i143, label %.lr.ph.i.i.i407.i, !llvm.loop !0

.lr.ph.i.i143:                                    ; preds = %.lr.ph.i.i.i407.i, %bb.av
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 139) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.67, i32 noundef 11) #14
  br label %bb.aw

.thread589.i:                                     ; preds = %bb.au, %bb.at, %bb.ar
  br i1 %.not4.i.i.i382.i, label %put_ebml_string.exit, label %.lr.ph.i.i.i135

.lr.ph.i.i.i135:                                  ; preds = %.thread589.i, %.lr.ph.i.i.i135
  %.05.i.i.i136 = phi i32 [ %i.mq, %.lr.ph.i.i.i135 ], [ %i.cs, %.thread589.i ]
  %i.mq = add nsw i32 %.05.i.i.i136, -1           ; 3 uses
  %i.mr = shl nsw i32 %i.mq, 3
  %i.ms = lshr i32 134, %i.mr
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ms) #14
  %.not.i.i.i137 = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i.i137, label %put_ebml_string.exit, label %.lr.ph.i.i.i135, !llvm.loop !0

put_ebml_string.exit:                             ; preds = %.lr.ph.i.i.i135, %.thread589.i
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef 15, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.68, i32 noundef 15) #14
  store i32 1, ptr %i.fx, align 8, !tbaa !121
  store i32 0, ptr %i.dz, align 8, !tbaa !148
  br label %bb.aw

bb.aw:                                            ; preds = %put_ebml_string.exit, %.lr.ph.i.i143, %bb.aq
  %.0206594.i = phi i32 [ 1, %.lr.ph.i.i143 ], [ 0, %put_ebml_string.exit ], [ 0, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ga, i64 72 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !209 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ga, i64 76 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !210 ; 4 uses
  store i32 224, ptr %2, align 16, !tbaa !53
  store i32 7, ptr %i.ea, align 4, !tbaa !54
  %i.mx = sext i32 %i.mu to i64
  store <4 x i32> <i32 -1, i32 -1, i32 176, i32 0>, ptr %i.eb, align 8, !tbaa !55
  store i64 %i.mx, ptr %i.ec, align 8, !tbaa !56
  %i.my = sext i32 %i.mw to i64
  store i32 186, ptr %i.ed, align 16, !tbaa !53
  store i32 0, ptr %i.ee, align 4, !tbaa !54
  store i64 %i.my, ptr %i.ef, align 8, !tbaa !56
  %i.mz = load i32, ptr %i.cn, align 8, !tbaa !45
  %i.na = icmp eq i32 %i.mz, 2                    ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !211 ; 2 uses
  switch i32 %i.nc, label %mkv_write_field_order.exit.i.i [
    i32 5, label %bb.ay
    i32 1, label %bb.ax
    i32 2, label %bb.ay
    i32 3, label %bb.ay
    i32 4, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  store i32 154, ptr %i.eg, align 16, !tbaa !53
  store i32 0, ptr %i.eh, align 4, !tbaa !54
  store i64 2, ptr %i.ei, align 8, !tbaa !56
  br label %mkv_write_field_order.exit.i.i

bb.ay:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  store i32 154, ptr %i.eg, align 16, !tbaa !53
  store i32 0, ptr %i.eh, align 4, !tbaa !54
  store i64 1, ptr %i.ei, align 8, !tbaa !56
  br i1 %i.na, label %mkv_write_field_order.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 157, ptr %i.ej, align 16, !tbaa !53
  store i32 0, ptr %i.ek, align 4, !tbaa !54
  switch i32 %i.nc, label %default.unreachable.i.i.i [
    i32 2, label %bb.ba
    i32 3, label %bb.bb
    i32 4, label %bb.bc
    i32 5, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  store i64 1, ptr %i.el, align 8, !tbaa !56
  br label %mkv_write_field_order.exit.i.i

bb.bb:                                            ; preds = %bb.az
  store i64 6, ptr %i.el, align 8, !tbaa !56
  br label %mkv_write_field_order.exit.i.i

bb.bc:                                            ; preds = %bb.az
  store i64 9, ptr %i.el, align 8, !tbaa !56
  br label %mkv_write_field_order.exit.i.i

bb.bd:                                            ; preds = %bb.az
  store i64 14, ptr %i.el, align 8, !tbaa !56
  br label %mkv_write_field_order.exit.i.i

default.unreachable.i.i.i:                        ; preds = %bb.az
  unreachable

mkv_write_field_order.exit.i.i:                   ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.aw
  %.sroa.0.9.i.i = phi i32 [ 3, %bb.aw ], [ 4, %bb.ax ], [ 5, %bb.ba ], [ 5, %bb.bb ], [ 5, %bb.bc ], [ 5, %bb.bd ], [ 4, %bb.ay ] ; 5 uses
  %.val.i.i = load ptr, ptr %i.hd, align 8, !tbaa !78
  %i.nd = call ptr @av_dict_get(ptr noundef %.val.i.i, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not.i104.i.i = icmp eq ptr %i.nd, null
  br i1 %.not.i104.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %mkv_write_field_order.exit.i.i
  %i.ne = load ptr, ptr %i.em, align 8, !tbaa !46
  %i.nf = call ptr @av_dict_get(ptr noundef %i.ne, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not47.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not47.i.i.i, label %bb.bv, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %mkv_write_field_order.exit.i.i
  %.037.i.i.i = phi ptr [ %i.nd, %mkv_write_field_order.exit.i.i ], [ %i.nf, %bb.be ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.037.i.i.i, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !63 ; 16 uses
  %i.ni = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.en) #15
  %.not50.i.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not50.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.eo) #15
  %.not50.1.i.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not50.1.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.ep) #15
  %.not50.2.i.i.i = icmp eq i32 %i.nk, 0
  br i1 %.not50.2.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.eq) #15
  %.not50.3.i.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not50.3.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.er) #15
  %.not50.4.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not50.4.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.es) #15
  %.not50.5.i.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not50.5.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.no = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.et) #15
  %.not50.6.i.i.i = icmp eq i32 %i.no, 0
  br i1 %.not50.6.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.np = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.eu) #15
  %.not50.7.i.i.i = icmp eq i32 %i.np, 0
  br i1 %.not50.7.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.ev) #15
  %.not50.8.i.i.i = icmp eq i32 %i.nq, 0
  br i1 %.not50.8.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.ew) #15
  %.not50.9.i.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not50.9.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ns = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.ex) #15
  %.not50.10.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not50.10.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.ey) #15
  %.not50.11.i.i.i = icmp eq i32 %i.nt, 0
  br i1 %.not50.11.i.i.i, label %.loopexit.thread.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.ez) #15
  %.not50.12.i.i.i = icmp eq i32 %i.nu, 0
  br i1 %.not50.12.i.i.i, label %.loopexit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.fa) #15
  %.not50.13.i.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not50.13.i.i.i, label %.loopexit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nh, ptr noundef nonnull dereferenceable(1) %i.fb) #15
  %.not50.14.i.i.i = icmp eq i32 %i.nw, 0
  br i1 %.not50.14.i.i.i, label %.loopexit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nx = call i64 @strtol(ptr noundef nonnull captures(none) %i.nh, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %i.ny = icmp ugt i64 %i.nx, 14
  %i.nz = trunc nuw nsw i64 %i.nx to i32
  br i1 %i.ny, label %mkv_write_stereo_mode.exit.i.i, label %.loopexit.i.i.i

bb.bv:                                            ; preds = %bb.be
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !212
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !213
  %i.oe = call ptr @av_packet_side_data_get(ptr noundef %i.ob, i32 noundef %i.od, i32 noundef 6) #14 ; 2 uses
  %.not48.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not48.i.i.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !215 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !217 ; 2 uses
  %i.oh = icmp ugt i32 %i.og, 7
  br i1 %i.oh, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oi = zext nneg i32 %i.og to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr @mkv_write_stereo_mode.conversion_table, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !218
end_hunk_3
begin_hunk_4_@mkv_write_tracks:bb.a
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adj, i64 88
  store ptr %i.e, ptr %i.ado, align 8, !tbaa !56
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %i.adq = load <2 x i32>, ptr %i.adp, align 4, !tbaa !55
  %i.adr = sitofp <2 x i32> %i.adq to <2 x double>
  %i.ads = fmul nnan nsz <2 x double> %i.adr, splat (double f0x3EF0000000000000)
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ack, i64 12
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !245
  %i.adv = sitofp nsz i32 %i.adu to double
  %i.adw = fmul nnan nsz double %i.adv, f0x3EF0000000000000
  br label %mkv_handle_rotation.exit.i.i.i

bb.ee:                                            ; preds = %bb.dy, %mkv_write_video_color.exit.i.i
  %.val14.i.i.i = load ptr, ptr %i.py, align 8, !tbaa !212
  %.val15.i.i.i = load i32, ptr %i.qa, align 8, !tbaa !213
  %i.adx = call ptr @av_packet_side_data_get(ptr noundef %.val14.i.i.i, i32 noundef %.val15.i.i.i, i32 noundef 5) #14 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.adx, null
  br i1 %.not.i16.i.i.i, label %.thread40.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !215 ; 9 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !55
  %.not22.i.i.i.i = icmp eq i32 %i.aea, 0
  br i1 %.not22.i.i.i.i, label %bb.eg, label %bb.en

bb.eg:                                            ; preds = %bb.ef
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 20
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !55
  %.not23.i.i.i.i = icmp eq i32 %i.aec, 0
  br i1 %.not23.i.i.i.i, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %bb.eg
  %i.aed = load i32, ptr %i.ady, align 4, !tbaa !55 ; 3 uses
  %.not24.i.i.i.i = icmp eq i32 %i.aed, 0
  br i1 %.not24.i.i.i.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !55
  %.not25.i.i.i.i = icmp eq i32 %i.aef, 0
  br i1 %.not25.i.i.i.i, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !55 ; 3 uses
  %i.aei = icmp eq i32 %i.aed, %i.aeh
  br i1 %i.aei, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !55
  %i.ael = sext i32 %i.aek to i64
  %i.aem = sub nsw i64 0, %i.ael
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ady, i64 12
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !55 ; 2 uses
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = icmp eq i64 %i.aem, %i.aep
  br i1 %i.aeq, label %bb.eo, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aer = sext i32 %i.aed to i64
  %i.aes = sub nsw i64 0, %i.aer
  %i.aet = sext i32 %i.aeh to i64
  %i.aeu = icmp eq i64 %i.aes, %i.aet
  br i1 %i.aeu, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !55 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ady, i64 12
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !55
  %i.aez = icmp eq i32 %i.aew, %i.aey
  br i1 %i.aez, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ei, %bb.eg, %bb.ef
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.80) #14
  br label %.thread40.i.i.i

bb.eo:                                            ; preds = %bb.em, %bb.ek
  %i.afa = phi i32 [ %i.aeo, %bb.ek ], [ %i.aew, %bb.em ]
  %storemerge.i.i.i.i = phi double [ 0.000000e+00, %bb.ek ], [ 1.800000e+02, %bb.em ]
  %i.afb = sitofp nsz i32 %i.afa to double
  %i.afc = sitofp nsz i32 %i.aeh to double
  %i.afd = call nsz double @llvm.atan2.f64(double %i.afb, double %i.afc)
  %i.afe = fmul nnan nsz double %i.afd, f0x404CA5DC1A63C1F8
  %i.aff = insertelement <2 x double> <double poison, double 0.000000e+00>, double %storemerge.i.i.i.i, i64 0
  br label %mkv_handle_rotation.exit.i.i.i

mkv_handle_rotation.exit.i.i.i:                   ; preds = %bb.eo, %mkv_handle_spherical.exit.i.i.i
  %.sroa.0.23.i.i = phi i32 [ %i.acg, %bb.eo ], [ %i.adm, %mkv_handle_spherical.exit.i.i.i ] ; 3 uses
  %.0.i109.i.i = phi nsz double [ %i.afe, %bb.eo ], [ %i.adw, %mkv_handle_spherical.exit.i.i.i ] ; 2 uses
  %i.afg = phi <2 x double> [ %i.aff, %bb.eo ], [ %i.ads, %mkv_handle_spherical.exit.i.i.i ] ; 2 uses
  %i.afh = extractelement <2 x double> %i.afg, i64 0 ; 2 uses
  %i.afi = fcmp nsz une double %i.afh, 0.000000e+00
  br i1 %i.afi, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %mkv_handle_rotation.exit.i.i.i
  %i.afj = zext nneg i32 %.sroa.0.23.i.i to i64
  %i.afk = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.afj ; 3 uses
  store i32 30323, ptr %i.afk, align 16, !tbaa !53
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  store i32 2, ptr %i.afl, align 4, !tbaa !54
  %i.afm = add nuw nsw i32 %.sroa.0.23.i.i, 1
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 24
  store double %i.afh, ptr %i.afn, align 8, !tbaa !56
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %mkv_handle_rotation.exit.i.i.i
  %.sroa.0.24.i.i = phi i32 [ %i.afm, %bb.ep ], [ %.sroa.0.23.i.i, %mkv_handle_rotation.exit.i.i.i ] ; 3 uses
  %i.afo = extractelement <2 x double> %i.afg, i64 1 ; 2 uses
  %i.afp = fcmp nsz une double %i.afo, 0.000000e+00
  br i1 %i.afp, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.afq = zext nneg i32 %.sroa.0.24.i.i to i64
  %i.afr = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.afq ; 3 uses
  store i32 30324, ptr %i.afr, align 16, !tbaa !53
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  store i32 2, ptr %i.afs, align 4, !tbaa !54
  %i.aft = add nuw nsw i32 %.sroa.0.24.i.i, 1
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  store double %i.afo, ptr %i.afu, align 8, !tbaa !56
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sroa.0.25.i.i = phi i32 [ %i.aft, %bb.er ], [ %.sroa.0.24.i.i, %bb.eq ] ; 3 uses
  %i.afv = fcmp nsz une double %.0.i109.i.i, 0.000000e+00
  br i1 %i.afv, label %bb.et, label %.thread40.i.i.i

bb.et:                                            ; preds = %bb.es
  %i.afw = zext nneg i32 %.sroa.0.25.i.i to i64
  %i.afx = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.afw ; 3 uses
  store i32 30325, ptr %i.afx, align 16, !tbaa !53
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 4
  store i32 2, ptr %i.afy, align 4, !tbaa !54
  %i.afz = add nuw nsw i32 %.sroa.0.25.i.i, 1
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 24
  store double %.0.i109.i.i, ptr %i.aga, align 8, !tbaa !56
  br label %.thread40.i.i.i

.thread40.i.i.i:                                  ; preds = %bb.et, %bb.es, %bb.en, %bb.ee
  %.sroa.0.22.i.i = phi i32 [ %i.acg, %bb.ee ], [ %i.acg, %bb.en ], [ %i.afz, %bb.et ], [ %.sroa.0.25.i.i, %bb.es ] ; 3 uses
  %i.agb = add nsw i32 %.sroa.0.22.i.i, -1
  %i.agc = icmp eq i32 %.sroa.0.21.i.i, %i.agb
  br i1 %i.agc, label %mkv_write_video_projection.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %.thread40.i.i.i
  %i.agd = xor i32 %.sroa.0.21.i.i, -1
  %i.age = add nsw i32 %.sroa.0.22.i.i, %i.agd
  store i32 %i.age, ptr %i.ach, align 8, !tbaa !56
  br label %mkv_write_video_projection.exit.i.i

mkv_write_video_projection.exit.i.i:              ; preds = %bb.eu, %.thread40.i.i.i
  %.sroa.0.26.i.i = phi i32 [ %.sroa.0.22.i.i, %bb.eu ], [ %.sroa.0.21.i.i, %.thread40.i.i.i ]
  %i.agf = call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %2, i32 noundef %.sroa.0.26.i.i) ; 2 uses
  %i.agg = icmp slt i32 %i.agf, 0
  br i1 %i.agg, label %mkv_write_track_video.exit.thread.i, label %mkv_write_track_video.exit.i

mkv_write_track_video.exit.thread.i:              ; preds = %mkv_write_video_projection.exit.i.i, %bb.cw, %.critedge.i.i, %mkv_write_stereo_mode.exit.i.i
  %.3.i.ph.i = phi i32 [ -22, %.critedge.i.i ], [ -22, %bb.cw ], [ -22, %mkv_write_stereo_mode.exit.i.i ], [ %i.agf, %mkv_write_video_projection.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %start_ebml_master_crc32.exit

mkv_write_track_video.exit.i:                     ; preds = %mkv_write_video_projection.exit.i.i
  %i.agh = call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %2, ptr noundef %i.fy) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %end_ebml_master.exit.i

bb.ev:                                            ; preds = %.loopexit627.i
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ga, i64 164 ; 2 uses
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !246 ; 2 uses
  %.not259.i = icmp eq i32 %i.agj, 0
  br i1 %.not259.i, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.agk = sext i32 %i.agj to i64
  %i.agl = load i32, ptr %i.gb, align 8, !tbaa !153
  %.sroa.28.0.insert.ext.i = zext i32 %i.agl to i64
  %.sroa.28.0.insert.shift.i = shl nuw i64 %.sroa.28.0.insert.ext.i, 32
  %.sroa.07.0.insert.insert.i = or disjoint i64 %.sroa.28.0.insert.shift.i, 1
  %i.agm = call i64 @av_rescale_q(i64 noundef %i.agk, i64 %.sroa.07.0.insert.insert.i, i64 4294967296000000001) #16 ; 3 uses
  %i.agn = icmp sgt i64 %i.agm, -1
  br i1 %i.agn, label %.preheader624.i, label %bb.ey

.preheader624.i:                                  ; preds = %bb.ew, %.preheader624.i
  %indvars.iv.i415.i = phi i64 [ %indvars.iv.next.i419.i, %.preheader624.i ], [ 1, %bb.ew ] ; 3 uses
  %.0.i417.i = phi i64 [ %i.ago, %.preheader624.i ], [ %i.agm, %bb.ew ]
  %i.ago = lshr i64 %.0.i417.i, 8                 ; 2 uses
  %.not.i418.i = icmp eq i64 %i.ago, 0
  %indvars.iv.next.i419.i = add nuw nsw i64 %indvars.iv.i415.i, 1
  br i1 %.not.i418.i, label %.lr.ph.i.i421.i, label %.preheader624.i, !llvm.loop !2

.lr.ph.i.i421.i:                                  ; preds = %.preheader624.i, %.lr.ph.i.i421.i
  %.05.i.i422.i = phi i32 [ %i.agp, %.lr.ph.i.i421.i ], [ %i.da, %.preheader624.i ]
  %i.agp = add nsw i32 %.05.i.i422.i, -1          ; 3 uses
  %i.agq = shl nsw i32 %i.agp, 3
  %i.agr = lshr i32 22186, %i.agq
  %i.ags = and i32 %i.agr, 254
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ags) #14
  %.not.i.i423.i = icmp eq i32 %i.agp, 0
  br i1 %.not.i.i423.i, label %put_ebml_id.exit.i424.i, label %.lr.ph.i.i421.i, !llvm.loop !0

put_ebml_id.exit.i424.i:                          ; preds = %.lr.ph.i.i421.i
  %i.agt = and i64 %indvars.iv.i415.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.agt, i32 noundef 0)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %put_ebml_id.exit.i424.i
  %indvars.iv16.i425.i = phi i64 [ %indvars.iv.i415.i, %put_ebml_id.exit.i424.i ], [ %indvars.iv.next17.i426.i, %bb.ex ] ; 2 uses
  %indvars.iv.next17.i426.i = add nsw i64 %indvars.iv16.i425.i, -1 ; 2 uses
  %i.agu = shl nuw nsw i64 %indvars.iv.next17.i426.i, 3
  %i.agv = lshr i64 %i.agm, %i.agu
  %i.agw = trunc i64 %i.agv to i32
  %i.agx = and i32 %i.agw, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.agx) #14
  %i.agy = icmp sgt i64 %indvars.iv16.i425.i, 1
  br i1 %i.agy, label %bb.ex, label %.thread599.i, !llvm.loop !3

.thread599.i:                                     ; preds = %bb.ex
  %i.agz = load i32, ptr %i.agi, align 4, !tbaa !246
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = load i32, ptr %i.gb, align 8, !tbaa !153
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %.sroa.24.0.insert.ext.i = zext i32 %i.ahb to i64
  %.sroa.24.0.insert.shift.i = shl nuw i64 %.sroa.24.0.insert.ext.i, 32
  %.sroa.03.0.insert.insert.i = or disjoint i64 %.sroa.24.0.insert.shift.i, 1
  %i.ahd = load i64, ptr %i.ahc, align 8
  %i.ahe = call i64 @av_rescale_q(i64 noundef %i.aha, i64 %.sroa.03.0.insert.insert.i, i64 %i.ahd) #16 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  store i64 %i.ahe, ptr %i.ahf, align 8, !tbaa !123
  %i.ahg = sub nsw i64 0, %i.ahe
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.fq, i64 408
  store i64 %i.ahg, ptr %i.ahh, align 8, !tbaa !257
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.69) #14
  br label %start_ebml_master_crc32.exit

bb.ez:                                            ; preds = %.thread599.i, %bb.ev
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 3 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !84
  switch i32 %i.ahj, label %put_ebml_uint.exit440.i [
    i32 86076, label %.lr.ph.i.i434.i
    i32 86018, label %bb.fa
  ]

.lr.ph.i.i434.i:                                  ; preds = %bb.ez, %.lr.ph.i.i434.i
  %.05.i.i435.i = phi i32 [ %i.ahk, %.lr.ph.i.i434.i ], [ %i.da, %bb.ez ]
  %i.ahk = add nsw i32 %.05.i.i435.i, -1          ; 3 uses
  %i.ahl = shl nsw i32 %i.ahk, 3
  %i.ahm = lshr i32 22203, %i.ahl
  %i.ahn = and i32 %i.ahm, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ahn) #14
  %.not.i.i436.i = icmp eq i32 %i.ahk, 0
  br i1 %.not.i.i436.i, label %.lr.ph.i.i130, label %.lr.ph.i.i434.i, !llvm.loop !0

.lr.ph.i.i130:                                    ; preds = %.lr.ph.i.i434.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 132) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 4) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 196) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 180) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  br label %put_ebml_uint.exit440.i

bb.fa:                                            ; preds = %bb.ez
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !96
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.ahr = load i32, ptr %i.ahq, align 8, !tbaa !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.ahs = call i32 @avpriv_mpeg4audio_get_config2(ptr noundef nonnull %1, ptr noundef %i.ahp, i32 noundef %i.ahr, i32 noundef 1, ptr noundef %0) #14
  %i.aht = icmp slt i32 %i.ahs, 0
  br i1 %i.aht, label %bb.fb, label %.critedge.i441.i

bb.fb:                                            ; preds = %bb.fa
  %.not.i443.i = icmp eq i32 %i.ahr, 0
  br i1 %.not.i443.i, label %bb.fc, label %get_aac_sample_rates.exit.i

bb.fc:                                            ; preds = %bb.fb
  %i.ahu = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 144
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !80
  %i.ahx = and i32 %i.ahw, 1
  %.not13.i.i = icmp eq i32 %i.ahx, 0
  br i1 %.not13.i.i, label %get_aac_sample_rates.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ahy = load i32, ptr %i.dd, align 4, !tbaa !68
  %.not14.i.i = icmp eq i32 %i.ahy, 0
  br i1 %.not14.i.i, label %get_aac_sample_rates.exit.thread.i, label %get_aac_sample_rates.exit.i

.critedge.i441.i:                                 ; preds = %bb.fa
  %i.ahz = load i32, ptr %i.db, align 4, !tbaa !117
  %i.aia = load i32, ptr %i.dc, align 4, !tbaa !118
  br label %get_aac_sample_rates.exit.thread.i

get_aac_sample_rates.exit.thread.i:               ; preds = %.critedge.i441.i, %bb.fd
  %.2.ph.i = phi i32 [ %i.gc, %bb.fd ], [ %i.ahz, %.critedge.i441.i ]
  %.1.ph.i = phi i32 [ %i.gc, %bb.fd ], [ %i.aia, %.critedge.i441.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %put_ebml_uint.exit440.i

get_aac_sample_rates.exit.i:                      ; preds = %bb.fd, %bb.fc, %bb.fb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.81) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %start_ebml_master_crc32.exit

put_ebml_uint.exit440.i:                          ; preds = %get_aac_sample_rates.exit.thread.i, %.lr.ph.i.i130, %bb.ez
  %.0570.i = phi i32 [ %i.gc, %bb.ez ], [ %.2.ph.i, %get_aac_sample_rates.exit.thread.i ], [ %i.gc, %.lr.ph.i.i130 ]
  %.0.i95 = phi i32 [ 0, %bb.ez ], [ %.1.ph.i, %get_aac_sample_rates.exit.thread.i ], [ 0, %.lr.ph.i.i130 ] ; 2 uses
  br i1 %.not4.i.i517.i, label %.lr.ph.i.i121, label %.lr.ph.i.i450.i

.lr.ph.i.i450.i:                                  ; preds = %put_ebml_uint.exit440.i, %.lr.ph.i.i450.i
  %.05.i.i451.i = phi i32 [ %i.aib, %.lr.ph.i.i450.i ], [ %i.cw, %put_ebml_uint.exit440.i ]
  %i.aib = add nsw i32 %.05.i.i451.i, -1          ; 3 uses
  %i.aic = shl nsw i32 %i.aib, 3
  %i.aid = lshr i32 131, %i.aic
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.aid) #14
  %.not.i.i452.i = icmp eq i32 %i.aib, 0
  br i1 %.not.i.i452.i, label %.lr.ph.i.i121, label %.lr.ph.i.i450.i, !llvm.loop !0

.lr.ph.i.i121:                                    ; preds = %.lr.ph.i.i450.i, %put_ebml_uint.exit440.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 2) #14
  %i.aie = call i32 @av_get_audio_frame_duration2(ptr noundef nonnull %i.ga, i32 noundef 0) #14 ; 2 uses
  %.not260.i = icmp eq i32 %i.aie, 0
  br i1 %.not260.i, label %bb.fe, label %.thread603.i

bb.fe:                                            ; preds = %.lr.ph.i.i121
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ga, i64 160
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !258 ; 2 uses
  %.not261.i = icmp eq i32 %i.aig, 0
  br i1 %.not261.i, label %bb.fh, label %.thread603.i

.thread603.i:                                     ; preds = %bb.fe, %.lr.ph.i.i121
  %.0213606.i = phi i32 [ %i.aig, %bb.fe ], [ %i.aie, %.lr.ph.i.i121 ]
  %i.aih = load i32, ptr %i.gb, align 8, !tbaa !153
  %i.aii = sext i32 %.0213606.i to i64            ; 2 uses
  %i.aij = mul nsw i64 %i.aii, 1000000000
  %i.aik = sext i32 %i.aih to i64                 ; 3 uses
  %i.ail = sdiv i64 %i.aij, %i.aik                ; 2 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %.thread603.i
  %indvars.iv.i.i458.i = phi i64 [ %indvars.iv.next.i.i461.i, %bb.ff ], [ 1, %.thread603.i ] ; 3 uses
  %.0.i.i459.i = phi i64 [ %i.aim, %bb.ff ], [ %i.ail, %.thread603.i ]
  %i.aim = lshr i64 %.0.i.i459.i, 8               ; 2 uses
  %.not.i.i460.i = icmp eq i64 %i.aim, 0
  %indvars.iv.next.i.i461.i = add nuw nsw i64 %indvars.iv.i.i458.i, 1
  br i1 %.not.i.i460.i, label %.lr.ph.i.i.i462.i, label %bb.ff, !llvm.loop !2

.lr.ph.i.i.i462.i:                                ; preds = %bb.ff, %.lr.ph.i.i.i462.i
  %.05.i.i.i463.i = phi i32 [ %i.ain, %.lr.ph.i.i.i462.i ], [ %i.dh, %bb.ff ]
  %i.ain = add nsw i32 %.05.i.i.i463.i, -1        ; 3 uses
  %i.aio = shl nsw i32 %i.ain, 3
  %i.aip = lshr i32 2352003, %i.aio
  %i.aiq = and i32 %i.aip, 227
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.aiq) #14
  %.not.i.i.i464.i = icmp eq i32 %i.ain, 0
  br i1 %.not.i.i.i464.i, label %put_ebml_id.exit.i.i465.i, label %.lr.ph.i.i.i462.i, !llvm.loop !0

put_ebml_id.exit.i.i465.i:                        ; preds = %.lr.ph.i.i.i462.i
  %i.air = and i64 %indvars.iv.i.i458.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.air, i32 noundef 0)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %put_ebml_id.exit.i.i465.i
  %indvars.iv16.i.i466.i = phi i64 [ %indvars.iv.i.i458.i, %put_ebml_id.exit.i.i465.i ], [ %indvars.iv.next17.i.i467.i, %bb.fg ] ; 2 uses
  %indvars.iv.next17.i.i467.i = add nsw i64 %indvars.iv16.i.i466.i, -1 ; 2 uses
  %i.ais = shl nuw nsw i64 %indvars.iv.next17.i.i467.i, 3
  %i.ait = lshr i64 %i.ail, %i.ais
  %i.aiu = trunc i64 %i.ait to i32
  %i.aiv = and i32 %i.aiu, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.aiv) #14
  %i.aiw = icmp sgt i64 %indvars.iv16.i.i466.i, 1
  br i1 %i.aiw, label %bb.fg, label %mkv_write_default_duration.exit468.i, !llvm.loop !3

mkv_write_default_duration.exit468.i:             ; preds = %bb.fg
  %i.aix = mul nsw i64 %i.aii, 1000               ; 2 uses
  %i.aiy = sdiv i64 %i.aix, %i.aik                ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.fx, i64 96
  store i64 %i.aiy, ptr %i.aiz, align 8, !tbaa !155
  %i.aja = srem i64 %i.aix, %i.aik
  %i.ajb = icmp ne i64 %i.aja, 0
  %i.ajc = zext i1 %i.ajb to i64
  %i.ajd = add nsw i64 %i.aiy, %i.ajc
  %i.aje = getelementptr inbounds nuw i8, ptr %i.fx, i64 104
  store i64 %i.ajd, ptr %i.aje, align 8, !tbaa !156
  br label %bb.fh

bb.fh:                                            ; preds = %mkv_write_default_duration.exit468.i, %bb.fe
  %.not262.i = icmp eq i32 %.1203.i, 0
  br i1 %.not262.i, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  br i1 %.not4.i.i.i382.i, label %.lr.ph.i.i112, label %.lr.ph.i.i.i470.i

.lr.ph.i.i.i470.i:                                ; preds = %bb.fi, %.lr.ph.i.i.i470.i
  %.05.i.i.i471.i = phi i32 [ %i.ajf, %.lr.ph.i.i.i470.i ], [ %i.cs, %bb.fi ]
  %i.ajf = add nsw i32 %.05.i.i.i471.i, -1        ; 3 uses
  %i.ajg = shl nsw i32 %i.ajf, 3
  %i.ajh = lshr i32 134, %i.ajg
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ajh) #14
  %.not.i.i.i472.i = icmp eq i32 %i.ajf, 0
  br i1 %.not.i.i.i472.i, label %.lr.ph.i.i112, label %.lr.ph.i.i.i470.i, !llvm.loop !0

.lr.ph.i.i112:                                    ; preds = %.lr.ph.i.i.i470.i, %bb.fi
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 136) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.70, i32 noundef 8) #14
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i.i112, %bb.fh
  %i.aji = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.fy, i32 noundef 225, i64 noundef 42) ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ga, i64 132
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !259
  %i.ajl = sext i32 %i.ajk to i64                 ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fk, %bb.fj
  %indvars.iv.i475.i = phi i64 [ %indvars.iv.next.i479.i, %bb.fk ], [ 1, %bb.fj ] ; 3 uses
  %.0.i477.i = phi i64 [ %i.ajm, %bb.fk ], [ %i.ajl, %bb.fj ]
  %i.ajm = lshr i64 %.0.i477.i, 8                 ; 2 uses
  %.not.i478.i = icmp eq i64 %i.ajm, 0
  %indvars.iv.next.i479.i = add nuw nsw i64 %indvars.iv.i475.i, 1
  br i1 %.not.i478.i, label %bb.fl, label %bb.fk, !llvm.loop !2

bb.fl:                                            ; preds = %bb.fk
  %i.ajn = extractvalue { i64, i32 } %i.aji, 0    ; 2 uses
  %i.ajo = extractvalue { i64, i32 } %i.aji, 1    ; 2 uses
  br i1 %.not4.i.i480.i, label %put_ebml_id.exit.i484.i, label %.lr.ph.i.i481.i

.lr.ph.i.i481.i:                                  ; preds = %bb.fl, %.lr.ph.i.i481.i
  %.05.i.i482.i = phi i32 [ %i.ajp, %.lr.ph.i.i481.i ], [ %i.dl, %bb.fl ]
  %i.ajp = add nsw i32 %.05.i.i482.i, -1          ; 3 uses
  %i.ajq = shl nsw i32 %i.ajp, 3
  %i.ajr = lshr i32 159, %i.ajq
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ajr) #14
  %.not.i.i483.i = icmp eq i32 %i.ajp, 0
  br i1 %.not.i.i483.i, label %put_ebml_id.exit.i484.i, label %.lr.ph.i.i481.i, !llvm.loop !0

put_ebml_id.exit.i484.i:                          ; preds = %.lr.ph.i.i481.i, %bb.fl
  %i.ajs = and i64 %indvars.iv.i475.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.ajs, i32 noundef 0)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fm, %put_ebml_id.exit.i484.i
  %indvars.iv16.i485.i = phi i64 [ %indvars.iv.i475.i, %put_ebml_id.exit.i484.i ], [ %indvars.iv.next17.i486.i, %bb.fm ] ; 2 uses
  %indvars.iv.next17.i486.i = add nsw i64 %indvars.iv16.i485.i, -1 ; 2 uses
  %i.ajt = shl nuw nsw i64 %indvars.iv.next17.i486.i, 3
  %i.aju = lshr i64 %i.ajl, %i.ajt
  %i.ajv = trunc i64 %i.aju to i32
  %i.ajw = and i32 %i.ajv, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ajw) #14
  %i.ajx = icmp sgt i64 %indvars.iv16.i485.i, 1
  br i1 %i.ajx, label %bb.fm, label %put_ebml_uint.exit487.i, !llvm.loop !3

put_ebml_uint.exit487.i:                          ; preds = %bb.fm
  %i.ajy = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  store i64 %i.ajy, ptr %i.ajz, align 8, !tbaa !120
  %i.aka = sitofp nsz i32 %.0570.i to double
  br i1 %.not4.i.i488.i, label %put_ebml_float.exit.i, label %.lr.ph.i.i489.i

.lr.ph.i.i489.i:                                  ; preds = %put_ebml_uint.exit487.i, %.lr.ph.i.i489.i
  %.05.i.i490.i = phi i32 [ %i.akb, %.lr.ph.i.i489.i ], [ %i.dp, %put_ebml_uint.exit487.i ]
  %i.akb = add nsw i32 %.05.i.i490.i, -1          ; 3 uses
  %i.akc = shl nsw i32 %i.akb, 3
  %i.akd = lshr i32 181, %i.akc
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.akd) #14
  %.not.i.i491.i = icmp eq i32 %i.akb, 0
  br i1 %.not.i.i491.i, label %put_ebml_float.exit.i, label %.lr.ph.i.i489.i, !llvm.loop !0

put_ebml_float.exit.i:                            ; preds = %.lr.ph.i.i489.i, %put_ebml_uint.exit487.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 136) #14
  %i.ake = bitcast double %i.aka to i64
  call void @avio_wb64(ptr noundef %i.fy, i64 noundef %i.ake) #14
  %.not263.i = icmp eq i32 %.0.i95, 0
  br i1 %.not263.i, label %bb.fn, label %.lr.ph.i.i494.i

.lr.ph.i.i494.i:                                  ; preds = %put_ebml_float.exit.i, %.lr.ph.i.i494.i
  %.05.i.i495.i = phi i32 [ %i.akf, %.lr.ph.i.i494.i ], [ %i.dt, %put_ebml_float.exit.i ]
  %i.akf = add nsw i32 %.05.i.i495.i, -1          ; 3 uses
  %i.akg = shl nsw i32 %i.akf, 3
  %i.akh = lshr i32 30901, %i.akg
  %i.aki = and i32 %i.akh, 253
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.aki) #14
  %.not.i.i496.i = icmp eq i32 %i.akf, 0
  br i1 %.not.i.i496.i, label %put_ebml_float.exit498.i, label %.lr.ph.i.i494.i, !llvm.loop !0

put_ebml_float.exit498.i:                         ; preds = %.lr.ph.i.i494.i
  %i.akj = sitofp nsz i32 %.0.i95 to double
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 136) #14
  %i.akk = bitcast double %i.akj to i64
  call void @avio_wb64(ptr noundef %i.fy, i64 noundef %i.akk) #14
  br label %bb.fn

bb.fn:                                            ; preds = %put_ebml_float.exit498.i, %put_ebml_float.exit.i
  %i.akl = load i32, ptr %i.ahi, align 4, !tbaa !84
  %i.akm = call i32 @av_get_bits_per_sample(i32 noundef %i.akl) #14 ; 2 uses
  %.not264.i = icmp eq i32 %i.akm, 0
  br i1 %.not264.i, label %bb.fo, label %.thread615.i

bb.fo:                                            ; preds = %bb.fn
  %i.akn = load i32, ptr %i.ahi, align 4, !tbaa !84
  %.not265.i = icmp eq i32 %i.akn, 69643
  br i1 %.not265.i, label %.thread611.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ga, i64 60
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !260 ; 2 uses
  %.not266.i = icmp eq i32 %i.akp, 0
  br i1 %.not266.i, label %bb.fq, label %.thread615.i

bb.fq:                                            ; preds = %bb.fp
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !219
  %i.aks = call i32 @av_get_bytes_per_sample(i32 noundef %i.akr) #14
  %i.akt = shl i32 %i.aks, 3                      ; 2 uses
  %.not267.i = icmp eq i32 %i.akt, 0
  br i1 %.not267.i, label %.thread611.i, label %.thread615.i

.thread611.i:                                     ; preds = %bb.fq, %bb.fo
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !261 ; 2 uses
  %.not268.i = icmp eq i32 %i.akv, 0
  br i1 %.not268.i, label %put_ebml_uint.exit511.i, label %.thread615.i

.thread615.i:                                     ; preds = %.thread611.i, %bb.fq, %bb.fp, %bb.fn
  %.1209618.i = phi i32 [ %i.akv, %.thread611.i ], [ %i.akt, %bb.fq ], [ %i.akp, %bb.fp ], [ %i.akm, %bb.fn ]
  %i.akw = sext i32 %.1209618.i to i64            ; 2 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fr, %.thread615.i
  %indvars.iv.i499.i = phi i64 [ %indvars.iv.next.i503.i, %bb.fr ], [ 1, %.thread615.i ] ; 3 uses
  %.0.i501.i = phi i64 [ %i.akx, %bb.fr ], [ %i.akw, %.thread615.i ]
  %i.akx = lshr i64 %.0.i501.i, 8                 ; 2 uses
  %.not.i502.i = icmp eq i64 %i.akx, 0
  %indvars.iv.next.i503.i = add nuw nsw i64 %indvars.iv.i499.i, 1
  br i1 %.not.i502.i, label %.lr.ph.i.i505.i, label %bb.fr, !llvm.loop !2

.lr.ph.i.i505.i:                                  ; preds = %bb.fr, %.lr.ph.i.i505.i
  %.05.i.i506.i = phi i32 [ %i.aky, %.lr.ph.i.i505.i ], [ %i.dx, %bb.fr ]
  %i.aky = add nsw i32 %.05.i.i506.i, -1          ; 3 uses
  %i.akz = shl nsw i32 %i.aky, 3
  %i.ala = lshr i32 25188, %i.akz
  %i.alb = and i32 %i.ala, 102
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.alb) #14
  %.not.i.i507.i = icmp eq i32 %i.aky, 0
  br i1 %.not.i.i507.i, label %put_ebml_id.exit.i508.i, label %.lr.ph.i.i505.i, !llvm.loop !0

put_ebml_id.exit.i508.i:                          ; preds = %.lr.ph.i.i505.i
  %i.alc = and i64 %indvars.iv.i499.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.alc, i32 noundef 0)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %put_ebml_id.exit.i508.i
  %indvars.iv16.i509.i = phi i64 [ %indvars.iv.i499.i, %put_ebml_id.exit.i508.i ], [ %indvars.iv.next17.i510.i, %bb.fs ] ; 2 uses
  %indvars.iv.next17.i510.i = add nsw i64 %indvars.iv16.i509.i, -1 ; 2 uses
  %i.ald = shl nuw nsw i64 %indvars.iv.next17.i510.i, 3
  %i.ale = lshr i64 %i.akw, %i.ald
  %i.alf = trunc i64 %i.ale to i32
  %i.alg = and i32 %i.alf, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.alg) #14
  %i.alh = icmp sgt i64 %indvars.iv16.i509.i, 1
  br i1 %i.alh, label %bb.fs, label %put_ebml_uint.exit511.i, !llvm.loop !3

put_ebml_uint.exit511.i:                          ; preds = %bb.fs, %.thread611.i
  %i.ali = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.alj = sext i32 %i.ajo to i64
  %i.alk = sub nsw i64 %i.ajn, %i.alj
  %i.all = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.alk, i32 noundef 0) #14
  %i.alm = icmp slt i64 %i.all, 0
  br i1 %i.alm, label %end_ebml_master.exit.i, label %bb.ft

bb.ft:                                            ; preds = %put_ebml_uint.exit511.i
  %i.aln = sub nsw i64 %i.ali, %i.ajn
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aln, i32 noundef range(i32 -2147483647, -2147483648) %i.ajo)
  %i.alo = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.ali, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit.i

bb.fu:                                            ; preds = %.loopexit627.i
  %.not256.i = icmp eq i32 %.1203.i, 0
  br i1 %.not256.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !84
  %i.alr = call ptr @avcodec_get_name(i32 noundef %i.alq) #14
  %i.als = load i32, ptr %i.alp, align 4, !tbaa !84
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.71, ptr noundef %i.alr, i32 noundef %i.als) #14
  br label %start_ebml_master_crc32.exit

bb.fw:                                            ; preds = %bb.fu
  %i.alt = load i32, ptr %i.cn, align 8, !tbaa !45
  %i.alu = icmp eq i32 %i.alt, 2
  br i1 %i.alu, label %.thread621.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.alv = load i32, ptr %i.fr, align 8, !tbaa !203
  %i.alw = and i32 %i.alv, 131072
  %.not257.i = icmp eq i32 %i.alw, 0
  br i1 %.not257.i, label %.thread.i, label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %bb.fx, %.lr.ph.i.i105
  %.05.i.i = phi i32 [ %i.alx, %.lr.ph.i.i105 ], [ %i.cm, %bb.fx ]
  %i.alx = add nsw i32 %.05.i.i, -1               ; 3 uses
  %i.aly = shl nsw i32 %i.alx, 3
  %i.alz = lshr i32 21933, %i.aly
  %i.ama = and i32 %i.alz, 253
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ama) #14
  %.not.i.i106 = icmp eq i32 %i.alx, 0
  br i1 %.not.i.i106, label %put_ebml_id.exit.i, label %.lr.ph.i.i105, !llvm.loop !0

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i105
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  %.pr620.pre.i = load i32, ptr %i.cn, align 8, !tbaa !45
  %i.amb = icmp eq i32 %.pr620.pre.i, 2
  br i1 %i.amb, label %.thread621.i, label %.thread.i

.thread621.i:                                     ; preds = %put_ebml_id.exit.i, %bb.fw
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !84
  %.not258.i = icmp eq i32 %i.amd, 94226
  br i1 %.not258.i, label %bb.fy, label %.thread.i

.thread.i:                                        ; preds = %.thread621.i, %put_ebml_id.exit.i, %bb.fx
  br label %bb.fy

bb.fy:                                            ; preds = %.thread.i, %.thread621.i
  %.2204.i = phi i32 [ 17, %.thread.i ], [ %.1203.i, %.thread621.i ] ; 2 uses
  br i1 %.not4.i.i517.i, label %.lr.ph.i.i, label %.lr.ph.i.i518.i

.lr.ph.i.i518.i:                                  ; preds = %bb.fy, %.lr.ph.i.i518.i
  %.05.i.i519.i = phi i32 [ %i.ame, %.lr.ph.i.i518.i ], [ %i.cw, %bb.fy ]
  %i.ame = add nsw i32 %.05.i.i519.i, -1          ; 3 uses
  %i.amf = shl nsw i32 %i.ame, 3
  %i.amg = lshr i32 131, %i.amf
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.amg) #14
  %.not.i.i520.i = icmp eq i32 %i.ame, 0
  br i1 %.not.i.i520.i, label %.lr.ph.i.i, label %.lr.ph.i.i518.i, !llvm.loop !0

bb.fz:                                            ; preds = %.loopexit627.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.72) #14
  br label %start_ebml_master_crc32.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i518.i, %bb.fy
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %.2204.i) #14
  br label %end_ebml_master.exit.i

end_ebml_master.exit.i:                           ; preds = %.lr.ph.i.i, %bb.ft, %put_ebml_uint.exit511.i, %mkv_write_track_video.exit.i
  %.1207.i = phi i32 [ %.0206594.i, %mkv_write_track_video.exit.i ], [ 0, %bb.ft ], [ 0, %put_ebml_uint.exit511.i ], [ 0, %.lr.ph.i.i ]
  %.3205.i = phi i32 [ %.1203.i, %mkv_write_track_video.exit.i ], [ %.1203.i, %bb.ft ], [ %.1203.i, %put_ebml_uint.exit511.i ], [ %.2204.i, %.lr.ph.i.i ]
  %i.amh = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 144
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !80
  %i.amk = and i32 %i.amj, 1
  %.not.i525.i = icmp eq i32 %i.amk, 0
  br i1 %.not.i525.i, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %end_ebml_master.exit.i
  %i.aml = load i32, ptr %i.dd, align 4, !tbaa !68
  %.not48.i.i = icmp eq i32 %i.aml, 0
  br i1 %.not48.i.i, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.amm = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14
  %i.amn = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  store i64 %i.amm, ptr %i.amn, align 8, !tbaa !140
  br label %.lr.ph.i.i.i527.i

.lr.ph.i.i.i527.i:                                ; preds = %.lr.ph.i.i.i527.i, %bb.gb
  %.05.i.i.i528.i = phi i32 [ %i.amo, %.lr.ph.i.i.i527.i ], [ %i.cm, %bb.gb ]
  %i.amo = add nsw i32 %.05.i.i.i528.i, -1        ; 3 uses
  %i.amp = shl nsw i32 %i.amo, 3
  %i.amq = lshr i32 21998, %i.amp
  %i.amr = and i32 %i.amq, 255
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.amr) #14
  %.not.i.i.i529.i = icmp eq i32 %i.amo, 0
  br i1 %.not.i.i.i529.i, label %.lr.ph.i.i564.i, label %.lr.ph.i.i.i527.i, !llvm.loop !0

.lr.ph.i.i564.i:                                  ; preds = %.lr.ph.i.i.i527.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 129) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  %i.ams = load i32, ptr %i.ga, align 8, !tbaa !87
  %i.amt = icmp eq i32 %i.ams, 0
  br i1 %i.amt, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.lr.ph.i.i564.i
  br i1 %.not4.i.i.i531.i, label %put_ebml_void.exit.i.i, label %.lr.ph.i.i51.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %bb.gc, %.lr.ph.i.i51.i.i
  %.05.i.i52.i.i = phi i32 [ %i.amu, %.lr.ph.i.i51.i.i ], [ %i.fi, %bb.gc ]
  %i.amu = add nsw i32 %.05.i.i52.i.i, -1         ; 3 uses
  %i.amv = shl nsw i32 %i.amu, 3
  %i.amw = lshr i32 236, %i.amv
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.amw) #14
  %.not.i.i53.i.i = icmp eq i32 %i.amu, 0
  br i1 %.not.i.i53.i.i, label %put_ebml_void.exit.i.i, label %.lr.ph.i.i51.i.i, !llvm.loop !0

put_ebml_void.exit.i.i:                           ; preds = %.lr.ph.i.i51.i.i, %bb.gc
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 1) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 0) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 2) #14
  call void @ffio_fill(ptr noundef %i.fy, i32 noundef 0, i64 noundef 2) #14
  br label %bb.gd

bb.gd:                                            ; preds = %put_ebml_void.exit.i.i, %.lr.ph.i.i564.i, %bb.ga, %end_ebml_master.exit.i
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 2 uses
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !212
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ga, i64 40 ; 2 uses
  %i.ana = load i32, ptr %i.amz, align 8, !tbaa !213
  %i.anb = call ptr @av_packet_side_data_get(ptr noundef %i.amy, i32 noundef %i.ana, i32 noundef 29) #14 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.anb, null
  br i1 %.not49.i.i, label %mkv_write_blockadditionmapping.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !215 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 2
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !263 ; 2 uses
  %i.anf = icmp ult i8 %i.ane, 11
  br i1 %i.anf, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @ff_isom_put_dvcc_dvvc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.anc) #14
  %i.ang = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.fy, i32 noundef 16868, i64 noundef 63) ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.gf
  %.05.i.i.i.i.i = phi i32 [ %i.anh, %.lr.ph.i.i.i.i.i ], [ %i.fm, %bb.gf ]
  %i.anh = add nsw i32 %.05.i.i.i.i.i, -1         ; 3 uses
  %i.ani = shl nsw i32 %i.anh, 3
  %i.anj = lshr i32 16804, %i.ani
  %i.ank = and i32 %i.anj, 229
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ank) #14
  %.not.i.i.i.i.i = icmp eq i32 %i.anh, 0
  br i1 %.not.i.i.i.i.i, label %put_ebml_string.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

put_ebml_string.exit.i.i:                         ; preds = %.lr.ph.i.i.i.i.i
  %i.anl = icmp samesign ugt i8 %i.ane, 7
  %..i.i = select i1 %i.anl, i64 1685485123, i64 1685480259
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 154) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.82, i32 noundef 26) #14
  br label %.lr.ph.i.i61.i.i

.lr.ph.i.i61.i.i:                                 ; preds = %put_ebml_string.exit.i.i, %.lr.ph.i.i61.i.i
  %.05.i.i62.i.i = phi i32 [ %i.anm, %.lr.ph.i.i61.i.i ], [ %i.fm, %put_ebml_string.exit.i.i ]
  %i.anm = add nsw i32 %.05.i.i62.i.i, -1         ; 3 uses
  %i.ann = shl nsw i32 %i.anm, 3
  %i.ano = lshr i32 16871, %i.ann
  %i.anp = and i32 %i.ano, 231
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.anp) #14
  %.not.i.i63.i.i = icmp eq i32 %i.anm, 0
  br i1 %.not.i.i63.i.i, label %put_ebml_id.exit.i64.i.i, label %.lr.ph.i.i61.i.i, !llvm.loop !0

put_ebml_id.exit.i64.i.i:                         ; preds = %.lr.ph.i.i61.i.i
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef 4, i32 noundef 0)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gg, %put_ebml_id.exit.i64.i.i
  %indvars.iv16.i65.i.i = phi i64 [ 4, %put_ebml_id.exit.i64.i.i ], [ %indvars.iv.next17.i66.i.i, %bb.gg ] ; 2 uses
  %indvars.iv.next17.i66.i.i = add nsw i64 %indvars.iv16.i65.i.i, -1 ; 2 uses
  %i.anq = shl nuw nsw i64 %indvars.iv.next17.i66.i.i, 3
  %i.anr = lshr i64 %..i.i, %i.anq
  %i.ans = trunc nuw nsw i64 %i.anr to i32
  %i.ant = and i32 %i.ans, 119
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.ant) #14
  %i.anu = icmp sgt i64 %indvars.iv16.i65.i.i, 1
  br i1 %i.anu, label %bb.gg, label %.lr.ph.i.i69.i.i, !llvm.loop !3

.lr.ph.i.i69.i.i:                                 ; preds = %bb.gg, %.lr.ph.i.i69.i.i
  %.05.i.i70.i.i = phi i32 [ %i.anv, %.lr.ph.i.i69.i.i ], [ %i.fm, %bb.gg ]
  %i.anv = add nsw i32 %.05.i.i70.i.i, -1         ; 3 uses
  %i.anw = shl nsw i32 %i.anv, 3
  %i.anx = lshr i32 16877, %i.anw
  %i.any = and i32 %i.anx, 237
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.any) #14
  %.not.i.i71.i.i = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i71.i.i, label %.lr.ph.i.i107.i.i, label %.lr.ph.i.i69.i.i, !llvm.loop !0

.lr.ph.i.i107.i.i:                                ; preds = %.lr.ph.i.i69.i.i
  %i.anz = extractvalue { i64, i32 } %i.ang, 0    ; 2 uses
  %i.aoa = extractvalue { i64, i32 } %i.ang, 1    ; 2 uses
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 152) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull %i.a, i32 noundef 24) #14
  %i.aob = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.aoc = sext i32 %i.aoa to i64
  %i.aod = sub nsw i64 %i.anz, %i.aoc
  %i.aoe = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aod, i32 noundef 0) #14
  %i.aof = icmp slt i64 %i.aoe, 0
  br i1 %i.aof, label %end_ebml_master.exit.i.i, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph.i.i107.i.i
  %i.aog = sub nsw i64 %i.aob, %i.anz
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aog, i32 noundef range(i32 -2147483647, -2147483648) %i.aoa)
  %i.aoh = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aob, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit.i.i

end_ebml_master.exit.i.i:                         ; preds = %bb.gh, %.lr.ph.i.i107.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.gi

bb.gi:                                            ; preds = %end_ebml_master.exit.i.i, %bb.ge
  %i.aoi = load ptr, ptr %i.amx, align 8, !tbaa !212
  %i.aoj = load i32, ptr %i.amz, align 8, !tbaa !213
  %i.aok = call ptr @av_packet_side_data_get(ptr noundef %i.aoi, i32 noundef %i.aoj, i32 noundef 42) #14 ; 3 uses
  %.not50.i.i = icmp eq ptr %i.aok, null
  br i1 %.not50.i.i, label %mkv_write_blockadditionmapping.exit.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 8 ; 2 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !222 ; 2 uses
  %i.aon = add i64 %i.aom, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.03.i.i.i.i = phi i64 [ %i.aon, %bb.gj ], [ %i.aop, %bb.gk ]
  %.0.i.i.i.i = phi i32 [ 0, %bb.gj ], [ %i.aoo, %bb.gk ] ; 2 uses
  %i.aoo = add nuw nsw i32 %.0.i.i.i.i, 1
  %i.aop = lshr i64 %.03.i.i.i.i, 7               ; 2 uses
  %.not.i.i73.i.i = icmp eq i64 %i.aop, 0
  br i1 %.not.i.i73.i.i, label %ebml_length_size.exit.i.i, label %bb.gk, !llvm.loop !5

ebml_length_size.exit.i.i:                        ; preds = %bb.gk
  %i.aoq = add nuw nsw i32 %.0.i.i.i.i, 3
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = add i64 %i.aom, 46
  %i.aot = add i64 %i.aos, %i.aor
  %i.aou = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.fy, i32 noundef 16868, i64 noundef %i.aot) ; 2 uses
  br label %.lr.ph.i.i.i74.i.i

.lr.ph.i.i.i74.i.i:                               ; preds = %.lr.ph.i.i.i74.i.i, %ebml_length_size.exit.i.i
  %.05.i.i.i75.i.i = phi i32 [ %i.aov, %.lr.ph.i.i.i74.i.i ], [ %i.fm, %ebml_length_size.exit.i.i ]
  %i.aov = add nsw i32 %.05.i.i.i75.i.i, -1       ; 3 uses
  %i.aow = shl nsw i32 %i.aov, 3
  %i.aox = lshr i32 16804, %i.aow
  %i.aoy = and i32 %i.aox, 229
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.aoy) #14
  %.not.i.i.i76.i.i = icmp eq i32 %i.aov, 0
  br i1 %.not.i.i.i76.i.i, label %.lr.ph.i.i546.i, label %.lr.ph.i.i.i74.i.i, !llvm.loop !0

.lr.ph.i.i546.i:                                  ; preds = %.lr.ph.i.i.i74.i.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 164) #14
  call void @avio_write(ptr noundef %i.fy, ptr noundef nonnull @.str.83, i32 noundef 36) #14
  br label %.lr.ph.i.i85.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %.lr.ph.i.i85.i.i, %.lr.ph.i.i546.i
  %.05.i.i86.i.i = phi i32 [ %i.aoz, %.lr.ph.i.i85.i.i ], [ %i.fm, %.lr.ph.i.i546.i ]
  %i.aoz = add nsw i32 %.05.i.i86.i.i, -1         ; 3 uses
  %i.apa = shl nsw i32 %i.aoz, 3
  %i.apb = lshr i32 16871, %i.apa
  %i.apc = and i32 %i.apb, 231
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.apc) #14
  %.not.i.i87.i.i = icmp eq i32 %i.aoz, 0
  br i1 %.not.i.i87.i.i, label %.lr.ph.i.i538.i, label %.lr.ph.i.i85.i.i, !llvm.loop !0

.lr.ph.i.i538.i:                                  ; preds = %.lr.ph.i.i85.i.i
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 132) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 104) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 118) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 99) #14
  call void @avio_w8(ptr noundef %i.fy, i32 noundef 69) #14
  %i.apd = load ptr, ptr %i.aok, align 8, !tbaa !215
  %i.ape = load i64, ptr %i.aol, align 8, !tbaa !222 ; 2 uses
  br label %.lr.ph.i.i93.i.i

.lr.ph.i.i93.i.i:                                 ; preds = %.lr.ph.i.i93.i.i, %.lr.ph.i.i538.i
  %.05.i.i94.i.i = phi i32 [ %i.apf, %.lr.ph.i.i93.i.i ], [ %i.fm, %.lr.ph.i.i538.i ]
  %i.apf = add nsw i32 %.05.i.i94.i.i, -1         ; 3 uses
  %i.apg = shl nsw i32 %i.apf, 3
  %i.aph = lshr i32 16877, %i.apg
  %i.api = and i32 %i.aph, 237
  call void @avio_w8(ptr noundef %i.fy, i32 noundef %i.api) #14
  %.not.i.i95.i.i = icmp eq i32 %i.apf, 0
  br i1 %.not.i.i95.i.i, label %put_ebml_binary.exit97.i.i, label %.lr.ph.i.i93.i.i, !llvm.loop !0

put_ebml_binary.exit97.i.i:                       ; preds = %.lr.ph.i.i93.i.i
  %i.apj = extractvalue { i64, i32 } %i.aou, 0    ; 2 uses
  %i.apk = extractvalue { i64, i32 } %i.aou, 1    ; 2 uses
  %i.apl = trunc i64 %i.ape to i32
  %sext.i526.i = shl i64 %i.ape, 32
  %i.apm = ashr exact i64 %sext.i526.i, 32
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.apm, i32 noundef 0)
  call void @avio_write(ptr noundef %i.fy, ptr noundef %i.apd, i32 noundef %i.apl) #14
  %i.apn = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.apo = sext i32 %i.apk to i64
  %i.app = sub nsw i64 %i.apj, %i.apo
  %i.apq = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.app, i32 noundef 0) #14
  %i.apr = icmp slt i64 %i.apq, 0
  br i1 %i.apr, label %end_ebml_master.exit98.i.i, label %bb.gl

bb.gl:                                            ; preds = %put_ebml_binary.exit97.i.i
  %i.aps = sub nsw i64 %i.apn, %i.apj
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aps, i32 noundef range(i32 -2147483647, -2147483648) %i.apk)
  %i.apt = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.apn, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit98.i.i

end_ebml_master.exit98.i.i:                       ; preds = %bb.gl, %put_ebml_binary.exit97.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.apv = load i64, ptr %i.apu, align 8, !tbaa !139
  %spec.select.i.i = call i64 @llvm.umax.i64(i64 %i.apv, i64 1)
  store i64 %spec.select.i.i, ptr %i.apu, align 8, !tbaa !139
  br label %mkv_write_blockadditionmapping.exit.i

mkv_write_blockadditionmapping.exit.i:            ; preds = %end_ebml_master.exit98.i.i, %bb.gi, %bb.gd
  %i.apw = load i32, ptr %i.cn, align 8, !tbaa !45
  %i.apx = icmp eq i32 %i.apw, 2
  br i1 %i.apx, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %mkv_write_blockadditionmapping.exit.i
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !84
  %.not274.i = icmp eq i32 %i.apz, 94226
  br i1 %.not274.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %mkv_write_blockadditionmapping.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.aqa = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14
  %i.aqb = trunc i64 %i.aqa to i32
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  store i32 %i.aqb, ptr %i.aqc, align 8, !tbaa !157
  %i.aqd = load ptr, ptr %i.fn, align 8, !tbaa !119
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !96
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !97
  %i.aqi = call fastcc i32 @mkv_assemble_codecprivate(ptr noundef nonnull %0, ptr noundef %i.aqd, ptr noundef nonnull %i.ga, ptr noundef %i.aqf, i32 noundef %i.aqh, i32 noundef %.3205.i, i32 noundef %.1207.i, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h) ; 2 uses
  %i.aqj = icmp slt i32 %i.aqi, 0
  br i1 %i.aqj, label %start_ebml_master_crc32.exit.loopexit, label %.thread622.i

.thread622.i:                                     ; preds = %bb.gn
  %i.aqk = load i32, ptr %i.h, align 4, !tbaa !55 ; 2 uses
  %i.aql = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.aqm = load i32, ptr %i.g, align 4, !tbaa !55
  call fastcc void @mkv_put_codecprivate(ptr noundef %i.fy, i32 noundef %i.aqk, ptr noundef %i.aql, i32 noundef %i.aqm)
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.fx, i64 84
  store i32 %i.aqk, ptr %i.aqn, align 4, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.go

bb.go:                                            ; preds = %.thread622.i, %bb.gm
  %i.aqo = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.aqp = sext i32 %i.gk to i64
  %i.aqq = sub nsw i64 %i.gj, %i.aqp
  %i.aqr = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aqq, i32 noundef 0) #14
  %i.aqs = icmp slt i64 %i.aqr, 0
  br i1 %i.aqs, label %mkv_write_track.exit.thread, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aqt = sub nsw i64 %i.aqo, %i.gj
  call fastcc void @put_ebml_length(ptr noundef %i.fy, i64 noundef %i.aqt, i32 noundef range(i32 -2147483647, -2147483648) %i.gk)
  %i.aqu = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef %i.aqo, i32 noundef 0) #14 ; 0 uses
  br label %mkv_write_track.exit.thread

mkv_write_track.exit.thread:                      ; preds = %bb.go, %bb.gp
  %i.aqv = load ptr, ptr %i.fn, align 8, !tbaa !119
  call void @ffio_reset_dyn_buf(ptr noundef %i.aqv) #14
  br label %mkv_write_track.exit.thread222

mkv_write_track.exit.thread222:                   ; preds = %mkv_write_track.exit.thread, %bb.n
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.aqw = load i32, ptr %i.o, align 4, !tbaa !47
  %i.aqx = zext i32 %i.aqw to i64
  %i.aqy = icmp samesign ult i64 %indvars.iv.next281, %i.aqx
  br i1 %i.aqy, label %bb.n, label %._crit_edge259, !llvm.loop !201

._crit_edge259:                                   ; preds = %mkv_write_track.exit.thread222, %bb.m
  %i.aqz = call fastcc i32 @end_ebml_master_crc32_tentatively(ptr noundef %i.l, ptr noundef nonnull %i.r, ptr noundef %i.j, i32 noundef 374648427)
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit.loopexit:            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.ara = load ptr, ptr %i.fn, align 8, !tbaa !119
  call void @ffio_reset_dyn_buf(ptr noundef %i.ara) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit:                     ; preds = %start_ebml_master_crc32.exit.loopexit, %.thread580.i, %bb.fv, %bb.ey, %mkv_write_track_video.exit.thread.i, %get_aac_sample_rates.exit.i, %bb.fz, %bb.aj, %bb.c, %bb.a, %._crit_edge259
  %.279 = phi i32 [ %i.aqz, %._crit_edge259 ], [ 0, %bb.a ], [ -22, %bb.aj ], [ %i.t, %bb.c ], [ -22, %.thread580.i ], [ -38, %bb.fv ], [ -22, %bb.ey ], [ %.3.i.ph.i, %mkv_write_track_video.exit.thread.i ], [ -22, %get_aac_sample_rates.exit.i ], [ -22, %bb.fz ], [ %i.aqi, %start_ebml_master_crc32.exit.loopexit ]
  ret i32 %.279
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mkv_write_chapters(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %1 = alloca [7 x %struct.EbmlElement], align 16 ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !267
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %start_ebml_master_crc32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !268
  %.not74 = icmp eq i32 %i.j, 0
  br i1 %.not74, label %bb.c, label %start_ebml_master_crc32.exit

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %start_ebml_master_crc32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %.not6.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.q = zext i8 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, 7
  %i.s = lshr i32 %i.r, 3                         ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.t, %.lr.ph.i.i.i ], [ %i.s, %bb.e ]
  %i.t = add nsw i32 %.05.i.i.i, -1               ; 3 uses
  %i.u = shl nsw i32 %i.t, 3
  %i.v = lshr i32 236, %i.u
  call void @avio_w8(ptr noundef %i.o, i32 noundef %i.v) #14
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i.i, %bb.e
  call void @avio_w8(ptr noundef %i.o, i32 noundef 132) #14
  call void @ffio_fill(ptr noundef %i.o, i32 noundef 0, i64 noundef 4) #14
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i7.i, %bb.d
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.x = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.w, i32 noundef 17849, i64 noundef 0) ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, i32 } %i.x, 1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !45
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 69), align 1, !tbaa !56
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 15
  %i.ah = lshr i32 %i.ag, 3
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ %i.ah, %bb.g ]
  %i.ai = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.aj = shl nsw i32 %i.ai, 3
  %i.ak = lshr i32 17883, %i.aj
  %i.al = and i32 %i.ak, 223
  call void @avio_w8(ptr noundef %i.ad, i32 noundef %i.al) #14
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %put_ebml_id.exit.i, label %.lr.ph.i.i, !llvm.loop !0

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i
  call fastcc void @put_ebml_length(ptr noundef %i.ad, i64 noundef 1, i32 noundef 0)
  call void @avio_w8(ptr noundef %i.ad, i32 noundef 1) #14
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101
  %.not75 = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ap = select i1 %.not75, ptr %i.ao, ptr %i.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %put_ebml_id.exit.i
  %.060 = phi ptr [ %i.ap, %put_ebml_id.exit.i ], [ null, %bb.f ] ; 4 uses
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !267 ; 2 uses
  %.not30.i = icmp eq i32 %i.aq, 0
  br i1 %.not30.i, label %.thread115, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !269 ; 2 uses
  %wide.trip.count36.i = zext i32 %i.aq to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next34.i, %._crit_edge.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv33.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !271
  %i.av = load i64, ptr %i.au, align 8, !tbaa !273 ; 2 uses
  %.not.i84.not.not = icmp ne i64 %i.av, 0        ; 3 uses
  br i1 %.not.i84.not.not, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.i
  %.not1823.not.i = icmp eq i64 %indvars.iv33.i, 0
  br i1 %.not1823.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i86, %indvars.iv33.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !264

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i86, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i85
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !271
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !273
  %i.az = icmp eq i64 %i.ay, %i.av
  br i1 %i.az, label %.lr.ph, label %bb.j

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count36.i
  br i1 %exitcond37.not.i, label %.lr.ph, label %bb.i, !llvm.loop !265

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.i, %.lr.ph.i
  %.not76 = phi i1 [ false, %.lr.ph.i ], [ %.not.i84.not.not, %bb.i ], [ %.not.i84.not.not, %._crit_edge.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.not78 = icmp eq ptr %.060, null
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !269
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !271 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !274
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = call i64 @av_rescale_q(i64 noundef %i.bv, i64 %i.bx, i64 4294967296000000001) #16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !275
  %i.cb = call i64 @av_rescale_q(i64 noundef %i.ca, i64 %i.bx, i64 4294967296000000001) #16 ; 3 uses
  br i1 %.not76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add nuw nsw i64 %indvars.iv, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cd = load i64, ptr %i.bt, align 8, !tbaa !273
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ce = phi i64 [ %i.cc, %bb.l ], [ %i.cd, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.cf = icmp slt i64 %i.by, 0
  %i.cg = icmp sgt i64 %i.by, %i.cb
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.92, i64 noundef %i.by, i64 noundef %i.cb) #14
  br label %.thread118

bb.p:                                             ; preds = %bb.n
  store i32 182, ptr %1, align 16, !tbaa !53
  store i32 7, ptr %i.bb, align 4, !tbaa !54
  store <4 x i32> <i32 -1, i32 -1, i32 29636, i32 0>, ptr %i.bc, align 8, !tbaa !55
  store i64 %i.ce, ptr %i.bd, align 8, !tbaa !56
  store i32 145, ptr %i.be, align 16, !tbaa !53
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  store i64 %i.by, ptr %i.bg, align 8, !tbaa !56
  store i32 146, ptr %i.bh, align 16, !tbaa !53
  store i32 0, ptr %i.bi, align 4, !tbaa !54
  store i64 %i.cb, ptr %i.bj, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !276
  %i.cj = call ptr @av_dict_get(ptr noundef %i.ci, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not77 = icmp eq ptr %i.cj, null
  br i1 %.not77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 128, ptr %i.bk, align 16, !tbaa !53
  store i32 7, ptr %i.bl, align 4, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !63
  store <4 x i32> <i32 -1, i32 0, i32 133, i32 4>, ptr %i.bm, align 8, !tbaa !55
  store ptr %i.cl, ptr %i.bn, align 8, !tbaa !56
  store i32 17276, ptr %i.bo, align 16, !tbaa !53
  store i32 4, ptr %i.bp, align 4, !tbaa !54
  store ptr @.str.60, ptr %i.bq, align 8, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0 = phi i32 [ 4, %bb.p ], [ 7, %bb.q ]
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.cn = call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %1, i32 noundef %.sroa.0.0) ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %.thread118, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %1, ptr noundef %i.cm) ; 0 uses
  br i1 %.not78, label %.thread110, label %bb.t

.thread110:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.u

.thread118:                                       ; preds = %bb.r, %bb.o
  %.2.ph = phi i32 [ -1094995529, %bb.o ], [ %i.cn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @ff_metadata_conv(ptr noundef nonnull %i.ch, ptr noundef nonnull @ff_mkv_metadata_conv, ptr noundef null) #14
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !276
  %i.cr = call fastcc i32 @mkv_write_tag(ptr noundef %i.d, ptr noundef %i.cq, ptr noundef nonnull %.060, i32 noundef 0, i32 noundef 25540, i64 noundef %i.ce) ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %i.cs, label %bb.u, label %.thread121

bb.u:                                             ; preds = %.thread110, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.g, align 8, !tbaa !267
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %bb.k, label %.thread115, !llvm.loop !266

.thread115:                                       ; preds = %bb.u, %bb.h
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !59  ; 4 uses
  %i.cx = call i64 @avio_seek(ptr noundef %i.cw, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.cy = sext i32 %i.z to i64
  %i.cz = sub nsw i64 %i.y, %i.cy
  %i.da = call i64 @avio_seek(ptr noundef %i.cw, i64 noundef %i.cz, i32 noundef 0) #14
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %end_ebml_master.exit, label %bb.v

bb.v:                                             ; preds = %.thread115
  %i.dc = sub nsw i64 %i.cx, %i.y
  call fastcc void @put_ebml_length(ptr noundef %i.cw, i64 noundef %i.dc, i32 noundef range(i32 -2147483647, -2147483648) %i.z)
  %i.dd = call i64 @avio_seek(ptr noundef %i.cw, i64 noundef %i.cx, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit

end_ebml_master.exit:                             ; preds = %.thread115, %bb.v
  store i32 1, ptr %i.i, align 8, !tbaa !268
  %i.de = call fastcc i32 @end_ebml_master_crc32(ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef %i.d, i32 noundef 272869232, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.y, label %bb.w

bb.w:                                             ; preds = %end_ebml_master.exit
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !59
  %.not79 = icmp eq ptr %i.dg, null
  br i1 %.not79, label %start_ebml_master_crc32.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = call fastcc i32 @end_ebml_master_crc32(ptr noundef %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 307544935, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %start_ebml_master_crc32.exit

bb.y:                                             ; preds = %.thread118, %end_ebml_master.exit
  %.4 = phi i32 [ %i.de, %end_ebml_master.exit ], [ %.2.ph, %.thread118 ] ; 2 uses
  %.not80 = icmp eq ptr %.060, null
  br i1 %.not80, label %bb.z, label %.thread121

.thread121:                                       ; preds = %bb.t, %bb.y
  %.4124 = phi i32 [ %.4, %bb.y ], [ %i.cr, %bb.t ]
  call void @ffio_free_dyn_buf(ptr noundef nonnull %.060) #14
  br label %bb.z

bb.z:                                             ; preds = %.thread121, %bb.y
  %.4125 = phi i32 [ %.4124, %.thread121 ], [ %.4, %bb.y ]
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.a) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit:                     ; preds = %bb.c, %bb.w, %bb.a, %bb.b, %bb.z, %bb.x
  %.059 = phi i32 [ 0, %bb.w ], [ 0, %bb.a ], [ %i.k, %bb.c ], [ %.4125, %bb.z ], [ %i.dh, %bb.x ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.059
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mkv_write_seekhead(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !278
  %i.d = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %i.c, i32 noundef 0) #14 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  %i.f = trunc i64 %i.d to i32
  %i.g = select i1 %.not, i32 0, i32 %i.f
  br label %start_ebml_master_crc32.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %start_ebml_master_crc32.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.k = load i32, ptr %i.j, align 8, !tbaa !60
  %.not6.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i, label %start_ebml_master_crc32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 7
  %i.p = lshr i32 %i.o, 3                         ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i ], [ %i.p, %bb.e ]
  %i.q = add nsw i32 %.05.i.i.i, -1               ; 3 uses
  %i.r = shl nsw i32 %i.q, 3
  %i.s = lshr i32 236, %i.r
  call void @avio_w8(ptr noundef %i.l, i32 noundef %i.s) #14
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i.i, %bb.e
  call void @avio_w8(ptr noundef %i.l, i32 noundef 132) #14
  call void @ffio_fill(ptr noundef %i.l, i32 noundef 0, i64 noundef 4) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit:                     ; preds = %bb.d, %.lr.ph.i.i7.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !159
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %start_ebml_master_crc32.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 83), align 1
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 15
  %i.aa = lshr i32 %i.z, 3                        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %end_ebml_master.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %end_ebml_master.exit ] ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.ac = call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.ab, i32 noundef 19899, i64 noundef 21) ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.05.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.aa, %bb.f ]
  %i.ae = add nsw i32 %.05.i, -1                  ; 3 uses
  %i.af = shl nsw i32 %i.ae, 3
  %i.ag = lshr i32 21419, %i.af
  %i.ah = and i32 %i.ag, 251
  call void @avio_w8(ptr noundef %i.ad, i32 noundef %i.ah) #14
  %.not.i33 = icmp eq i32 %i.ae, 0
  br i1 %.not.i33, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ac, 0      ; 2 uses
  %i.ak = extractvalue { i64, i32 } %i.ac, 1      ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !161 ; 3 uses
  %.not.i.i = icmp ult i32 %i.am, 65536           ; 2 uses
  %i.an = lshr i32 %i.am, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.am, i32 %i.an ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i64 0, i64 16
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ao = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ao
  %i.ap = zext nneg i32 %.110.i.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.as = zext i8 %i.ar to i64
  %i.at = select i1 %.not11.i.i, i64 7, i64 15
  %i.au = add nuw nsw i64 %spec.select12.i.i, %i.as
  %i.av = add nuw nsw i64 %i.au, %i.at
  %i.aw = lshr i64 %i.av, 3
  call fastcc void @put_ebml_length(ptr noundef %i.al, i64 noundef %i.aw, i32 noundef 0)
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.ay = load i32, ptr %i.ai, align 8, !tbaa !161 ; 4 uses
  %.not.i.i.i34 = icmp ult i32 %i.ay, 65536       ; 2 uses
  %i.az = lshr i32 %i.ay, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i34, i32 %i.ay, i32 %i.az ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i34, i32 0, i32 16
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.ba = lshr i32 %spec.select.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.ba
  %i.bb = zext nneg i32 %.110.i.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !56
  %i.be = zext i8 %i.bd to i32
  %i.bf = select i1 %.not11.i.i.i, i32 7, i32 15
  %i.bg = add nuw nsw i32 %spec.select12.i.i.i, %i.be
  %i.bh = add nuw nsw i32 %i.bg, %i.bf
  %i.bi = lshr i32 %i.bh, 3                       ; 2 uses
  %.not4.i = icmp eq i32 %i.bi, 0
  br i1 %.not4.i, label %put_ebml_id.exit38, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %put_ebml_id.exit, %.lr.ph.i35
  %.05.i36 = phi i32 [ %i.bj, %.lr.ph.i35 ], [ %i.bi, %put_ebml_id.exit ]
  %i.bj = add nsw i32 %.05.i36, -1                ; 3 uses
  %i.bk = shl nsw i32 %i.bj, 3
  %i.bl = lshr i32 %i.ay, %i.bk
  %i.bm = and i32 %i.bl, 255
  call void @avio_w8(ptr noundef %i.ax, i32 noundef %i.bm) #14
  %.not.i37 = icmp eq i32 %i.bj, 0
  br i1 %.not.i37, label %put_ebml_id.exit38.loopexit, label %.lr.ph.i35, !llvm.loop !0

put_ebml_id.exit38.loopexit:                      ; preds = %.lr.ph.i35
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %put_ebml_id.exit38

put_ebml_id.exit38:                               ; preds = %put_ebml_id.exit38.loopexit, %put_ebml_id.exit
  %i.bn = phi ptr [ %.pre, %put_ebml_id.exit38.loopexit ], [ %i.ax, %put_ebml_id.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !162 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %put_ebml_id.exit38
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 1, %put_ebml_id.exit38 ] ; 3 uses
  %.0.i39 = phi i64 [ %i.bq, %bb.g ], [ %i.bp, %put_ebml_id.exit38 ]
  %i.bq = lshr i64 %.0.i39, 8                     ; 2 uses
  %.not.i40 = icmp eq i64 %i.bq, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i40, label %.lr.ph.i.i, label %bb.g, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.br, %.lr.ph.i.i ], [ %i.aa, %bb.g ]
  %i.br = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.bs = shl nsw i32 %i.br, 3
  %i.bt = lshr i32 21420, %i.bs
  %i.bu = and i32 %i.bt, 255
  call void @avio_w8(ptr noundef %i.bn, i32 noundef %i.bu) #14
  %.not.i.i41 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i41, label %put_ebml_id.exit.i, label %.lr.ph.i.i, !llvm.loop !0

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i
  %i.bv = and i64 %indvars.iv.i, 4294967295
  call fastcc void @put_ebml_length(ptr noundef %i.bn, i64 noundef %i.bv, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %put_ebml_id.exit.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.i, %put_ebml_id.exit.i ], [ %indvars.iv.next17.i, %bb.h ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.bw = shl nuw nsw i64 %indvars.iv.next17.i, 3
  %i.bx = lshr i64 %i.bp, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i32 %i.by, 255
  call void @avio_w8(ptr noundef %i.bn, i32 noundef %i.bz) #14
  %i.ca = icmp sgt i64 %indvars.iv16.i, 1
  br i1 %i.ca, label %bb.h, label %put_ebml_uint.exit, !llvm.loop !3

put_ebml_uint.exit:                               ; preds = %bb.h
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !59  ; 4 uses
  %i.cc = call i64 @avio_seek(ptr noundef %i.cb, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.cd = sext i32 %i.ak to i64
  %i.ce = sub nsw i64 %i.aj, %i.cd
  %i.cf = call i64 @avio_seek(ptr noundef %i.cb, i64 noundef %i.ce, i32 noundef 0) #14
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %end_ebml_master.exit, label %bb.i

bb.i:                                             ; preds = %put_ebml_uint.exit
  %i.ch = sub nsw i64 %i.cc, %i.aj
  call fastcc void @put_ebml_length(ptr noundef %i.cb, i64 noundef %i.ch, i32 noundef range(i32 -2147483647, -2147483648) %i.ak)
  %i.ci = call i64 @avio_seek(ptr noundef %i.cb, i64 noundef %i.cc, i32 noundef 0) #14 ; 0 uses
  br label %end_ebml_master.exit

end_ebml_master.exit:                             ; preds = %put_ebml_uint.exit, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.t, align 8, !tbaa !159
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %bb.f, label %._crit_edge, !llvm.loop !277

._crit_edge:                                      ; preds = %end_ebml_master.exit, %start_ebml_master_crc32.exit
  %i.cm = call fastcc i32 @end_ebml_master_crc32(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef 290298740, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %start_ebml_master_crc32.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.b, align 8, !tbaa !278
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !279
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add i64 %i.co, %i.cr
  %i.ct = call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #14
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = trunc i64 %i.cu to i32
  call fastcc void @put_ebml_void(ptr noundef %0, i32 noundef %i.cv)
  %i.cw = call i64 @avio_seek(ptr noundef %0, i64 noundef %3, i32 noundef 0) #14
  %spec.select43 = call i64 @llvm.smin.i64(i64 %i.cw, i64 0)
  %spec.select = trunc i64 %spec.select43 to i32
  br label %start_ebml_master_crc32.exit.thread

start_ebml_master_crc32.exit.thread:              ; preds = %bb.c, %bb.j, %._crit_edge, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.cm, %._crit_edge ], [ %spec.select, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ebml_void(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.47, i32 noundef 446) #14
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.c = zext i8 %i.b to i32
  %i.d = add nuw nsw i32 %i.c, 7
  %i.e = lshr i32 %i.d, 3                         ; 2 uses
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %put_ebml_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.05.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.e, %bb.c ]
  %i.f = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.g = shl nsw i32 %i.f, 3
  %i.h = lshr i32 236, %i.g
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.h) #14
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i, %bb.c
  %i.i = icmp samesign ult i32 %1, 10             ; 2 uses
  %. = select i1 %i.i, i32 -2, i32 -9
  %.15 = select i1 %i.i, i32 0, i32 8
  %i.j = add nsw i32 %1, %.
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  tail call fastcc void @put_ebml_length(ptr noundef %0, i64 noundef %i.k, i32 noundef %.15)
  tail call void @ffio_fill(ptr noundef %0, i32 noundef 0, i64 noundef %i.k) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ebml_writer_elem_len(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  switch i32 %i.c, label %ebml_writer_master_len.exit.thread [
    i32 2, label %ebml_writer_master_len.exit.thread.sink.split
    i32 3, label %ebml_writer_master_len.exit.thread.sink.split
    i32 4, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 6, label %bb.g
    i32 7, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #15
  br label %ebml_writer_master_len.exit.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.03.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.0.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ]
  %i.i = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.j = lshr i64 %.03.i.i, 8                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %ebml_writer_uint_len.exit, label %bb.d, !llvm.loop !280

ebml_writer_uint_len.exit:                        ; preds = %bb.d
  %i.k = zext nneg i32 %i.i to i64
  br label %ebml_writer_master_len.exit.thread.sink.split

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %.lobit.i.i = ashr i64 %i.m, 63
  %i.n = xor i64 %.lobit.i.i, %i.m
  %i.o = shl i64 %i.n, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.03.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.q, %bb.f ]
  %.0.i.i.i = phi i32 [ 0, %bb.e ], [ %i.p, %bb.f ]
  %i.p = add nuw nsw i32 %.0.i.i.i, 1             ; 2 uses
  %i.q = lshr i64 %.03.i.i.i, 8                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %ebml_writer_sint_len.exit, label %bb.f, !llvm.loop !280

ebml_writer_sint_len.exit:                        ; preds = %bb.f
  %i.r = zext nneg i32 %i.p to i64
  br label %ebml_writer_master_len.exit.thread.sink.split

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !163  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.t, ptr noundef null, ptr noundef %i.x, ptr noundef nonnull %i.a) #14, !inline_history !281 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !55
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ad, i32 noundef 16, ptr noundef nonnull @.str.44, i32 noundef %i.af) #14
  br label %ebml_writer_block_len.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !128 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !150 ; 2 uses
  %.not21.i = icmp ugt i32 %i.aj, %i.ah
  %i.ak = select i1 %.not21.i, i32 0, i32 %i.aj
  %spec.select.i = sub nuw i32 %i.ah, %i.ak
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.al = phi i32 [ %.pre.i, %._crit_edge.i ], [ %spec.select.i, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !151
  %i.ao = add i32 %i.al, 3
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !98
  br label %ebml_writer_block_len.exit

ebml_writer_block_len.exit:                       ; preds = %bb.i, %bb.k
  %.0.i = phi i32 [ %i.aa, %bb.i ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %ebml_writer_master_len.exit

bb.l:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.au = add nsw i32 %1, -1
  %i.av = icmp slt i32 %i.at, 0
  %i.aw = select i1 %i.av, i32 %i.au, i32 %i.at   ; 4 uses
  store i32 %i.aw, ptr %i.as, align 8, !tbaa !56
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %.027.i15 = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.l ]
  %.028.i14 = phi i32 [ %i.by, %bb.n ], [ %i.aw, %bb.l ] ; 2 uses
  %.032.i13 = phi ptr [ %i.bw, %bb.n ], [ %0, %bb.l ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.032.i13, i64 32 ; 3 uses
  %i.az = tail call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %i.ay, i32 noundef %.028.i14) ; 4 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %ebml_writer_master_len.exit.thread8, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !53 ; 3 uses
  %.not.i.i20 = icmp ult i32 %i.bb, 65536         ; 2 uses
  %i.bc = lshr i32 %i.bb, 16
  %spec.select.i.i = select i1 %.not.i.i20, i32 %i.bb, i32 %i.bc ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i20, i32 0, i32 16
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.bd = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.bd
  %i.be = zext nneg i32 %.110.i.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !56
  %i.bh = zext i8 %i.bg to i32
  %i.bi = select i1 %.not11.i.i, i32 7, i32 15
  %i.bj = add nuw nsw i32 %spec.select12.i.i, %i.bh
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %.032.i13, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !165
  %i.bo = add i32 %i.bl, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.032.i13, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !98
  %i.bs = add i64 %i.br, %.027.i15
  %i.bt = add i64 %i.bs, %i.bp                    ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 2147483647
  br i1 %i.bu, label %ebml_writer_master_len.exit.thread8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = zext nneg i32 %i.az to i64
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.bv
  %i.bx = xor i32 %i.az, -1
  %i.by = add nsw i32 %.028.i14, %i.bx            ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !282

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre = load i32, ptr %i.as, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.ca = phi i32 [ %i.aw, %bb.l ], [ %.pre, %._crit_edge.loopexit ]
  %.027.i.lcssa = phi i64 [ 0, %bb.l ], [ %i.bt, %._crit_edge.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.027.i.lcssa, ptr %i.cb, align 8, !tbaa !98
  br label %ebml_writer_master_len.exit

ebml_writer_master_len.exit:                      ; preds = %._crit_edge, %ebml_writer_block_len.exit
  %.0 = phi i32 [ %.0.i, %ebml_writer_block_len.exit ], [ %i.ca, %._crit_edge ] ; 3 uses
  %i.cc = icmp slt i32 %.0, 0
  br i1 %i.cc, label %ebml_writer_master_len.exit.thread8, label %ebml_writer_master_len.exit.thread

ebml_writer_master_len.exit.thread.sink.split:    ; preds = %bb.a, %bb.a, %bb.b, %ebml_writer_uint_len.exit, %ebml_writer_sint_len.exit
  %.sink = phi i64 [ %i.r, %ebml_writer_sint_len.exit ], [ %i.k, %ebml_writer_uint_len.exit ], [ %i.f, %bb.b ], [ 8, %bb.a ], [ 8, %bb.a ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.cd, align 8, !tbaa !98
  br label %ebml_writer_master_len.exit.thread

ebml_writer_master_len.exit.thread:               ; preds = %ebml_writer_master_len.exit.thread.sink.split, %bb.a, %ebml_writer_master_len.exit
  %.07 = phi i32 [ %.0, %ebml_writer_master_len.exit ], [ 0, %bb.a ], [ 0, %ebml_writer_master_len.exit.thread.sink.split ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !98 ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 2147483647
  br i1 %i.cg, label %ebml_writer_master_len.exit.thread8, label %bb.o

bb.o:                                             ; preds = %ebml_writer_master_len.exit.thread
  %i.ch = add nuw nsw i64 %i.cf, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.03.i.i17 = phi i64 [ %i.ch, %bb.o ], [ %i.cj, %bb.p ]
  %.0.i.i18 = phi i32 [ 0, %bb.o ], [ %i.ci, %bb.p ]
  %i.ci = add nuw nsw i32 %.0.i.i18, 1            ; 2 uses
  %i.cj = lshr i64 %.03.i.i17, 7                  ; 2 uses
  %.not.i.i19 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i19, label %ebml_length_size.exit, label %bb.p, !llvm.loop !5

ebml_length_size.exit:                            ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ci, ptr %i.ck, align 8, !tbaa !165
  br label %ebml_writer_master_len.exit.thread8

ebml_writer_master_len.exit.thread8:              ; preds = %.lr.ph, %bb.m, %ebml_writer_master_len.exit.thread, %ebml_writer_master_len.exit, %ebml_length_size.exit
  %.015 = phi i32 [ %.07, %ebml_length_size.exit ], [ %.0, %ebml_writer_master_len.exit ], [ -34, %ebml_writer_master_len.exit.thread ], [ %i.az, %.lr.ph ], [ -34, %bb.m ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ebml_writer_elem_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !53     ; 4 uses
  %.not.i.i.i = icmp ult i32 %i.b, 65536          ; 2 uses
  %i.c = lshr i32 %i.b, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.b, i32 %i.c ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i, i32 0, i32 16
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.d = lshr i32 %spec.select.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.d
  %i.e = zext nneg i32 %.110.i.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56
  %i.h = zext i8 %i.g to i32
  %i.i = select i1 %.not11.i.i.i, i32 7, i32 15
  %i.j = add nuw nsw i32 %spec.select12.i.i.i, %i.h
  %i.k = add nuw nsw i32 %i.j, %i.i
  %i.l = lshr i32 %i.k, 3                         ; 2 uses
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %put_ebml_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.l, %bb.a ]
  %i.m = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.n = shl nsw i32 %i.m, 3
  %i.o = lshr i32 %i.b, %i.n
  %i.p = and i32 %i.o, 255
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.p) #14
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !165  ; 3 uses
  %i.u = mul nsw i32 %i.t, 7
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = or i64 %i.w, %i.r
  %i.y = icmp sgt i32 %i.t, 0
  br i1 %i.y, label %.lr.ph.preheader.i, label %put_ebml_num.exit

.lr.ph.preheader.i:                               ; preds = %put_ebml_id.exit
  %i.z = zext nneg i32 %i.t to i64
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i42 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.aa = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.ab = lshr i64 %i.x, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 255
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.ad) #14
  %i.ae = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ae, label %.lr.ph.i42, label %put_ebml_num.exit, !llvm.loop !4

put_ebml_num.exit:                                ; preds = %.lr.ph.i42, %put_ebml_id.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  switch i32 %i.ag, label %ebml_writer_write_block.exit [
    i32 7, label %bb.h
    i32 6, label %bb.e
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 3, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %put_ebml_num.exit, %put_ebml_num.exit
  %.in44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %.in44, align 8, !tbaa !56
  tail call void @avio_wb64(ptr noundef %1, i64 noundef %i.ah) #14
  br label %ebml_writer_write_block.exit

bb.c:                                             ; preds = %put_ebml_num.exit, %put_ebml_num.exit
  %.in41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %.in41, align 8, !tbaa !56
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !98  ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %ebml_writer_write_block.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.am = and i64 %i.aj, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.am, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.an = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ao = lshr i64 %i.ai, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 255
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.aq) #14
  %i.ar = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ar, label %.lr.ph, label %ebml_writer_write_block.exit, !llvm.loop !283

bb.d:                                             ; preds = %put_ebml_num.exit, %put_ebml_num.exit
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %.in, align 8, !tbaa !56
  %i.at = load i64, ptr %i.q, align 8, !tbaa !98
  %i.au = trunc i64 %i.at to i32
  tail call void @avio_write(ptr noundef %1, ptr noundef %i.as, i32 noundef %i.au) #14
  br label %ebml_writer_write_block.exit

bb.e:                                             ; preds = %put_ebml_num.exit
  %i.av = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.av, align 8, !tbaa !56 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 280
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !163 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !164 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !134
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !151 ; 3 uses
  %i.bf = mul nsw i32 %i.be, 7
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = or i64 %i.bh, %i.bc
  %i.bj = icmp sgt i32 %i.be, 0
  br i1 %i.bj, label %.lr.ph.preheader.i.i, label %put_ebml_num.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.bk = zext nneg i32 %i.be to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bk, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.bl = shl nuw nsw i64 %indvars.iv.next.i.i, 3
  %i.bm = lshr i64 %i.bi, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 255
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.bo) #14
  %i.bp = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i, label %put_ebml_num.exit.i, !llvm.loop !4

put_ebml_num.exit.i:                              ; preds = %.lr.ph.i.i, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !286
  %i.bs = sext i16 %i.br to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.bs) #14
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 298
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !287
  %i.bv = zext i8 %i.bu to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.bv) #14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !149 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bx, null
  br i1 %.not.i43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %put_ebml_num.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.by = call i32 %i.bx(ptr noundef nonnull %.val, ptr noundef %1, ptr noundef %i.az, ptr noundef nonnull %i.a) #14, !inline_history !284 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %ebml_writer_write_block.exit

bb.g:                                             ; preds = %put_ebml_num.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !152
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !150 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !128 ; 2 uses
  %.not24.i = icmp ugt i32 %i.cc, %i.ce
  %spec.select.i = select i1 %.not24.i, i32 0, i32 %i.cc ; 2 uses
  %i.cf = zext i32 %spec.select.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = sub i32 %i.ce, %spec.select.i
  tail call void @avio_write(ptr noundef %1, ptr noundef %i.cg, i32 noundef %i.ch) #14
  br label %ebml_writer_write_block.exit

bb.h:                                             ; preds = %put_ebml_num.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !56 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = icmp sgt i32 %i.cj, 0
  br i1 %i.cl, label %.lr.ph48, label %ebml_writer_write_block.exit

.lr.ph48:                                         ; preds = %bb.h, %.lr.ph48
  %.047 = phi i32 [ %i.cq, %.lr.ph48 ], [ 0, %bb.h ] ; 2 uses
  %i.cm = sext i32 %.047 to i64
  %i.cn = getelementptr inbounds [32 x i8], ptr %i.ck, i64 %i.cm
  %i.co = tail call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %i.cn, ptr noundef %1)
  %i.cp = add nsw i32 %.047, 1
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.cj
  br i1 %i.cr, label %.lr.ph48, label %ebml_writer_write_block.exit, !llvm.loop !285

ebml_writer_write_block.exit:                     ; preds = %.lr.ph, %.lr.ph48, %bb.c, %bb.h, %put_ebml_num.exit, %bb.g, %bb.f, %bb.b, %bb.d
  %.038 = phi i32 [ 0, %bb.g ], [ %i.cj, %bb.h ], [ 0, %put_ebml_num.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ %i.cj, %.lr.ph48 ], [ 0, %.lr.ph ]
  ret i32 %.038
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avio_wb64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @ffio_fill(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_parse_creation_time_metadata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ebml_float(ptr noundef %0, i32 noundef range(i32 181, 30902) %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %.not11.i.i.i = icmp samesign ult i32 %1, 256   ; 2 uses
  %i.a = lshr i32 %1, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %1, i32 %i.a
  %i.b = zext nneg i32 %.110.i.i.i to i64
  %i.c = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !56
  %i.e = zext i8 %i.d to i32
  %i.f = select i1 %.not11.i.i.i, i32 7, i32 15
  %i.g = add nuw nsw i32 %i.f, %i.e
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %.lr.ph.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.i = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.j = shl nsw i32 %i.i, 3
  %i.k = lshr i32 %1, %i.j
  %i.l = and i32 %i.k, 255
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.l) #14
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %bb.a
  tail call void @avio_w8(ptr noundef %0, i32 noundef 136) #14
  %i.m = bitcast double %2 to i64
  tail call void @avio_wb64(ptr noundef %0, i64 noundef %i.m) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @end_ebml_master_crc32_tentatively(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 307544935, 374648428) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 372
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = load ptr, ptr %1, align 8, !tbaa !288
  %i.h = call i32 @avio_get_dyn_buf(ptr noundef %i.g, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !288
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !138  ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i64 @avio_seek(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !289
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  store i32 %3, ptr %i.s, align 8, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !58
  %i.v = sub i64 %i.m, %i.u
  %i.w = add nsw i32 %i.q, 1
  store i32 %i.w, ptr %i.p, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !162
  %i.y = lshr i32 %3, 24
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !56
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 31
  %i.ae = lshr i32 %i.ad, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.05.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.ae, %bb.d ]
  %i.af = add nsw i32 %.05.i, -1                  ; 3 uses
  %i.ag = shl nsw i32 %i.af, 3
  %i.ah = lshr i32 %3, %i.ag
  %i.ai = and i32 %i.ah, 255
  call void @avio_w8(ptr noundef nonnull %0, i32 noundef %i.ai) #14
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  %i.aj = sext i32 %i.h to i64
  call fastcc void @put_ebml_length(ptr noundef nonnull %0, i64 noundef %i.aj, i32 noundef 0)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @avio_write(ptr noundef nonnull %0, ptr noundef %i.ak, i32 noundef %i.h) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %put_ebml_id.exit
  %.0 = phi i32 [ 0, %put_ebml_id.exit ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.al = tail call fastcc i32 @end_ebml_master_crc32(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.al, %bb.f ], [ %.0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ebml_length(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.03.i.i = phi i64 [ %i.a, %bb.a ], [ %i.c, %bb.b ]
  %.0.i.i = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.b = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.c = lshr i64 %.03.i.i, 7                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %ebml_length_size.exit, label %bb.b, !llvm.loop !5

ebml_length_size.exit:                            ; preds = %bb.b
  %i.d = icmp ult i64 %1, 72057594037927935
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ebml_length_size.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.47, i32 noundef 384) #14
  tail call void @abort() #17
  unreachable

bb.d:                                             ; preds = %ebml_length_size.exit
  %i.e = icmp eq i32 %2, 0
  %spec.select = select i1 %i.e, i32 %i.b, i32 %2 ; 3 uses
  %.not.not = icmp sgt i32 %spec.select, %.0.i.i
  br i1 %.not.not, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47, i32 noundef 390) #14
  tail call void @abort() #17
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.f = mul nuw nsw i32 %spec.select, 7
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = or i64 %i.h, %1
  %i.j = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.l = lshr i64 %i.i, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 255
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.n) #14
  %i.o = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.o, label %.lr.ph.i, label %put_ebml_num.exit, !llvm.loop !4

put_ebml_num.exit:                                ; preds = %.lr.ph.i
  ret void
}

declare i32 @av_parse_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_get_dyn_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @end_ebml_master_crc32(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 272869232, 524531318) %3, i32 noundef range(i32 -2147483647, -2147483648) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load ptr, ptr %1, align 8, !tbaa !59
  %i.d = call i32 @avio_get_dyn_buf(ptr noundef %i.c, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138  ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !159  ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  store i32 %3, ptr %i.n, align 8, !tbaa !161
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = sub i64 %i.i, %i.p
  %i.r = add nsw i32 %i.l, 1
  store i32 %i.r, ptr %i.k, align 8, !tbaa !159
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = lshr i32 %3, 24
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !56
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 31
  %i.z = lshr i32 %i.y, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.05.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.z, %bb.d ]
  %i.aa = add nsw i32 %.05.i, -1                  ; 3 uses
  %i.ab = shl nsw i32 %i.aa, 3
  %i.ac = lshr i32 %3, %i.ab
  %i.ad = and i32 %i.ac, 255
  call void @avio_w8(ptr noundef %0, i32 noundef %i.ad) #14
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  %i.ae = sext i32 %i.d to i64
  call fastcc void @put_ebml_length(ptr noundef %0, i64 noundef %i.ae, i32 noundef %4)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !60
  %.not23 = icmp eq i32 %i.ag, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %put_ebml_id.exit
  %i.ah = call ptr @av_crc_get_table(i32 noundef 4) #14
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = add nsw i32 %i.d, -6
  %i.al = sext i32 %i.ak to i64
  %i.am = call i32 @av_crc(ptr noundef %i.ah, i32 noundef -1, ptr noundef nonnull %i.aj, i64 noundef %i.al) #15
  %i.an = xor i32 %i.am, -1
  store i32 %i.an, ptr %i.b, align 4, !tbaa !56
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 191), align 1, !tbaa !56
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 7
  %i.ar = lshr i32 %i.aq, 3                       ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i25, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.as, %.lr.ph.i.i ], [ %i.ar, %bb.e ]
  %i.as = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.at = shl nsw i32 %i.as, 3
  %i.au = lshr i32 191, %i.at
  call void @avio_w8(ptr noundef %0, i32 noundef %i.au) #14
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %.lr.ph.i.i25, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i, %bb.e
  call void @avio_w8(ptr noundef %0, i32 noundef 132) #14
  call void @avio_write(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 4) #14
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i25, %put_ebml_id.exit
  %.0 = phi i32 [ 6, %.lr.ph.i.i25 ], [ 0, %put_ebml_id.exit ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.aw = zext nneg i32 %.0 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = sub nsw i32 %i.d, %.0
  call void @avio_write(ptr noundef %0, ptr noundef %i.ax, i32 noundef %i.ay) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.not24 = icmp eq i32 %5, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %1, align 8, !tbaa !59
  call void @ffio_reset_dyn_buf(ptr noundef %i.az) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @ffio_free_dyn_buf(ptr noundef nonnull %1) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @ffio_reset_dyn_buf(ptr noundef) local_unnamed_addr #2

declare void @ffio_free_dyn_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i32 } @start_ebml_master(ptr noundef %0, i32 noundef range(i32 174, 26569) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ebml_length_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03.i.i = phi i64 [ %i.a, %bb.b ], [ %i.c, %bb.c ]
  %.0.i.i = phi i32 [ 0, %bb.b ], [ %i.b, %bb.c ]
  %i.b = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.c = lshr i64 %.03.i.i, 7                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %ebml_length_size.exit, label %bb.c, !llvm.loop !5

ebml_length_size.exit:                            ; preds = %bb.c, %bb.a
  %i.d = phi i32 [ 8, %bb.a ], [ %i.b, %bb.c ]    ; 4 uses
  %.not11.i.i.i = icmp samesign ult i32 %1, 256   ; 2 uses
  %i.e = lshr i32 %1, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %1, i32 %i.e
  %i.f = zext nneg i32 %.110.i.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !56
  %i.i = zext i8 %i.h to i32
  %i.j = select i1 %.not11.i.i.i, i32 7, i32 15
  %i.k = add nuw nsw i32 %i.j, %i.i
  %i.l = lshr i32 %i.k, 3                         ; 2 uses
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %put_ebml_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ebml_length_size.exit, %.lr.ph.i
  %.05.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.l, %ebml_length_size.exit ]
  %i.m = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.n = shl nsw i32 %i.m, 3
  %i.o = lshr i32 %1, %i.n
  %i.p = and i32 %i.o, 255
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.p) #14
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i, %ebml_length_size.exit
  %i.q = icmp slt i32 %i.d, 9
  br i1 %i.q, label %put_ebml_size_unknown.exit, label %bb.d

bb.d:                                             ; preds = %put_ebml_id.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 333) #14
  tail call void @abort() #17
  unreachable

put_ebml_size_unknown.exit:                       ; preds = %put_ebml_id.exit
  %i.r = lshr i32 511, %i.d
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.r) #14
  %i.s = add nsw i32 %i.d, -1
  %i.t = sext i32 %i.s to i64
  tail call void @ffio_fill(ptr noundef %0, i32 noundef 255, i64 noundef %i.t) #14
  %i.u = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #14
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %i.u, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.d, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_codec_get_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #6

declare i32 @av_get_audio_frame_duration2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_bits_per_sample(i32 noundef) local_unnamed_addr #2

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #2

declare ptr @avcodec_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @mkv_assemble_codecprivate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 0, 34) %5, i32 noundef range(i32 0, 2) %6, ptr noundef nonnull %7, ptr nofree noundef nonnull writeonly captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [3 x ptr], align 16               ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !84   ; 2 uses
  switch i32 %i.h, label %bb.ac [
    i32 86021, label %bb.c
    i32 30, label %bb.c
    i32 222, label %bb.e
    i32 86028, label %bb.g
    i32 86041, label %bb.m
    i32 27, label %bb.p
    i32 172, label %bb.q
    i32 195, label %bb.r
    i32 86032, label %bb.s
    i32 86018, label %bb.v
    i32 94233, label %bb.x
    i32 147, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.i = icmp eq i32 %i.h, 86021
  %..i.i = select i1 %i.i, i32 30, i32 42
  %i.j = call i32 @avpriv_split_xiph_headers(ptr noundef %3, i32 noundef %4, i32 noundef %..i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #14 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %.preheader.preheader.i.i

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.89) #14
  br label %put_xiph_codecpriv.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.c
  call void @avio_w8(ptr noundef %1, i32 noundef 2) #14
  %i.l = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %i.m = sdiv i32 %i.l, 255
  %i.n = sext i32 %i.m to i64
  call void @ffio_fill(ptr noundef %1, i32 noundef 255, i64 noundef %i.n) #14
  %i.o = srem i32 %i.l, 255
  call void @avio_w8(ptr noundef %1, i32 noundef %i.o) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !55   ; 2 uses
  %i.r = sdiv i32 %i.q, 255
  %i.s = sext i32 %i.r to i64
  call void @ffio_fill(ptr noundef %1, i32 noundef 255, i64 noundef %i.s) #14
  %i.t = srem i32 %i.q, 255
  call void @avio_w8(ptr noundef %1, i32 noundef %i.t) #14
  %i.u = load ptr, ptr %i.c, align 16, !tbaa !95
  %i.v = load i32, ptr %i.d, align 4, !tbaa !55
  call void @avio_write(ptr noundef %1, ptr noundef %i.u, i32 noundef %i.v) #14
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  %i.y = load i32, ptr %i.p, align 4, !tbaa !55
  call void @avio_write(ptr noundef %1, ptr noundef %i.x, i32 noundef %i.y) #14
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !55
  call void @avio_write(ptr noundef %1, ptr noundef %i.aa, i32 noundef %i.ac) #14
  br label %put_xiph_codecpriv.exit.i

put_xiph_codecpriv.exit.i:                        ; preds = %.preheader.preheader.i.i, %bb.d
  %.018.i.i = phi i32 [ %i.j, %bb.d ], [ 0, %.preheader.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %mkv_assemble_native_codecprivate.exit

bb.e:                                             ; preds = %bb.b
  %.not61.i = icmp eq i32 %4, 0
  br i1 %.not61.i, label %mkv_assemble_native_codecprivate.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 @ff_isom_write_av1c(ptr noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef 1) #14
  br label %mkv_assemble_native_codecprivate.exit

bb.g:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !290
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ai, 262144
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @ff_flac_is_native_layout(i64 noundef %i.ai) #14
  %.not24.i.i = icmp ne i32 %i.aj, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ak = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ %.not24.i.i, %bb.i ] ; 2 uses
  %i.al = zext i1 %i.ak to i32
  %i.am = tail call i32 @ff_flac_write_header(ptr noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %i.al) #14 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  %brmerge.i.i = or i1 %i.ak, %i.an
  %.mux.i.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 0)
  br i1 %brmerge.i.i, label %mkv_assemble_native_codecprivate.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !64
  %i.aq = and i32 %i.ap, 1024
  %.not25.i.i = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not25.i.i, ptr @.str.49, ptr @.str.51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.at = load i64, ptr %i.as, align 8, !tbaa !56
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.90, i64 noundef %i.at) #14 ; 0 uses
  %i.av = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.b, i32 noundef 0) #14 ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.ax = call i32 @ff_vorbiscomment_length(ptr noundef %i.aw, ptr noundef nonnull %i.ar, ptr noundef null, i32 noundef 0) #14 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  call void @avio_w8(ptr noundef %1, i32 noundef 132) #14
  call void @avio_wb24(ptr noundef %1, i32 noundef %i.ax) #14
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.ba = call i32 @ff_vorbiscomment_write(ptr noundef %1, ptr noundef %i.az, ptr noundef nonnull %i.ar, ptr noundef null, i32 noundef 0) #14 ; 0 uses
  call void @av_dict_free(ptr noundef nonnull %i.a) #14
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.l, %bb.k
  %.1.ph.i.i = phi i32 [ 0, %bb.l ], [ %i.ax, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %mkv_assemble_native_codecprivate.exit

bb.m:                                             ; preds = %bb.b
  %i.bb = icmp ne ptr %3, null
  %i.bc = icmp eq i32 %4, 2
  %or.cond.i.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @avio_write(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #14
  br label %mkv_assemble_native_codecprivate.exit.thread

bb.o:                                             ; preds = %bb.m
  tail call void @avio_wl16(ptr noundef %1, i32 noundef 1040) #14
  br label %mkv_assemble_native_codecprivate.exit.thread
end_hunk_4
begin_hunk_5_@mkv_assemble_codecprivate:bb.a

bb.ay:                                            ; preds = %mkv_assemble_native_codecprivate.exit.thread
  %i.dj = add i32 %i.df, %.0
  store i32 %i.dj, ptr %9, align 4, !tbaa !55
  br label %mkv_assemble_native_codecprivate.exit.thread83

mkv_assemble_native_codecprivate.exit.thread83:   ; preds = %bb.t, %.thread.i, %.thread87, %mkv_assemble_native_codecprivate.exit.thread, %mkv_assemble_native_codecprivate.exit, %bb.ax, %bb.ay, %bb.at
  %.1 = phi i32 [ %i.dd, %bb.ax ], [ %.1.i, %mkv_assemble_native_codecprivate.exit ], [ 0, %bb.ay ], [ -22, %bb.at ], [ %i.dh, %mkv_assemble_native_codecprivate.exit.thread ], [ -22, %.thread87 ], [ -1094995529, %.thread.i ], [ -1094995529, %bb.t ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mkv_put_codecprivate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i32 %1, 127
  br i1 %.not.i.i, label %ebml_length_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.1 = icmp ult i32 %1, 16383
  br i1 %.not.i.i.1, label %ebml_length_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.2 = icmp ult i32 %1, 2097151
  br i1 %.not.i.i.2, label %ebml_length_size.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.3 = icmp ult i32 %1, 268435455
  %spec.select35 = select i1 %.not.i.i.3, i32 3, i32 4
  br label %ebml_length_size.exit

ebml_length_size.exit:                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.lcssa = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ %spec.select35, %bb.e ]
  %i.a = add i32 %1, 3
  %i.b = add i32 %i.a, %.0.i.i.lcssa              ; 3 uses
  %.not27 = icmp eq i32 %3, 0
  br i1 %.not27, label %bb.j, label %bb.f

bb.f:                                             ; preds = %ebml_length_size.exit
  %i.c = zext i32 %3 to i64
  %.not.i.i31 = icmp ult i32 %3, 127
  br i1 %.not.i.i31, label %ebml_length_size.exit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i31.1 = icmp ult i32 %3, 16383
  br i1 %.not.i.i31.1, label %ebml_length_size.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i31.2 = icmp ult i32 %3, 2097151
  br i1 %.not.i.i31.2, label %ebml_length_size.exit32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i31.3 = icmp ult i32 %3, 268435455      ; 2 uses
  %spec.select36 = select i1 %.not.i.i31.3, i32 3, i32 4
  %spec.select37 = select i1 %.not.i.i31.3, i32 4, i32 5
  br label %ebml_length_size.exit32

ebml_length_size.exit32:                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i.i30.lcssa = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ %spec.select36, %bb.i ] ; 2 uses
  %.lcssa = phi i32 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ %spec.select37, %bb.i ]
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 99), align 1, !tbaa !56
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 15
  %i.g = lshr i32 %i.f, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ebml_length_size.exit32, %.lr.ph.i
  %.05.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.g, %ebml_length_size.exit32 ]
  %i.h = add nsw i32 %.05.i, -1                   ; 3 uses
  %i.i = shl nsw i32 %i.h, 3
  %i.j = lshr i32 25506, %i.i
  %i.k = and i32 %i.j, 227
  tail call void @avio_w8(ptr noundef %0, i32 noundef %i.k) #14
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %put_ebml_id.exit, label %.lr.ph.i, !llvm.loop !0

put_ebml_id.exit:                                 ; preds = %.lr.ph.i
  %i.l = add i32 %3, 3
  %i.m = add i32 %i.l, %.0.i.i30.lcssa            ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.b                   ; 2 uses
  %i.p = add nuw i32 %.0.i.i30.lcssa, 2
  %spec.select = select i1 %i.o, i32 %i.n, i32 %i.m
  %spec.select28 = select i1 %i.o, i32 %i.p, i32 %.lcssa
  tail call fastcc void @put_ebml_length(ptr noundef %0, i64 noundef %i.c, i32 noundef %spec.select28)
  tail call void @avio_write(ptr noundef %0, ptr noundef %2, i32 noundef %3) #14
  br label %bb.j

bb.j:                                             ; preds = %put_ebml_id.exit, %ebml_length_size.exit
  %.1 = phi i32 [ %spec.select, %put_ebml_id.exit ], [ 0, %ebml_length_size.exit ] ; 2 uses
  %i.q = icmp ult i32 %.1, %i.b
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = sub nuw i32 %i.b, %.1
  tail call fastcc void @put_ebml_void(ptr noundef %0, i32 noundef %i.r)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @av_packet_side_data_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @av_chroma_location_enum_to_pos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #10

declare i32 @avpriv_mpeg4audio_get_config2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_isom_put_dvcc_dvvc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_codec_get_id(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wl32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_put_bmp_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_put_wav_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_isom_write_av1c(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_isom_write_avcc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_isom_write_hvcc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_isom_write_vvcc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avpriv_split_xiph_headers(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_flac_is_native_layout(i64 noundef) local_unnamed_addr #2

declare i32 @ff_flac_write_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vorbiscomment_length(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb24(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vorbiscomment_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_dict_free(ptr noundef) local_unnamed_addr #2

declare void @avio_wl16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_metadata_conv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mkv_write_tag(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 37) %3, i32 noundef range(i32 0, 25543) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca [4 x %struct.EbmlElement], align 16 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.e = tail call fastcc { i64, i32 } @start_ebml_master(ptr noundef %i.d, i32 noundef 25536, i64 noundef 13) ; 2 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11.i.i.i.i.i = icmp samesign ult i32 %4, 256 ; 2 uses
  %i.f = lshr i32 %4, 8
  %.110.i.i.i.i.i = select i1 %.not11.i.i.i.i.i, i32 %4, i32 %i.f
  %i.g = zext nneg i32 %.110.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !56
  %i.j = zext i8 %i.i to i32
  %i.k = select i1 %.not11.i.i.i.i.i, i32 7, i32 15
  %i.l = add nuw nsw i32 %i.k, %i.j
  %i.m = lshr i32 %i.l, 3                         ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i, label %put_ebml_uid.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ %i.m, %bb.b ]
  %i.n = add nsw i32 %.05.i.i.i, -1               ; 3 uses
  %i.o = shl nsw i32 %i.n, 3
  %i.p = lshr i32 %4, %i.o
  %i.q = and i32 %i.p, 255
  tail call void @avio_w8(ptr noundef %i.d, i32 noundef %i.q) #14
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %put_ebml_uid.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

put_ebml_uid.exit.i:                              ; preds = %.lr.ph.i.i.i, %bb.b
  tail call void @avio_w8(ptr noundef %i.d, i32 noundef 136) #14
  tail call void @avio_wb64(ptr noundef %i.d, i64 noundef %5) #14
  br label %bb.c

bb.c:                                             ; preds = %put_ebml_uid.exit.i, %bb.a
  %i.r = extractvalue { i64, i32 } %i.e, 1        ; 2 uses
  %i.s = extractvalue { i64, i32 } %i.e, 0        ; 2 uses
  %i.t = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.v, i32 noundef 0) #14
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %mkv_write_tag_targets.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 %i.t, %i.s
  tail call fastcc void @put_ebml_length(ptr noundef %i.d, i64 noundef %i.y, i32 noundef range(i32 -2147483647, -2147483648) %i.r)
  %i.z = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.t, i32 noundef 0) #14 ; 0 uses
  br label %mkv_write_tag_targets.exit

mkv_write_tag_targets.exit:                       ; preds = %bb.c, %bb.d
  %i.aa = tail call ptr @av_dict_iterate(ptr noundef %1, ptr noundef null) #14 ; 2 uses
  %.not61 = icmp eq ptr %i.aa, null
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %mkv_write_tag_targets.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 88
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %mkv_check_tag_name.exit.thread
  %i.ah = phi ptr [ %i.aa, %.lr.ph ], [ %i.bj, %mkv_check_tag_name.exit.thread ] ; 4 uses
  %.062 = phi i32 [ 0, %.lr.ph ], [ %.1, %mkv_check_tag_name.exit.thread ] ; 7 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !296 ; 7 uses
  %i.aj = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.48) #14
  %.not.i41 = icmp eq i32 %i.aj, 0
  br i1 %.not.i41, label %mkv_check_tag_name.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.42) #14
  %.not9.i = icmp eq i32 %i.ak, 0
  br i1 %.not9.i, label %mkv_check_tag_name.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.93) #14
  %.not10.i = icmp eq i32 %i.al, 0
  br i1 %.not10.i, label %mkv_check_tag_name.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.50) #14
  %.not11.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i, label %mkv_check_tag_name.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.94) #14
  %.not12.i = icmp eq i32 %i.an, 0
  br i1 %.not12.i, label %mkv_check_tag_name.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %4, label %mkv_check_tag_name.exit.thread52 [
    i32 25541, label %mkv_check_tag_name.exit
    i32 25542, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ao = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.95) #14
  %.not16.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.i, label %mkv_check_tag_name.exit.thread, label %mkv_check_tag_name.exit

mkv_check_tag_name.exit:                          ; preds = %bb.j, %bb.k
  %.str.59.sink.i = phi ptr [ @.str.59, %bb.j ], [ @.str.96, %bb.k ]
  %i.ap = call i32 @av_strcasecmp(ptr noundef %i.ai, ptr noundef nonnull %.str.59.sink.i) #14
  %.not14.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not14.i.not, label %mkv_check_tag_name.exit.thread, label %mkv_check_tag_name.exit.thread52

mkv_check_tag_name.exit.thread52:                 ; preds = %bb.j, %mkv_check_tag_name.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !296
  %i.ar = call noalias ptr @av_strdup(ptr noundef %i.aq) #14 ; 5 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !95
  %.not.i42 = icmp eq ptr %i.ar, null
  br i1 %.not.i42, label %mkv_write_simpletag.exit.thread, label %bb.l

mkv_write_simpletag.exit.thread:                  ; preds = %mkv_check_tag_name.exit.thread52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %start_ebml_master_crc32.exit

bb.l:                                             ; preds = %mkv_check_tag_name.exit.thread52
  %i.as = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ar, i32 noundef 45) #15 ; 3 uses
  %.not23.i = icmp eq ptr %i.as, null
  br i1 %.not23.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = call ptr @ff_convert_lang_to(ptr noundef nonnull %i.at, i32 noundef 0) #14 ; 2 uses
  %.not24.i = icmp eq ptr %i.au, null
  br i1 %.not24.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.as, align 1, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0.i = phi ptr [ %i.au, %bb.n ], [ null, %bb.m ], [ null, %bb.l ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.016.i = phi ptr [ %i.ar, %bb.o ], [ %i.ay, %bb.s ] ; 3 uses
  %i.av = load i8, ptr %.016.i, align 1, !tbaa !56 ; 3 uses
  switch i8 %i.av, label %bb.q [
    i8 0, label %bb.t
    i8 32, label %.sink.split.i43
  ]

bb.q:                                             ; preds = %bb.p
  %i.aw = add i8 %i.av, -97
  %or.cond.i = icmp ult i8 %i.aw, 26
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = add nsw i8 %i.av, -32
  br label %.sink.split.i43

.sink.split.i43:                                  ; preds = %bb.r, %bb.p
  %.sink.i = phi i8 [ %i.ax, %bb.r ], [ 95, %bb.p ]
  store i8 %.sink.i, ptr %.016.i, align 1, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i43, %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.p, !llvm.loop !294

bb.t:                                             ; preds = %bb.p
  store i32 26568, ptr %6, align 16, !tbaa !53
  store i32 7, ptr %i.ab, align 4, !tbaa !54
  store <4 x i32> <i32 -1, i32 -1, i32 17827, i32 4>, ptr %i.ac, align 8, !tbaa !55
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !56
  %.not26.i = icmp eq ptr %.0.i, null
  br i1 %.not26.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 17530, ptr %i.ae, align 16, !tbaa !53
  store i32 4, ptr %i.af, align 4, !tbaa !54
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.i = phi i32 [ 2, %bb.t ], [ 3, %bb.u ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bb = zext nneg i32 %.sroa.0.0.i to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.bb ; 3 uses
  store i32 17543, ptr %i.bc, align 16, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 4, ptr %i.bd, align 4, !tbaa !54
  %i.be = add nuw nsw i32 %.sroa.0.0.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !56
  %i.bg = call fastcc i32 @ebml_writer_elem_len(ptr noundef nonnull %6, i32 noundef %i.be) ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %mkv_write_simpletag.exit.thread56, label %mkv_write_simpletag.exit

mkv_write_simpletag.exit.thread56:                ; preds = %bb.v
  call void @av_freep(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %start_ebml_master_crc32.exit

mkv_write_simpletag.exit:                         ; preds = %bb.v
  %i.bi = call fastcc i32 @ebml_writer_elem_write(ptr noundef nonnull %6, ptr noundef %i.d) ; 0 uses
  call void @av_freep(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %mkv_check_tag_name.exit.thread

mkv_check_tag_name.exit.thread:                   ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %mkv_write_simpletag.exit, %mkv_check_tag_name.exit
  %.1 = phi i32 [ %.062, %mkv_check_tag_name.exit ], [ 1, %mkv_write_simpletag.exit ], [ %.062, %bb.k ], [ %.062, %bb.i ], [ %.062, %bb.h ], [ %.062, %bb.g ], [ %.062, %bb.f ], [ %.062, %bb.e ] ; 2 uses
  %i.bj = call ptr @av_dict_iterate(ptr noundef %1, ptr noundef nonnull %i.ah) #14 ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !295

._crit_edge:                                      ; preds = %mkv_check_tag_name.exit.thread
  %.not36 = icmp eq i32 %3, 0
  br i1 %.not36, label %bb.x, label %bb.w

._crit_edge.thread:                               ; preds = %mkv_write_tag_targets.exit
  %.not3677 = icmp eq i32 %3, 0
  br i1 %.not3677, label %start_ebml_master_crc32.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call fastcc void @put_ebml_void(ptr noundef %i.d, i32 noundef %3)
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.bk = icmp eq i32 %.1, 0
  br i1 %i.bk, label %start_ebml_master_crc32.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = call i32 @avio_get_dyn_buf(ptr noundef %i.d, ptr noundef nonnull %i.b) #14 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !138 ; 2 uses
  %.not38 = icmp eq i32 %i.bn, 0
  br i1 %.not38, label %bb.z, label %start_ebml_master_crc32.exit

bb.z:                                             ; preds = %bb.y
  %i.bo = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %.not39 = icmp eq ptr %i.bo, null
  br i1 %.not39, label %bb.aa, label %start_ebml_master_crc32.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bp = call i32 @avio_open_dyn_buf(ptr noundef nonnull %2) #14 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %start_ebml_master_crc32.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !60
  %.not6.i = icmp eq i32 %i.bs, 0
  %.pre63 = load ptr, ptr %2, align 8, !tbaa !59  ; 4 uses
  br i1 %.not6.i, label %start_ebml_master_crc32.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 7
  %i.bw = lshr i32 %i.bv, 3                       ; 2 uses
  %.not4.i.i.i45 = icmp eq i32 %i.bw, 0
  br i1 %.not4.i.i.i45, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %bb.ac, %.lr.ph.i.i.i46
  %.05.i.i.i47 = phi i32 [ %i.bx, %.lr.ph.i.i.i46 ], [ %i.bw, %bb.ac ]
  %i.bx = add nsw i32 %.05.i.i.i47, -1            ; 3 uses
  %i.by = shl nsw i32 %i.bx, 3
  %i.bz = lshr i32 236, %i.by
  call void @avio_w8(ptr noundef %.pre63, i32 noundef %i.bz) #14
  %.not.i.i.i48 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i48, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i46, !llvm.loop !0

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i.i46, %bb.ac
  call void @avio_w8(ptr noundef %.pre63, i32 noundef 132) #14
  call void @ffio_fill(ptr noundef %.pre63, i32 noundef 0, i64 noundef 4) #14
  %.pre = load ptr, ptr %2, align 8, !tbaa !59
  br label %start_ebml_master_crc32.exit.thread

start_ebml_master_crc32.exit.thread:              ; preds = %bb.ab, %.lr.ph.i.i7.i, %bb.z
  %i.ca = phi ptr [ %.pre63, %bb.ab ], [ %.pre, %.lr.ph.i.i7.i ], [ %i.bo, %bb.z ] ; 3 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 115), align 1, !tbaa !56
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, 15
  %i.cf = lshr i32 %i.ce, 3
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %start_ebml_master_crc32.exit.thread, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.cg, %.lr.ph.i.i ], [ %i.cf, %start_ebml_master_crc32.exit.thread ]
  %i.cg = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.ch = shl nsw i32 %i.cg, 3
  %i.ci = lshr i32 29555, %i.ch
  %i.cj = and i32 %i.ci, 115
  call void @avio_w8(ptr noundef %i.ca, i32 noundef %i.cj) #14
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %put_ebml_binary.exit, label %.lr.ph.i.i, !llvm.loop !0

put_ebml_binary.exit:                             ; preds = %.lr.ph.i.i
  %i.ck = sext i32 %i.bl to i64
  call fastcc void @put_ebml_length(ptr noundef %i.ca, i64 noundef %i.ck, i32 noundef 0)
  call void @avio_write(ptr noundef %i.ca, ptr noundef %i.cb, i32 noundef %i.bl) #14
  br label %start_ebml_master_crc32.exit

start_ebml_master_crc32.exit:                     ; preds = %._crit_edge.thread, %bb.aa, %mkv_write_simpletag.exit.thread56, %mkv_write_simpletag.exit.thread, %bb.y, %bb.x, %put_ebml_binary.exit
  %.3 = phi i32 [ %i.bg, %mkv_write_simpletag.exit.thread56 ], [ 0, %bb.x ], [ 0, %put_ebml_binary.exit ], [ -12, %mkv_write_simpletag.exit.thread ], [ %i.bn, %bb.y ], [ %i.bp, %bb.aa ], [ 0, %._crit_edge.thread ]
  call void @ffio_reset_dyn_buf(ptr noundef %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.3
}

declare ptr @av_dict_iterate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ff_convert_lang_to(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare ptr @avcodec_descriptor_get(i32 noundef) local_unnamed_addr #2

declare void @ff_metadata_conv_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avio_write_marker(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @mkv_write_packet_internal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [913 x i8], align 16              ; 10 uses
  %i.b = alloca [860 x i8], align 16              ; 9 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %2 = alloca [18 x %struct.EbmlElement], align 16 ; 21 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !113
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86   ; 10 uses
  %i.u = getelementptr inbounds [120 x i8], ptr %i.t, i64 %i.n ; 15 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !87
  %i.w = icmp eq i32 %i.v, 3                      ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !114
  %i.z = trunc i32 %i.y to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i1 [ true, %bb.a ], [ %i.z, %bb.b ] ; 4 uses
  %i.ab = zext i1 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !298 ; 2 uses
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 0) ; 6 uses
  %i.ae = select i1 %i.w, i64 %spec.select, i64 0
  %i.af = load i32, ptr %i.u, align 8, !tbaa !121
  %.not = icmp eq i32 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.in = select i1 %.not, ptr %i.ah, ptr %i.ag
  %i.ai = load i64, ptr %.in, align 8, !tbaa !65  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.104) #14
  br label %start_ebml_master_crc32.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !123
  %i.am = add nsw i64 %i.al, %i.ai                ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 7 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107
  %.not107 = icmp eq i64 %i.ao, -1
  br i1 %.not107, label %.thread122, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !122
  %i.ar = add i64 %i.am, 32768
  %i.as = sub i64 %i.ar, %i.aq
  %.not108 = icmp ult i64 %i.as, 65536
  br i1 %.not108, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 340
  %i.au = load i32, ptr %i.at, align 4, !tbaa !110
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !47 ; 3 uses
  %.not17.i = icmp eq i32 %i.aw, 0
  br i1 %.not17.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.aw to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967288
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.h ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.h ]
  %i.ay = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !111
  %i.ba = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 124
  store i32 0, ptr %i.bb, align 4, !tbaa !111
  %i.bc = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 244
  store i32 0, ptr %i.bd, align 4, !tbaa !111
  %i.be = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 364
  store i32 0, ptr %i.bf, align 4, !tbaa !111
  %i.bg = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 484
  store i32 0, ptr %i.bh, align 4, !tbaa !111
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 604
  store i32 0, ptr %i.bj, align 4, !tbaa !111
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 724
  store i32 0, ptr %i.bl, align 4, !tbaa !111
  %i.bm = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 844
  store i32 0, ptr %i.bn, align 4, !tbaa !111
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod151)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bo = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %indvars.iv.i.epil
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 0, ptr %i.bp, align 4, !tbaa !111
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.i, !llvm.loop !297

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.i, %.preheader.i, %bb.g
  store i64 -1, ptr %i.an, align 8, !tbaa !107
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.bt = tail call fastcc i32 @end_ebml_master_crc32(ptr noundef %i.br, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.i, i32 noundef 524531317, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %start_ebml_master_crc32.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !32
  tail call void @avio_write_marker(ptr noundef %i.bv, i64 noundef -9223372036854775808, i32 noundef 5) #14
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.105) #14
  %.pr.pre = load i64, ptr %i.an, align 8, !tbaa !107
  %i.bw = icmp eq i64 %.pr.pre, -1
  br i1 %i.bw, label %.thread122, label %.thread

.thread122:                                       ; preds = %bb.e, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59 ; 2 uses
  %.not.i113 = icmp eq ptr %i.by, null
  br i1 %.not.i113, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread122
  %i.bz = tail call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.bx) #14 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %start_ebml_master_crc32.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre129.pre = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %.thread122
  %.pre129 = phi ptr [ %.pre129.pre, %._crit_edge ], [ %i.by, %.thread122 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !60
  %.not6.i = icmp eq i32 %i.cc, 0
  br i1 %.not6.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 236), align 4, !tbaa !56
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, 7
  %i.cg = lshr i32 %i.cf, 3                       ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.ch, %.lr.ph.i.i.i ], [ %i.cg, %bb.m ]
  %i.ch = add nsw i32 %.05.i.i.i, -1              ; 3 uses
  %i.ci = shl nsw i32 %i.ch, 3
  %i.cj = lshr i32 236, %i.ci
  tail call void @avio_w8(ptr noundef %.pre129, i32 noundef %i.cj) #14
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i7.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i.i.i, %bb.m
  tail call void @avio_w8(ptr noundef %.pre129, i32 noundef 132) #14
  tail call void @ffio_fill(ptr noundef %.pre129, i32 noundef 0, i64 noundef 4) #14
  %.pre = load ptr, ptr %i.bx, align 8, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i7.i, %bb.l
  %i.ck = phi ptr [ %.pre, %.lr.ph.i.i7.i ], [ %.pre129, %bb.l ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 148
  store i32 1, ptr %i.cl, align 4, !tbaa !299
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !32
  %i.co = tail call i64 @avio_seek(ptr noundef %i.cn, i64 noundef 0, i32 noundef 1) #14
  store i64 %i.co, ptr %i.an, align 8, !tbaa !107
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !124 ; 3 uses
  %i.cq = tail call i64 @llvm.smax.i64(i64 %i.am, i64 0) ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i117, %bb.o ], [ 1, %bb.n ] ; 3 uses
  %.0.i115 = phi i64 [ %i.cr, %bb.o ], [ %i.cq, %bb.n ]
  %i.cr = lshr i64 %.0.i115, 8                    ; 2 uses
  %.not.i116 = icmp eq i64 %i.cr, 0
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i114, 1
  br i1 %.not.i116, label %bb.p, label %bb.o, !llvm.loop !2

bb.p:                                             ; preds = %bb.o
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_log2_tab, i64 231), align 1, !tbaa !56
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, 7
  %i.cv = lshr i32 %i.cu, 3                       ; 2 uses
  %.not4.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not4.i.i, label %put_ebml_id.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.cw, %.lr.ph.i.i ], [ %i.cv, %bb.p ]
  %i.cw = add nsw i32 %.05.i.i, -1                ; 3 uses
  %i.cx = shl nsw i32 %i.cw, 3
  %i.cy = lshr i32 231, %i.cx
  tail call void @avio_w8(ptr noundef %i.cp, i32 noundef %i.cy) #14
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %put_ebml_id.exit.i, label %.lr.ph.i.i, !llvm.loop !0

put_ebml_id.exit.i:                               ; preds = %.lr.ph.i.i, %bb.p
  %i.cz = and i64 %indvars.iv.i114, 4294967295
  tail call fastcc void @put_ebml_length(ptr noundef %i.cp, i64 noundef %i.cz, i32 noundef 0)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %put_ebml_id.exit.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.i114, %put_ebml_id.exit.i ], [ %indvars.iv.next17.i, %bb.q ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.da = shl nuw nsw i64 %indvars.iv.next17.i, 3
  %i.db = lshr i64 %i.cq, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 255
  tail call void @avio_w8(ptr noundef %i.cp, i32 noundef %i.dd) #14
  %i.de = icmp sgt i64 %indvars.iv16.i, 1
  br i1 %i.de, label %bb.q, label %put_ebml_uint.exit, !llvm.loop !3

put_ebml_uint.exit:                               ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.cq, ptr %i.df, align 8, !tbaa !122
  %i.dg = load i64, ptr %i.an, align 8, !tbaa !107
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.106, i64 noundef %i.cq, i64 noundef %i.dg) #14
  br label %.thread

.thread:                                          ; preds = %bb.f, %put_ebml_uint.exit, %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !124 ; 2 uses
  %i.dj = tail call i64 @avio_seek(ptr noundef %i.di, i64 noundef 0, i32 noundef 1) #14 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !84
  %i.dm = icmp ne i32 %i.dl, 94226
  %i.dn = load ptr, ptr %i.q, align 8, !tbaa !81  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  store ptr %i.u, ptr %i.dq, align 8, !tbaa !300
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  store ptr %1, ptr %i.dr, align 8, !tbaa !301
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !122
  %i.du = sub nsw i64 %i.am, %i.dt
  %i.dv = trunc i64 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  store i16 %i.dv, ptr %i.dw, align 8, !tbaa !302
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 298 ; 3 uses
  store i8 0, ptr %i.dx, align 2, !tbaa !303
  store i32 160, ptr %2, align 16, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 7, ptr %i.dy, align 4, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store <4 x i32> <i32 -1, i32 -1, i32 161, i32 6>, ptr %i.dz, align 8, !tbaa !55
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.i, ptr %i.eb, align 8, !tbaa !56
  %.not.i118 = icmp slt i64 %i.ad, 1
  br i1 %.not.i118, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.ec = load i32, ptr %i.dn, align 8, !tbaa !87
  %i.ed = icmp eq i32 %i.ec, 3
  br i1 %i.ed, label %parse_opus_packet_duration.exit.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !156 ; 2 uses
  %.not131.i = icmp eq i64 %i.ef, 0
  %.not132.i = icmp eq i64 %spec.select, %i.ef
  %or.cond141.i = or i1 %.not131.i, %.not132.i
  br i1 %or.cond141.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !155
  %.not133.i = icmp eq i64 %spec.select, %i.eh
  br i1 %.not133.i, label %bb.u, label %parse_opus_packet_duration.exit.sink.split.i

bb.u:                                             ; preds = %bb.t, %bb.s, %.thread
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.ek = icmp eq i32 %i.ej, 86076
  br i1 %i.ek, label %bb.v, label %parse_opus_packet_duration.exit.i

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !152 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !56
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = and i32 %i.eo, 3
  %i.eq = lshr i32 %i.eo, 3
  switch i32 %i.ep, label %default.unreachable [
    i32 0, label %bb.z
    i32 1, label %bb.w
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v, %bb.v
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !128
  %i.et = icmp slt i32 %i.es, 2
  br i1 %i.et, label %parse_opus_packet_duration.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !56
  %i.ew = and i8 %i.ev, 63
  %i.ex = zext nneg i8 %i.ew to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %.0.i.i = phi i64 [ %i.ex, %bb.y ], [ 2, %bb.w ], [ 1, %bb.v ]
  %i.ey = zext nneg i32 %i.eq to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @ff_opus_frame_duration, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !304
  %i.fb = zext i16 %i.fa to i64
  %i.fc = mul nuw nsw i64 %.0.i.i, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = tail call i64 @av_rescale_q(i64 noundef %i.fc, i64 206158430208001, i64 %i.fe) #16
  %.not134.i = icmp eq i64 %i.ff, %spec.select
  br i1 %.not134.i, label %parse_opus_packet_duration.exit.i, label %parse_opus_packet_duration.exit.sink.split.i

parse_opus_packet_duration.exit.sink.split.i:     ; preds = %bb.z, %bb.t, %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 155, ptr %i.fg, align 16, !tbaa !53
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.fh, align 4, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %spec.select, ptr %i.fi, align 8, !tbaa !56
  br label %parse_opus_packet_duration.exit.i

parse_opus_packet_duration.exit.i:                ; preds = %parse_opus_packet_duration.exit.sink.split.i, %bb.z, %bb.x, %bb.u
  %.sroa.0.0.i = phi i32 [ 2, %bb.z ], [ 2, %bb.u ], [ 2, %bb.x ], [ 3, %parse_opus_packet_duration.exit.sink.split.i ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !128
  %i.fl = load i64, ptr %i.ah, align 8, !tbaa !305
  %i.fm = load i64, ptr %i.ag, align 8, !tbaa !126
  %i.fn = load i64, ptr %i.ac, align 8, !tbaa !298
  %i.fo = load i64, ptr %i.an, align 8, !tbaa !107
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.107, i32 noundef %i.fk, i64 noundef %i.fl, i64 noundef %i.fm, i64 noundef %i.fn, i64 noundef %i.dj, i64 noundef %i.fo, i32 noundef %i.dp, i32 noundef range(i32 0, 2) %i.ab) #14
  %i.fp = call ptr @av_packet_get_side_data(ptr noundef nonnull %1, i32 noundef 11, ptr noundef nonnull %i.c) #14 ; 2 uses
  %i.fq = icmp ne ptr %i.fp, null
  %i.fr = load i64, ptr %i.c, align 8
  %i.fs = icmp ugt i64 %i.fr, 9
  %or.cond.i = select i1 %i.fq, i1 %i.fs, i1 false
  br i1 %or.cond.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %parse_opus_packet_duration.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fu = load i32, ptr %i.ft, align 1, !tbaa !56 ; 2 uses
  %.not136.i = icmp eq i32 %i.fu, 0
  br i1 %.not136.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dn, i64 152
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !153
  %.sroa.214.0.insert.ext.i = zext i32 %i.fx to i64
  %.sroa.214.0.insert.shift.i = shl nuw i64 %.sroa.214.0.insert.ext.i, 32
  %.sroa.013.0.insert.insert.i = or disjoint i64 %.sroa.214.0.insert.shift.i, 1
  %i.fy = call i64 @av_rescale_q(i64 noundef %i.fv, i64 %.sroa.013.0.insert.insert.i, i64 4294967296000000001) #16
  %i.fz = zext nneg i32 %.sroa.0.0.i to i64
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.fz ; 3 uses
  store i32 30114, ptr %i.ga, align 16, !tbaa !53
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 1, ptr %i.gb, align 4, !tbaa !54
  %i.gc = add nuw nsw i32 %.sroa.0.0.i, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i64 %i.fy, ptr %i.gd, align 8, !tbaa !56
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %parse_opus_packet_duration.exit.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.aa ], [ %i.gc, %bb.ab ], [ %.sroa.0.0.i, %parse_opus_packet_duration.exit.i ] ; 11 uses
  %i.ge = zext nneg i32 %.sroa.0.1.i to i64
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ge ; 11 uses
  store i32 30113, ptr %i.gf, align 16, !tbaa !53
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 7, ptr %i.gg, align 4, !tbaa !54
  %i.gh = add nuw nsw i32 %.sroa.0.1.i, 1         ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i32 0, ptr %i.gj, align 4, !tbaa !89
  store i32 -1, ptr %i.gi, align 8, !tbaa !90
  %i.gk = call ptr @av_packet_get_side_data(ptr noundef nonnull %1, i32 noundef 15, ptr noundef nonnull %i.c) #14 ; 3 uses
  %i.gl = icmp ne ptr %i.gk, null
  %i.gm = load i64, ptr %i.c, align 8             ; 2 uses
end_hunk_5
