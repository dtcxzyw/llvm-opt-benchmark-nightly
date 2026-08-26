Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avienc?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFOutputFormat = type { %struct.AVOutputFormat, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AVOutputFormat = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"avi\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"AVI (Audio Video Interleaved)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"video/x-msvideo\00", align 1
@ff_riff_codec_tags_list = external constant [0 x ptr], align 8
@ff_avi_muxer = local_unnamed_addr constant %struct.FFOutputFormat { %struct.AVOutputFormat { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str, i32 86019, i32 12, i32 0, i32 0, ptr @ff_riff_codec_tags_list, ptr @avi_muxer_class }, i32 72, i32 0, ptr @avi_write_header, ptr @avi_write_packet, ptr @avi_write_trailer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @avi_init, ptr @avi_deinit, ptr null }, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"AVI muxer\00", align 1
@avi_muxer_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.3, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"reserve_index_space\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"reserve space (in bytes) at the beginning of the file for each stream index\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"write_channel_mask\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"write channel mask into wave format header\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"flipped_raw_rgb\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Raw RGB bitmaps are stored bottom-up\00", align 1
@options = internal constant [4 x { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 52, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 60, i32 18, %union.anon { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 64, i32 18, %union.anon zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [35 x i8] c"AVI does not support >100 streams\0A\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"duration_est:%0.3f, filesize_est:%0.1fGiB, master_index_max_size:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"strh\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Subtitle streams other than DivX XSUB\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"%dx%d dimensions are too big\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"strf\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"%s rawvideo cannot be written to avi, output file will be unreadable\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"PAL8 with %d bps is not allowed\0A\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"Invalid or not supported codec type '%s' found in the input\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"strn\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Subtitle - %s-xx;02\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"vprp\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"par->bits_per_coded_sample >= 0 && par->bits_per_coded_sample <= 8\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"libavformat/avienc.c\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"Too large number of skipped frames %ld > 60000\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"pb->seekable & (1 << 0)\00", align 1
@.str.46 = private unnamed_addr constant [84 x i8] c"avi->riff_id - avist->indexes.master_odml_riff_id_base < avi->master_index_max_size\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"OpenDML index duration for audio packets with partial frames\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"idx1\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"avist->frames_hdr_strm\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"avi->frames_hdr_all\00", align 1
@.str.52 = private unnamed_addr constant [110 x i8] c"Output file not strictly OpenDML compliant, consider re-muxing with 'reserve_index_space' option value >= %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"reserve_index_space:%d master_index_max_size:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @avi_write_header(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 80 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %i.l = icmp ugt i32 %i.k, 100
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #9
  br label %.thread359

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !33
  %.not396 = icmp eq i32 %i.k, 0
  br i1 %.not396, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 1, ptr %i.p, align 8, !tbaa !35
  br label %avi_start_new_riff.exit

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.j, align 4, !tbaa !27   ; 4 uses
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.e, label %._crit_edge, !llvm.loop !36

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.u = tail call noalias ptr @av_mallocz(i64 noundef 2144) #9 ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.u, ptr %i.y, align 8, !tbaa !41
  %.not340 = icmp eq ptr %i.u, null
  br i1 %.not340, label %.thread359, label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !9   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 0, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !35
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %avi_start_new_riff.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 5 uses
  %wide.trip.count.i = zext i32 %i.r to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.af = icmp ult i32 %i.r, 4
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i32 0, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i64 %i.au, ptr %i.av, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i32 0, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 0, ptr %i.bo, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %avi_start_new_riff.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !54

avi_start_new_riff.exit.loopexit.unr-lcssa:       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %avi_start_new_riff.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %avi_start_new_riff.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %avi_start_new_riff.exit.loopexit.unr-lcssa ]
  %lcmp.mod526 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod526)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.epil
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store i32 0, ptr %i.bw, align 8, !tbaa !53
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %avi_start_new_riff.exit, label %bb.g, !llvm.loop !55

avi_start_new_riff.exit:                          ; preds = %avi_start_new_riff.exit.loopexit.unr-lcssa, %bb.g, %._crit_edge.thread, %._crit_edge
  %i.bx = phi ptr [ %i.g, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %bb.g ], [ %.pre, %avi_start_new_riff.exit.loopexit.unr-lcssa ]
  %i.by = tail call i64 @ff_start_tag(ptr noundef %i.i, ptr noundef nonnull @.str.39) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !57
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef 541677121) #9
  %i.ca = tail call i64 @ff_start_tag(ptr noundef %i.i, ptr noundef nonnull @.str.17) #9
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef 1819436136) #9
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef 1751742049) #9
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef 56) #9
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !27  ; 3 uses
  %.not397 = icmp eq i32 %i.cb, 0                 ; 2 uses
  br i1 %.not397, label %._crit_edge385, label %.lr.ph384

