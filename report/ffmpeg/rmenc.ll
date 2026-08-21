Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rmenc?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVCodecTag = type { i32, i32 }
%struct.FFOutputFormat = type { %struct.AVOutputFormat, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AVOutputFormat = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"RealMedia\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"application/vnd.rn-realmedia\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rm,ra\00", align 1
@ff_rm_codec_tags = external constant [0 x %struct.AVCodecTag], align 4
@.compoundliteral = internal constant [2 x ptr] [ptr @ff_rm_codec_tags, ptr null], align 8
@ff_rm_muxer = local_unnamed_addr constant %struct.FFOutputFormat { %struct.AVOutputFormat { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 86019, i32 5, i32 0, i32 0, ptr @.compoundliteral, ptr null }, i32 120, i32 0, ptr @rm_write_header, ptr @rm_write_packet, ptr @rm_write_trailer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"At most 2 streams are currently supported for muxing in RM\0A\00", align 1
@ff_rm_metadata = external local_unnamed_addr constant [4 x ptr], align 16
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"The Audio Stream\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"audio/x-pn-realaudio\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"The Video Stream\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"video/x-pn-realvideo\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c".ra\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Invalid codec tag\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Frame rate %d is too high\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"Muxing packets larger than 64 kB (%d) is not supported\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @rm_write_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  %i.e = icmp ugt i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not47 = icmp eq i32 %i.d, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.m, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 5 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.m, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.o, ptr %i.v, align 8, !tbaa !44
  %i.w = load i32, ptr %i.o, align 8, !tbaa !45
  switch i32 %i.w, label %.critedge [
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.h, align 8, !tbaa !46
  %i.x = tail call i32 @av_get_audio_frame_duration2(ptr noundef nonnull %i.o, i32 noundef 0) #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !50
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.g, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ 4096, %bb.e ], [ 1024, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !52
  store i32 0, ptr %i.p, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 0, ptr %i.af, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !26
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.c, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.aj = tail call fastcc i32 @rv10_write_header(ptr noundef nonnull %0, i32 noundef 0)
  %.not = icmp eq i32 %i.aj, 0
  %. = select i1 %.not, i32 0, i32 -1094995529
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %._crit_edge, %bb.b
  %.2 = phi i32 [ -1163346256, %bb.b ], [ %., %._crit_edge ], [ -1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @rm_write_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %i.k = icmp eq i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59   ; 12 uses
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val10 = load ptr, ptr %i.s, align 8, !tbaa !61 ; 4 uses
  %i.t = getelementptr i8, ptr %.val, i64 96
  %.val.val = load ptr, ptr %i.t, align 8, !tbaa !46 ; 3 uses
  %i.u = and i32 %i.q, 1
  tail call fastcc void @write_packet_header(ptr %.val10, ptr noundef %.val.val, i32 noundef %i.o, i32 noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !62
  %i.z = icmp eq i32 %i.y, 86019
  br i1 %i.z, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.o, 0
  br i1 %i.aa, label %.lr.ph.i, label %rm_write_audio.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63
  %i.ae = zext i8 %i.ad to i32
  tail call void @avio_w8(ptr noundef %.val10, i32 noundef %i.ae) #7
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !63
  %i.ag = zext i8 %i.af to i32
  tail call void @avio_w8(ptr noundef %.val10, i32 noundef %i.ag) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %2 = trunc nuw i64 %indvars.iv.next.i to i32
  %3 = icmp sgt i32 %i.o, %2
  br i1 %3, label %.lr.ph.i, label %rm_write_audio.exit, !llvm.loop !64

bb.c:                                             ; preds = %bb.b
  tail call void @avio_write(ptr noundef %.val10, ptr noundef %i.m, i32 noundef %i.o) #7
  br label %rm_write_audio.exit

rm_write_audio.exit:                              ; preds = %.lr.ph.i, %.preheader.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.val, i64 24 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !65
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !65
  br label %rm_write_video.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %i.aq = icmp sgt i32 %i.o, 65512
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.o) #7
  br label %rm_write_video.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !60 ; 2 uses
  %i.at = trunc i32 %i.as to i1
  %i.au = and i32 %i.as, 1
  %i.av = add nsw i32 %i.o, 7
  %i.aw = icmp sgt i32 %i.o, 16383                ; 2 uses
  %i.ax = select i1 %i.aw, i32 4, i32 0
  %i.ay = add nsw i32 %i.av, %i.ax
  tail call fastcc void @write_packet_header(ptr %i.an, ptr noundef %i.ap, i32 noundef %i.ay, i32 noundef %i.au)
  tail call void @avio_w8(ptr noundef %i.an, i32 noundef 129) #7
  %..i = select i1 %i.at, i32 129, i32 1
  tail call void @avio_w8(ptr noundef %i.an, i32 noundef %..i) #7
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @avio_wb32(ptr noundef %i.an, i32 noundef %i.o) #7
  tail call void @avio_wb32(ptr noundef %i.an, i32 noundef %i.o) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = or i32 %i.o, 16384                      ; 2 uses
  tail call void @avio_wb16(ptr noundef %i.an, i32 noundef %i.az) #7
  tail call void @avio_wb16(ptr noundef %i.an, i32 noundef %i.az) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !65
  %i.bc = and i32 %i.bb, 255
  tail call void @avio_w8(ptr noundef %i.an, i32 noundef %i.bc) #7
  tail call void @avio_write(ptr noundef %i.an, ptr noundef %i.m, i32 noundef %i.o) #7
  %i.bd = load i32, ptr %i.ba, align 8, !tbaa !65
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !65
  br label %rm_write_video.exit

rm_write_video.exit:                              ; preds = %bb.i, %bb.e, %rm_write_audio.exit
  %.0 = phi i32 [ 0, %rm_write_audio.exit ], [ -1163346256, %bb.e ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rm_write_trailer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @avio_seek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 1) #7
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  %i.l = sub nsw i32 %i.i, %i.k
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  %i.m = tail call i64 @avio_seek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 0) #7 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 3 uses
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.o to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.p = icmp ult i32 %i.o, 4
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 %i.s, ptr %i.t, align 4, !tbaa !54
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 76
  store i32 %i.w, ptr %i.x, align 4, !tbaa !54
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !54
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !54
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !69

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv.epil ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !54
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !70

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %i.ak = tail call fastcc i32 @rv10_write_header(ptr noundef nonnull %0, i32 noundef %i.l) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @av_get_audio_frame_duration2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @rv10_write_header(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 99 uses
  tail call void @avio_wl32(ptr noundef %i.d, i32 noundef 1179472430) #7
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef 18) #7
  tail call void @avio_wb16(ptr noundef %i.d, i32 noundef 0) #7
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef 0) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = add i32 %i.f, 4
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef %i.g) #7
  tail call void @avio_wl32(ptr noundef %i.d, i32 noundef 1347375696) #7
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef 50) #7
  tail call void @avio_wb16(ptr noundef %i.d, i32 noundef 0) #7
  %i.h = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %.not285 = icmp eq i32 %i.h, 0
  br i1 %.not285, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.h to i64
end_hunk_0
