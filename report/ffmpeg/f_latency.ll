Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_latency?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Report video filtering latency.\00", align 1
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_vf_latency = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @ff_video_default_filterpad, ptr @ff_video_default_filterpad, ptr null, i32 131080, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 zeroinitializer, i32 24, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"alatency\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Report audio filtering latency.\00", align 1
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_alatency = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @ff_audio_default_filterpad, ptr @ff_audio_default_filterpad, ptr null, i32 131072, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 zeroinitializer, i32 24, i32 0, ptr null, ptr @activate }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Min latency: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Max latency: %ld\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !20
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -9223372036854775808, ptr %1, align 8, !tbaa !23
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i64 %i.c, 9223372036854775807
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.4, i64 noundef %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not8 = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.5, i64 noundef %i.e) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = tail call i32 @ff_outlink_get_status(ptr noundef %i.k) #6 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.h, i32 noundef %i.l) #6
  br label %bb.q

.critedge:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %.not54 = icmp eq i32 %i.n, 0
  br i1 %.not54, label %bb.c, label %.thread

bb.c:                                             ; preds = %.critedge
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 3 uses
  %.not55 = icmp eq ptr %i.q, null
  br i1 %.not55, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !38
  %.not56 = icmp eq i32 %i.s, 0
  br i1 %.not56, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  switch i32 %i.x, label %.thread [
    i32 1, label %bb.g
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 248, %bb.f ], [ 264, %bb.e ]
  %.sink72 = phi i64 [ 256, %bb.f ], [ 272, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sink
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ac = sub nsw i64 %i.z, %i.ab                 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !20
  %.0. = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.ac)
  store i64 %.0., ptr %i.e, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ac)
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.h, %bb.d, %bb.c, %.critedge
  %i.ai = tail call i64 @ff_inlink_queued_frames(ptr noundef %i.h) #6
  %.not57 = icmp eq i64 %i.ai, 0
  br i1 %.not57, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.aj = call i32 @ff_inlink_consume_frame(ptr noundef %i.h, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread62, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not58 = icmp eq i32 %i.aj, 0
  br i1 %.not58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.am = call i32 @ff_filter_frame(ptr noundef %i.k, ptr noundef %i.al) #6
  br label %.thread62

.thread62:                                        ; preds = %bb.i, %bb.k
  %.146.ph = phi i32 [ %i.am, %bb.k ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.an = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %.not59 = icmp eq i32 %i.an, 0
  br i1 %.not59, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !43
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !40
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.k, i32 noundef %i.ao, i64 noundef %i.ap) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.aq = call i32 @ff_outlink_frame_wanted(ptr noundef %i.k) #6
  %.not60 = icmp eq i32 %i.aq, 0
  br i1 %.not60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @ff_inlink_request_frame(ptr noundef %i.h) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %.thread62, %bb.b, %bb.o, %bb.p
  %.4 = phi i32 [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.n ], [ %.146.ph, %.thread62 ], [ -1497649742, %bb.o ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ff_inlink_queued_frames(ptr noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"LatencyContext", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!10, !16, i64 32}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!27 = !{!10, !16, i64 56}
!28 = !{!10, !6, i64 104}
!29 = !{!30, !31, i64 0}
!30 = !{!"AVFilterLink", !31, i64 0, !15, i64 8, !31, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !32, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !33, i64 72, !32, i64 96, !34, i64 104, !6, i64 112, !6, i64 116, !35, i64 120, !35, i64 168}
!31 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!32 = !{!"AVRational", !6, i64 0, !6, i64 4}
!33 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!34 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!35 = !{!"AVFilterFormatsConfig", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!36 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!37 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!38 = !{!10, !6, i64 40}
!39 = !{!30, !6, i64 32}
!40 = !{!22, !22, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!43 = !{!6, !6, i64 0}
end_hunk_0
