Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/srtdec?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"srt\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SubRip subtitle\00", align 1
@ff_srt_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 3, i32 94225, i32 0, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 33, i32 4, ptr null, ptr null, ptr null, ptr @ff_ass_subtitle_header_default, %union.anon { ptr @srt_decode_frame }, ptr null, ptr @ff_ass_decoder_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"subrip\00", align 1
@ff_subrip_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.1, i32 3, i32 94225, i32 0, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 33, i32 4, ptr null, ptr null, ptr null, ptr @ff_ass_subtitle_header_default, %union.anon { ptr @srt_decode_frame }, ptr null, ptr @ff_ass_decoder_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"{\\an5}{\\pos(%d,%d)}\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"{\\an1}{\\pos(%d,%d)}\00", align 1

declare i32 @ff_ass_subtitle_header_default(ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @srt_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %struct.AVBPrint, align 8           ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call ptr @av_packet_get_side_data(ptr noundef %3, i32 noundef 14, ptr noundef nonnull %i.a) #3 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = load i64, ptr %i.a, align 8
  %i.g = icmp eq i64 %i.f, 16
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 1, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 1, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 1, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i32 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 6 uses
  %.026 = phi i32 [ %i.j, %bb.b ], [ -1, %bb.a ]  ; 6 uses
  %.025 = phi i32 [ %i.l, %bb.b ], [ -1, %bb.a ]  ; 4 uses
  %.024 = phi i32 [ %i.n, %bb.b ], [ -1, %bb.a ]  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @av_bprint_init(ptr noundef nonnull %4, i32 noundef 0, i32 noundef -1) #3
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = or i32 %.026, %.027
  %or.cond.i = icmp sgt i32 %i.t, -1
  br i1 %or.cond.i, label %bb.e, label %srt_to_ass.exit

bb.e:                                             ; preds = %bb.d
  %i.u = or i32 %.024, %.025
  %or.cond3.i = icmp sgt i32 %i.u, -1
  br i1 %or.cond3.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %.025, %.027
  %.not36.i = icmp eq i32 %.024, %.026
  %or.cond39.i = and i1 %.not.i, %.not36.i
  %.not37.i = icmp slt i32 %.025, %.027
  %or.cond40.i = or i1 %.not37.i, %or.cond39.i
  %.not38.i = icmp slt i32 %.024, %.026
  %or.cond41.i = or i1 %.not38.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sub nuw nsw i32 %.025, %.027
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, %.027
  %i.y = sub nuw nsw i32 %.024, %.026
  %i.z = lshr i32 %i.y, 1
  %i.aa = add nuw nsw i32 %i.z, %.026
  %i.ab = sext i32 %i.x to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = udiv i64 %i.ac, 15
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = sext i32 %i.aa to i64
  %i.ag = mul nuw nsw i64 %i.af, 3
  %i.ah = udiv i64 %i.ag, 5
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, i32 noundef %i.ae, i32 noundef %i.ai) #3
  br label %srt_to_ass.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aj = zext nneg i32 %.027 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = udiv i64 %i.ak, 15
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = zext nneg i32 %.026 to i64
  %i.ao = mul nuw nsw i64 %i.an, 3
  %i.ap = udiv i64 %i.ao, 5
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.4, i32 noundef %i.am, i32 noundef %i.aq) #3
  br label %srt_to_ass.exit

srt_to_ass.exit:                                  ; preds = %bb.d, %bb.g, %bb.h
  %i.ar = call i32 @ff_htmlmarkup_to_ass(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.s) #3 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.i, label %.thread

.thread:                                          ; preds = %srt_to_ass.exit
  %i.at = call i32 @av_bprint_finalize(ptr noundef nonnull %4, ptr noundef null) #3 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %srt_to_ass.exit
  %i.au = load ptr, ptr %4, align 8, !tbaa !34
  %i.av = load i32, ptr %i.d, align 4, !tbaa !36  ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.d, align 4, !tbaa !36
  %i.ax = call i32 @ff_ass_add_rect(ptr noundef %1, ptr noundef %i.au, i32 noundef %i.av, i32 noundef 0, ptr noundef null, ptr noundef null) #3 ; 2 uses
  %i.ay = call i32 @av_bprint_finalize(ptr noundef nonnull %4, ptr noundef null) #3 ; 0 uses
  %i.az = icmp slt i32 %i.ax, 0
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !40
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  store i32 %i.bd, ptr %2, align 4, !tbaa !41
  %i.be = load i32, ptr %i.o, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.c, %bb.j
  %.028 = phi i32 [ %i.be, %bb.j ], [ %i.p, %bb.c ], [ %i.ax, %bb.i ], [ %i.ar, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret i32 %.028
}

declare void @ff_ass_decoder_flush(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare i32 @ff_ass_add_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

declare i32 @ff_htmlmarkup_to_ass(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!5, !5, i64 0}
!30 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!31 = !{!30, !6, i64 32}
!32 = !{!30, !14, i64 24}
!33 = !{!"AVBPrint", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21}
!34 = !{!33, !14, i64 0}
!35 = !{!"FFASSDecoderContext", !6, i64 0}
!36 = !{!35, !6, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!"p2 _ZTS14AVSubtitleRect", !25, i64 0}
!39 = !{!"AVSubtitle", !37, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !38, i64 16, !13, i64 24}
!40 = !{!39, !6, i64 12}
!41 = !{!6, !6, i64 0}
end_hunk_0