.lr.ph384:                                        ; preds = %avi_start_new_riff.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !38
  %wide.trip.count = zext i32 %i.cb to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph384, %bb.j
  %indvars.iv418 = phi i64 [ 0, %.lr.ph384 ], [ %indvars.iv.next419, %bb.j ] ; 2 uses
  %.0287383 = phi i64 [ 0, %.lr.ph384 ], [ %spec.select362, %bb.j ]
  %.0291381 = phi i64 [ 0, %.lr.ph384 ], [ %.1292, %bb.j ] ; 2 uses
  %.0293380 = phi ptr [ null, %.lr.ph384 ], [ %spec.select342, %bb.j ]
  %.0295379 = phi ptr [ null, %.lr.ph384 ], [ %spec.select341, %bb.j ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv418
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 3 uses
  %sext398 = shl i64 %.0287383, 32
  %i.ci = ashr exact i64 %sext398, 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cl = add nsw i64 %i.ck, %i.ci
  %spec.select362 = tail call i64 @llvm.smin.i64(i64 %i.cl, i64 2147483647) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !62 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = tail call i64 @av_rescale_q(i64 noundef %i.cn, i64 %i.cq, i64 4294967296000001) #10
  %i.cs = tail call i64 @llvm.smax.i64(i64 %i.cr, i64 %.0291381)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1292 = phi i64 [ %i.cs, %bb.i ], [ %.0291381, %bb.h ] ; 2 uses
  %i.ct = load i32, ptr %i.ch, align 8, !tbaa !63
end_hunk_0
begin_hunk_1_@avi_write_header:bb.a
  store i32 %i.dp, ptr %i.dm, align 8, !tbaa !67
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.16, double noundef %.0301, double noundef %i.dj, i32 noundef %i.dp) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge385
  %.not319 = icmp eq ptr %.0295.lcssa, null
  br i1 %.not319, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %.0295.lcssa, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !68
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul nsw i64 %i.ds, 1000000
  %i.du = getelementptr inbounds nuw i8, ptr %.0295.lcssa, i64 36
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !69
  %i.dw = sext i32 %i.dv to i64
  %i.dx = sdiv i64 %i.dt, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %i.dy, %bb.q ], [ 0, %bb.p ]
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef %.sink) #9
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef %.0287.lcssa) #9
  tail call void @avio_wl32(ptr noundef %i.i, i32 noundef 0) #9
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !70
  %i.eb = and i32 %i.ea, 1
  %.not320 = icmp eq i32 %i.eb, 0
  %. = select i1 %.not320, i32 2304, i32 2320
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %.) #9
  %i.ec = tail call i64 @avio_seek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 1) #9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !72
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !27
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.ee) #9
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 1048576) #9
  %.not321 = icmp eq ptr %.0293.lcssa, null
  br i1 %.not321, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.0293.lcssa, i64 72
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !73
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.eg) #9
  %i.eh = getelementptr inbounds nuw i8, ptr %.0293.lcssa, i64 76
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !74
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink476 = phi i32 [ 0, %bb.t ], [ %i.ei, %bb.s ]
  tail call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %.sink476) #9
  tail call void @ffio_fill(ptr noundef nonnull %i.i, i32 noundef 0, i64 noundef 16) #9
  br i1 %.not397, label %._crit_edge395, label %.lr.ph394

