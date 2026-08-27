Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mccdec?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%struct.AVRational = type { i32, i32 }
%struct.FFTextReader = type { i32, ptr, [8 x i8], i32, i32, %struct.FFIOContext }
%struct.FFIOContext = type { %struct.AVIOContext, ptr, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64 }
%struct.AVIOContext = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64 }
%struct.AVTimecode = type { i32, i32, %struct.AVRational, i32 }
%struct.AVSmpte436mCodedAnc = type { i16, i32, i32, i16, i32, [348 x i8] }
%struct.TimeTracker = type { i64, i64, %struct.AVTimecode }
%struct.AVSmpte291mAnc8bit = type { i8, i8, i8, [255 x i8], i8 }

@.str = private unnamed_addr constant [4 x i8] c"mcc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"MacCaption\00", align 1
@ff_mcc_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr @mcc_class, ptr null }, i32 0, i32 48, i32 1, [4 x i8] zeroinitializer, ptr @mcc_probe, ptr @mcc_read_header, ptr @mcc_read_packet, ptr @mcc_read_close, ptr null, ptr null, ptr null, ptr null, ptr @mcc_read_seek, ptr null }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"mcc demuxer\00", align 1
@mcc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @mcc_options, i32 3998052, i32 0, i32 0, i32 4, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"eia608_extract\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"extract EIA-608/708 captions from VANC packets\00", align 1
@mcc_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 18, %union.anon { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 34, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"data_type\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"vbi_vanc_smpte_436M\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"can't parse mcc time code\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"invalid mcc time code rate: %s\00", align 1
@valid_time_code_rates = internal constant [7 x { %struct.AVRational, [5 x i8], [3 x i8] }] [{ %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 24, i32 1 }, [5 x i8] c"24\00\00\00", [3 x i8] zeroinitializer }, { %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 25, i32 1 }, [5 x i8] c"25\00\00\00", [3 x i8] zeroinitializer }, { %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 30000, i32 1001 }, [5 x i8] c"30DF\00", [3 x i8] zeroinitializer }, { %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 30, i32 1 }, [5 x i8] c"30\00\00\00", [3 x i8] zeroinitializer }, { %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 50, i32 1 }, [5 x i8] c"50\00\00\00", [3 x i8] zeroinitializer }, { %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 60000, i32 1001 }, [5 x i8] c"60DF\00", [3 x i8] zeroinitializer }, { %struct.AVRational, [5 x i8], [3 x i8] } { %struct.AVRational { i32 60, i32 1 }, [5 x i8] c"60\00\00\00", [3 x i8] zeroinitializer }], align 16
@cc_pad = internal constant [27 x i8] c"\FA\00\00\FA\00\00\FA\00\00\FA\00\00\FA\00\00\FA\00\00\FA\00\00\FA\00\00\FA\00\00", align 16
@.str.23 = private unnamed_addr constant [4 x i8] c"\FB\80\80\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\FC\80\80\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\FD\80\80\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\96i\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"a\01\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"\E1\00\00\00\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@aliases = internal unnamed_addr constant [20 x { i8, [3 x i8], i32, ptr }] [{ i8, [3 x i8], i32, ptr } { i8 16, [3 x i8] zeroinitializer, i32 3, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 17, [3 x i8] zeroinitializer, i32 6, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 18, [3 x i8] zeroinitializer, i32 9, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 19, [3 x i8] zeroinitializer, i32 12, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 20, [3 x i8] zeroinitializer, i32 15, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 21, [3 x i8] zeroinitializer, i32 18, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 22, [3 x i8] zeroinitializer, i32 21, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 23, [3 x i8] zeroinitializer, i32 24, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 24, [3 x i8] zeroinitializer, i32 27, ptr @cc_pad }, { i8, [3 x i8], i32, ptr } { i8 25, [3 x i8] zeroinitializer, i32 3, ptr @.str.23 }, { i8, [3 x i8], i32, ptr } { i8 26, [3 x i8] zeroinitializer, i32 3, ptr @.str.24 }, { i8, [3 x i8], i32, ptr } { i8 27, [3 x i8] zeroinitializer, i32 3, ptr @.str.25 }, { i8, [3 x i8], i32, ptr } { i8 28, [3 x i8] zeroinitializer, i32 2, ptr @.str.26 }, { i8, [3 x i8], i32, ptr } { i8 29, [3 x i8] zeroinitializer, i32 2, ptr @.str.27 }, { i8, [3 x i8], i32, ptr } { i8 30, [3 x i8] zeroinitializer, i32 3, ptr @.str.24 }, { i8, [3 x i8], i32, ptr } { i8 31, [3 x i8] zeroinitializer, i32 3, ptr @.str.24 }, { i8, [3 x i8], i32, ptr } { i8 32, [3 x i8] zeroinitializer, i32 4, ptr @.str.28 }, { i8, [3 x i8], i32, ptr } { i8 33, [3 x i8] zeroinitializer, i32 0, ptr null }, { i8, [3 x i8], i32, ptr } { i8 34, [3 x i8] zeroinitializer, i32 0, ptr null }, { i8, [3 x i8], i32, ptr } { i8 35, [3 x i8] zeroinitializer, i32 1, ptr @.str.29 }], align 16

