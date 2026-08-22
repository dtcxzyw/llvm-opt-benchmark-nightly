Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_bsf?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_cbs_all_codec_ids = local_unnamed_addr constant [10 x i32] [i32 270, i32 222, i32 27, i32 172, i32 195, i32 98316, i32 2, i32 139, i32 166, i32 0], align 16
@.str = private unnamed_addr constant [32 x i8] c"Failed to read %s from packet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No %s found in packet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to write %s into packet.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to read extradata.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to write extradata.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to read extradata from packet side data.\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Failed to write extradata into packet side data.\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_cbs_bsf_generic_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = tail call i32 @ff_bsf_get_packet_ref(ptr noundef %0, ptr noundef %1) #4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  %i.h = tail call ptr @av_packet_get_side_data(ptr noundef %1, i32 noundef 1, ptr noundef null) #4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %cbs_bsf_update_side_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = tail call i32 @ff_cbs_read_packet_side_data(ptr noundef %i.j, ptr noundef nonnull %i.g, ptr noundef %1) #4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #4
  br label %cbs_bsf_update_side_data.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.g) #4, !inline_history !28 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %cbs_bsf_update_side_data.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = tail call i32 @ff_cbs_write_fragment_data(ptr noundef %i.t, ptr noundef nonnull %i.g) #4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #4
  br label %cbs_bsf_update_side_data.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = tail call ptr @av_packet_new_side_data(ptr noundef %1, i32 noundef 1, i64 noundef %i.x) #4 ; 2 uses
  %.not30.i = icmp eq ptr %i.y, null
  br i1 %.not30.i, label %cbs_bsf_update_side_data.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.z, i64 %i.aa, i1 false)
  tail call void @ff_cbs_fragment_reset(ptr noundef nonnull %i.g) #4
  br label %cbs_bsf_update_side_data.exit

cbs_bsf_update_side_data.exit:                    ; preds = %bb.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = tail call i32 @ff_cbs_read_packet(ptr noundef %i.ac, ptr noundef nonnull %i.c, ptr noundef %1) #4 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cbs_bsf_update_side_data.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef %i.ai) #4
  br label %cbs_bsf_update_side_data.exit.thread

bb.k:                                             ; preds = %cbs_bsf_update_side_data.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %i.ap) #4
  br label %cbs_bsf_update_side_data.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.as = tail call i32 %i.ar(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.c) #4 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %cbs_bsf_update_side_data.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29
  %i.aw = tail call i32 @ff_cbs_write_packet(ptr noundef %i.av, ptr noundef %1, ptr noundef nonnull %i.c) #4 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %i.ba) #4
  br label %cbs_bsf_update_side_data.exit.thread

bb.p:                                             ; preds = %bb.n
  tail call void @ff_cbs_fragment_reset(ptr noundef nonnull %i.c) #4
  br label %bb.q

cbs_bsf_update_side_data.exit.thread:             ; preds = %bb.h, %bb.e, %bb.g, %bb.d, %bb.j, %bb.l, %bb.m, %bb.o
  %.0.ph = phi i32 [ %i.aw, %bb.o ], [ %i.as, %bb.m ], [ -1094995529, %bb.l ], [ %i.ad, %bb.j ], [ -12, %bb.h ], [ %i.q, %bb.e ], [ %i.u, %bb.g ], [ %i.k, %bb.d ]
  tail call void @ff_cbs_fragment_reset(ptr noundef nonnull %i.c) #4
  tail call void @av_packet_unref(ptr noundef %1) #4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %cbs_bsf_update_side_data.exit.thread, %bb.a
  %.033 = phi i32 [ %i.d, %bb.a ], [ %.0.ph, %cbs_bsf_update_side_data.exit.thread ], [ 0, %bb.p ]
  ret i32 %.033
}