.lr.ph394:                                        ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %wide.trip.count425 = zext i32 %i.cb to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph394, %bb.bp
  %indvars.iv422 = phi i64 [ 0, %.lr.ph394 ], [ %indvars.iv.next423, %bb.bp ] ; 4 uses
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv422
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !39 ; 9 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !58 ; 23 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !41 ; 3 uses
  %i.et = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.17) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 1819440243) #9
  %i.eu = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.19) #9
  %i.ev = load i32, ptr %i.eq, align 8, !tbaa !63
  switch i32 %i.ev, label %.thread [
    i32 3, label %bb.w
    i32 0, label %bb.aa
    i32 1, label %bb.y
    i32 2, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !75
  %.not324 = icmp eq i32 %i.ex, 94211
  br i1 %.not324, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #9
  br label %.thread359

bb.y:                                             ; preds = %bb.v
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.w, %bb.z, %bb.y
  %.sink477 = phi i32 [ 1937006948, %bb.z ], [ 1935963489, %bb.y ], [ 1935960438, %bb.w ], [ 1935960438, %bb.v ]
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %.sink477) #9
  %.pr = load i32, ptr %i.eq, align 8, !tbaa !63
  %i.ey = icmp eq i32 %.pr, 0
  br i1 %i.ey, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.v, %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !75
  %i.fb = icmp eq i32 %i.fa, 94211
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread, %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.sink478 = phi i32 [ %i.fd, %bb.ab ], [ 1, %.thread ]
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %.sink478) #9
  %i.fe = call i64 @avio_seek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 1) #9
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !77
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl16(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl16(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @ff_parse_specific_params(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.fg = load i32, ptr %i.eq, align 8, !tbaa !63
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ad, label %._crit_edge427

._crit_edge427:                                   ; preds = %bb.ac
  %.pre428 = load i32, ptr %i.c, align 4, !tbaa !78
  %.pre430 = load i32, ptr %i.a, align 4, !tbaa !78
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !75
  %.not325 = icmp ne i32 %i.fj, 94211
  %.pre429 = load i32, ptr %i.c, align 4, !tbaa !78 ; 2 uses
  %.pre431 = load i32, ptr %i.a, align 4, !tbaa !78 ; 2 uses
  %i.fk = sext i32 %.pre431 to i64
  %i.fl = sext i32 %.pre429 to i64
  %i.fm = mul nsw i64 %i.fl, 1000
  %i.fn = icmp slt i64 %i.fm, %i.fk
  %or.cond482 = select i1 %.not325, i1 %i.fn, i1 false
  br i1 %or.cond482, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 600, ptr %i.a, align 4, !tbaa !78
  store i32 1, ptr %i.c, align 4, !tbaa !78
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge427, %bb.ae, %bb.ad
  %i.fo = phi i32 [ %.pre430, %._crit_edge427 ], [ 600, %bb.ae ], [ %.pre431, %bb.ad ]
  %i.fp = phi i32 [ %.pre428, %._crit_edge427 ], [ 1, %bb.ae ], [ %.pre429, %bb.ad ]
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.eo, i32 noundef 64, i32 noundef %i.fp, i32 noundef %i.fo) #9
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 5 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !75
  %i.fs = icmp eq i32 %i.fr, 94211
  br i1 %i.fs, label %bb.ag, label %._crit_edge432

._crit_edge432:                                   ; preds = %bb.af
  %.pre433 = load i32, ptr %i.c, align 4, !tbaa !78
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.a, align 4, !tbaa !78
  store i32 0, ptr %i.c, align 4, !tbaa !78
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge432, %bb.ag
  %i.ft = phi i32 [ %.pre433, %._crit_edge432 ], [ 0, %bb.ag ]
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.ft) #9
  %i.fu = load i32, ptr %i.a, align 4, !tbaa !78
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.fu) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  %i.fv = call i64 @avio_seek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 1) #9
  store i64 %i.fv, ptr %i.es, align 8, !tbaa !79
  %i.fw = load i32, ptr %i.dz, align 8, !tbaa !70
  %i.fx = shl i32 %i.fw, 30
  %i.fy = and i32 %i.fx, 1073741824
  %.485 = xor i32 %i.fy, 1073741824
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %.485) #9
  %i.fz = load i32, ptr %i.eq, align 8, !tbaa !63 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.fz, 1
  %switch.select = select i1 %switch.selectcmp, i32 12288, i32 0
  %switch.selectcmp486 = icmp eq i32 %i.fz, 0
  %switch.select487 = select i1 %switch.selectcmp486, i32 1048576, i32 %switch.select
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %switch.select487) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef -1) #9
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !78
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.ga) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 6 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !73 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 65535
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eq, i64 76 ; 6 uses
  %.pre435 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74 ; 2 uses
  %i.ge = icmp sgt i32 %.pre435, 65535
  %or.cond511 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond511, label %split, label %bb.ai

split:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %i.gc, i32 noundef %.pre435) #9
  br label %.thread359

bb.ai:                                            ; preds = %bb.ah
  call void @avio_wl16(ptr noundef nonnull %i.i, i32 noundef %i.gc) #9
  %i.gf = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  call void @avio_wl16(ptr noundef nonnull %i.i, i32 noundef %i.gf) #9
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.eu) #9
  %i.gg = load i32, ptr %i.eq, align 8, !tbaa !63
  %.not327 = icmp eq i32 %i.gg, 2
  br i1 %.not327, label %.thread348, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gh = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.25) #9
  %i.gi = load i32, ptr %i.eq, align 8, !tbaa !63 ; 2 uses
  switch i32 %i.gi, label %bb.ay [
    i32 3, label %bb.ak
    i32 0, label %bb.al
    i32 1, label %bb.ax
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gj = load i32, ptr %i.fq, align 4, !tbaa !75
  %.not328 = icmp eq i32 %i.gj, 94211
  br i1 %.not328, label %bb.al, label %bb.az

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !76
  %.not329 = icmp eq i32 %i.gl, 0
  br i1 %.not329, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.gm = load i32, ptr %i.fq, align 4, !tbaa !75
  %i.gn = icmp eq i32 %i.gm, 13
  br i1 %i.gn, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.go = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !80
  %i.gq = icmp eq i32 %i.gp, 39
  br i1 %i.gq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !81
  %i.gt = icmp eq i32 %i.gs, 15
  br i1 %i.gt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 16, ptr %i.gr, align 8, !tbaa !81
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.gu = call i64 @avio_seek(ptr noundef nonnull %i.i, i64 noundef 0, i32 noundef 1) #9
  %i.gv = add nsw i64 %i.gu, 40
  %i.gw = getelementptr inbounds nuw i8, ptr %i.es, i64 2136
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !82
  %i.gx = load i32, ptr %i.el, align 8, !tbaa !83
  call void @ff_put_bmp_header(ptr noundef nonnull %i.i, ptr noundef nonnull %i.eq, i32 noundef 0, i32 noundef 0, i32 noundef %i.gx) #9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !81
  %i.ha = call i32 @avpriv_pix_fmt_find(i32 noundef 1, i32 noundef %i.gz) #9
  %i.hb = load i32, ptr %i.gk, align 8, !tbaa !76
  %.not330 = icmp eq i32 %i.hb, 0
  br i1 %.not330, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.hc = load i32, ptr %i.fq, align 4, !tbaa !75
  %i.hd = icmp eq i32 %i.hc, 13
  br i1 %i.hd, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.he = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !80 ; 3 uses
  %.not331 = icmp eq i32 %i.hf, %i.ha
  %.not332 = icmp eq i32 %i.hf, -1
  %or.cond = or i1 %.not331, %.not332
  br i1 %or.cond, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hg = call ptr @av_get_pix_fmt_name(i32 noundef %i.hf) #9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.26, ptr noundef %i.hg) #9
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !80
  %i.hj = icmp eq i32 %i.hi, 11
  br i1 %i.hj, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.hk = load i32, ptr %i.gy, align 8, !tbaa !81 ; 2 uses
  %or.cond343 = icmp ugt i32 %i.hk, 8
  br i1 %or.cond343, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %i.hk) #9
  br label %.thread359

