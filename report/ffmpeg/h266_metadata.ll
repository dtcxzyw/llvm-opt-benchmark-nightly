Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h266_metadata?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVBitStreamFilter = type { ptr, ptr, ptr }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"vvc_metadata\00", align 1
@h266_metadata_codec_ids = internal constant [2 x i32] [i32 195, i32 0], align 4
@ff_vvc_metadata_bsf = local_unnamed_addr constant { %struct.AVBitStreamFilter, i32, [4 x i8], ptr, ptr, ptr, ptr } { %struct.AVBitStreamFilter { ptr @.str, ptr @h266_metadata_codec_ids, ptr @h266_metadata_class }, i32 96, [4 x i8] zeroinitializer, ptr @h266_metadata_init, ptr @ff_cbs_bsf_generic_filter, ptr @ff_cbs_bsf_generic_close, ptr null }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"h266_metadata_bsf\00", align 1
@h266_metadata_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1, ptr @av_default_item_name, ptr @h266_metadata_options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Access Unit Delimiter NAL units\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@h266_metadata_options = internal constant [5 x { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.3, ptr @.str.4, i32 88, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr null, i32 0, i32 11, %union.anon zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr null, i32 0, i32 11, %union.anon { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr null, i32 0, i32 11, %union.anon { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [12 x i8] c"access unit\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NAL unit\00", align 1
@h266_metadata_type = internal constant { i32, [4 x i8], ptr, ptr, ptr } { i32 195, [4 x i8] zeroinitializer, ptr @.str.9, ptr @.str.10, ptr @h266_metadata_update_fragment }, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"no available picture header\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Failed to insert AUD.\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @h266_metadata_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @ff_cbs_bsf_generic_init(ptr noundef %0, ptr noundef nonnull @h266_metadata_type) #3
  ret i32 %i.a
}

declare i32 @ff_cbs_bsf_generic_filter(ptr noundef, ptr noundef) #1

declare void @ff_cbs_bsf_generic_close(ptr noundef) #1

declare ptr @av_default_item_name(ptr noundef) #1

declare i32 @ff_cbs_bsf_generic_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @h266_metadata_update_fragment(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp eq i32 %i.g, 20
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.d, label %.thread121

bb.d:                                             ; preds = %bb.c
  tail call void @ff_cbs_delete_unit(ptr noundef nonnull %2, i32 noundef 0) #3
  br label %.thread121

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not85 = icmp eq ptr %1, null
  br i1 %.not85, label %.thread121, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %.thread121

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.lr.ph, label %.thread114

.lr.ph:                                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.059133 = phi ptr [ null, %.lr.ph ], [ %.4.ph, %bb.o ] ; 5 uses
  %.064132 = phi i8 [ 0, %.lr.ph ], [ %.266.ph, %bb.o ] ; 3 uses
  %.068131 = phi i32 [ 8, %.lr.ph ], [ %.270.ph, %bb.o ] ; 2 uses
  %.072130 = phi i32 [ 0, %.lr.ph ], [ %.274.ph, %bb.o ] ; 4 uses
  %.076129 = phi ptr [ null, %.lr.ph ], [ %.480.ph, %bb.o ] ; 5 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 10 uses
  %.not86 = icmp eq ptr %i.u, null
  br i1 %.not86, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.068131, i32 %i.y) ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  switch i8 %i.aa, label %bb.o [
    i8 19, label %bb.j
    i8 10, label %bb.k
    i8 9, label %bb.k
    i8 8, label %bb.k
    i8 7, label %bb.k
    i8 3, label %bb.k
    i8 2, label %bb.k
    i8 1, label %bb.k
    i8 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !36   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 1345
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !46  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  %spec.store.select = select i1 %i.af, i32 2, i32 %.072130 ; 2 uses
  %i.ag = icmp eq i8 %i.ae, 1
  %3 = tail call i32 @llvm.smax.i32(i32 %spec.store.select, i32 1)
  %spec.store.select5 = select i1 %i.ag, i32 %3, i32 %spec.store.select ; 3 uses
  %.not88 = icmp eq ptr %.059133, null
  br i1 %.not88, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !47
  %.not89 = icmp eq i8 %i.ai, 0
  br i1 %.not89, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.not90 = icmp eq ptr %.076129, null
  br i1 %.not90, label %.thread114, label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.h, %bb.j, %bb.m, %bb.k
  %.480.ph = phi ptr [ %.076129, %bb.k ], [ %i.aj, %bb.m ], [ %.076129, %bb.h ], [ %i.ab, %bb.j ], [ %.076129, %bb.i ], [ %.076129, %bb.n ] ; 3 uses
  %.274.ph = phi i32 [ %spec.store.select5, %bb.k ], [ %spec.store.select5, %bb.m ], [ %.072130, %bb.h ], [ %.072130, %bb.j ], [ %.072130, %bb.i ], [ %spec.store.select5, %bb.n ] ; 2 uses
  %.270.ph = phi i32 [ %spec.select, %bb.k ], [ %spec.select, %bb.m ], [ %.068131, %bb.h ], [ %spec.select, %bb.j ], [ %spec.select, %bb.i ], [ %spec.select, %bb.n ] ; 2 uses
  %.266.ph = phi i8 [ %i.ac, %bb.k ], [ %i.ac, %bb.m ], [ %.064132, %bb.h ], [ %.064132, %bb.j ], [ %.064132, %bb.i ], [ %i.ac, %bb.n ] ; 2 uses
  %.4.ph = phi ptr [ %.059133, %bb.k ], [ %i.u, %bb.m ], [ %.059133, %bb.h ], [ %.059133, %bb.j ], [ %.059133, %bb.i ], [ %i.u, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.o
  %.not91 = icmp eq ptr %.480.ph, null
  br i1 %.not91, label %.thread114, label %bb.p

.thread114:                                       ; preds = %bb.n, %bb.g, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.12) #3
  br label %.thread121

bb.p:                                             ; preds = %._crit_edge
  %i.ak = trunc nuw nsw i32 %.274.ph to i8
  %i.al = trunc nsw i32 %.270.ph to i8
  %i.am = add nsw i8 %i.al, 1
  store i8 %.266.ph, ptr %i.o, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  store i8 20, ptr %.sroa.2.0..sroa_idx, align 1, !tbaa !49
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  store i8 %i.am, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 83
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 85
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !50
  %i.ao = load i8, ptr %.480.ph, align 2, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !52
  %i.aq = tail call i32 @ff_cbs_insert_unit_content(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 20, ptr noundef nonnull %i.o, ptr noundef null) #3 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %.thread121

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13) #3
  br label %.thread121

.thread121:                                       ; preds = %.thread114, %bb.q, %bb.d, %bb.c, %bb.f, %bb.e, %bb.p
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.p ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ -1094995529, %.thread114 ], [ %i.aq, %bb.q ]
  ret i32 %.1
}

declare void @ff_cbs_delete_unit(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_cbs_insert_unit_content(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !48}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS17AVBitStreamFilter", !10, i64 0}
!13 = !{!"p1 _ZTS17AVCodecParameters", !10, i64 0}
!14 = !{!"AVRational", !6, i64 0, !6, i64 4}
!15 = !{!"AVBSFContext", !11, i64 0, !12, i64 8, !10, i64 16, !13, i64 24, !13, i64 32, !14, i64 40, !14, i64 48}
!16 = !{!15, !10, i64 16}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!20 = !{!"p1 _ZTS18CodedBitstreamUnit", !10, i64 0}
!21 = !{!"CodedBitstreamFragment", !17, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !6, i64 32, !6, i64 36, !20, i64 40}
!22 = !{!21, !6, i64 32}
!23 = !{!21, !20, i64 40}
!24 = !{!"CodedBitstreamUnit", !6, i64 0, !17, i64 8, !18, i64 16, !18, i64 24, !19, i64 32, !10, i64 40, !10, i64 48}
!25 = !{!24, !6, i64 0}
!26 = !{!"p1 _ZTS10CBSBSFType", !10, i64 0}
!27 = !{!"p1 _ZTS21CodedBitstreamContext", !10, i64 0}
!28 = !{!"CBSBSFContext", !11, i64 0, !26, i64 8, !27, i64 16, !27, i64 24, !21, i64 32}
!29 = !{!"H266RawNALUnitHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!30 = !{!"H266RawAUD", !29, i64 0, !5, i64 4, !5, i64 5}
!31 = !{!"H266MetadataContext", !28, i64 0, !30, i64 80, !6, i64 88}
!32 = !{!31, !6, i64 88}
!33 = !{!24, !10, i64 40}
!34 = !{!29, !5, i64 2}
!35 = !{!29, !5, i64 1}
!36 = !{!29, !5, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!"H266RefPicLists", !5, i64 0, !5, i64 2, !5, i64 4, !5, i64 356, !5, i64 472, !5, i64 530}
!39 = !{!"H266RawPredWeightTable", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 18, !5, i64 33, !5, i64 48, !5, i64 63, !5, i64 94, !5, i64 154, !5, i64 155, !5, i64 170, !5, i64 185, !5, i64 200, !5, i64 215, !5, i64 246, !5, i64 306, !5, i64 307}
!40 = !{!"H266RawPictureHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !37, i64 6, !5, i64 8, !5, i64 9, !5, i64 25, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 29, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 45, !5, i64 46, !5, i64 47, !5, i64 48, !5, i64 49, !5, i64 50, !5, i64 52, !5, i64 58, !5, i64 60, !5, i64 66, !38, i64 68, !5, i64 714, !5, i64 715, !5, i64 716, !5, i64 717, !5, i64 718, !5, i64 719, !5, i64 720, !5, i64 721, !5, i64 722, !5, i64 723, !5, i64 724, !5, i64 725, !5, i64 726, !5, i64 727, !5, i64 728, !5, i64 729, !5, i64 730, !5, i64 731, !5, i64 732, !5, i64 733, !5, i64 734, !5, i64 735, !5, i64 736, !5, i64 737, !5, i64 738, !39, i64 740, !5, i64 1048, !5, i64 1049, !5, i64 1050, !5, i64 1051, !5, i64 1052, !5, i64 1053, !5, i64 1054, !5, i64 1055, !5, i64 1056, !5, i64 1057, !5, i64 1058, !5, i64 1059, !5, i64 1060, !5, i64 1061}
!41 = !{!"H266RawSliceHeader", !29, i64 0, !5, i64 4, !40, i64 6, !37, i64 1324, !37, i64 1326, !5, i64 1328, !5, i64 1344, !5, i64 1345, !5, i64 1346, !5, i64 1347, !5, i64 1348, !5, i64 1349, !5, i64 1357, !5, i64 1358, !5, i64 1359, !5, i64 1360, !5, i64 1361, !5, i64 1362, !5, i64 1363, !5, i64 1364, !5, i64 1365, !38, i64 1366, !5, i64 2012, !5, i64 2013, !5, i64 2015, !5, i64 2016, !5, i64 2017, !39, i64 2018, !5, i64 2326, !5, i64 2327, !5, i64 2328, !5, i64 2329, !5, i64 2330, !5, i64 2331, !5, i64 2332, !5, i64 2333, !5, i64 2334, !5, i64 2335, !5, i64 2336, !5, i64 2337, !5, i64 2338, !5, i64 2339, !5, i64 2340, !5, i64 2341, !5, i64 2342, !5, i64 2343, !5, i64 2344, !5, i64 2345, !37, i64 2346, !5, i64 2348, !5, i64 2604, !5, i64 2608, !37, i64 18808, !6, i64 18812, !5, i64 18816}
!42 = !{!"p1 _ZTS10H266RawSPS", !10, i64 0}
!43 = !{!"p1 _ZTS10H266RawPPS", !10, i64 0}
!44 = !{!"p1 _ZTS20H266RawPictureHeader", !10, i64 0}
!45 = !{!"H266RawSlice", !41, i64 0, !17, i64 18824, !19, i64 18832, !18, i64 18840, !18, i64 18848, !6, i64 18856, !42, i64 18864, !43, i64 18872, !44, i64 18880, !10, i64 18888}
!46 = !{!45, !5, i64 1345}
!47 = !{!45, !5, i64 4}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!5, !5, i64 0}
!50 = !{!30, !5, i64 5}
!51 = !{!40, !5, i64 0}
!52 = !{!30, !5, i64 4}
end_hunk_0
