Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sndio?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sio_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }

@.str = private unnamed_addr constant [29 x i8] c"Could not open sndio device\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Impossible to set sndio parameters, channels: %d sample rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Could not set appropriate sndio parameters, channels: %d sample rate: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not allocate buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Could not start sndio\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -5, 1) i32 @ff_sndio_open(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sio_par, align 4            ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %.not = icmp eq i32 %1, 0                       ; 5 uses
  %i.c = select i1 %.not, i32 2, i32 1
  %i.d = tail call ptr @sio_open(ptr noundef %2, i32 noundef %i.c, i32 noundef 0) #5 ; 7 uses
  %.not46 = icmp eq ptr %i.d, null
  br i1 %.not46, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #5
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @sio_initpar(ptr noundef nonnull %3) #5
  store i32 16, ptr %3, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <2 x i32> splat (i32 1), ptr %i.e, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %..sroa.sel.v = select i1 %.not, i64 20, i64 24
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %..sroa.sel.v
  store i32 %i.h, ptr %..sroa.sel, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !33
  %i.l = call i32 @sio_setpar(ptr noundef nonnull %i.d, ptr noundef nonnull %3) #5
  %.not47 = icmp eq i32 %i.l, 0
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @sio_getpar(ptr noundef nonnull %i.d, ptr noundef nonnull %3) #5
  %.not48 = icmp eq i32 %i.m, 0
  br i1 %.not48, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %i.p = load i32, ptr %i.i, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.o, i32 noundef %i.p) #5
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr %3, align 4, !tbaa !26
  %i.r = icmp ne i32 %i.q, 16
  %i.s = load i32, ptr %i.e, align 4
  %i.t = icmp ne i32 %i.s, 1
  %or.cond = select i1 %i.r, i1 true, i1 %i.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.pre59 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29 ; 5 uses
  br i1 %or.cond, label %._crit_edge58, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34   ; 2 uses
  %.not49 = icmp eq i32 %i.v, %.pre59
  br i1 %.not49, label %bb.i, label %._crit_edge58

.critedge:                                        ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35   ; 2 uses
  %.not50 = icmp eq i32 %i.x, %.pre59
  br i1 %.not50, label %bb.i, label %._crit_edge58

bb.i:                                             ; preds = %bb.h, %.critedge
  %i.y = phi i32 [ %i.v, %bb.h ], [ %i.x, %.critedge ]
  %i.z = load i32, ptr %i.k, align 4, !tbaa !33   ; 2 uses
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !32
  %.not51 = icmp eq i32 %i.z, %i.aa
  br i1 %.not51, label %bb.j, label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.f, %bb.i, %.critedge, %bb.h
  %i.ab = phi i32 [ %.pre59, %bb.h ], [ %i.y, %bb.i ], [ %.pre59, %.critedge ], [ %.pre59, %bb.f ]
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.ab, i32 noundef %i.ac) #5
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 2 uses
  %i.ah = mul i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = select i1 %.not, i32 %i.al, i32 %i.aj
  %i.an = mul i32 %i.ah, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !38
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = sext i32 %i.an to i64
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !39
  %.not52 = icmp eq ptr %i.aq, null
  br i1 %.not52, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i32, ptr %i.ai, align 4
  %.pre56 = load i32, ptr %i.k, align 4, !tbaa !33
  %.pre57 = load i32, ptr %i.af, align 4, !tbaa !37
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #5
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge, %bb.j
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.al, %bb.j ]
  %i.as = phi i32 [ %.pre57, %._crit_edge ], [ %i.ag, %bb.j ]
  %i.at = phi i32 [ %.pre56, %._crit_edge ], [ %i.z, %bb.j ]
  %i.au = load i32, ptr %i.f, align 4, !tbaa !40
  %.not53 = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not53, i32 65537, i32 65536
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %.pre-phi, ptr %i.ax, align 4, !tbaa !29
  store i32 %i.at, ptr %i.i, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.as, ptr %i.ay, align 8, !tbaa !42
  call void @sio_onmove(ptr noundef nonnull %i.d, ptr noundef nonnull @movecb, ptr noundef nonnull %i.b) #5
  %i.az = call i32 @sio_start(ptr noundef nonnull %i.d) #5
  %.not54 = icmp eq i32 %i.az, 0
  br i1 %.not54, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #5
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.ba, align 8, !tbaa !43
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.l, %._crit_edge58, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @av_freep(ptr noundef nonnull %i.bb) #5
  call void @sio_close(ptr noundef nonnull %i.d) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.b
  %.0 = phi i32 [ -5, %bb.p ], [ 0, %bb.o ], [ -5, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @sio_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @sio_initpar(ptr noundef) local_unnamed_addr #2

declare i32 @sio_setpar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sio_getpar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @sio_onmove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @movecb(ptr nofree noundef captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = mul nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = mul nsw i32 %i.c, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = add nsw i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !44
  ret void
}

declare i32 @sio_start(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @sio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @ff_sndio_close(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sio_close(ptr noundef nonnull %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !12, i64 24}
!10 = !{!"AVFormatContext", !11, i64 0, !13, i64 8, !14, i64 16, !12, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 56, !18, i64 64, !6, i64 72, !19, i64 80, !20, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !21, i64 136, !21, i64 144, !20, i64 152, !6, i64 160, !6, i64 164, !22, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !21, i64 200, !6, i64 208, !6, i64 212, !24, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !21, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !6, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !21, i64 432, !20, i64 440, !12, i64 448, !12, i64 456, !21, i64 464, !20, i64 472}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!14 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!15 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!16 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!19 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!24 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!25 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!26 = !{!27, !6, i64 0}
!27 = !{!"sio_par", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48, !6, i64 60}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !6, i64 60}
!30 = !{!"SndioData", !11, i64 0, !31, i64 8, !6, i64 16, !21, i64 24, !21, i64 32, !20, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64}
!31 = !{!"p1 _ZTS7sio_hdl", !12, i64 0}
!32 = !{!30, !6, i64 64}
!33 = !{!27, !6, i64 28}
!34 = !{!27, !6, i64 24}
!35 = !{!27, !6, i64 20}
!36 = !{!27, !6, i64 40}
!37 = !{!27, !6, i64 4}
!38 = !{!30, !6, i64 52}
!39 = !{!30, !20, i64 40}
!40 = !{!27, !6, i64 12}
!41 = !{!30, !6, i64 16}
!42 = !{!30, !6, i64 48}
!43 = !{!30, !31, i64 8}
!44 = !{!30, !21, i64 24}
end_hunk_0