bb.ax:                                            ; preds = %bb.aj
  %i.hl = load i32, ptr %i.ek, align 4, !tbaa !84
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = select i1 %i.hm, i32 2, i32 0
  %i.ho = call i32 @ff_put_wav_header(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.eq, i32 noundef %i.hn) #9 ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %.thread359, label %bb.az

bb.ay:                                            ; preds = %bb.aj
  %i.hq = call ptr @av_get_media_type_string(i32 noundef %i.gi) #9 ; 2 uses
  %.not.i347 = icmp eq ptr %i.hq, null
  %i.hr = select i1 %.not.i347, ptr @.str.29, ptr %i.hq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.hr) #9
  br label %.thread359

bb.az:                                            ; preds = %bb.av, %bb.ax, %bb.au, %bb.ak
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.gh) #9
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !85
  %i.hu = call ptr @av_dict_get(ptr noundef %i.ht, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  %.not333 = icmp eq ptr %i.hu, null
  br i1 %.not333, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !86
  call void @ff_riff_write_info_tag(ptr noundef %i.hv, ptr noundef nonnull @.str.31, ptr noundef %i.hx) #9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hy = load i32, ptr %i.fq, align 4, !tbaa !75
  %i.hz = icmp eq i32 %i.hy, 94211
  br i1 %i.hz, label %bb.bc, label %.thread348

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load ptr, ptr %i.ej, align 8, !tbaa !38
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv422
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !39
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !85
  %i.if = call ptr @av_dict_get(ptr noundef %i.ie, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  %.not334 = icmp eq ptr %i.if, null
  br i1 %.not334, label %.thread348, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !86
  %i.ii = call ptr @ff_convert_lang_to(ptr noundef %i.ih, i32 noundef 2) #9 ; 2 uses
  %.not335 = icmp eq ptr %i.ii, null
  br i1 %.not335, label %.thread348, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.ii) #9 ; 3 uses
  %.not336.not = icmp eq ptr %i.ij, null
  br i1 %.not336.not, label %.thread359, label %.thread355

.thread355:                                       ; preds = %bb.be
  %i.ik = load ptr, ptr %i.h, align 8, !tbaa !26
  call void @ff_riff_write_info_tag(ptr noundef %i.ik, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ij) #9
  call void @av_free(ptr noundef nonnull %i.ij) #9
  br label %.thread348

.thread348:                                       ; preds = %bb.bd, %bb.bc, %bb.bb, %.thread355, %bb.ai
  %i.il = load i32, ptr %i.dz, align 8, !tbaa !70
  %i.im = and i32 %i.il, 1
  %.not337 = icmp eq i32 %i.im, 0
  br i1 %.not337, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread348
  %i.in = trunc nuw nsw i64 %indvars.iv422 to i32
  call fastcc void @write_odml_master(ptr noundef nonnull %0, i32 noundef %i.in)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread348
  %i.io = load i32, ptr %i.eq, align 8, !tbaa !63
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.iq = getelementptr inbounds nuw i8, ptr %i.eo, i64 72 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !88
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.bi, label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  %i.it = getelementptr inbounds nuw i8, ptr %i.eo, i64 76
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !89
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.iw = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.34) #9
  %i.ix = load i64, ptr %i.gb, align 8
  %i.iy = load i64, ptr %i.iq, align 8
  %i.iz = call i64 @av_mul_q(i64 %i.iy, i64 %i.ix) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %sext = shl i64 %i.iz, 32
  %i.ja = ashr exact i64 %sext, 32
  %i.jb = ashr i64 %i.iz, 32
  %i.jc = call i32 @av_reduce(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef %i.ja, i64 noundef %i.jb, i64 noundef 65535) #9 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.eq, i64 96 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !90
  %.off = add i32 %i.je, -2
  %switch = icmp ult i32 %.off, 4
  %spec.select346 = select i1 %switch, i32 2, i32 1 ; 4 uses
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  %i.jf = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !69
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 1
  %i.jk = load i32, ptr %i.jf, align 8, !tbaa !68
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = add nsw i64 %i.jl, -1
  %i.jn = add nsw i64 %i.jm, %i.jj
  %i.jo = shl nsw i64 %i.jl, 1
  %i.jp = sdiv i64 %i.jn, %i.jo
  %i.jq = trunc i64 %i.jp to i32
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.jq) #9
  %i.jr = load i32, ptr %i.gb, align 8, !tbaa !73
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.jr) #9
  %i.js = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.js) #9
  %i.jt = load i32, ptr %i.e, align 4, !tbaa !78
  call void @avio_wl16(ptr noundef nonnull %i.i, i32 noundef %i.jt) #9
  %i.ju = load i32, ptr %i.d, align 4, !tbaa !78
  call void @avio_wl16(ptr noundef nonnull %i.i, i32 noundef %i.ju) #9
  %i.jv = load i32, ptr %i.gb, align 8, !tbaa !73
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.jv) #9
  %i.jw = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.jw) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %spec.select346) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bn
  %.0284391.a = phi i32 [ 0, %bb.bj ], [ %i.ke, %bb.bn ] ; 3 uses
  %i.jx = load i32, ptr %i.jd, align 8, !tbaa !90
  switch i32 %i.jx, label %bb.bn [
    i32 2, label %bb.bl
    i32 4, label %bb.bl
    i32 3, label %bb.bm
    i32 5, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk
  %1 = icmp ne i32 %.0284391.a, 0
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bk
  %2 = icmp eq i32 %.0284391.a, 0
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm, %bb.bl
  %.0.shrunk.a = phi i1 [ %1, %bb.bl ], [ %2, %bb.bm ], [ false, %bb.bk ]
  %.0.a = zext i1 %.0.shrunk.a to i32
  %i.jy = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %i.jz = sdiv i32 %i.jy, %spec.select346
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.jz) #9
  %i.ka = load i32, ptr %i.gb, align 8, !tbaa !73
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.ka) #9
  %i.kb = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %i.kc = sdiv i32 %i.kb, %spec.select346
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.kc) #9
  %i.kd = load i32, ptr %i.gb, align 8, !tbaa !73
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %i.kd) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 0) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef %.0.a) #9
  %i.ke = add nuw nsw i32 %.0284391.a, 1          ; 2 uses
  %exitcond421.not = icmp eq i32 %i.ke, %spec.select346
  br i1 %exitcond421.not, label %bb.bo, label %bb.bk, !llvm.loop !91

