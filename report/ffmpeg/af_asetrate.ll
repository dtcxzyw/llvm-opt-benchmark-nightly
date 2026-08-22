Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_asetrate?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"asetrate\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Change the sample rate without altering the data.\00", align 1
@asetrate_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@asetrate_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_props }], align 16
@ff_af_asetrate = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @asetrate_inputs, ptr @asetrate_outputs, ptr @asetrate_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr null, %union.anon.0 { ptr @query_formats }, i32 16, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Time base is inaccurate\0A\00", align 1
@asetrate_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @asetrate_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"sample_rate\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"set the sample rate\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@asetrate_options = internal constant [3 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 8, i32 2, %union.anon.2 { i64 44100 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.6, i32 8, i32 2, %union.anon.2 { i64 44100 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @query_formats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  store i32 %i.e, ptr %i.a, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !22
  %i.g = tail call ptr @ff_all_samplerates() #6
  %i.h = load ptr, ptr %1, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = tail call i32 @ff_formats_ref(ptr noundef %i.g, ptr noundef nonnull %i.i) #6 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @ff_make_format_list(ptr noundef nonnull %i.a) #6
  %i.m = load ptr, ptr %2, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = call i32 @ff_formats_ref(ptr noundef %i.l, ptr noundef nonnull %i.n) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((180, 184)) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 %i.i, ptr %i.j, align 4, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %i.q = sext i32 %i.p to i64
  %i.r = sext i32 %i.i to i64
  %i.s = tail call i64 @av_rescale(i64 noundef %i.n, i64 noundef %i.q, i64 noundef %i.r) #7
  store i64 %i.s, ptr %i.m, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call i32 @ff_filter_frame(ptr noundef nonnull %i.g, ptr noundef nonnull %1) #6
  ret i32 %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @config_props(ptr nofree noundef captures(none) initializes((96, 104)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !22 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = icmp eq i32 %.sroa.0.0.copyload, 1
  %i.i = icmp eq i32 %.sroa.6.0.copyload, %i.g
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.k, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37
  store i32 %i.m, ptr %i.j, align 4, !tbaa !49
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.0.0.copyload, ptr %i.p, align 8, !tbaa !22
  store i32 %.sroa.6.0.copyload, ptr %i.j, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !44
  %i.r = sitofp nsz i32 %.sroa.0.0.copyload to double
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %2 = load i32, ptr %1, align 8, !tbaa !37
  %. = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %2)
  %3 = insertelement <2 x i32> poison, i32 %.sroa.6.0.copyload, i64 0
  %4 = insertelement <2 x i32> %3, i32 %., i64 1
  %5 = sitofp <2 x i32> %4 to <2 x double>
  %6 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.r, i64 0
  %7 = fdiv nsz <2 x double> %6, %5               ; 2 uses
  %shift = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %8 = fcmp ogt <2 x double> %7, %shift
  %9 = extractelement <2 x i1> %8, i64 0
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.3) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ff_all_samplerates() local_unnamed_addr #4

declare ptr @ff_make_format_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

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
!20 = !{!21, !6, i64 8}
!21 = !{!"ASetRateContext", !11, i64 0, !6, i64 8, !6, i64 12}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS21AVFilterFormatsConfig", !12, i64 0}
!25 = !{!26, !27, i64 16}
!26 = !{!"AVFilterLink", !27, i64 0, !15, i64 8, !27, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !28, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !29, i64 72, !28, i64 96, !30, i64 104, !6, i64 112, !6, i64 116, !31, i64 120, !31, i64 168}
!27 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!28 = !{!"AVRational", !6, i64 0, !6, i64 4}
!29 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!30 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!31 = !{!"AVFilterFormatsConfig", !32, i64 0, !32, i64 8, !33, i64 16, !32, i64 24, !32, i64 32, !32, i64 40}
!32 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!33 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!34 = !{!10, !16, i64 56}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!37 = !{!26, !6, i64 64}
!38 = !{!39, !6, i64 180}
!39 = !{!"AVFrame", !7, i64 0, !7, i64 64, !40, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !28, i64 124, !41, i64 136, !41, i64 144, !28, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !42, i64 248, !6, i64 256, !30, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !41, i64 304, !43, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !12, i64 376, !29, i64 384, !41, i64 408, !6, i64 416}
!40 = !{!"p2 omnipotent char", !17, i64 0}
!41 = !{!"long", !7, i64 0}
!42 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!43 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!44 = !{!21, !6, i64 12}
!45 = !{!39, !41, i64 136}
!46 = !{!26, !27, i64 0}
!47 = !{!10, !16, i64 32}
!48 = !{!26, !6, i64 96}
!49 = !{!26, !6, i64 100}
end_hunk_0