declare i32 @ff_bsf_get_packet_ref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_read_packet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_cbs_write_packet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ff_cbs_fragment_reset(ptr noundef) local_unnamed_addr #1

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -2147483648, 1) i32 @ff_cbs_bsf_generic_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !35
  %i.g = tail call i32 @ff_cbs_init(ptr noundef nonnull %i.e, i32 noundef %i.f, ptr noundef %0) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !35
  %i.k = tail call i32 @ff_cbs_init(ptr noundef nonnull %i.i, i32 noundef %i.j, ptr noundef nonnull %0) #4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !29   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store <2 x i32> <i32 1, i32 56>, ptr %i.n, align 4, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.m, ptr %i.o, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr @ff_cbs_trace_write_log, ptr %i.p, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.v = tail call i32 @ff_cbs_read_extradata(ptr noundef %i.u, ptr noundef nonnull %i.c, ptr noundef nonnull %i.r) #4 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = tail call i32 %i.y(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.c) #4 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call i32 @ff_cbs_write_extradata(ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull %i.c) #4 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.str.4.sink = phi ptr [ @.str.3, %bb.d ], [ @.str.4, %bb.f ]
  %.0.ph = phi i32 [ %i.v, %bb.d ], [ %i.ae, %bb.f ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.4.sink) #4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.f ], [ %i.z, %bb.e ], [ 0, %bb.c ], [ %.0.ph, %.sink.split ]
  tail call void @ff_cbs_fragment_reset(ptr noundef nonnull %i.c) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.036 = phi i32 [ %.0, %bb.g ], [ %i.g, %bb.a ], [ %i.k, %bb.b ]
  ret i32 %.036
}

declare i32 @ff_cbs_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ff_cbs_trace_write_log(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @ff_cbs_read_extradata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_write_extradata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define void @ff_cbs_bsf_generic_close(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @ff_cbs_fragment_free(ptr noundef nonnull %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @ff_cbs_close(ptr noundef nonnull %i.d) #4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @ff_cbs_close(ptr noundef nonnull %i.e) #4
  ret void
}

declare void @ff_cbs_fragment_free(ptr noundef) local_unnamed_addr #1

declare void @ff_cbs_close(ptr noundef) local_unnamed_addr #1

declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_read_packet_side_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_write_fragment_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!9 = !{!10, !12, i64 16}
!10 = !{!"AVBSFContext", !11, i64 0, !13, i64 8, !12, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !15, i64 48}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS17AVBitStreamFilter", !12, i64 0}
!14 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!17, !19, i64 16}
!17 = !{!"CBSBSFContext", !11, i64 0, !18, i64 8, !19, i64 16, !19, i64 24, !20, i64 32}
!18 = !{!"p1 _ZTS10CBSBSFType", !12, i64 0}
!19 = !{!"p1 _ZTS21CodedBitstreamContext", !12, i64 0}
!20 = !{!"CodedBitstreamFragment", !21, i64 0, !22, i64 8, !22, i64 16, !23, i64 24, !6, i64 32, !6, i64 36, !24, i64 40}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS18CodedBitstreamUnit", !12, i64 0}
!25 = !{!17, !18, i64 8}
!26 = !{!27, !12, i64 24}
!27 = !{!"CBSBSFType", !6, i64 0, !21, i64 8, !21, i64 16, !12, i64 24}
!28 = distinct !{null}
!29 = !{!17, !19, i64 24}
!30 = !{!20, !22, i64 8}
!31 = !{!20, !21, i64 0}
!32 = !{!27, !21, i64 8}
!33 = !{!20, !6, i64 32}
!34 = !{!27, !21, i64 16}
!35 = !{!27, !6, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{!38, !12, i64 48}
!38 = !{!"CodedBitstreamContext", !12, i64 0, !39, i64 8, !12, i64 16, !40, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !21, i64 72, !22, i64 80}
!39 = !{!"p1 _ZTS18CodedBitstreamType", !12, i64 0}
!40 = !{!"p1 int", !12, i64 0}
!41 = !{!38, !12, i64 64}
!42 = !{!10, !14, i64 24}
!43 = !{!44, !21, i64 16}
!44 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !21, i64 16, !6, i64 24, !45, i64 32, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !15, i64 80, !15, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !46, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!45 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!46 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!47 = !{!10, !14, i64 32}
end_hunk_0