bb.bo:                                            ; preds = %bb.bn
  %sext339 = shl i64 %i.iw, 32
  %i.kf = ashr exact i64 %sext339, 32
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.kf) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bi, %bb.bh, %bb.bg
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.et) #9
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  br i1 %exitcond426.not, label %._crit_edge395, label %bb.v, !llvm.loop !92

._crit_edge395:                                   ; preds = %bb.bp, %bb.u
  %i.kg = load i32, ptr %i.dz, align 8, !tbaa !70
  %i.kh = and i32 %i.kg, 1
  %.not322 = icmp eq i32 %i.kh, 0
  br i1 %.not322, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge395
  %i.ki = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.35) #9
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !93
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 1819108463) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 1751936356) #9
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 248) #9
  call void @ffio_fill(ptr noundef nonnull %i.i, i32 noundef 0, i64 noundef 248) #9
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !93
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.kk) #9
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge395
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.ca) #9
  call void @ff_riff_write_info(ptr noundef %0) #9
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !94 ; 2 uses
  %i.kn = icmp slt i32 %i.km, 0
  %spec.store.select = select i1 %i.kn, i32 1016, i32 %i.km ; 2 uses
  %.not323 = icmp eq i32 %spec.store.select, 0
  br i1 %.not323, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ko = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.35) #9
  %i.kp = add i32 %spec.store.select, 3
  %i.kq = and i32 %i.kp, -4
  %i.kr = zext i32 %i.kq to i64
  call void @ffio_fill(ptr noundef nonnull %i.i, i32 noundef 0, i64 noundef %i.kr) #9
  call void @ff_end_tag(ptr noundef nonnull %i.i, i64 noundef %i.ko) #9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ks = call i64 @ff_start_tag(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.17) #9
  %i.kt = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !95
  call void @avio_wl32(ptr noundef nonnull %i.i, i32 noundef 1769369453) #9
  br label %.thread359

