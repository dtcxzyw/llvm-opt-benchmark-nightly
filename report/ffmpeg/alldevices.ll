Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alldevices?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFOutputFormat = type { %struct.AVOutputFormat, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AVOutputFormat = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.FFInputFormat = type { %struct.AVInputFormat, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AVInputFormat = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }

@outdev_list = internal constant [7 x ptr] [ptr @ff_alsa_muxer, ptr @ff_fbdev_muxer, ptr @ff_oss_muxer, ptr @ff_sndio_muxer, ptr @ff_v4l2_muxer, ptr @ff_xv_muxer, ptr null], align 16
@indev_list = internal constant [9 x ptr] [ptr @ff_alsa_demuxer, ptr @ff_fbdev_demuxer, ptr @ff_kmsgrab_demuxer, ptr @ff_lavfi_demuxer, ptr @ff_oss_demuxer, ptr @ff_sndio_demuxer, ptr @ff_v4l2_demuxer, ptr @ff_xcbgrab_demuxer, ptr null], align 16
@ff_alsa_muxer = external hidden constant %struct.FFOutputFormat, align 8
@ff_fbdev_muxer = external hidden constant %struct.FFOutputFormat, align 8
@ff_oss_muxer = external hidden constant %struct.FFOutputFormat, align 8
@ff_sndio_muxer = external hidden constant %struct.FFOutputFormat, align 8
@ff_v4l2_muxer = external hidden constant %struct.FFOutputFormat, align 8
@ff_xv_muxer = external hidden constant %struct.FFOutputFormat, align 8
@ff_alsa_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_fbdev_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_kmsgrab_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_lavfi_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_oss_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_sndio_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_v4l2_demuxer = external hidden constant %struct.FFInputFormat, align 8
@ff_xcbgrab_demuxer = external hidden constant %struct.FFInputFormat, align 8

; Function Attrs: cold nounwind optsize uwtable
define void @avdevice_register_all() local_unnamed_addr #0 {
bb.a:
  tail call void @avpriv_register_devices(ptr noundef nonnull @outdev_list, ptr noundef nonnull @indev_list) #3
  ret void
}

declare void @avpriv_register_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @av_input_audio_device_next(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @next_input(ptr noundef %0, i32 noundef 43) #4
  ret ptr %i.a
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @next_input(ptr nofree noundef readnone captures(address) %0, i32 noundef range(i32 41, 44) %1) unnamed_addr #2 {
bb.a:
  %.old1.not = icmp eq ptr %0, null
  br i1 %.old1.not, label %.critedge, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %.not, label %.critedge, label %.preheader.preheader, !llvm.loop !18

.preheader.preheader:                             ; preds = %bb.a, %.preheader
  %indvars.iv27 = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @indev_list, i64 %indvars.iv27
  %2 = load ptr, ptr %i.a, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv27, 1 ; 3 uses
  %.not19 = icmp eq ptr %0, %2
  br i1 %.not19, label %.critedge, label %.preheader, !llvm.loop !18

.critedge:                                        ; preds = %.preheader.preheader, %.preheader, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 8, %.preheader ], [ %indvars.iv.next, %.preheader.preheader ] ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr @indev_list, i64 %.1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not2029 = icmp eq i64 %.1, 8
  br i1 %.not2029, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds [8 x i8], ptr @indev_list, i64 %indvars.iv.next2431
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not20 = icmp eq i64 %indvars.iv.next2431, 8
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %.critedge, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %.critedge ] ; 2 uses
  %indvars.iv.next2431.in = phi i64 [ %indvars.iv.next2431, %bb.b ], [ %.1, %.critedge ]
  %.01430 = phi i32 [ %.115, %bb.b ], [ 0, %.critedge ]
  %indvars.iv.next2431 = add nuw nsw i64 %indvars.iv.next2431.in, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.not21 = icmp eq ptr %i.h, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.115 = phi i32 [ %i.j, %bb.c ], [ %.01430, %.lr.ph ] ; 3 uses
  %i.k = icmp ne i32 %.115, 45
  %i.l = icmp ne i32 %.115, %1
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge32, !llvm.loop !19

