Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9_parser?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }

@ff_vp9_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 166, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 0, ptr null, ptr @parse, ptr null }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @parse(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef %4, i32 noundef returned %5) #0 {
bb.a:
  store ptr %4, ptr %2, align 8, !tbaa !11
  store i32 %5, ptr %3, align 4, !tbaa !12
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i51 = icmp ult i32 %5, 268435392
  %i.a = icmp ne ptr %4, null
  %or.cond3.i.i = and i1 %i.a, %or.cond.i.i51
  br i1 %or.cond3.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %4, align 1, !tbaa !13      ; 3 uses
  %i.c = lshr i8 %i.b, 5
  %i.d = and i8 %i.c, 1
  %i.e = lshr i8 %i.b, 3
  %i.f = and i8 %i.e, 2
  %i.g = or disjoint i8 %i.d, %i.f                ; 2 uses
  %i.h = zext nneg i8 %i.g to i32
  %i.i = icmp eq i8 %i.g, 3
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = and i8 %i.b, 8
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  %.02150 = phi i32 [ 3, %bb.d ], [ %i.h, %bb.c ]
  %.sroa.9.049 = phi i32 [ 6, %bb.d ], [ 5, %bb.c ]
  %.sroa.9.049.a = phi i32 [ 5, %bb.d ], [ 4, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i32 %.02150, ptr %i.k, align 8, !tbaa !31
  %i.l = load i8, ptr %4, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = lshr exact i32 128, %.sroa.9.049.a
  %i.o = and i32 %i.n, %i.m
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %.thread
  %i.p = lshr exact i32 128, %.sroa.9.049
  %i.q = and i32 %i.p, %i.m
  %.not54 = icmp eq i32 %i.q, 0                   ; 2 uses
  %spec.select = select i1 %.not54, i32 1, i32 2
  %spec.select59 = zext i1 %.not54 to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.thread
  %.sink57 = phi i32 [ %spec.select, %bb.e ], [ 2, %.thread ]
  %.sink = phi i32 [ %spec.select59, %bb.e ], [ 0, %.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink57, ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %.sink, ptr %i.s, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.b
  ret i32 %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!15 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!16 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"AVRational", !6, i64 0, !6, i64 4}
!19 = !{!"float", !5, i64 0}
!20 = !{!"p1 short", !9, i64 0}
!21 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!22 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!23 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!24 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!25 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!26 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!27 = !{!"p1 int", !9, i64 0}
!28 = !{!"any p2 pointer", !9, i64 0}
!29 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!30 = !{!"AVCodecContext", !14, i64 0, !6, i64 8, !6, i64 12, !15, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !16, i64 40, !9, i64 48, !17, i64 56, !6, i64 64, !6, i64 68, !10, i64 72, !6, i64 80, !18, i64 84, !18, i64 92, !18, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !18, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !21, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !19, i64 428, !19, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !22, i64 456, !17, i64 464, !17, i64 472, !19, i64 480, !19, i64 484, !6, i64 488, !6, i64 492, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !23, i64 536, !9, i64 544, !24, i64 552, !24, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !25, i64 728, !10, i64 736, !6, i64 744, !6, i64 748, !10, i64 752, !10, i64 760, !10, i64 768, !26, i64 776, !6, i64 784, !6, i64 788, !17, i64 792, !6, i64 800, !6, i64 804, !17, i64 808, !9, i64 816, !17, i64 824, !27, i64 832, !6, i64 840, !29, i64 848, !6, i64 856, !6, i64 860}
!31 = !{!30, !6, i64 688}
!32 = !{!"p1 _ZTS13AVCodecParser", !9, i64 0}
!33 = !{!"AVCodecParserContext", !9, i64 0, !32, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !6, i64 80, !6, i64 84, !5, i64 88, !5, i64 120, !5, i64 152, !6, i64 184, !17, i64 192, !5, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !5, i64 248, !17, i64 280, !17, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!34 = !{!33, !6, i64 40}
!35 = !{!33, !6, i64 232}
end_hunk_0
