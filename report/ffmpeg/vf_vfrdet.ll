Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_vfrdet?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }

@.str = private unnamed_addr constant [7 x i8] c"vfrdet\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Variable frame rate detect filter.\00", align 1
@vfrdet_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_vf_vfrdet = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @vfrdet_inputs, ptr @ff_video_default_filterpad, ptr null, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 zeroinitializer, i32 64, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"VFR:%f (%lu/%lu)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" min: %ld max: %ld avg: %ld\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x i64> <i64 9223372036854775807, i64 -9223372036854775808>, ptr %i.d, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %i.e = uitofp nsz i64 %i.d to float
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = add i64 %i.g, %i.d
  %i.i = uitofp nsz i64 %i.h to float
  %i.j = fdiv nsz float %i.e, %i.i
  %i.k = fpext nsz float %i.j to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.3, double noundef %i.k, i64 noundef %i.d, i64 noundef %i.g) #5
  %i.l = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = udiv i64 %i.r, %i.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.4, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.s) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775808
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub nsw i64 %.pre, %i.f                  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i64 %i.g, ptr %i.h, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.g, ptr %i.l, align 8, !tbaa !26
  br label %._crit_edge.sink.split

bb.c:                                             ; preds = %bb.b
  %.not36 = icmp eq i64 %i.i, %i.g
  br i1 %.not36, label %._crit_edge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !22
  store i64 %i.g, ptr %i.h, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %. = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.q)
  store i64 %., ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26
  %i.t = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.s)
  store i64 %i.t, ptr %i.r, align 8, !tbaa !26
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.c, %.thread, %bb.d
  %.sink43 = phi i64 [ 40, %bb.d ], [ 56, %.thread ], [ 56, %bb.c ]
  %.sink42 = phi i64 [ %i.g, %bb.d ], [ 1, %.thread ], [ 1, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink43 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = add i64 %i.v, %.sink42
  store i64 %i.w, ptr %i.u, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.sink.split, %bb.a
  store i64 %.pre, ptr %i.e, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = tail call i32 @ff_filter_frame(ptr noundef %i.z, ptr noundef nonnull %1) #5
  ret i32 %i.aa
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!23, !21, i64 48}
!23 = !{!"VFRDETContext", !11, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56}
!24 = !{!23, !21, i64 56}
!25 = !{!23, !21, i64 24}
!26 = !{!23, !21, i64 32}
!27 = !{!23, !21, i64 40}
!28 = !{!29, !30, i64 16}
!29 = !{!"AVFilterLink", !30, i64 0, !15, i64 8, !30, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !31, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !32, i64 72, !31, i64 96, !33, i64 104, !6, i64 112, !6, i64 116, !34, i64 120, !34, i64 168}
!30 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!31 = !{!"AVRational", !6, i64 0, !6, i64 4}
!32 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!33 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!34 = !{!"AVFilterFormatsConfig", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!35 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!36 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!37 = !{!23, !21, i64 8}
!38 = !{!39, !21, i64 136}
!39 = !{!"AVFrame", !7, i64 0, !7, i64 64, !40, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !31, i64 124, !21, i64 136, !21, i64 144, !31, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !41, i64 248, !6, i64 256, !33, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !21, i64 304, !42, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !21, i64 368, !12, i64 376, !32, i64 384, !21, i64 408, !6, i64 416}
!40 = !{!"p2 omnipotent char", !17, i64 0}
!41 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!42 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!43 = !{!23, !21, i64 16}
!44 = !{!10, !16, i64 56}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
end_hunk_0
