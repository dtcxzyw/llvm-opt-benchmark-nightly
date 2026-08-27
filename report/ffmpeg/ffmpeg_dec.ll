Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg_dec?download=true
inline.NumInlined: 40
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ViewSpecifier = type { i32, i32 }
%struct.AVSubtitle = type { i16, i32, i32, i32, ptr, i64 }
%struct.DecoderOpts = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.AVRational, %struct.AVRational }
%struct.AVRational = type { i32, i32 }
%struct.DecThreadContext = type { ptr, ptr }

@.str = private unnamed_addr constant [169 x i8] c"Manually selecting views with -view_ids cannot be combined with view selection via stream specifiers. It is strongly recommended you always use stream specifiers only.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Too many view specifiers\0A\00", align 1
@nb_decoders = external global i32, align 4
@decoders = external global ptr, align 8
@nb_output_files = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid output file index '%d' in %s\0A\00", align 1
@output_files = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid output stream index '%d' in %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Output stream %s has no encoder\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No such decoder: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dec%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Decoder\00", align 1
@dec_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.7, ptr @dec_item_name, ptr null, i32 3998052, i32 0, i32 208, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Decoder thread received %s packet\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Cannot initialize a standalone decoder\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Decoder returned EOF, %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"resetting\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"finishing\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Error processing packet in decoder: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Error signalling EOF timestamp: %s\0A\00", align 1
@max_error_rate = external local_unnamed_addr global float, align 4
@.str.18 = private unnamed_addr constant [41 x i8] c"Decode error rate %g exceeds maximum %g\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Decode error rate %g\0A\00", align 1
@__const.dec_thread_set_name.name = private unnamed_addr constant [16 x i8] c"dec\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Cannot find a decoder for codec ID '%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"A decoder returned an unexpected error code. This is a bug, please report it.\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Error submitting %s to decoder: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@exit_on_error = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"decode_%s %s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"pkt\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"fftools/ffmpeg_dec.c\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Decoding error: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"corrupt decoded frame\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Error while processing the decoded data\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"outputs_mask\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Error decoding subtitles: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"Subtitle duration reduced from %d to %d%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c", dropping it\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [83 x i8] c"Audio timestamps cannot be represented exactly after sample rate change: %d -> %d\0A\00", align 1
@debug_ts = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [129 x i8] c"decoder -> pts:%s pts_time:%s pkt_dts:%s pkt_dts_time:%s duration:%s duration_time:%s keyframe:%d frame_type:%d time_base:%d/%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Error applying decoder cropping\0A\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Failed to transfer data to output frame: %d.\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"NOPTS\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"view_ids\00", align 1
@.str.46 = private unnamed_addr constant [89 x i8] c"Manually selecting views with -view_ids is not recommended, use view specifiers instead\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"dec:%s\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"Error initializing the decoder context.\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"Hardware device setup failed for decoder: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Error applying decoder options: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"Error while opening decoder: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"Error setting up multiview decoding: %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"view_ids_available\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"Multiview decoding requested, but decoder '%s' does not support it\0A\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"Too many views in video: %u\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"view_pos_available\00", align 1
@.str.59 = private unnamed_addr constant [146 x i8] c"View with index %u requested, but only %u views available in current video sequence (more views may or may not be available in later sequences).\0A\00", align 1
@.str.60 = private unnamed_addr constant [71 x i8] c"View with ID %u requested, but is not available in the video sequence\0A\00", align 1
@.str.61 = private unnamed_addr constant [74 x i8] c"View position '%s' requested, but is not available in the video sequence\0A\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"No views were selected for decoding\0A\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"views_wanted\00", align 1
@.str.64 = private unnamed_addr constant [99 x i8] c"Invalid hwaccel device specified for decoder: device %s of type %s is not usable with hwaccel %s.\0A\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"__qsv_device\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"Using auto hwaccel type %s with existing device %s.\0A\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"Using auto hwaccel type %s with new device created from %s.\0A\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"Using auto hwaccel type %s with new default device.\0A\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"Auto hwaccel disabled: no device found.\0A\00", align 1
@.str.70 = private unnamed_addr constant [70 x i8] c"No device available for decoder: device type %s needed for codec %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @dec_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @avcodec_free_context(ptr noundef nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @av_packet_free(ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  tail call void @av_dict_free(ptr noundef nonnull %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @av_frame_free(ptr noundef nonnull %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @av_frame_free(ptr noundef nonnull %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  tail call void @av_frame_free(ptr noundef nonnull %i.i) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  tail call void @av_freep(ptr noundef nonnull %i.k) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @av_freep(ptr noundef nonnull %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  tail call void @av_freep(ptr noundef nonnull %i.m) #13
  tail call void @av_freep(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @avcodec_free_context(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare void @av_dict_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @dec_request_view(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ViewSpecifier, align 4      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  %.not66 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %1, align 4, !tbaa !26
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  store i32 3, ptr %2, align 4, !tbaa !29
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.f, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !29
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %.sroa.313.0..sroa_idx, align 4, !tbaa !29
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %.not67 = icmp eq i32 %i.g, 0
  br i1 %.not67, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %3, align 4, !tbaa !26
  %.4..4..4.gep.sroa_idx110 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.4..4..4.gep.sroa_idx110, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.h = phi i32 [ 1, %bb.h ], [ %i.g, %bb.g ]
  %i.i = phi ptr [ %3, %bb.h ], [ %1, %bb.g ]     ; 2 uses
  %.sroa.phi = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %.not6875 = icmp sgt i32 %i.k, 0
  br i1 %.not6875, label %.lr.ph, label %.critedge71

.lr.ph:                                           ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 3 uses
  %.fr78 = freeze i32 %i.h                        ; 2 uses
  %i.n = icmp eq i32 %.fr78, 4
  %wide.trip.count88 = zext nneg i32 %i.k to i64  ; 2 uses
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv85
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.critedge71, label %.lr.ph.split.us, !llvm.loop !33

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = icmp eq i32 %.fr78, %i.s
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.u = load i32, ptr %.sroa.phi, align 4, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.k, %.lr.ph.split.us
  %i.y = phi i64 [ %indvars.iv85, %.lr.ph.split.us ], [ %indvars.iv, %bb.k ]
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !35
  store i32 3, ptr %2, align 4, !tbaa !29
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ab, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !29
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ad, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !29
  br label %bb.r

bb.l:                                             ; preds = %bb.k, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count88
  br i1 %exitcond.not, label %.critedge71, label %.lr.ph.split, !llvm.loop !33

.critedge71:                                      ; preds = %bb.l, %bb.j, %bb.i
  %i.ae = icmp ugt i32 %i.k, 63
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge71
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1) #13
  br label %bb.r

bb.n:                                             ; preds = %.critedge71
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ag = add nuw nsw i32 %i.k, 1
  %i.ah = tail call i32 @grow_array(ptr noundef nonnull %i.af, i32 noundef 12, ptr noundef nonnull %i.j, i32 noundef %i.ag) #13 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !31  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !28
  %i.ap = tail call i32 @sch_add_dec_output(ptr noundef %i.am, i32 noundef %i.ao) #13 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i32, ptr %i.j, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o
  %i.ar = phi i32 [ %i.aj, %bb.o ], [ %.pre, %._crit_edge ]
  %.056 = phi i32 [ 0, %bb.o ], [ %i.ap, %._crit_edge ]
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr [12 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %.056, ptr %i.av, align 4, !tbaa !35
  %i.aw = getelementptr i8, ptr %i.au, i64 -12
  %i.ax = load i64, ptr %i.i, align 4
  store i64 %i.ax, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !28
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.bb = load i32, ptr %i.j, align 8, !tbaa !31
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [12 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !35
  store i32 3, ptr %2, align 4, !tbaa !29
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.az, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bf, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.p, %bb.n, %bb.q, %bb.m, %bb.e, %bb.d
  %.3 = phi i32 [ 0, %bb.d ], [ -22, %bb.e ], [ -38, %bb.m ], [ 0, %.critedge ], [ %i.ah, %bb.n ], [ 0, %bb.q ], [ %i.ap, %bb.p ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @grow_array(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sch_add_dec_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dec_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %0, align 8, !tbaa !9
  %i.b = load i32, ptr %3, align 8, !tbaa !38
  %i.c = lshr i32 %i.b, 4
  %.lobit = and i32 %i.c, 1
  %i.d = call fastcc i32 @dec_alloc(ptr noundef %i.a, ptr noundef %1, i32 noundef %.lobit) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !43
  %i.h = tail call ptr @av_dict_get(ptr noundef %i.g, ptr noundef nonnull @.str.45, ptr noundef null, i32 noundef 0) #13
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %multiview_check_manual.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 24, ptr noundef nonnull @.str.46) #13
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  store i32 1, ptr %i.i, align 8, !tbaa !12
  br label %multiview_check_manual.exit

multiview_check_manual.exit:                      ; preds = %bb.b, %bb.c
  %i.j = tail call fastcc i32 @dec_open(ptr noundef %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4) ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %multiview_check_manual.exit
  store ptr %i.f, ptr %0, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %multiview_check_manual.exit
  call void @dec_free(ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ %i.j, %bb.e ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dec_alloc(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %0, align 8, !tbaa !41
  %i.b = tail call noalias ptr @av_mallocz(i64 noundef 312) #13 ; 15 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !41
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @av_frame_alloc() #13      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.c, ptr %i.d, align 8, !tbaa !44
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @av_packet_alloc() #13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
end_hunk_0
