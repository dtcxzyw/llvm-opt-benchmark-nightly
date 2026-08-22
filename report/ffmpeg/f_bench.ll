Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_bench?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"bench\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Benchmark part of a filtergraph.\00", align 1
@bench_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.3, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_vf_bench = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @bench_inputs, ptr @ff_video_default_filterpad, ptr @bench_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr null, %union.anon.0 zeroinitializer, i32 48, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"abench\00", align 1
@abench_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.3, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_abench = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @.str.1, ptr @abench_inputs, ptr @ff_audio_default_filterpad, ptr @abench_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr null, %union.anon.0 zeroinitializer, i32 48, i32 0, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"lavfi.bench.start_time\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"t:%f avg:%f max:%f min:%f\0A\00", align 1
@bench_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @bench_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"set action\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"start timer\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"stop timer\00", align 1
@bench_options = internal constant [4 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@abench_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @abench_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@abench_options = internal constant [4 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 9223372036854775807, ptr %1, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.c, align 8, !tbaa !23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = tail call i64 @av_gettime() #5           ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  switch i32 %i.k, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.m = tail call i32 @av_dict_set_int(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.4, i64 noundef %i.h, i32 noundef 0) #5 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = tail call ptr @av_dict_get(ptr noundef %i.o, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0) #5 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = tail call i64 @strtoll(ptr noundef captures(none) %i.r, ptr noundef null, i32 noundef 0) #5
  %i.t = sub nsw i64 %i.h, %i.s                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = add nsw i64 %i.v, %i.t                   ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = sdiv i64 %i.w, %i.ac
  %i.ae = sitofp nsz i64 %i.ad to double
  %i.af = sitofp nsz i64 %i.t to double
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  %i.ai = fdiv nsz <2 x double> %i.ah, splat (double 1.000000e+06) ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !23
  %. = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.t) ; 2 uses
  store i64 %., ptr %i.aa, align 8, !tbaa !20
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 %i.t) ; 2 uses
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !23
  %i.am = sitofp nsz i64 %. to double
  %i.an = sitofp nsz i64 %i.al to double
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.am, i64 1
  %i.aq = fdiv nsz <2 x double> %i.ap, splat (double 1.000000e+06) ; 2 uses
  %i.ar = extractelement <2 x double> %i.ai, i64 0
  %i.as = extractelement <2 x double> %i.ai, i64 1
  %i.at = extractelement <2 x double> %i.aq, i64 0
  %i.au = extractelement <2 x double> %i.aq, i64 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 32, ptr noundef nonnull @.str.5, double noundef %i.ar, double noundef %i.as, double noundef %i.at, double noundef %i.au) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = tail call i32 @av_dict_set(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b, %bb.a
  %i.aw = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %1) #5
  ret i32 %i.aw
}

declare i64 @av_gettime() local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_dict_set_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_dict_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!20 = !{!21, !22, i64 24}
!21 = !{!"BenchContext", !11, i64 0, !6, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !6, i64 40}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !22, i64 16}
!24 = !{!25, !26, i64 16}
!25 = !{!"AVFilterLink", !26, i64 0, !15, i64 8, !26, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !28, i64 72, !27, i64 96, !29, i64 104, !6, i64 112, !6, i64 116, !30, i64 120, !30, i64 168}
!26 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!27 = !{!"AVRational", !6, i64 0, !6, i64 4}
!28 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!29 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!30 = !{!"AVFilterFormatsConfig", !31, i64 0, !31, i64 8, !32, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!31 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!32 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!33 = !{!10, !16, i64 56}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!36 = !{!21, !6, i64 8}
!37 = !{!38, !41, i64 312}
!38 = !{!"AVFrame", !7, i64 0, !7, i64 64, !39, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !27, i64 124, !22, i64 136, !22, i64 144, !27, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !40, i64 248, !6, i64 256, !29, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !41, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !12, i64 376, !28, i64 384, !22, i64 408, !6, i64 416}
!39 = !{!"p2 omnipotent char", !17, i64 0}
!40 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!41 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!42 = !{!43, !14, i64 8}
!43 = !{!"AVDictionaryEntry", !14, i64 0, !14, i64 8}
!44 = !{!21, !22, i64 32}
!45 = !{!21, !6, i64 40}
end_hunk_0
