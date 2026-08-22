Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/8svx?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@eightsvx_decode_frame:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.b ]
  %i.o = mul nsw i32 %i.d, 3
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #5
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !41
  %i.u = xor i8 %i.t, -128
  store i8 %i.u, ptr %i.b, align 8, !tbaa !41
  %i.v = icmp eq i32 %i.d, 2                      ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.x = sext i32 %i.k to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41
  %i.ab = xor i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.ad, align 4, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.l, ptr %i.ae, align 8, !tbaa !43
  %i.af = sext i32 %i.l to i64                    ; 5 uses
  %i.ag = tail call noalias ptr @av_malloc(i64 noundef %i.af) #5 ; 3 uses
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !37
  %.not81 = icmp eq ptr %i.ag, null
  br i1 %.not81, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %thread-pre-split.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call noalias ptr @av_malloc(i64 noundef %i.af) #5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !37
  %.not82 = icmp eq ptr %i.ah, null
  br i1 %.not82, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @av_freep(ptr noundef nonnull %i.e) #5
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.al, i64 %i.af, i1 false)
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.ao = sext i32 %i.k to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.aq, i64 %i.af, i1 false)
  %.pr.pre = load ptr, ptr %i.e, align 8, !tbaa !37
  br label %thread-pre-split

thread-pre-split.thread:                          ; preds = %bb.i
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.as, i64 %i.af, i1 false)
  br label %bb.n

thread-pre-split:                                 ; preds = %bb.l, %bb.a
  %i.at = phi ptr [ %i.f, %bb.a ], [ %.pr.pre, %bb.l ]
  %.not83 = icmp eq ptr %i.at, null
  br i1 %.not83, label %bb.m, label %bb.n

bb.m:                                             ; preds = %thread-pre-split
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #5
  br label %.thread

bb.n:                                             ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ay = sub nsw i32 %i.av, %i.ax                ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 2048) ; 4 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %2, align 4, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bc = shl nuw nsw i32 %spec.select, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !45
  %i.be = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bg = icmp sgt i32 %i.d, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %delta_decode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %delta_decode.exit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !34 ; 2 uses
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.022.i = phi ptr [ %i.bj, %bb.q ], [ %i.cr, %bb.r ] ; 3 uses
  %.01421.i = phi i8 [ %i.br, %bb.q ], [ %.0.i.i, %bb.r ]
  %.01520.i = phi ptr [ %i.bo, %bb.q ], [ %i.bt, %bb.r ] ; 2 uses
  %.01619.i = phi i32 [ %spec.select, %bb.q ], [ %i.bs, %bb.r ]
  %i.bs = add nsw i32 %.01619.i, -1               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01520.i, i64 1
  %i.bu = load i8, ptr %.01520.i, align 1, !tbaa !41
  %i.bv = zext i8 %.01421.i to i32
  %i.bw = zext i8 %i.bu to i32                    ; 2 uses
  %i.bx = and i32 %i.bw, 15
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !41
  %i.cb = sext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, %i.bv                ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, 255
  %isnotneg.i17.i = icmp sgt i32 %i.cc, -1
  %i.ce = sext i1 %isnotneg.i17.i to i8
  %i.cf = trunc nuw i32 %i.cc to i8
  %.0.i18.i = select i1 %i.cd, i8 %i.ce, i8 %i.cf ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.022.i, i64 1
  store i8 %.0.i18.i, ptr %.022.i, align 1, !tbaa !41
  %i.ch = zext i8 %.0.i18.i to i32
  %i.ci = lshr i32 %i.bw, 4
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !41
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.ch, %i.cm                ; 3 uses
  %i.co = icmp ugt i32 %i.cn, 255
  %isnotneg.i.i = icmp sgt i32 %i.cn, -1
  %i.cp = sext i1 %isnotneg.i.i to i8
  %i.cq = trunc nuw i32 %i.cn to i8
  %.0.i.i = select i1 %i.co, i8 %i.cp, i8 %i.cq   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.022.i, i64 2
  store i8 %.0.i.i, ptr %i.cg, align 1, !tbaa !41
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %delta_decode.exit, label %bb.r, !llvm.loop !50

delta_decode.exit:                                ; preds = %bb.r
  store i8 %.0.i.i, ptr %i.bp, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !52

._crit_edge:                                      ; preds = %delta_decode.exit, %.preheader
  %i.cs = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ct = add nsw i32 %i.cs, %spec.select
  store i32 %i.ct, ptr %i.aw, align 4, !tbaa !42
  store i32 1, ptr %2, align 4, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !53
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = select i1 %i.cw, i32 2, i32 0
  %i.cy = add nuw nsw i32 %i.cx, %spec.select
  %i.cz = mul nsw i32 %i.cy, %i.d
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.h, %bb.e, %bb.p, %._crit_edge, %bb.o, %bb.m
  %.1 = phi i32 [ %i.bb, %bb.o ], [ %i.be, %bb.p ], [ %i.cz, %._crit_edge ], [ -1094995529, %bb.m ], [ -12, %bb.k ], [ -12, %bb.h ], [ -1094995529, %bb.e ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @eightsvx_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #5
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %1, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !42
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 356}
!30 = !{!10, !13, i64 16}
!31 = !{!32, !6, i64 20}
!32 = !{!"AVCodec", !16, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !11, i64 32, !33, i64 40, !16, i64 48}
!33 = !{!"p1 _ZTS9AVProfile", !12, i64 0}
!34 = !{!35, !16, i64 8}
!35 = !{!"EightSvxContext", !7, i64 0, !16, i64 8, !7, i64 16, !6, i64 32, !6, i64 36}
!36 = !{!10, !6, i64 348}
!37 = !{!16, !16, i64 0}
!38 = !{!39, !6, i64 32}
!39 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!40 = !{!39, !16, i64 24}
!41 = !{!7, !7, i64 0}
!42 = !{!35, !6, i64 36}
!43 = !{!35, !6, i64 32}
!44 = !{!6, !6, i64 0}
!45 = !{!46, !6, i64 112}
!46 = !{!"AVFrame", !7, i64 0, !7, i64 64, !47, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !48, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !49, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!47 = !{!"p2 omnipotent char", !28, i64 0}
!48 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!49 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!10, !15, i64 824}
end_hunk_0