; Function Attrs: nounwind uwtable
define internal range(i32 0, 101) i32 @mcc_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 5 uses
  %1 = alloca %struct.FFTextReader, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13
  %i.f = sext i32 %i.e to i64
  call void @ff_text_init_buf(ptr noundef nonnull %1, ptr noundef %i.c, i64 noundef %i.f) #6
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.g = call i32 @ff_text_peek_r8(ptr noundef nonnull %1) #6
  %i.h = icmp eq i32 %i.g, 13
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @ff_text_peek_r8(ptr noundef nonnull %1) #6
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = call i32 @ff_text_r8(ptr noundef nonnull %1) #6 ; 0 uses
  br label %bb.b, !llvm.loop !14

bb.d:                                             ; preds = %bb.c
  call void @ff_text_read(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 28) #6
  %i.l = load i128, ptr %i.a, align 16
  %i.m = xor i128 %i.l, 89574286619903660312831884875732379974
  %i.n = getelementptr i8, ptr %i.a, i64 12
  %i.o = load i128, ptr %i.n, align 4
  %i.p = xor i128 %i.o, 114481125390651927896076896240390070605
  %i.q = or i128 %i.m, %i.p
  %i.r = icmp ne i128 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %.not = icmp eq i32 %i.s, 0
  %. = select i1 %.not, i32 100, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal i32 @mcc_read_header(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVTimecode, align 4         ; 5 uses
  %i.a = alloca ptr, align 8                      ; 38 uses
  %2 = alloca %struct.AVTimecode, align 4         ; 5 uses
  %3 = alloca %struct.AVSmpte436mCodedAnc, align 4 ; 11 uses
  %i.b = alloca [4096 x i8], align 16             ; 13 uses
  %4 = alloca %struct.FFTextReader, align 8       ; 9 uses
  %5 = alloca %struct.TimeTracker, align 8        ; 14 uses
  %6 = alloca %struct.AVSmpte291mAnc8bit, align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(368) %3, i8 0, i64 368, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 4, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  call void @ff_text_init_avio(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.h) #6
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %.not96 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  br i1 %.not96, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 3, ptr %i.l, align 8, !tbaa !43
  store i32 94218, ptr %i.m, align 4, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 2, ptr %i.l, align 8, !tbaa !43
  store i32 98317, ptr %i.m, align 4, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.o = call i32 @av_dict_set(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.q = call i32 @av_timecode_init(ptr noundef nonnull %i.p, i64 4294967326, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %time_tracker_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %i.u = call i32 @av_timecode_init_from_components(ptr noundef nonnull %2, i64 4294967326, i32 noundef %i.t, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %time_tracker_init.exit.thread164, label %time_tracker_init.exit

time_tracker_init.exit.thread164:                 ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %time_tracker_init.exit.thread

time_tracker_init.exit:                           ; preds = %bb.f
  %i.w = load i32, ptr %2, align 4, !tbaa !50
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !51
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.e, i32 noundef 64, i32 noundef 1, i32 noundef 30) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.ac = ptrtoint ptr %i.ab to i64               ; 4 uses
  %i.ad = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ai = call i32 @ff_text_eof(ptr noundef nonnull %4) #6
  %.not97264282520 = icmp eq i32 %i.ai, 0
  br i1 %.not97264282520, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %time_tracker_init.exit, %.lr.ph.backedge
  %.075.ph283 = phi i32 [ %.075.ph283.be, %.lr.ph.backedge ], [ 0, %time_tracker_init.exit ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %i.aj = call i64 @ff_text_pos(ptr noundef nonnull %4) #6
  %i.ak = call i64 @ff_subtitles_read_line(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef 4096) #6 ; 0 uses
  %i.al = load i128, ptr %i.b, align 16
  %i.am = xor i128 %i.al, 89574286619903660312831884875732379974
  %i.an = getelementptr i8, ptr %i.b, i64 12
  %i.ao = load i128, ptr %i.an, align 4
  %i.ap = xor i128 %i.ao, 114481125390651927896076896240390070605
  %i.aq = or i128 %i.am, %i.ap
  %i.ar = icmp ne i128 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not98 = icmp eq i32 %i.as, 0
  %lhsv = load i16, ptr %i.b, align 16            ; 2 uses
  %.not100 = icmp eq i16 %lhsv, 12079
  %or.cond117 = select i1 %.not98, i1 true, i1 %.not100
  br i1 %or.cond117, label %.backedge, label %bb.h

.backedge:                                        ; preds = %bb.g, %bb.r
  %i.at = call i32 @ff_text_eof(ptr noundef nonnull %4) #6
  %.not97 = icmp eq i32 %i.at, 0
  br i1 %.not97, label %bb.g, label %.outer._crit_edge, !llvm.loop !52

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.b, align 16
  %i.av = xor i64 %i.au, 7237076932627360084
  %i.aw = getelementptr i8, ptr %i.b, i64 7
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = xor i64 %i.ax, 4424070170299884900
  %i.az = or i64 %i.av, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not102 = icmp eq i32 %i.bb, 0
  br i1 %.not102, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bc = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 8), ptr noundef nonnull %i.a) #6
  %.not.i123 = icmp eq i32 %i.bc, 0
  br i1 %.not.i123, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.promoted.i = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %av_isspace.exit.thread.i, %.preheader.i
  %i.bd = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.bf, %av_isspace.exit.thread.i ] ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !54
  switch i8 %i.be, label %.loopexit.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.i
    i8 13, label %av_isspace.exit.thread.i
    i8 12, label %av_isspace.exit.thread.i
    i8 10, label %av_isspace.exit.thread.i
    i8 9, label %av_isspace.exit.thread.i
    i8 11, label %av_isspace.exit.thread.i
  ]