.thread359:                                       ; preds = %bb.e, %bb.ax, %bb.be, %bb.aw, %bb.ay, %bb.x, %split, %bb.bt, %bb.b
  %.8 = phi i32 [ -22, %bb.b ], [ 0, %bb.bt ], [ -12, %bb.be ], [ -22, %bb.ay ], [ -1163346256, %bb.x ], [ -22, %split ], [ -22, %bb.aw ], [ %i.ho, %bb.ax ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @avi_write_packet(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [5 x i8], align 1                 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = sext i32 %i.d to i64                     ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75
  %i.n = icmp eq i32 %i.m, 27
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !76
  %i.q = icmp eq i32 %i.p, 875967048
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !98
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @ff_check_h264_startcode(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %1) #9 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread146, label %._crit_edge162

._crit_edge162:                                   ; preds = %bb.d
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.g
  %.pre163 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert164 = getelementptr inbounds nuw i8, ptr %.pre163, i64 16
  %.pre165 = load ptr, ptr %.phi.trans.insert164, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge162, %bb.c, %bb.b, %bb.a
  %i.v = phi ptr [ %.pre165, %._crit_edge162 ], [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.w = phi ptr [ %.pre163, %._crit_edge162 ], [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !99   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 156 ; 2 uses
  %i.aa = icmp ne i64 %i.y, -9223372036854775808
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ac = icmp eq i32 %i.ab, 0
  %or.cond26.i = and i1 %i.aa, %i.ac
  br i1 %or.cond26.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !101 ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp sgt i64 %i.y, %i.al
  br i1 %i.am, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !75
  %.not.i = icmp eq i32 %i.an, 94211
  %.not24.i = icmp eq i32 %i.ak, 0
  %or.cond25.i = or i1 %.not24.i, %.not.i
  br i1 %or.cond25.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nsw i64 %i.y, %i.al                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 60000
  br i1 %i.ap, label %write_skip_frames.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 %i.d, ptr %i.ar, align 4, !tbaa !97
  %i.as = tail call fastcc i32 @avi_write_packet_internal(ptr noundef %0, ptr noundef %i.aq) ; 0 uses
  %i.at = load i32, ptr %i.z, align 4, !tbaa !100
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %.loopexit, !llvm.loop !102

write_skip_frames.exit:                           ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.43, i64 noundef %i.ao) #9
  br label %.thread146

.loopexit:                                        ; preds = %bb.i, %bb.f, %bb.g, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !98
  %.not121 = icmp eq i32 %i.aw, 0
  br i1 %.not121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ax = tail call fastcc i32 @avi_write_packet_internal(ptr noundef %0, ptr noundef nonnull %1)
  br label %.thread146

bb.k:                                             ; preds = %.loopexit
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !63
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.g
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 15 uses
  %i.bh = load i32, ptr %i.l, align 4, !tbaa !75
  %i.bi = icmp eq i32 %i.bh, 13
  br i1 %i.bi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !76
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !81 ; 2 uses
  %.not122 = icmp eq i32 %i.bn, 15
end_hunk_1
