Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pgs_frame_merge?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@frame_merge_filter:bb.a
  br i1 %.not102, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @av_packet_unref(ptr noundef nonnull %i.d) #5
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28
  %i.x = and i32 %i.w, -2                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !28
  %.not103128 = icmp ult i32 %i.u, 3
  br i1 %.not103128, label %.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.critedge.thread
  %.081130 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %.critedge.thread ] ; 5 uses
  %.083129 = phi i32 [ 0, %.lr.ph ], [ %.3, %.critedge.thread ] ; 4 uses
  %i.ab = zext i32 %.081130 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !30
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = add i32 %.081130, 3
  %i.ai = add i32 %i.ah, %i.ag                    ; 6 uses
  %i.aj = icmp ugt i32 %i.ai, %i.u
  br i1 %i.aj, label %.critedge111, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !30
  switch i8 %i.ak, label %.critedge.thread [
    i8 22, label %bb.k
    i8 -128, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %i.z, align 8, !tbaa !27
  %.not104 = icmp eq i32 %i.al, 0
  %i.am = icmp ugt i16 %i.af, 7
  %or.cond = and i1 %i.am, %.not104
  br i1 %or.cond, label %.critedge.thread.sink.split, label %.critedge111

.critedge.thread.sink.split:                      ; preds = %bb.k
  store i32 1, ptr %i.z, align 8, !tbaa !27
  %i.an = add i32 %.081130, 10
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !30
  %.not105 = icmp ugt i8 %i.aq, 63
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.as = and i32 %i.ar, -2
  %masksel = zext i1 %.not105 to i32
  %.sink = or disjoint i32 %i.as, %masksel
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !26
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %bb.j
  %.3 = phi i32 [ %.083129, %bb.j ], [ 1, %.critedge.thread.sink.split ] ; 2 uses
  %i.at = add i32 %i.ai, 3
  %.not103 = icmp ugt i32 %i.at, %i.u
  br i1 %.not103, label %.critedge111, label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.au = icmp eq i32 %.083129, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !29
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = icmp eq i32 %i.ai, %i.u
  %or.cond127 = and i1 %i.ay, %i.ax
  br i1 %or.cond127, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !27
  %.not.i112 = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26 ; 2 uses
  %i.bd = or i32 %i.bc, 2
  %i.be = select i1 %.not.i112, i32 %i.bd, i32 %i.bc
  store i32 0, ptr %i.az, align 8, !tbaa !27
  %i.bf = or i32 %i.be, %i.x
  store i32 %i.bf, ptr %i.v, align 8, !tbaa !28
  store i32 0, ptr %i.bb, align 4, !tbaa !26
  tail call void @av_packet_move_ref(ptr noundef %1, ptr noundef %i.d) #5
  br label %.thread

.critedge111:                                     ; preds = %.critedge.thread, %bb.k, %bb.i
  %.083.lcssa.ph.ph = phi i32 [ %.083129, %bb.i ], [ %.083129, %bb.k ], [ %.3, %.critedge.thread ]
  %.2.ph.ph = phi i32 [ %.081130, %bb.i ], [ %.081130, %bb.k ], [ %i.ai, %.critedge.thread ]
  %i.bg = icmp eq i32 %.2.ph.ph, %i.u
  %i.bh = icmp eq i32 %.083.lcssa.ph.ph, 0        ; 2 uses
  br i1 %i.bg, label %bb.n, label %.split

.split:                                           ; preds = %bb.h, %.critedge111
  %.083.lcssa159169 = phi i1 [ %i.bh, %.critedge111 ], [ true, %bb.h ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.1) #5
  %i.bi = load i32, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %i.bl = or i32 %i.bk, 2
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !26
  br i1 %.083.lcssa159169, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l, %.critedge111
  %.083.lcssa158 = phi i1 [ %i.bh, %.critedge111 ], [ %i.au, %bb.l ]
  %.393 = phi i32 [ %i.u, %.critedge111 ], [ %i.ai, %bb.l ] ; 2 uses
  %.not109 = phi i1 [ true, %.critedge111 ], [ false, %bb.l ] ; 2 uses
  br i1 %.083.lcssa158, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split, %bb.n
  %.not109172 = phi i1 [ false, %.split ], [ %.not109, %bb.n ]
  %.393170 = phi i32 [ %i.bi, %.split ], [ %.393, %bb.n ]
  %i.bm = tail call i32 @av_packet_copy_props(ptr noundef %i.e, ptr noundef %i.d) #5 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.split, %bb.o, %bb.n
  %.not109173 = phi i1 [ false, %.split ], [ %.not109172, %bb.o ], [ %.not109, %bb.n ]
  %.393171 = phi i32 [ %i.bi, %.split ], [ %.393170, %bb.o ], [ %.393, %bb.n ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !29
  %i.bq = tail call i32 @av_grow_packet(ptr noundef %i.e, i32 noundef %.393171) #5 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bx = sext i32 %.393171 to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  %i.by = load i32, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  %i.bz = icmp eq i32 %.393171, %i.by
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @av_packet_unref(ptr noundef nonnull %i.d) #5
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx
  store ptr %i.cb, ptr %i.f, align 8, !tbaa !20
  %i.cc = sub nsw i32 %i.by, %.393171
  store i32 %i.cc, ptr %i.t, align 8, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not109173, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !27
  %.not.i113 = icmp eq i32 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !26 ; 2 uses
  %i.ch = or i32 %i.cg, 2
  %i.ci = select i1 %.not.i113, i32 %i.ch, i32 %i.cg
  store i32 0, ptr %i.cd, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !28
  %i.cl = or i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !28
  store i32 0, ptr %i.cf, align 4, !tbaa !26
  tail call void @av_packet_move_ref(ptr noundef %1, ptr noundef nonnull %i.e) #5
  br label %.thread

bb.v:                                             ; preds = %bb.p, %bb.o
  %.094 = phi i32 [ %i.bm, %bb.o ], [ %i.bq, %bb.p ]
  tail call void @frame_merge_flush(ptr noundef %0) #6
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.t, %bb.e, %bb.v, %bb.u, %bb.m, %bb.g, %bb.d
  %.095 = phi i32 [ 0, %bb.m ], [ %.094, %bb.v ], [ 0, %bb.u ], [ %i.h, %bb.e ], [ -11, %bb.g ], [ 0, %bb.d ], [ -11, %bb.t ], [ -541478725, %bb.c ]
  ret i32 %.095
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @frame_merge_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_packet_free(ptr noundef nonnull %i.c) #5
  tail call void @av_packet_free(ptr noundef %i.b) #5
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @frame_merge_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x i32> zeroinitializer, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void @av_packet_unref(ptr noundef %i.e) #5
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @av_packet_unref(ptr noundef %i.f) #5
  ret void
}

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare i32 @ff_bsf_get_packet_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_packet_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_grow_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @av_packet_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { cold }

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
!16 = !{!17, !18, i64 8}
!17 = !{!"PGSMergeContext", !18, i64 0, !18, i64 8, !6, i64 16, !6, i64 20}
!18 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!19 = !{!17, !18, i64 0}
!20 = !{!21, !24, i64 24}
!21 = !{!"AVPacket", !22, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !23, i64 64, !23, i64 72, !12, i64 80, !22, i64 88, !15, i64 96}
!22 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!17, !6, i64 20}
!27 = !{!17, !6, i64 16}
!28 = !{!21, !6, i64 40}
!29 = !{!21, !6, i64 32}
!30 = !{!7, !7, i64 0}
!31 = !{!6, !6, i64 0}
end_hunk_0
