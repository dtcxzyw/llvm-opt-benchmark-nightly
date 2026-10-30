Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbc_parser?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }

@ff_sbc_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 86103, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 64, ptr null, ptr @sbc_parse, ptr @ff_parse_close }, align 8
@sbc_parse_header.sample_rates = internal unnamed_addr constant [4 x i32] [i32 16000, i32 32000, i32 44100, i32 48000], align 16

; Function Attrs: nounwind uwtable
define internal i32 @sbc_parse(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !15
  store i32 %5, ptr %i.b, align 4, !tbaa !11
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.j = sext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sub nsw i64 3, %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %4, i64 %i.l, i1 false)
  %i.m = tail call fastcc i32 @sbc_parse_header(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef 3)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = sub nsw i32 %i.m, %i.o
  store i32 0, ptr %i.g, align 4, !tbaa !20
  br label %select.unfold

bb.d:                                             ; preds = %bb.b
  %i.q = sext i32 %5 to i64
  %i.r = tail call fastcc i32 @sbc_parse_header(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %i.q) ; 2 uses
  %.not29 = icmp slt i32 %i.r, %5
  br i1 %.not29, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.r, %bb.d ]  ; 2 uses
  %i.s = icmp slt i32 %.0, 0
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = tail call i32 @llvm.umin.i32(i32 %5, i32 3) ; 2 uses
  store i32 %i.t, ptr %i.g, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = zext nneg i32 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 1 %4, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %5, ptr %i.w, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %.thread, %select.unfold
  %.1 = phi i32 [ -100, %.thread ], [ %.0, %select.unfold ] ; 2 uses
  %i.x = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef %.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  %.pre31 = load i32, ptr %i.b, align 4, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %2, align 8, !tbaa !15
  store i32 0, ptr %3, align 4, !tbaa !11
  %i.z = load i32, ptr %i.b, align 4, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge, %bb.a
  %i.aa = phi i32 [ %.pre31, %._crit_edge ], [ %5, %bb.a ]
  %i.ab = phi ptr [ %.pre, %._crit_edge ], [ %4, %bb.a ]
  %.2 = phi i32 [ %.1, %._crit_edge ], [ %5, %bb.a ]
  store ptr %i.ab, ptr %2, align 8, !tbaa !15
  store i32 %i.aa, ptr %3, align 4, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ %.2, %bb.g ], [ %i.z, %bb.f ]
  ret i32 %.026
}

declare void @ff_parse_close(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 1034) i32 @sbc_parse_header(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 3
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !22
  switch i8 %i.b, label %.thread [
    i8 -83, label %bb.c
    i8 -100, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.i) #4
  store i32 0, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i32 1, ptr %i.j, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 16000, ptr %i.k, align 8, !tbaa !41
  br label %.thread.sink.split

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = lshr i32 %i.n, 6
  %i.p = lshr i32 %i.n, 2                         ; 2 uses
  %i.q = and i32 %i.p, 12
  %i.r = add nuw nsw i32 %i.q, 4                  ; 2 uses
  %i.s = and i32 %i.p, 3                          ; 3 uses
  %i.t = shl nuw nsw i32 %i.n, 2
  %i.u = and i32 %i.t, 4                          ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 4                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %i.y = zext i8 %i.x to i32
  %i.z = icmp ne i32 %i.s, 0                      ; 2 uses
  %i.aa = select i1 %i.z, i32 2, i32 1
  %i.ab = icmp eq i32 %i.s, 3
  %i.ac = zext i1 %i.z to i32
  %i.ad = shl nuw nsw i32 %i.v, %i.ac
  %i.ae = lshr exact i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.ae, 4
  %i.ag = icmp eq i32 %i.s, 1
  %i.ah = zext i1 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.r, %i.ah
  %i.aj = mul nuw nsw i32 %i.ai, %i.y
  %i.ak = or disjoint i32 %i.u, 8
  %i.al = select i1 %i.ab, i32 %i.ak, i32 4
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = lshr i32 %i.am, 3
  %i.ao = add nuw nsw i32 %i.af, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.ap) #4
  store i32 0, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i32 %i.aa, ptr %i.aq, align 4, !tbaa !40
  %i.ar = zext nneg i32 %i.o to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @sbc_parse_header.sample_rates, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 %i.at, ptr %i.au, align 8, !tbaa !41
  %i.av = mul nuw nsw i32 %i.v, %i.r
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.e, %bb.f
  %.sink40 = phi i32 [ %i.av, %bb.f ], [ 120, %bb.e ] ; 2 uses
  %.0.ph = phi i32 [ %i.ao, %bb.f ], [ 57, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 %.sink40, ptr %i.aw, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %.sink40, ptr %i.ax, align 8, !tbaa !43
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -2, %bb.d ], [ -2, %bb.c ], [ -1, %bb.a ], [ -2, %bb.b ], [ %.0.ph, %.thread.sink.split ]
  ret i32 %.0
}

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"p1 _ZTS13AVCodecParser", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"AVCodecParserContext", !9, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !6, i64 80, !6, i64 84, !5, i64 88, !5, i64 120, !5, i64 152, !6, i64 184, !13, i64 192, !5, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !5, i64 248, !13, i64 280, !13, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!15 = !{!10, !10, i64 0}
!16 = !{!14, !9, i64 0}
!17 = !{!14, !6, i64 184}
!18 = !{!"ParseContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40}
!19 = !{!"SBCParseContext", !18, i64 0, !5, i64 48, !6, i64 52, !6, i64 56}
!20 = !{!19, !6, i64 52}
!21 = !{!19, !6, i64 56}
!22 = !{!5, !5, i64 0}
!23 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!24 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!25 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!26 = !{!"AVRational", !6, i64 0, !6, i64 4}
!27 = !{!"float", !5, i64 0}
!28 = !{!"p1 short", !9, i64 0}
!29 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!30 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!31 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!32 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!33 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!34 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!35 = !{!"p1 int", !9, i64 0}
!36 = !{!"any p2 pointer", !9, i64 0}
!37 = !{!"p2 _ZTS15AVFrameSideData", !36, i64 0}
!38 = !{!"AVCodecContext", !23, i64 0, !6, i64 8, !6, i64 12, !24, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !25, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !10, i64 72, !6, i64 80, !26, i64 84, !26, i64 92, !26, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !26, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !27, i64 204, !27, i64 208, !27, i64 212, !27, i64 216, !27, i64 220, !27, i64 224, !27, i64 228, !27, i64 232, !27, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !28, i64 288, !28, i64 296, !28, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !29, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !27, i64 428, !27, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !30, i64 456, !13, i64 464, !13, i64 472, !27, i64 480, !27, i64 484, !6, i64 488, !6, i64 492, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !31, i64 536, !9, i64 544, !32, i64 552, !32, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !33, i64 728, !10, i64 736, !6, i64 744, !6, i64 748, !10, i64 752, !10, i64 760, !10, i64 768, !34, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !35, i64 832, !6, i64 840, !37, i64 848, !6, i64 856, !6, i64 860}
!39 = !{!38, !6, i64 352}
!40 = !{!38, !6, i64 356}
!41 = !{!38, !6, i64 344}
!42 = !{!38, !6, i64 376}
!43 = !{!14, !6, i64 296}
end_hunk_0
