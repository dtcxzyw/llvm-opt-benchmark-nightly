Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bmvaudio?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"bmv_audio\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Discworld II BMV audio\00", align 1
@ff_bmv_audio_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86072, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @bmv_aud_decode_init, %union.anon { ptr @bmv_aud_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"expected %d bytes, got %d\0A\00", align 1
@bmv_aud_mults = internal unnamed_addr constant [16 x i32] [i32 16512, i32 8256, i32 4128, i32 2064, i32 1032, i32 516, i32 258, i32 192, i32 129, i32 88, i32 64, i32 56, i32 48, i32 40, i32 36, i32 32], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @bmv_aud_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.a) #4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x i32> splat (i32 1), ptr %i.b, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 0) i32 @bmv_aud_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = mul nuw nsw i32 %i.g, 65                 ; 2 uses
  %.not = icmp sgt i32 %i.d, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.h, 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.i, i32 noundef %i.d) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = shl nuw nsw i32 %i.g, 5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.j, ptr %i.k, align 8, !tbaa !21
  %i.l = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46 = icmp eq i8 %i.f, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.045 = phi ptr [ %i.ap, %bb.f ], [ %i.n, %.lr.ph.preheader ]
  %.03144 = phi i32 [ %i.ar, %bb.f ], [ 0, %.lr.ph.preheader ]
  %.03243 = phi ptr [ %i.ai, %bb.f ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03243, i64 1
  %i.p = load i8, ptr %.03243, align 1, !tbaa !10 ; 2 uses
  %i.q = tail call i8 @llvm.fshl.i8(i8 %i.p, i8 %i.p, i8 7)
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @bmv_aud_mults, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = lshr i32 %i.r, 4
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @bmv_aud_mults, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.142 = phi ptr [ %.045, %.lr.ph ], [ %i.ap, %bb.e ] ; 3 uses
  %.03041 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.e ]
  %.13340 = phi ptr [ %i.o, %.lr.ph ], [ %i.ai, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.13340, i64 1
  %i.ab = load i8, ptr %.13340, align 1, !tbaa !10
  %i.ac = sext i8 %i.ab to i32
  %i.ad = mul nsw i32 %i.v, %i.ac
  %i.ae = ashr i32 %i.ad, 5
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 -32768)
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.af, i32 32767)
  %.0.i39 = trunc nsw i32 %i.ag to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %.142, i64 2
  store i16 %.0.i39, ptr %.142, align 2, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %.13340, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ak = sext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.z, %i.ak
  %i.am = ashr i32 %i.al, 5
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 -32768)
  %i.ao = tail call i32 @llvm.smin.i32(i32 %i.an, i32 32767)
  %.0.i = trunc nsw i32 %i.ao to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %.142, i64 4 ; 2 uses
  store i16 %.0.i, ptr %i.ah, align 2, !tbaa !30
  %i.aq = add nuw nsw i32 %.03041, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, 32
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !32

bb.f:                                             ; preds = %bb.e
  %i.ar = add nuw nsw i32 %.03144, 1              ; 2 uses
  %exitcond48.not = icmp eq i32 %i.ar, %i.g
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.f, %bb.d
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.034 = phi i32 [ -1094995529, %bb.b ], [ %i.d, %._crit_edge ], [ %i.l, %bb.c ]
  ret i32 %.034
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!6, !6, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !17, i64 24}
!14 = !{!"AVPacket", !15, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !18, i64 48, !6, i64 56, !16, i64 64, !16, i64 72, !12, i64 80, !15, i64 88, !19, i64 96}
!15 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!19 = !{!"AVRational", !6, i64 0, !6, i64 4}
!20 = !{!14, !6, i64 32}
!21 = !{!22, !6, i64 112}
!22 = !{!"AVFrame", !7, i64 0, !7, i64 64, !23, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !19, i64 124, !16, i64 136, !16, i64 144, !19, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !25, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !16, i64 304, !27, i64 312, !6, i64 320, !15, i64 328, !15, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !16, i64 368, !12, i64 376, !28, i64 384, !16, i64 408, !6, i64 416}
!23 = !{!"p2 omnipotent char", !24, i64 0}
!24 = !{!"any p2 pointer", !12, i64 0}
!25 = !{!"p2 _ZTS11AVBufferRef", !24, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !24, i64 0}
!27 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!28 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!29 = !{!17, !17, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !7, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
end_hunk_0