av_isspace.exit.thread.i:                         ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !53
  br label %bb.j, !llvm.loop !55

.critedge.i:                                      ; preds = %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.lcssa.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 64), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 80), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 96), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 16), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 32), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 48), %bb.n ], [ @valid_time_code_rates, %bb.j ]
  %i.bg = load i64, ptr %.lcssa.i, align 16       ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bg to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.bg, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.bh = icmp eq i64 %.sroa.4.0.extract.shift.i.i, 1001
  %i.bi = zext i1 %i.bh to i32
  %i.bj = call i32 @av_timecode_init(ptr noundef nonnull %i.p, i64 %i.bg, i32 noundef %i.bi, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %parse_time_code_rate.exit.thread167, label %bb.k

parse_time_code_rate.exit.thread167:              ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %time_tracker_init.exit.thread

bb.k:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.bl = load i32, ptr %i.s, align 4, !tbaa !47
  %i.bm = call i32 @av_timecode_init_from_components(ptr noundef nonnull %1, i64 %i.bg, i32 noundef %i.bl, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %parse_time_code_rate.exit.thread169, label %parse_time_code_rate.exit

parse_time_code_rate.exit.thread169:              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %time_tracker_init.exit.thread

.loopexit.i:                                      ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bo = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 24), ptr noundef nonnull %i.a) #6
  %.not.1.i = icmp eq i32 %i.bo, 0
  br i1 %.not.1.i, label %.loopexit.1.i, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.loopexit.i
  %.promoted.1.i = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %av_isspace.exit.thread.1.i, %.preheader.1.i
  %i.bp = phi ptr [ %.promoted.1.i, %.preheader.1.i ], [ %i.br, %av_isspace.exit.thread.1.i ] ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !54
  switch i8 %i.bq, label %.loopexit.1.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.1.i
    i8 13, label %av_isspace.exit.thread.1.i
    i8 12, label %av_isspace.exit.thread.1.i
    i8 10, label %av_isspace.exit.thread.1.i
    i8 9, label %av_isspace.exit.thread.1.i
    i8 11, label %av_isspace.exit.thread.1.i
  ]

av_isspace.exit.thread.1.i:                       ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.a, align 8, !tbaa !53
  br label %bb.l, !llvm.loop !55

.loopexit.1.i:                                    ; preds = %bb.l, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bs = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 40), ptr noundef nonnull %i.a) #6
  %.not.2.i = icmp eq i32 %i.bs, 0
  br i1 %.not.2.i, label %.loopexit.2.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.loopexit.1.i
  %.promoted.2.i = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %av_isspace.exit.thread.2.i, %.preheader.2.i
  %i.bt = phi ptr [ %.promoted.2.i, %.preheader.2.i ], [ %i.bv, %av_isspace.exit.thread.2.i ] ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !54
  switch i8 %i.bu, label %.loopexit.2.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.2.i
    i8 13, label %av_isspace.exit.thread.2.i
    i8 12, label %av_isspace.exit.thread.2.i
    i8 10, label %av_isspace.exit.thread.2.i
    i8 9, label %av_isspace.exit.thread.2.i
    i8 11, label %av_isspace.exit.thread.2.i
  ]

av_isspace.exit.thread.2.i:                       ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !53
  br label %bb.m, !llvm.loop !55

.loopexit.2.i:                                    ; preds = %bb.m, %.loopexit.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bw = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 56), ptr noundef nonnull %i.a) #6
  %.not.3.i = icmp eq i32 %i.bw, 0
  br i1 %.not.3.i, label %.loopexit.3.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.loopexit.2.i
  %.promoted.3.i = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %av_isspace.exit.thread.3.i, %.preheader.3.i
  %i.bx = phi ptr [ %.promoted.3.i, %.preheader.3.i ], [ %i.bz, %av_isspace.exit.thread.3.i ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !54
  switch i8 %i.by, label %.loopexit.3.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.3.i
    i8 13, label %av_isspace.exit.thread.3.i
    i8 12, label %av_isspace.exit.thread.3.i
    i8 10, label %av_isspace.exit.thread.3.i
    i8 9, label %av_isspace.exit.thread.3.i
    i8 11, label %av_isspace.exit.thread.3.i
  ]

av_isspace.exit.thread.3.i:                       ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !53
  br label %bb.n, !llvm.loop !55

.loopexit.3.i:                                    ; preds = %bb.n, %.loopexit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ca = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 72), ptr noundef nonnull %i.a) #6
  %.not.4.i = icmp eq i32 %i.ca, 0
  br i1 %.not.4.i, label %.loopexit.4.i, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.loopexit.3.i
  %.promoted.4.i = load ptr, ptr %i.a, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@mcc_read_header:bb.a
  %memchr.bounds89.i = icmp ugt i8 %.pr.i64.i, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, 17592186044929
  %memchr.bits90.i = icmp eq i64 %i.fw, 0
  %memchr91.not.i = select i1 %memchr.bounds89.i, i1 true, i1 %memchr.bits90.i
  br i1 %memchr91.not.i, label %.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 2 ; 3 uses
  %i.fy = icmp eq i8 %.pr.i64.i, 44
  br i1 %i.fy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !54
  %i.ga = sext i8 %i.fz to i32                    ; 2 uses
  %i.gb = add nsw i32 %i.ga, -58
  %i.gc = icmp ult i32 %i.gb, -10
  br i1 %i.gc, label %.split, label %.lr.ph136.preheader.i