._crit_edge32:                                    ; preds = %bb.d
  br label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %._crit_edge32, %.critedge
  %.lcssa = phi ptr [ %i.c, %.critedge ], [ %i.f, %._crit_edge32 ], [ %i.e, %bb.b ]
  ret ptr %.lcssa
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @av_input_video_device_next(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @next_input(ptr noundef %0, i32 noundef 41) #4
  ret ptr %i.a
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @av_output_audio_device_next(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @next_output(ptr noundef %0, i32 noundef 42) #4
  ret ptr %i.a
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @next_output(ptr nofree noundef readnone captures(address) %0, i32 noundef range(i32 40, 43) %1) unnamed_addr #2 {
bb.a:
  %.old1.not = icmp eq ptr %0, null
  br i1 %.old1.not, label %.critedge, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %.not, label %.critedge, label %.preheader.preheader, !llvm.loop !25

.preheader.preheader:                             ; preds = %bb.a, %.preheader
  %indvars.iv27 = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @outdev_list, i64 %indvars.iv27
  %2 = load ptr, ptr %i.a, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv27, 1 ; 3 uses
  %.not19 = icmp eq ptr %0, %2
  br i1 %.not19, label %.critedge, label %.preheader, !llvm.loop !25

.critedge:                                        ; preds = %.preheader.preheader, %.preheader, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 6, %.preheader ], [ %indvars.iv.next, %.preheader.preheader ] ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr @outdev_list, i64 %.1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not2029 = icmp eq i64 %.1, 6
  br i1 %.not2029, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds [8 x i8], ptr @outdev_list, i64 %indvars.iv.next2431
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not20 = icmp eq i64 %indvars.iv.next2431, 6
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !26

.lr.ph:                                           ; preds = %.critedge, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %.critedge ] ; 2 uses
  %indvars.iv.next2431.in = phi i64 [ %indvars.iv.next2431, %bb.b ], [ %.1, %.critedge ]
  %.01430 = phi i32 [ %.115, %bb.b ], [ 0, %.critedge ]
  %indvars.iv.next2431 = add nuw nsw i64 %indvars.iv.next2431.in, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not21 = icmp eq ptr %i.h, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.115 = phi i32 [ %i.j, %bb.c ], [ %.01430, %.lr.ph ] ; 3 uses
  %i.k = icmp ne i32 %.115, 44
  %i.l = icmp ne i32 %.115, %1
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge32, !llvm.loop !26

._crit_edge32:                                    ; preds = %bb.d
  br label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.b, %._crit_edge32, %.critedge
  %.lcssa = phi ptr [ %i.c, %.critedge ], [ %i.f, %._crit_edge32 ], [ %i.e, %bb.b ]
  ret ptr %.lcssa
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @av_output_video_device_next(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @next_output(ptr noundef %0, i32 noundef 40) #4
  ret ptr %i.a
}

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"p2 _ZTS10AVCodecTag", !12, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!15 = !{!"p1 _ZTS8AVOption", !10, i64 0}
!16 = !{!"AVClass", !11, i64 0, !10, i64 8, !15, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72}
!17 = !{!16, !6, i64 36}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = !{!"p1 _ZTS13FFInputFormat", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"AVInputFormat", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24, !13, i64 32, !14, i64 40, !11, i64 48}
!23 = !{!"FFInputFormat", !22, i64 0, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144}
!24 = !{!23, !14, i64 40}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = !{!"p1 _ZTS14FFOutputFormat", !10, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"AVOutputFormat", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !13, i64 48, !14, i64 56}
!30 = !{!"FFOutputFormat", !29, i64 0, !6, i64 64, !6, i64 68, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160}
!31 = !{!30, !14, i64 56}
end_hunk_0
