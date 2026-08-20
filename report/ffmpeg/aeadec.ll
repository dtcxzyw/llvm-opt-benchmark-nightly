begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aea\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"MD STUDIO audio\00", align 1
@ff_aea_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 256, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr null, ptr null }, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @aea_read_probe, ptr @aea_read_header, ptr @aea_read_packet, ptr null, ptr @ff_pcm_read_seek, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Channels %d not supported!\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 101) i32 @aea_read_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = icmp slt i32 %i.b, 2261
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = load i32, ptr %i.e, align 1, !tbaa !14
  %i.g = icmp eq i32 %i.f, 2048
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14    ; 3 uses
  %i.j = add i8 %i.i, -3
  %or.cond = icmp ult i8 %i.j, -2
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i8 %i.i to i32
  %i.l = mul nuw nsw i32 %i.k, 212                ; 2 uses
  %i.m = or disjoint i32 %i.l, 2048
  %i.n = add nuw nsw i32 %i.m, %i.l
  %.not27 = icmp samesign ugt i32 %i.n, %i.b
  br i1 %.not27, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 424
  %i.q = or disjoint i64 %i.p, 2048
  %i.r = mul nuw nsw i64 %i.o, 212                ; 3 uses
  %1 = or disjoint i64 %i.r, 2048
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv.a = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next31, %bb.e ] ; 2 uses
  %.029 = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ]
  %.02228 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.a ; 2 uses
  %i.t = load i16, ptr %i.s, align 1, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 212
  %i.v = load i16, ptr %i.u, align 1, !tbaa !14
  %.not25 = icmp eq i16 %i.t, %i.v
  br i1 %.not25, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i32 %.02228, 1               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %.029, %i.r  ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %i.b, %i.x
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv.a, %i.r
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !15

.critedge.loopexit:                               ; preds = %bb.e
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.w, i32 75)
  %i.z = add nuw nsw i32 %i.y, 25
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %.critedge.loopexit, %bb.b, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.z, %.critedge.loopexit ], [ 25, %bb.d ], [ 0, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @aea_read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 6 uses
  %i.b = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call i32 @avio_rl32(ptr noundef %i.d) #5 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.g = call i32 @ffio_read_size(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 256) #5 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.i, align 16, !tbaa !14
  %i.j = load i8, ptr %i.a, align 16, !tbaa !14
  %.not28 = icmp eq i8 %i.j, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = call i32 @av_dict_set(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 0) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.n = call i32 @avio_rl32(ptr noundef %i.m) #5 ; 0 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.p = call i32 @avio_r8(ptr noundef %i.o) #5   ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.r = call i64 @avio_skip(ptr noundef %i.q, i64 noundef 1783) #5 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 5 uses
  store i32 1, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 86062, ptr %i.u, align 4, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store i32 44100, ptr %i.v, align 8, !tbaa !43
  %i.w = mul nsw i32 %i.p, 146000
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %i.x, ptr %i.y, align 8, !tbaa !44
  %i.z = add i32 %i.p, -9
  %or.cond = icmp ult i32 %i.z, -8
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.p) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  call void @av_channel_layout_default(ptr noundef nonnull %i.aa, i32 noundef %i.p) #5
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !32  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 132
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ae = mul nsw i32 %i.ad, 212
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !46
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.b, i32 noundef 64, i32 noundef 1, i32 noundef 44100) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ -12, %bb.a ], [ -1094995529, %bb.f ], [ 0, %bb.g ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @aea_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = tail call i32 @av_get_packet(ptr noundef %i.b, ptr noundef %1, i32 noundef %i.i) #5
  ret i32 %i.j
}

declare i32 @ff_pcm_read_seek(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_rl32(ptr noundef) local_unnamed_addr #2

declare i32 @ffio_read_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @av_channel_layout_default(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!10, !6, i64 16}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !22, i64 32}
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
!32 = !{!33, !34, i64 16}
!33 = !{!"AVStream", !19, i64 0, !6, i64 8, !6, i64 12, !34, i64 16, !12, i64 24, !35, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !6, i64 64, !6, i64 68, !35, i64 72, !29, i64 80, !35, i64 88, !36, i64 96, !6, i64 200, !35, i64 204, !6, i64 212}
!34 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!35 = !{!"AVRational", !6, i64 0, !6, i64 4}
!36 = !{!"AVPacket", !37, i64 0, !27, i64 8, !27, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !38, i64 48, !6, i64 56, !27, i64 64, !27, i64 72, !12, i64 80, !37, i64 88, !35, i64 96}
!37 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!38 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!39 = !{!40, !6, i64 0}
!40 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !38, i64 32, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !35, i64 80, !35, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !41, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!41 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!42 = !{!40, !6, i64 4}
!43 = !{!40, !6, i64 152}
!44 = !{!40, !27, i64 48}
!45 = !{!40, !6, i64 132}
!46 = !{!40, !6, i64 156}
!47 = !{!18, !23, i64 48}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS8AVStream", !12, i64 0}
end_hunk_0