.lr.ph136.preheader.i:                            ; preds = %bb.ad
  %i.gd = add nsw i32 %i.ga, -48
  br label %.lr.ph136.i

.preheaderthread-pre-split.i71.i:                 ; preds = %.lr.ph136.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  %.pr.i72.i = load i8, ptr %i.ge, align 1, !tbaa !54 ; 2 uses
  %i.gf = sext i8 %.pr.i72.i to i32
  %i.gg = add nsw i32 %i.gf, -48                  ; 2 uses
  %i.gh = icmp ugt i32 %i.gg, 9
  br i1 %i.gh, label %.preheader.i69._crit_edge.i, label %.lr.ph136.i

.lr.ph136.i:                                      ; preds = %.preheaderthread-pre-split.i71.i, %.lr.ph136.preheader.i
  %i.gi = phi i32 [ %i.gg, %.preheaderthread-pre-split.i71.i ], [ %i.gd, %.lr.ph136.preheader.i ]
  %i.gj = phi ptr [ %i.ge, %.preheaderthread-pre-split.i71.i ], [ %i.fx, %.lr.ph136.preheader.i ] ; 2 uses
  %i.gk = phi i32 [ %i.gm, %.preheaderthread-pre-split.i71.i ], [ 0, %.lr.ph136.preheader.i ]
  %i.gl = mul i32 %i.gk, 10
  %i.gm = add nsw i32 %i.gl, %i.gi                ; 3 uses
  %.not.i70.i = icmp ugt i32 %i.gm, 65535
  br i1 %.not.i70.i, label %.split, label %.preheaderthread-pre-split.i71.i

.preheader.i69._crit_edge.i:                      ; preds = %.preheaderthread-pre-split.i71.i
  %cond94.i = icmp eq i8 %.pr.i72.i, 9
  br i1 %cond94.i, label %.thread.i, label %.split

.thread.i:                                        ; preds = %.preheader.i69._crit_edge.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.go = trunc nuw i32 %i.gm to i16
  br label %mcc_parse_time_code.exit

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %.sroa.15.0 = phi i32 [ %i.ft, %bb.ac ], [ 0, %bb.z ]
  %.4160 = phi ptr [ %i.fx, %bb.ac ], [ %i.fe, %bb.z ]
  %.0.in.i = phi i8 [ %.pr.i64.i, %bb.ac ], [ %.pr.i56.i, %bb.z ]
  %.0.in.fr.i = freeze i8 %.0.in.i
  %.not.i124 = icmp eq i8 %.0.in.fr.i, 9
  br i1 %.not.i124, label %mcc_parse_time_code.exit, label %.split

.split:                                           ; preds = %.lr.ph.i, %.lr.ph124.i, %.lr.ph127.i, %.lr.ph130.i, %.lr.ph133.i, %.lr.ph136.i, %bb.ae, %.preheader.i69._crit_edge.i, %bb.t, %.preheader.i._crit_edge.i, %bb.ad, %bb.u, %.preheader.i37._crit_edge.i, %.preheader.i45._crit_edge.i, %bb.v, %bb.w, %.preheader.i53._crit_edge.i, %bb.x, %bb.y, %.preheader.i61._crit_edge.i, %bb.aa, %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #6
  br label %.outer.backedge

mcc_parse_time_code.exit:                         ; preds = %bb.ae, %.thread.i
  %.sroa.18.1 = phi i16 [ %i.go, %.thread.i ], [ 9, %bb.ae ]
  %.sroa.15.2 = phi i32 [ %i.ft, %.thread.i ], [ %.sroa.15.0, %bb.ae ]
  %.6162 = phi ptr [ %i.gn, %.thread.i ], [ %.4160, %bb.ae ] ; 2 uses
  %i.gp = load i64, ptr %5, align 8, !tbaa !57
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !58 ; 3 uses
  %.sroa.6.0.copyload.i = load i32, ptr %i.s, align 4, !tbaa !58 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !58
  %i.gq = call i32 @av_timecode_init_from_components(ptr noundef nonnull %i.p, i64 %.sroa.7.0.copyload.i, i32 noundef %.sroa.6.0.copyload.i, i32 noundef %i.de, i32 noundef %i.dt, i32 noundef %i.ei, i32 noundef %i.fa, ptr noundef nonnull %0) #6 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %time_tracker_set_time.exit, label %bb.af

bb.af:                                            ; preds = %mcc_parse_time_code.exit
  %i.gs = sext i32 %.sroa.0.0.copyload.i to i64
  %i.gt = load i64, ptr %5, align 8, !tbaa !57
  %i.gu = sub nsw i64 %i.gt, %i.gs
  %i.gv = load i32, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = add nsw i64 %i.gu, %i.gw                ; 3 uses
  store i64 %i.gx, ptr %5, align 8, !tbaa !57
  %i.gy = icmp slt i32 %i.gv, %.sroa.0.0.copyload.i
  br i1 %i.gy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gz = load i64, ptr %i.y, align 8, !tbaa !51
  %i.ha = add nsw i64 %i.gz, %i.gx                ; 2 uses
  store i64 %i.ha, ptr %5, align 8, !tbaa !57
  br label %bb.ah

