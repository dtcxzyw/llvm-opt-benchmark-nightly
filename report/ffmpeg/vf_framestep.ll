Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_framestep?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"framestep\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Select one frame every N frames.\00", align 1
@framestep_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@framestep_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output_props }], align 16
@ff_vf_framestep = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @framestep_inputs, ptr @framestep_outputs, ptr @framestep_class, i32 65544, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer, i32 16, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"step:%d frame_rate:%d/%d(%f) -> frame_rate:%d/%d(%f)\0A\00", align 1
@framestep_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @framestep_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"set frame step\00", align 1
@framestep_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 8, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = sext i32 %i.i to i64
  %i.k = srem i64 %i.g, %i.j
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = tail call i32 @ff_filter_frame(ptr noundef %i.n, ptr noundef %1) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ %i.o, %bb.b ]
  ret i32 %.0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_output_props(ptr nofree noundef captures(none) initializes((280, 288)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31
  %i.k = load i64, ptr %i.h, align 8
  %.sroa.0.0.insert.ext = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  %i.l = tail call i64 @av_div_q(i64 %i.k, i64 %.sroa.0.0.insert.insert) #4 ; 4 uses
  store i64 %i.l, ptr %i.g, align 8
  %i.m = load i32, ptr %i.i, align 8, !tbaa !31
  %i.n = load i32, ptr %i.h, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 284
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = load i64, ptr %i.h, align 8
  %i.r = trunc i64 %i.l to i32
  %i.s = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %i.t = insertelement <2 x i64> %i.s, i64 %i.l, i64 1 ; 2 uses
  %i.u = trunc <2 x i64> %i.t to <2 x i32>
  %i.v = lshr i64 %i.l, 32
  %i.w = lshr <2 x i64> %i.t, splat (i64 32)
  %i.x = trunc nuw i64 %i.v to i32
  %i.y = trunc nuw <2 x i64> %i.w to <2 x i32>
  %i.z = sitofp <2 x i32> %i.u to <2 x double>
  %i.aa = sitofp <2 x i32> %i.y to <2 x double>
  %i.ab = fdiv nsz <2 x double> %i.z, %i.aa       ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = extractelement <2 x double> %i.ab, i64 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.a, i32 noundef 40, ptr noundef nonnull @.str.3, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.p, double noundef %i.ac, i32 noundef %i.r, i32 noundef %i.x, double noundef %i.ad) #3
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @av_default_item_name(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(none) }

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
!10 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!11 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!16 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!17 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!18 = !{!"AVFilterFormatsConfig", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!19 = !{!"AVFilterLink", !10, i64 0, !11, i64 8, !10, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !13, i64 72, !12, i64 96, !15, i64 104, !6, i64 112, !6, i64 116, !18, i64 120, !18, i64 168}
!20 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!21 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!22 = !{!"p1 omnipotent char", !9, i64 0}
!23 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!24 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!25 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!26 = !{!"AVFilterContext", !20, i64 0, !21, i64 8, !22, i64 16, !11, i64 24, !23, i64 32, !6, i64 40, !11, i64 48, !23, i64 56, !6, i64 64, !9, i64 72, !24, i64 80, !6, i64 88, !6, i64 92, !22, i64 96, !6, i64 104, !25, i64 112, !6, i64 120}
!27 = !{!26, !9, i64 72}
!28 = !{!"long", !5, i64 0}
!29 = !{!"FilterLink", !19, i64 0, !24, i64 216, !28, i64 224, !28, i64 232, !6, i64 240, !6, i64 244, !28, i64 248, !28, i64 256, !28, i64 264, !28, i64 272, !12, i64 280, !25, i64 288}
!30 = !{!"NullContext", !20, i64 0, !6, i64 8}
!31 = !{!30, !6, i64 8}
!32 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!19, !10, i64 16}
!37 = !{!29, !28, i64 256}
!38 = !{!26, !23, i64 56}
!39 = !{!19, !10, i64 0}
!40 = !{!26, !23, i64 32}
!41 = !{!29, !6, i64 280}
!42 = !{!29, !6, i64 284}
end_hunk_0
