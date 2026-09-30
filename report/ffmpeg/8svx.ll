Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/8svx?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@eightsvx_decode_init:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  switch i32 %i.i, label %bb.e [
    i32 86071, label %.sink.split
    i32 86070, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %exponential.sink = phi ptr [ @exponential, %bb.d ], [ @fibonacci, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %exponential.sink, ptr %i.j, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 5, ptr %i.k, align 4, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @eightsvx_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp ne ptr %3, null
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %i.k = sdiv i32 %i.j, %i.d                      ; 3 uses
  %i.l = add nsw i32 %i.k, -2                     ; 2 uses
  %i.m = srem i32 %i.j, %i.d
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.5) #5
  %.pre = load i32, ptr %i.i, align 8, !tbaa !42
  br label %bb.d

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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !44
  %i.u = xor i8 %i.t, -128
  store i8 %i.u, ptr %i.b, align 8, !tbaa !44
  %i.v = icmp eq i32 %i.d, 2                      ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.x = sext i32 %i.k to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !44
  %i.ab = xor i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.ad, align 4, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.l, ptr %i.ae, align 8, !tbaa !46
  %i.af = sext i32 %i.l to i64                    ; 5 uses
  %i.ag = tail call noalias ptr @av_malloc(i64 noundef %i.af) #5 ; 3 uses
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !40
  %.not81 = icmp eq ptr %i.ag, null
  br i1 %.not81, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.j, label %thread-pre-split.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call noalias ptr @av_malloc(i64 noundef %i.af) #5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !40
  %.not82 = icmp eq ptr %i.ah, null
  br i1 %.not82, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @av_freep(ptr noundef nonnull %i.e) #5
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.al, i64 %i.af, i1 false)
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.ao = sext i32 %i.k to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.aq, i64 %i.af, i1 false)
  %.pr.pre = load ptr, ptr %i.e, align 8, !tbaa !40
  br label %thread-pre-split

thread-pre-split.thread:                          ; preds = %bb.i
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !43
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
  %i.av = load i32, ptr %i.au, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = sub nsw i32 %i.av, %i.ax                ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 2048) ; 4 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %2, align 4, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bc = shl nuw nsw i32 %spec.select, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !51
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
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !40
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !44
  %4 = zext i8 %i.br to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.022.i = phi ptr [ %i.bj, %bb.q ], [ %i.cl, %bb.r ] ; 3 uses
  %.01423.i = phi i32 [ %4, %bb.q ], [ %.0.i20.i, %bb.r ]
  %.01520.i = phi ptr [ %i.bo, %bb.q ], [ %i.bt, %bb.r ] ; 2 uses
  %.01619.i = phi i32 [ %spec.select, %bb.q ], [ %i.bs, %bb.r ]
  %i.bs = add nsw i32 %.01619.i, -1               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01520.i, i64 1
  %i.bu = load i8, ptr %.01520.i, align 1, !tbaa !44
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = and i32 %i.bv, 15
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !44
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %.01423.i, %i.ca
  %5 = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %.0.i1819.i = tail call i32 @llvm.umin.i32(i32 %5, i32 255) ; 2 uses
  %i.cc = trunc nuw i32 %.0.i1819.i to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.022.i, i64 1
  store i8 %i.cc, ptr %.022.i, align 1, !tbaa !44
  %i.ce = lshr i32 %i.bv, 4
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !44
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %.0.i1819.i, %i.ci
  %6 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 0)
  %.0.i20.i = tail call i32 @llvm.umin.i32(i32 %6, i32 255) ; 2 uses
  %i.ck = trunc nuw i32 %.0.i20.i to i8           ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.022.i, i64 2
  store i8 %i.ck, ptr %i.cd, align 1, !tbaa !44
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %delta_decode.exit, label %bb.r, !llvm.loop !38

delta_decode.exit:                                ; preds = %bb.r
  store i8 %i.ck, ptr %i.bp, align 1, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !39

._crit_edge:                                      ; preds = %delta_decode.exit, %.preheader
  %i.cm = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.cn = add nsw i32 %i.cm, %spec.select
  store i32 %i.cn, ptr %i.aw, align 4, !tbaa !45
  store i32 1, ptr %2, align 4, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !53
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i32 2, i32 0
  %i.cs = add nuw nsw i32 %i.cr, %spec.select
  %i.ct = mul nsw i32 %i.cs, %i.d
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.h, %bb.e, %bb.p, %._crit_edge, %bb.o, %bb.m
  %.1 = phi i32 [ %i.bb, %bb.o ], [ %i.be, %bb.p ], [ %i.ct, %._crit_edge ], [ -1094995529, %bb.m ], [ -12, %bb.k ], [ -12, %bb.h ], [ -1094995529, %bb.e ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @eightsvx_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i32> zeroinitializer, ptr %i.e, align 8, !tbaa !32
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

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
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 356}
!30 = !{!"EightSvxContext", !5, i64 0, !14, i64 8, !5, i64 16, !6, i64 32, !6, i64 36}
!31 = !{!30, !14, i64 8}
!32 = !{!6, !6, i64 0}
!33 = !{!27, !11, i64 16}
!34 = !{!"p1 _ZTS9AVProfile", !9, i64 0}
!35 = !{!"AVCodec", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !10, i64 32, !34, i64 40, !14, i64 48}
!36 = !{!35, !6, i64 20}
!37 = !{!27, !6, i64 348}
!38 = distinct !{!38, !52}
!39 = distinct !{!39, !52}
!40 = !{!14, !14, i64 0}
!41 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!42 = !{!41, !6, i64 32}
!43 = !{!41, !14, i64 24}
!44 = !{!5, !5, i64 0}
!45 = !{!30, !6, i64 36}
!46 = !{!30, !6, i64 32}
!47 = !{!"p2 omnipotent char", !25, i64 0}
!48 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!49 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!50 = !{!"AVFrame", !5, i64 0, !5, i64 64, !47, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !48, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !49, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!51 = !{!50, !6, i64 112}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!27, !13, i64 824}
end_hunk_0
