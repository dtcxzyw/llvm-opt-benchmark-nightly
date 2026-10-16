Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rtpenc_h263?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @ff_h263_find_resync_marker_reverse(ptr noalias nofree noundef readnone captures(address) %0, ptr noalias nofree noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %.thread20

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.025 = phi ptr [ %i.k, %bb.d ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = load i8, ptr %.025, align 1, !tbaa !10
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.025, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  %.not15 = icmp eq i8 %i.f, 0
  br i1 %.not15, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.025, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %.not16 = icmp eq i8 %i.h, 0
  br i1 %.not16, label %bb.d, label %.thread20

.thread:                                          ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %.025, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %.not1719 = icmp eq i8 %i.j, 0
  br i1 %.not1719, label %.thread20.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %.lr.ph
  %i.k = getelementptr inbounds i8, ptr %.025, i64 -2 ; 2 uses
  %i.l = icmp ugt ptr %i.k, %i.b
  br i1 %i.l, label %.lr.ph, label %.thread20, !llvm.loop !0

.thread20.loopexit.split.loop.exit:               ; preds = %.thread
  %i.m = getelementptr inbounds i8, ptr %.025, i64 -1
  br label %.thread20

.thread20:                                        ; preds = %bb.d, %bb.c, %.thread20.loopexit.split.loop.exit, %bb.a
  %.014 = phi ptr [ %1, %bb.a ], [ %i.m, %.thread20.loopexit.split.loop.exit ], [ %1, %bb.d ], [ %.025, %bb.c ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define void @ff_rtp_send_h263(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.g = add nsw i32 %i.e, -2                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.052 = phi ptr [ %1, %.lr.ph ], [ %i.at, %bb.l ] ; 4 uses
  %.04151 = phi i32 [ %2, %.lr.ph ], [ %i.au, %bb.l ] ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %.not = icmp eq i32 %.04151, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %.052, align 1, !tbaa !10
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.052, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 4, ptr %i.j, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.052, i64 2
  %i.q = add nsw i32 %.04151, -2
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.j, align 1, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.142 = phi i32 [ %i.q, %bb.e ], [ %.04151, %bb.f ] ; 4 uses
  %.1 = phi ptr [ %i.p, %bb.e ], [ %.052, %bb.f ] ; 5 uses
  %.039 = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  store i8 0, ptr %.039, align 1, !tbaa !10
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %.142) ; 3 uses
  %i.t = icmp slt i32 %i.g, %.142
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.u = sext i32 %i.s to i64                     ; 2 uses
  %.ptr45 = getelementptr inbounds i8, ptr %.1, i64 %i.u ; 2 uses
  %i.v = icmp sgt i32 %i.s, 2
  br i1 %i.v, label %.lr.ph.i.preheader, label %ff_h263_find_resync_marker_reverse.exit

.lr.ph.i.preheader:                               ; preds = %bb.h
  %.add = add nsw i64 %i.u, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.k
  %.025.i.idx = phi i64 [ %.025.i.add, %bb.k ], [ %.add, %.lr.ph.i.preheader ] ; 3 uses
  %.025.i.ptr = getelementptr inbounds i8, ptr %.1, i64 %.025.i.idx ; 6 uses
  %i.w = load i8, ptr %.025.i.ptr, align 1, !tbaa !10, !alias.scope !37
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.ptr, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10, !alias.scope !37
  %.not15.i = icmp eq i8 %i.y, 0
  br i1 %.not15.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.025.i.ptr, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10, !alias.scope !37
  %.not16.i = icmp eq i8 %i.aa, 0
  br i1 %.not16.i, label %bb.k, label %ff_h263_find_resync_marker_reverse.exit

.thread.i:                                        ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %.025.i.ptr, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10, !alias.scope !37
  %.not1719.i = icmp eq i8 %i.ac, 0
  br i1 %.not1719.i, label %ff_h263_find_resync_marker_reverse.exit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j, %.lr.ph.i
  %.025.i.add = add nsw i64 %.025.i.idx, -2
  %i.ad = icmp sgt i64 %.025.i.idx, 3
  br i1 %i.ad, label %.lr.ph.i, label %ff_h263_find_resync_marker_reverse.exit, !llvm.loop !0

ff_h263_find_resync_marker_reverse.exit.loopexit.split.loop.exit: ; preds = %.thread.i
  %i.ae = getelementptr inbounds i8, ptr %.025.i.ptr, i64 -1
  br label %ff_h263_find_resync_marker_reverse.exit

ff_h263_find_resync_marker_reverse.exit:          ; preds = %bb.j, %bb.k, %ff_h263_find_resync_marker_reverse.exit.loopexit.split.loop.exit, %bb.h
  %.014.i = phi ptr [ %.ptr45, %bb.h ], [ %i.ae, %ff_h263_find_resync_marker_reverse.exit.loopexit.split.loop.exit ], [ %.025.i.ptr, %bb.j ], [ %.ptr45, %bb.k ]
  %i.af = ptrtoint ptr %.014.i to i64
  %i.ag = ptrtoint ptr %.1 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %ff_h263_find_resync_marker_reverse.exit, %bb.g
  %.040 = phi i32 [ %i.ai, %ff_h263_find_resync_marker_reverse.exit ], [ %i.s, %bb.g ] ; 3 uses
  %i.aj = sext i32 %.040 to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.1, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.r, i64 %i.aj
  %i.al = load i32, ptr %i.h, align 4, !tbaa !38
  store i32 %i.al, ptr %i.i, align 4, !tbaa !39
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp eq i32 %.040, %.142
  %i.as = zext i1 %i.ar to i32
  tail call void @ff_rtp_send_data(ptr noundef %0, ptr noundef %i.am, i32 noundef %i.aq, i32 noundef %i.as) #5
  %i.at = getelementptr inbounds i8, ptr %.1, i64 %i.aj
  %i.au = sub nsw i32 %.142, %.040                ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ff_rtp_send_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, i1 true, !"ff_h263_find_resync_marker_reverse"}
!13 = distinct !{!13, !12, !"ff_h263_find_resync_marker_reverse: argument 1"}
!14 = distinct !{!14, !11}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS7AVClass", !15, i64 0}
!17 = !{!"p1 _ZTS13AVInputFormat", !15, i64 0}
!18 = !{!"p1 _ZTS14AVOutputFormat", !15, i64 0}
!19 = !{!"p1 _ZTS11AVIOContext", !15, i64 0}
!20 = !{!"any p2 pointer", !15, i64 0}
!21 = !{!"p2 _ZTS8AVStream", !20, i64 0}
!22 = !{!"p2 _ZTS13AVStreamGroup", !20, i64 0}
!23 = !{!"p2 _ZTS9AVChapter", !20, i64 0}
!24 = !{!"p1 omnipotent char", !15, i64 0}
!25 = !{!"long", !6, i64 0}
!26 = !{!"p2 _ZTS9AVProgram", !20, i64 0}
!27 = !{!"p1 _ZTS12AVDictionary", !15, i64 0}
!28 = !{!"AVIOInterruptCB", !15, i64 0, !15, i64 8}
!29 = !{!"p1 _ZTS7AVCodec", !15, i64 0}
!30 = !{!"AVFormatContext", !16, i64 0, !17, i64 8, !18, i64 16, !15, i64 24, !19, i64 32, !7, i64 40, !7, i64 44, !21, i64 48, !7, i64 56, !22, i64 64, !7, i64 72, !23, i64 80, !24, i64 88, !25, i64 96, !25, i64 104, !25, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !25, i64 136, !25, i64 144, !24, i64 152, !7, i64 160, !7, i64 164, !26, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !27, i64 192, !25, i64 200, !7, i64 208, !7, i64 212, !28, i64 216, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !25, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !25, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !7, i64 368, !29, i64 376, !29, i64 384, !29, i64 392, !29, i64 400, !7, i64 408, !15, i64 416, !15, i64 424, !25, i64 432, !24, i64 440, !15, i64 448, !15, i64 456, !25, i64 464, !24, i64 472}
!31 = !{!30, !15, i64 24}
!32 = !{!"p1 _ZTS15AVFormatContext", !15, i64 0}
!33 = !{!"p1 _ZTS8AVStream", !15, i64 0}
!34 = !{!"RTPMuxContext", !16, i64 0, !32, i64 8, !33, i64 16, !7, i64 24, !7, i64 28, !24, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !25, i64 64, !25, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !24, i64 96, !24, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128}
!35 = !{!34, !7, i64 56}
!36 = !{!34, !24, i64 96}
!37 = !{!13}
!38 = !{!34, !7, i64 52}
!39 = !{!34, !7, i64 44}
end_hunk_0
