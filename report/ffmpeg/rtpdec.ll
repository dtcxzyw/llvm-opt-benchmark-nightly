Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rtpdec?download=true
inline.NumInlined: 21
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RTPDynamicProtocolHandler = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"sending %d bytes of RR\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"result from ffurl_write: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setting jitter buffer size to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to allocate data for FMTP.\0A\00", align 1
@rtp_dynamic_protocol_handler_list = internal unnamed_addr constant [54 x ptr] [ptr @ff_ac3_dynamic_handler, ptr @ff_amr_nb_dynamic_handler, ptr @ff_amr_wb_dynamic_handler, ptr @ff_av1_dynamic_handler, ptr @ff_dv_dynamic_handler, ptr @ff_g726_16_dynamic_handler, ptr @ff_g726_24_dynamic_handler, ptr @ff_g726_32_dynamic_handler, ptr @ff_g726_40_dynamic_handler, ptr @ff_g726le_16_dynamic_handler, ptr @ff_g726le_24_dynamic_handler, ptr @ff_g726le_32_dynamic_handler, ptr @ff_g726le_40_dynamic_handler, ptr @ff_h261_dynamic_handler, ptr @ff_h263_1998_dynamic_handler, ptr @ff_h263_2000_dynamic_handler, ptr @ff_h263_rfc2190_dynamic_handler, ptr @ff_h264_dynamic_handler, ptr @ff_hevc_dynamic_handler, ptr @ff_ilbc_dynamic_handler, ptr @ff_jpeg_dynamic_handler, ptr @ff_mp4a_latm_dynamic_handler, ptr @ff_mp4v_es_dynamic_handler, ptr @ff_mpeg_audio_dynamic_handler, ptr @ff_mpeg_audio_robust_dynamic_handler, ptr @ff_mpeg_video_dynamic_handler, ptr @ff_mpeg4_generic_dynamic_handler, ptr @ff_mpegts_dynamic_handler, ptr @ff_ms_rtp_asf_pfa_handler, ptr @ff_ms_rtp_asf_pfv_handler, ptr @ff_qcelp_dynamic_handler, ptr @ff_qdm2_dynamic_handler, ptr @ff_qt_rtp_aud_handler, ptr @ff_qt_rtp_vid_handler, ptr @ff_quicktime_rtp_aud_handler, ptr @ff_quicktime_rtp_vid_handler, ptr @ff_rfc4175_rtp_handler, ptr @ff_svq3_dynamic_handler, ptr @ff_theora_dynamic_handler, ptr @ff_vc2hq_dynamic_handler, ptr @ff_vorbis_dynamic_handler, ptr @ff_vp8_dynamic_handler, ptr @ff_vp9_dynamic_handler, ptr @gsm_dynamic_handler, ptr @l24_dynamic_handler, ptr @ff_opus_dynamic_handler, ptr @realmedia_mp3_dynamic_handler, ptr @speex_dynamic_handler, ptr @t140_dynamic_handler, ptr @ff_rdt_video_handler, ptr @ff_rdt_audio_handler, ptr @ff_rdt_live_video_handler, ptr @ff_rdt_live_audio_handler, ptr null], align 16
@ff_ac3_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_amr_nb_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_amr_wb_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_av1_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_dv_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726_16_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726_24_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726_32_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726_40_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726le_16_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726le_24_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726le_32_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_g726le_40_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_h261_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_h263_1998_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_h263_2000_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_h263_rfc2190_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_h264_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_hevc_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_ilbc_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_jpeg_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mp4a_latm_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mp4v_es_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mpeg_audio_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mpeg_audio_robust_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mpeg_video_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mpeg4_generic_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_mpegts_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_ms_rtp_asf_pfa_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_ms_rtp_asf_pfv_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_qcelp_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_qdm2_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_qt_rtp_aud_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_qt_rtp_vid_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_quicktime_rtp_aud_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_quicktime_rtp_vid_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_rfc4175_rtp_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_svq3_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_theora_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_vc2hq_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_vorbis_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_vp8_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_vp9_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_opus_dynamic_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_rdt_video_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_rdt_audio_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_rdt_live_video_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@ff_rdt_live_audio_handler = external constant %struct.RTPDynamicProtocolHandler, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"GSM\00", align 1
@gsm_dynamic_handler = internal constant { ptr, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.4, i32 1, i32 86034, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"L24\00", align 1
@l24_dynamic_handler = internal constant { ptr, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.6, i32 1, i32 65549, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"X-MP3-draft-00\00", align 1
@realmedia_mp3_dynamic_handler = internal constant { ptr, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.8, i32 1, i32 86029, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"speex\00", align 1
@speex_dynamic_handler = internal constant { ptr, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.10, i32 1, i32 86051, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"t140\00", align 1
@t140_dynamic_handler = internal constant { ptr, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.12, i32 3, i32 94210, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.14 = private unnamed_addr constant [44 x i8] c"RTP: dropping old packet received too late\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"jitter buffer full\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"rtpdec: failed to add SR sidedata\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"rtpdec: failed to set prft\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Invalid RTCP SR packet length\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"RTP: PT=%02x: bad cseq %04x expected=%04x\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"RTP: missed %d packets\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @ff_rtp_handler_find_by_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %rtp_handler_iterate.exit
  %.111 = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.k, %rtp_handler_iterate.exit ] ; 2 uses
  %i.a = phi ptr [ @ff_ac3_dynamic_handler, %bb.a ], [ %i.i, %rtp_handler_iterate.exit ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %rtp_handler_iterate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @av_strcasecmp(ptr noundef %0, ptr noundef nonnull %i.b) #12
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %rtp_handler_iterate.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %bb.e, label %rtp_handler_iterate.exit

rtp_handler_iterate.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %i.g = ptrtoint ptr %.111 to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @rtp_dynamic_protocol_handler_list, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %.111, inttoptr (i64 53 to ptr)
  %i.j = add nsw i64 %i.g, 1
  %i.k = inttoptr i64 %i.j to ptr
  br i1 %.not.i, label %bb.e, label %bb.b, !llvm.loop !76

bb.e:                                             ; preds = %rtp_handler_iterate.exit, %bb.d
  %.lcssa = phi ptr [ %i.i, %rtp_handler_iterate.exit ], [ %i.a, %bb.d ]
  ret ptr %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ff_rtp_handler_find_by_id(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %rtp_handler_iterate.exit.1, %bb.a
  %.110 = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.u, %rtp_handler_iterate.exit.1 ] ; 2 uses
  %i.a = phi ptr [ @ff_ac3_dynamic_handler, %bb.a ], [ %i.s, %rtp_handler_iterate.exit.1 ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !78   ; 2 uses
  %.not8 = icmp ne i32 %i.c, 0
  %i.d = icmp eq i32 %i.c, %0
  %or.cond = and i1 %.not8, %i.d
  br i1 %or.cond, label %bb.c, label %rtp_handler_iterate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %bb.f, label %rtp_handler_iterate.exit

rtp_handler_iterate.exit:                         ; preds = %bb.c, %bb.b
  %i.h = ptrtoint ptr %.110 to i64                ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @rtp_dynamic_protocol_handler_list, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 4 uses
  %.not.i = icmp eq ptr %.110, inttoptr (i64 53 to ptr)
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %rtp_handler_iterate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !78   ; 2 uses
  %.not8.1 = icmp ne i32 %i.l, 0
  %i.m = icmp eq i32 %i.l, %0
  %or.cond.1 = and i1 %.not8.1, %i.m
  br i1 %or.cond.1, label %bb.e, label %rtp_handler_iterate.exit.1

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !13
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %bb.f, label %rtp_handler_iterate.exit.1

rtp_handler_iterate.exit.1:                       ; preds = %bb.e, %bb.d
  %i.q = getelementptr [8 x i8], ptr @rtp_dynamic_protocol_handler_list, i64 %i.h
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = add nsw i64 %i.h, 2
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.b

bb.f:                                             ; preds = %bb.e, %rtp_handler_iterate.exit, %bb.c
  %.lcssa = phi ptr [ %i.j, %rtp_handler_iterate.exit ], [ %i.a, %bb.c ], [ %i.j, %bb.e ]
  ret ptr %.lcssa
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ff_rtp_check_and_send_back_rr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 25 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = icmp eq ptr %1, null                     ; 3 uses
  %i.e = icmp eq ptr %2, null
  %or.cond.not79 = and i1 %i.d, %i.e
  %i.f = icmp slt i32 %3, 1
  %or.cond3 = or i1 %or.cond.not79, %i.f
  br i1 %or.cond3, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !80
  %i.i = add i32 %i.h, %3                         ; 3 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !81
  %i.l = sub i32 %i.i, %i.k
  %i.m = mul i32 %i.l, 5
  %i.n = icmp ult i32 %i.m, 1400000
  br i1 %i.n, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.i, ptr %i.j, align 4, !tbaa !81
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %2, ptr %i.a, align 8, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #12
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %._crit_edge82

._crit_edge82:                                    ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge82, %bb.d
  %i.q = phi ptr [ %.pre, %._crit_edge82 ], [ %2, %bb.d ]
  call void @avio_w8(ptr noundef %i.q, i32 noundef 129) #12
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.r, i32 noundef 201) #12
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_wb16(ptr noundef %i.s, i32 noundef 7) #12
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31
  %i.w = add i32 %i.v, 1
  call void @avio_wb32(ptr noundef %i.t, i32 noundef %i.w) #12
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.y = load i32, ptr %i.u, align 4, !tbaa !31
  call void @avio_wb32(ptr noundef %i.x, i32 noundef %i.y) #12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = load i16, ptr %i.c, align 8, !tbaa !33
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add i32 %i.aa, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !34
  %i.ag = sub i32 %i.ad, %i.af                    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35 ; 3 uses
  %i.aj = sub i32 %i.ag, %i.ai
  %i.ak = call i32 @llvm.smax.i32(i32 %i.aj, i32 -8388608)
  %.0.i = call i32 @llvm.smin.i32(i32 %i.ak, i32 8388607)
  %i.al = and i32 %.0.i, 16777215                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !82 ; 2 uses
  %i.ao = sub i32 %i.ag, %i.an                    ; 2 uses
  store i32 %i.ag, ptr %i.am, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !83
  %.neg = sub i32 %i.aq, %i.ai
  store i32 %i.ai, ptr %i.ap, align 4, !tbaa !83
  %i.ar = add i32 %.neg, %i.ao                    ; 2 uses
  %i.as = icmp eq i32 %i.ag, %i.an
  %i.at = icmp slt i32 %i.ar, 1
  %or.cond5 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = shl i32 %i.ar, 8
  %i.av = udiv i32 %i.au, %i.ao
  %i.aw = shl i32 %i.av, 24
  %i.ax = or disjoint i32 %i.aw, %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.071 = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ]
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_wb32(ptr noundef %i.ay, i32 noundef %.071) #12
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_wb32(ptr noundef %i.az, i32 noundef %i.ad) #12
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !36
  %i.bd = lshr i32 %i.bc, 4
  call void @avio_wb32(ptr noundef %i.ba, i32 noundef %i.bd) #12
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !37 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = lshr i64 %i.bf, 16
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = call i64 @av_gettime_relative() #12
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !38
  %i.bm = sub nsw i64 %i.bj, %i.bl
  %i.bn = call i64 @av_rescale(i64 noundef %i.bm, i64 noundef 65536, i64 noundef 1000000) #13
  %i.bo = trunc i64 %i.bn to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink89 = phi i32 [ %i.bi, %bb.i ], [ 0, %bb.h ]
  %.sink88 = phi i32 [ %i.bo, %bb.i ], [ 0, %bb.h ]
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_wb32(ptr noundef %i.bp, i32 noundef %.sink89) #12
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_wb32(ptr noundef %i.bq, i32 noundef %.sink88) #12
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.br, i32 noundef 129) #12
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.bs, i32 noundef 202) #12
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #14
  %i.bv = trunc i64 %i.bu to i32                  ; 4 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.bx = add nsw i32 %i.bv, 7
  %i.by = add nsw i32 %i.bv, 10
  %i.bz = sdiv i32 %i.by, 4
  call void @avio_wb16(ptr noundef %i.bw, i32 noundef %i.bz) #12
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cb = load i32, ptr %i.u, align 4, !tbaa !31
  %i.cc = add i32 %i.cb, 1
  call void @avio_wb32(ptr noundef %i.ca, i32 noundef %i.cc) #12
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.cd, i32 noundef 1) #12
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.ce, i32 noundef %i.bv) #12
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_write(ptr noundef %i.cf, ptr noundef nonnull %i.bt, i32 noundef %i.bv) #12
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.cg, i32 noundef 0) #12
  %i.ch = srem i32 %i.bx, 4                       ; 2 uses
  %i.ci = and i32 %i.ch, 3
  %.not80 = icmp eq i32 %i.ci, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.07081 = phi i32 [ %i.ck, %.lr.ph ], [ %i.ch, %bb.j ]
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_w8(ptr noundef %i.cj, i32 noundef 0) #12
  %i.ck = add nsw i32 %.07081, 1                  ; 2 uses
  %i.cl = and i32 %i.ck, 3
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @avio_flush(ptr noundef %i.cm) #12
  br i1 %i.d, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.co = call i32 @avio_close_dyn_buf(ptr noundef %i.cn, ptr noundef nonnull %i.b) #12 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 0
  %i.cq = load ptr, ptr %i.b, align 8
  %i.cr = icmp ne ptr %i.cq, null
  %or.cond7 = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %or.cond7, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %0, align 8, !tbaa !39
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cs, i32 noundef 56, ptr noundef nonnull @.str, i32 noundef %i.co) #12
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.cu = call i32 @ffurl_write2(ptr noundef nonnull %1, ptr noundef %i.ct, i32 noundef %i.co) #12
  %i.cv = load ptr, ptr %0, align 8, !tbaa !39
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cv, i32 noundef 56, ptr noundef nonnull @.str.1, i32 noundef %i.cu) #12
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @av_free(ptr noundef %i.cw) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %._crit_edge, %bb.e, %bb.b, %bb.a
end_hunk_0