time_tracker_set_time.exit:                       ; preds = %mcc_parse_time_code.exit
  store i32 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !58
  store i32 %.sroa.6.0.copyload.i, ptr %i.s, align 4, !tbaa !58
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8
  store i32 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !58
  br label %.outer.backedge

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hb = phi i64 [ %i.ha, %bb.ag ], [ %i.gx, %bb.af ]
  store i16 %.sroa.18.1, ptr %3, align 4, !tbaa !60
  %.not106 = icmp eq i32 %.sroa.15.2, 0
  %i.hc = select i1 %.not106, i32 1, i32 3
  store i32 %i.hc, ptr %i.z, align 4, !tbaa !63
  %i.hd = load i8, ptr %.6162, align 1, !tbaa !54 ; 2 uses
  %.not107267 = icmp eq i8 %i.hd, 0
  br i1 %.not107267, label %bytestream2_put_byte.exit120.thread187.thread, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.ah, %bytestream2_put_byte.exit120
  %i.he = phi i8 [ %i.ii, %bytestream2_put_byte.exit120 ], [ %i.hd, %bb.ah ] ; 3 uses
  %.sroa.0.0270 = phi ptr [ %.sroa.0.3, %bytestream2_put_byte.exit120 ], [ %i.aa, %bb.ah ] ; 9 uses
  %.sroa.32.0269 = phi i32 [ %.sroa.32.3, %bytestream2_put_byte.exit120 ], [ 0, %bb.ah ] ; 4 uses
  %.0268 = phi ptr [ %.3159, %bytestream2_put_byte.exit120 ], [ %.6162, %bb.ah ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0268, i64 1 ; 3 uses
  %i.hg = icmp ugt i8 %i.he, 96
  %i.hh = icmp samesign ugt i8 %i.he, 64
  %..i126 = select i1 %i.hh, i8 -55, i8 -48
  %.sink.i = select i1 %i.hg, i8 -87, i8 %..i126
  %i.hi = add i8 %.sink.i, %i.he                  ; 3 uses
  %i.hj = add i8 %i.hi, -16
  %or.cond = icmp ult i8 %i.hj, 20
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph272
  %i.hk = zext nneg i8 %i.hi to i64
  %i.hl = getelementptr [16 x i8], ptr @aliases, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 -252
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !64 ; 3 uses
  %.not109 = icmp ne i32 %i.hn, 0
  %.not.i = icmp eq i32 %.sroa.32.0269, 0
  %or.cond205 = select i1 %.not109, i1 %.not.i, i1 false
  br i1 %or.cond205, label %bb.aj, label %bytestream2_put_byte.exit120

bb.aj:                                            ; preds = %bb.ai
  %i.ho = getelementptr i8, ptr %i.hl, i64 -248
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !66
  %i.hq = ptrtoint ptr %.sroa.0.0270 to i64
  %i.hr = sub i64 %i.ac, %i.hq
  %i.hs = zext i32 %i.hn to i64
  %i.ht = call i64 @llvm.smin.i64(i64 %i.hr, i64 %i.hs) ; 2 uses
  %i.hu = trunc i64 %i.ht to i32
  %.not18.i = icmp ne i32 %i.hn, %i.hu
  %spec.select = zext i1 %.not18.i to i32
  %i.hv = and i64 %i.ht, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0270, ptr align 1 %i.hp, i64 %i.hv, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0270, i64 %i.hv
  br label %bytestream2_put_byte.exit120

bb.ak:                                            ; preds = %.lr.ph272
  %i.hx = load i8, ptr %i.hf, align 1, !tbaa !54  ; 4 uses
  %.not108.not = icmp eq i8 %i.hx, 0
  br i1 %.not108.not, label %bytestream2_put_byte.exit120.thread187, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hy = getelementptr inbounds nuw i8, ptr %.0268, i64 2 ; 2 uses
  %.not.i119 = icmp eq i32 %.sroa.32.0269, 0
  %i.hz = ptrtoint ptr %.sroa.0.0270 to i64
  %i.ia = sub i64 %i.ac, %i.hz
  %i.ib = icmp sgt i64 %i.ia, 0
  %or.cond203 = select i1 %.not.i119, i1 %i.ib, i1 false
  br i1 %or.cond203, label %bb.am, label %bytestream2_put_byte.exit120

bb.am:                                            ; preds = %bb.al
  %i.ic = icmp ugt i8 %i.hx, 96
  %i.id = icmp samesign ugt i8 %i.hx, 64
  %..i127 = select i1 %i.id, i8 -55, i8 -48
  %.sink.i128 = select i1 %i.ic, i8 -87, i8 %..i127
  %i.ie = add i8 %.sink.i128, %i.hx
  %i.if = shl i8 %i.hi, 4
  %i.ig = or i8 %i.ie, %i.if
  store i8 %i.ig, ptr %.sroa.0.0270, align 1, !tbaa !54
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0270, i64 1
  br label %bytestream2_put_byte.exit120

bytestream2_put_byte.exit120:                     ; preds = %bb.al, %bb.am, %bb.ai, %bb.aj
  %.3159 = phi ptr [ %i.hf, %bb.aj ], [ %i.hf, %bb.ai ], [ %i.hy, %bb.al ], [ %i.hy, %bb.am ] ; 2 uses
  %.sroa.32.3 = phi i32 [ %spec.select, %bb.aj ], [ %.sroa.32.0269, %bb.ai ], [ 1, %bb.al ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.hw, %bb.aj ], [ %.sroa.0.0270, %bb.ai ], [ %.sroa.0.0270, %bb.al ], [ %i.ih, %bb.am ] ; 2 uses
  %i.ii = load i8, ptr %.3159, align 1, !tbaa !54 ; 2 uses
  %.not107 = icmp eq i8 %i.ii, 0
  br i1 %.not107, label %bytestream2_put_byte.exit120.thread187, label %.lr.ph272

bytestream2_put_byte.exit120.thread187:           ; preds = %bytestream2_put_byte.exit120, %bb.ak
  %.sroa.32.0.lcssa.ph = phi i32 [ %.sroa.32.3, %bytestream2_put_byte.exit120 ], [ %.sroa.32.0269, %bb.ak ]
  %.sroa.0.0.lcssa.ph = phi ptr [ %.sroa.0.3, %bytestream2_put_byte.exit120 ], [ %.sroa.0.0270, %bb.ak ]
  %i.ij = icmp eq i32 %.sroa.32.0.lcssa.ph, 0
  br i1 %i.ij, label %bytestream2_put_byte.exit120.thread187.thread, label %.outer.backedge, !llvm.loop !52

bytestream2_put_byte.exit120.thread187.thread:    ; preds = %bb.ah, %bytestream2_put_byte.exit120.thread187
  %.sroa.0.0.lcssa375 = phi ptr [ %.sroa.0.0.lcssa.ph, %bytestream2_put_byte.exit120.thread187 ], [ %i.aa, %bb.ah ] ; 2 uses
  %i.ik = ptrtoint ptr %.sroa.0.0.lcssa375 to i64 ; 2 uses
  %i.il = sub i64 %i.ac, %i.ik                    ; 2 uses
  %i.im = icmp sgt i64 %i.il, -2
  %.neg.i = sub i64 %i.ad, %i.ik
  %i.in = trunc i64 %.neg.i to i32                ; 2 uses
  %i.io = trunc i64 %i.il to i32
  %..i = call i32 @llvm.smin.i32(i32 %i.io, i32 -1)
  %i.ip = icmp slt i32 %i.in, 0
  %.0.i121 = select i1 %i.ip, i32 %..i, i32 %i.in
  %i.iq = sext i32 %.0.i121 to i64
  %i.ir = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa375, i64 %i.iq ; 3 uses
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.ad                    ; 2 uses
  %i.iu = trunc i64 %i.it to i16
  store i16 %i.iu, ptr %i.ae, align 4, !tbaa !67
  %i.iv = and i64 %i.it, 65535
  %i.iw = icmp ne i64 %i.iv, 0
  %or.cond286 = select i1 %i.iw, i1 %i.im, i1 false
  br i1 %or.cond286, label %bytestream2_put_byte.exit.a, label %.outer.backedge, !llvm.loop !52

bytestream2_put_byte.exit.a:                      ; preds = %bytestream2_put_byte.exit120.thread187.thread
  %i.ix = ptrtoint ptr %i.ir to i64               ; 3 uses
  %i.iy = and i64 %i.ix, 3
  %.not112.a = icmp eq i64 %i.iy, 0
  br i1 %.not112.a, label %.lr.ph280._crit_edge, label %bytestream2_put_byte.exit.1

bytestream2_put_byte.exit.1:                      ; preds = %bytestream2_put_byte.exit.a, %bytestream2_put_byte.exit.2
  %7 = phi i64 [ %i.ja, %bytestream2_put_byte.exit.2 ], [ %i.ix, %bytestream2_put_byte.exit.a ]
  %.sroa.0.5279511 = phi ptr [ %i.iz, %bytestream2_put_byte.exit.2 ], [ %i.ir, %bytestream2_put_byte.exit.a ] ; 2 uses
  %8 = sub i64 %i.ac, %7
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %bytestream2_put_byte.exit.2, label %.outer.backedge, !llvm.loop !52

bytestream2_put_byte.exit.2:                      ; preds = %bytestream2_put_byte.exit.1
  store i8 0, ptr %.sroa.0.5279511, align 1, !tbaa !54
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.5279511, i64 1 ; 2 uses
  %i.ja = ptrtoint ptr %i.iz to i64               ; 3 uses
  %i.jb = and i64 %i.ja, 3
  %.not112.2 = icmp eq i64 %i.jb, 0
  br i1 %.not112.2, label %.lr.ph280._crit_edge, label %bytestream2_put_byte.exit.1, !llvm.loop !68

.lr.ph280._crit_edge:                             ; preds = %bytestream2_put_byte.exit.2, %bytestream2_put_byte.exit.a
  %.lcssa490 = phi i64 [ %i.ix, %bytestream2_put_byte.exit.a ], [ %i.ja, %bytestream2_put_byte.exit.2 ]
  %i.jc = icmp eq i64 %i.gp, %i.hb                ; 2 uses
  %i.jd = sub i64 %.lcssa490, %i.ad
  %i.je = trunc i64 %i.jd to i32
  store i32 %i.je, ptr %i.ag, align 4, !tbaa !69
  %i.jf = load i32, ptr %i.i, align 8, !tbaa !32
  %.not114 = icmp eq i32 %i.jf, 0
  br i1 %.not114, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph280._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.jg = load i32, ptr %i.f, align 4, !tbaa !70
  %i.jh = load i16, ptr %i.ae, align 4, !tbaa !67
  %i.ji = call i32 @av_smpte_291m_anc_8bit_decode(ptr noundef nonnull %6, i32 noundef %i.jg, i16 noundef zeroext %i.jh, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #6
  %i.jj = icmp slt i32 %i.ji, 0
  br i1 %i.jj, label %.split196, label %bb.ao, !llvm.loop !52

bb.ao:                                            ; preds = %bb.an
  %i.jk = call i32 @av_smpte_291m_anc_8bit_extract_cta_708(ptr noundef nonnull %6, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #6 ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %.split196, label %bb.ap, !llvm.loop !52

bb.ap:                                            ; preds = %bb.ao
  %i.jm = mul nuw nsw i32 %i.jk, 3
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = zext i1 %i.jc to i32
  %i.jp = call ptr @ff_subtitles_queue_insert(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.b, i64 noundef %i.jn, i32 noundef %i.jo) #6 ; 2 uses
  %.not116 = icmp eq ptr %i.jp, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br i1 %.not116, label %time_tracker_init.exit.thread, label %.split377

bb.aq:                                            ; preds = %.lr.ph280._crit_edge
  %i.jq = zext i1 %i.jc to i32
  %i.jr = call ptr @ff_subtitles_queue_insert(ptr noundef nonnull %i.ah, ptr noundef null, i64 noundef 0, i32 noundef %i.jq) #6 ; 3 uses
  %.not115 = icmp eq ptr %i.jr, null
  br i1 %.not115, label %time_tracker_init.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.js = call i32 @av_smpte_436m_anc_append(ptr noundef nonnull %i.jr, i32 noundef 1, ptr noundef nonnull %3) #6 ; 3 uses
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %time_tracker_init.exit.thread, label %.split377

.split377:                                        ; preds = %bb.ap, %bb.ar
  %.176 = phi i32 [ %i.js, %bb.ar ], [ 0, %bb.ap ]
  %.2 = phi ptr [ %i.jr, %bb.ar ], [ %i.jp, %bb.ap ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.2, i64 72
  store i64 %i.aj, ptr %i.ju, align 8, !tbaa !71
  %i.jv = load i64, ptr %5, align 8, !tbaa !57
  %i.jw = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !72
  %i.jx = getelementptr inbounds nuw i8, ptr %.2, i64 64
  store i64 1, ptr %i.jx, align 8, !tbaa !73
  br label %.outer.outer.backedge

.split196:                                        ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %.split196, %.split377
  %.075.ph.ph.be = phi i32 [ 0, %.split196 ], [ %.176, %.split377 ] ; 2 uses
  %i.jy = call i32 @ff_text_eof(ptr noundef nonnull %4) #6
  %.not97264282 = icmp eq i32 %i.jy, 0
  br i1 %.not97264282, label %.lr.ph.backedge, label %.outer._crit_edge

.outer.backedge:                                  ; preds = %bb.s, %bytestream2_put_byte.exit.1, %bytestream2_put_byte.exit120.thread187, %bytestream2_put_byte.exit120.thread187.thread, %parse_time_code_rate.exit, %.split, %time_tracker_set_time.exit
  %.075.ph.be = phi i32 [ 0, %parse_time_code_rate.exit ], [ %i.gq, %time_tracker_set_time.exit ], [ -1094995529, %.split ], [ 0, %bytestream2_put_byte.exit.1 ], [ 0, %bytestream2_put_byte.exit120.thread187 ], [ 0, %bytestream2_put_byte.exit120.thread187.thread ], [ %.075.ph283, %bb.s ] ; 2 uses
  %i.jz = call i32 @ff_text_eof(ptr noundef nonnull %4) #6
  %.not97264 = icmp eq i32 %i.jz, 0
  br i1 %.not97264, label %.lr.ph.backedge, label %.outer._crit_edge

.lr.ph.backedge:                                  ; preds = %.outer.backedge, %.outer.outer.backedge
  %.075.ph283.be = phi i32 [ %.075.ph.be, %.outer.backedge ], [ %.075.ph.ph.be, %.outer.outer.backedge ]
  br label %.lr.ph, !llvm.loop !52

.outer._crit_edge:                                ; preds = %.outer.outer.backedge, %.outer.backedge, %.backedge, %time_tracker_init.exit
  %.075.ph.lcssa263 = phi i32 [ 0, %time_tracker_init.exit ], [ %.075.ph283, %.backedge ], [ %.075.ph.ph.be, %.outer.outer.backedge ], [ %.075.ph.be, %.outer.backedge ]
  call void @ff_subtitles_queue_finalize(ptr noundef nonnull %0, ptr noundef nonnull %i.ah) #6
  br label %time_tracker_init.exit.thread

time_tracker_init.exit.thread:                    ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.e, %parse_time_code_rate.exit.thread169, %parse_time_code_rate.exit.thread167, %parse_time_code_rate.exit.thread, %time_tracker_init.exit.thread164, %.outer._crit_edge
  %.10 = phi i32 [ %.075.ph.lcssa263, %.outer._crit_edge ], [ %i.bj, %parse_time_code_rate.exit.thread167 ], [ %i.u, %time_tracker_init.exit.thread164 ], [ %i.bm, %parse_time_code_rate.exit.thread169 ], [ %i.q, %bb.e ], [ -1094995529, %parse_time_code_rate.exit.thread ], [ -12, %bb.ap ], [ -12, %bb.aq ], [ %i.js, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %time_tracker_init.exit.thread
  %.11 = phi i32 [ %.10, %time_tracker_init.exit.thread ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define internal i32 @mcc_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @ff_subtitles_queue_read_packet(ptr noundef nonnull %i.c, ptr noundef %1) #6
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mcc_read_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @ff_subtitles_queue_clean(ptr noundef nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mcc_read_seek(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @ff_subtitles_queue_seek(ptr noundef nonnull %i.c, ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #6
  ret i32 %i.d
}

declare ptr @av_default_item_name(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_text_init_buf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ff_text_peek_r8(ptr noundef) local_unnamed_addr #1

declare i32 @ff_text_r8(ptr noundef) local_unnamed_addr #1

declare void @ff_text_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @ff_text_init_avio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_text_eof(ptr noundef) local_unnamed_addr #1

declare i64 @ff_text_pos(ptr noundef) local_unnamed_addr #1

declare i64 @ff_subtitles_read_line(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @av_smpte_291m_anc_8bit_decode(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_smpte_291m_anc_8bit_extract_cta_708(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ff_subtitles_queue_insert(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_smpte_436m_anc_append(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ff_subtitles_queue_finalize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @av_timecode_init(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_timecode_init_from_components(ptr noundef, i64, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_stristart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_subtitles_queue_read_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ff_subtitles_queue_clean(ptr noundef) local_unnamed_addr #1

declare i32 @ff_subtitles_queue_seek(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!13 = !{!10, !6, i64 16}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !12, i64 24}
!17 = !{!"AVFormatContext", !18, i64 0, !19, i64 8, !20, i64 16, !12, i64 24, !21, i64 32, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !24, i64 64, !6, i64 72, !25, i64 80, !11, i64 88, !26, i64 96, !26, i64 104, !26, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !26, i64 136, !26, i64 144, !11, i64 152, !6, i64 160, !6, i64 164, !27, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !28, i64 192, !26, i64 200, !6, i64 208, !6, i64 212, !29, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !26, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !26, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !30, i64 376, !30, i64 384, !30, i64 392, !30, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !26, i64 432, !11, i64 440, !12, i64 448, !12, i64 456, !26, i64 464, !11, i64 472}
!18 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!19 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!20 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!21 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!22 = !{!"p2 _ZTS8AVStream", !23, i64 0}
!23 = !{!"any p2 pointer", !12, i64 0}
!24 = !{!"p2 _ZTS13AVStreamGroup", !23, i64 0}
!25 = !{!"p2 _ZTS9AVChapter", !23, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = !{!"p2 _ZTS9AVProgram", !23, i64 0}
!28 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!29 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!30 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!31 = !{!17, !21, i64 32}
!32 = !{!33, !6, i64 8}
!33 = !{!"MCCContext", !18, i64 0, !6, i64 8, !34, i64 16}
!34 = !{!"", !35, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!35 = !{!"p2 _ZTS8AVPacket", !23, i64 0}
!36 = !{!37, !38, i64 16}
!37 = !{!"AVStream", !18, i64 0, !6, i64 8, !6, i64 12, !38, i64 16, !12, i64 24, !39, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !6, i64 64, !6, i64 68, !39, i64 72, !28, i64 80, !39, i64 88, !40, i64 96, !6, i64 200, !39, i64 204, !6, i64 212}
!38 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!39 = !{!"AVRational", !6, i64 0, !6, i64 4}
!40 = !{!"AVPacket", !41, i64 0, !26, i64 8, !26, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !42, i64 48, !6, i64 56, !26, i64 64, !26, i64 72, !12, i64 80, !41, i64 88, !39, i64 96}
!41 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!43 = !{!44, !6, i64 0}
!44 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !42, i64 32, !6, i64 40, !6, i64 44, !26, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !39, i64 80, !39, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !45, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!45 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!46 = !{!44, !6, i64 4}
!47 = !{!48, !6, i64 20}
!48 = !{!"TimeTracker", !26, i64 0, !26, i64 8, !49, i64 16}
!49 = !{!"", !6, i64 0, !6, i64 4, !39, i64 8, !6, i64 16}
!50 = !{!49, !6, i64 0}
!51 = !{!48, !26, i64 8}
!52 = distinct !{!52, !15}
!53 = !{!11, !11, i64 0}
!54 = !{!7, !7, i64 0}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = !{!48, !26, i64 0}
!58 = !{!6, !6, i64 0}
!59 = !{!48, !6, i64 16}
!60 = !{!61, !62, i64 0}
!61 = !{!"AVSmpte436mCodedAnc", !62, i64 0, !6, i64 4, !6, i64 8, !62, i64 12, !6, i64 16, !7, i64 20}
!62 = !{!"short", !7, i64 0}
!63 = !{!61, !6, i64 4}
!64 = !{!65, !6, i64 4}
!65 = !{!"alias", !7, i64 0, !6, i64 4, !11, i64 8}
!66 = !{!65, !11, i64 8}
!67 = !{!61, !62, i64 12}
!68 = distinct !{!68, !15}
!69 = !{!61, !6, i64 16}
!70 = !{!61, !6, i64 8}
!71 = !{!40, !26, i64 72}
!72 = !{!40, !26, i64 8}
!73 = !{!40, !26, i64 64}
end_hunk_1
