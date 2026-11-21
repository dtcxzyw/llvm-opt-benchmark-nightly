Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fitsenc?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"fits\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Flexible Image Transport System\00", align 1
@.compoundliteral = internal constant [7 x i32] [i32 112, i32 76, i32 71, i32 111, i32 29, i32 8, i32 -1], align 4
@ff_fits_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 228, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @fits_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@__const.fits_encode_frame.map = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 1, i32 3], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported pixel format\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @fits_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.fits_encode_frame.map, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  switch i32 %i.c, label %bb.e [
    i32 8, label %bb.b
    i32 29, label %bb.b
    i32 71, label %bb.c
    i32 111, label %bb.c
    i32 76, label %bb.d
    i32 112, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i32 0, ptr %i.a, align 16, !tbaa !33
  %i.d = icmp ne i32 %i.c, 8                      ; 2 uses
  %.51 = select i1 %i.d, i32 2, i32 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.e = icmp eq i32 %i.c, 71
  %.52 = select i1 %i.e, i32 3, i32 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.f = icmp eq i32 %i.c, 76
  %.53 = select i1 %i.f, i32 3, i32 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #4
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.g = phi i1 [ %i.d, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  %.045 = phi i32 [ %.51, %bb.b ], [ 2, %bb.d ], [ 1, %bb.c ]
  %.044 = phi i32 [ 1, %bb.b ], [ %.53, %bb.d ], [ %.52, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  %i.j = mul nsw i32 %i.i, %.045
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = mul nsw i32 %i.j, %i.l
  %.fr50 = freeze i32 %i.m
  %i.n = mul i32 %.fr50, %.044                    ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = add nsw i64 %i.o, 2879                   ; 2 uses
  %i.q = urem i64 %i.p, 2880
  %i.r = sub nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = tail call i32 @ff_get_encode_buffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.r, i32 noundef 0) #4 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.h, align 4, !tbaa !34   ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader59.preheader, label %.split71.us

.preheader59.preheader:                           ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %.044 to i64   ; 2 uses
  br i1 %i.g, label %.preheader59.a, label %.loopexit.us.loopexit

.preheader59.a:                                   ; preds = %.preheader59.preheader, %._crit_edge.us
  %i.z = phi i32 [ %19, %._crit_edge.us ], [ %i.x, %.preheader59.preheader ] ; 3 uses
  %i.aa = phi i32 [ %20, %._crit_edge.us ], [ %i.x, %.preheader59.preheader ] ; 4 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next.us, %._crit_edge.us ], [ 0, %.preheader59.preheader ] ; 2 uses
  %.05868.a = phi ptr [ %.1.lcssa.us, %._crit_edge.us ], [ %i.v, %.preheader59.preheader ] ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph65.a, label %._crit_edge.us

.lr.ph65.a:                                       ; preds = %.preheader59.a
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.a ; 2 uses
  %4 = load i32, ptr %i.k, align 8, !tbaa !35     ; 2 uses
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.preheader.us.preheader.us, label %._crit_edge.us

.lr.ph65.split.preheader:                         ; preds = %.preheader.us.preheader.us, %.preheader.us
  %6 = phi i32 [ %i.ae, %.preheader.us ], [ %i.z, %.preheader.us.preheader.us ]
  %7 = phi i32 [ %i.af, %.preheader.us ], [ %4, %.preheader.us.preheader.us ] ; 2 uses
  %8 = phi i32 [ %i.ag, %.preheader.us ], [ %.pre80, %.preheader.us.preheader.us ] ; 2 uses
  %9 = phi i32 [ %i.ae, %.preheader.us ], [ %i.aa, %.preheader.us.preheader.us ]
  %.04364.us.us = phi i32 [ %17, %.preheader.us ], [ 0, %.preheader.us.preheader.us ] ; 2 uses
  %.163.us.us = phi ptr [ %.2.lcssa.us.us, %.preheader.us ], [ %.05868.a, %.preheader.us.preheader.us ] ; 2 uses
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %.lr.ph.us.preheader, label %.preheader.us

.lr.ph65.split.us:                                ; preds = %.lr.ph.us.preheader, %.lr.ph65.split.us
  %.062.us.us = phi ptr [ %14, %.lr.ph65.split.us ], [ %i.aq, %.lr.ph.us.preheader ] ; 2 uses
  %.04261.us.us = phi i32 [ %15, %.lr.ph65.split.us ], [ 0, %.lr.ph.us.preheader ]
  %.260.us.us = phi ptr [ %13, %.lr.ph65.split.us ], [ %.163.us.us, %.lr.ph.us.preheader ] ; 2 uses
  %11 = load i16, ptr %.062.us.us, align 1, !tbaa !38
  %12 = xor i16 %11, 128
  store i16 %12, ptr %.260.us.us, align 1, !tbaa !38
  %13 = getelementptr inbounds nuw i8, ptr %.260.us.us, i64 2 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.062.us.us, i64 2
  %15 = add nuw nsw i32 %.04261.us.us, 1          ; 2 uses
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !35  ; 2 uses
  %16 = icmp slt i32 %15, %i.ad
  br i1 %16, label %.lr.ph65.split.us, label %.lr.ph.us, !llvm.loop !9

.preheader.us:                                    ; preds = %.lr.ph.us, %.lr.ph65.split.preheader
  %i.ae = phi i32 [ %6, %.lr.ph65.split.preheader ], [ %.pre81, %.lr.ph.us ] ; 5 uses
  %i.af = phi i32 [ %7, %.lr.ph65.split.preheader ], [ %i.ad, %.lr.ph.us ]
  %i.ag = phi i32 [ %8, %.lr.ph65.split.preheader ], [ %i.ar, %.lr.ph.us ]
  %.2.lcssa.us.us = phi ptr [ %.163.us.us, %.lr.ph65.split.preheader ], [ %13, %.lr.ph.us ] ; 2 uses
  %17 = add nuw nsw i32 %.04364.us.us, 1          ; 2 uses
  %18 = icmp slt i32 %17, %i.ae
  br i1 %18, label %.lr.ph65.split.preheader, label %._crit_edge.us, !llvm.loop !10

._crit_edge.us:                                   ; preds = %.preheader.us, %.lr.ph65.a, %.preheader59.a
  %19 = phi i32 [ %i.z, %.preheader59.a ], [ %i.z, %.lr.ph65.a ], [ %i.ae, %.preheader.us ]
  %20 = phi i32 [ %i.aa, %.preheader59.a ], [ %i.aa, %.lr.ph65.a ], [ %i.ae, %.preheader.us ]
  %.1.lcssa.us = phi ptr [ %.05868.a, %.preheader59.a ], [ %.05868.a, %.lr.ph65.a ], [ %.2.lcssa.us.us, %.preheader.us ] ; 2 uses
  %indvars.iv.next.us = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.us.not = icmp eq i64 %indvars.iv.next.us, %wide.trip.count
  br i1 %exitcond.us.not, label %.split71.us, label %.preheader59.a, !llvm.loop !11

.lr.ph.us.preheader:                              ; preds = %.lr.ph65.split.preheader
  %i.ah = sext i32 %8 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ah
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %i.am = xor i32 %.04364.us.us, -1
  %i.an = add i32 %9, %i.am
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.aj, i64 %i.ap
  br label %.lr.ph65.split.us

.lr.ph.us:                                        ; preds = %.lr.ph65.split.us
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !33
  %.pre81 = load i32, ptr %i.h, align 4, !tbaa !34
  br label %.preheader.us

.preheader.us.preheader.us:                       ; preds = %.lr.ph65.a
  %.pre80 = load i32, ptr %i.ac, align 4, !tbaa !33
  br label %.lr.ph65.split.preheader

.loopexit.us.loopexit:                            ; preds = %.preheader59.preheader, %._crit_edge
  %21 = phi i32 [ %27, %._crit_edge ], [ %i.x, %.preheader59.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader59.preheader ] ; 2 uses
  %.05868 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.v, %.preheader59.preheader ] ; 2 uses
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %.loopexit.us, label %._crit_edge

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %.pre = load i32, ptr %23, align 4, !tbaa !33
  %.pre78 = load i32, ptr %i.k, align 8, !tbaa !35
  %24 = sext i32 %.pre to i64                     ; 2 uses
  %25 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %26 = getelementptr inbounds [4 x i8], ptr %i.w, i64 %24
  br label %.lr.ph65.split

.lr.ph65.split:                                   ; preds = %.loopexit.us, %.lr.ph65.split
  %i.as = phi i32 [ %i.bc, %.lr.ph65.split ], [ %.pre78, %.loopexit.us ]
  %i.at = phi i32 [ %i.bg, %.lr.ph65.split ], [ %21, %.loopexit.us ]
  %.04364 = phi i32 [ %i.bf, %.lr.ph65.split ], [ 0, %.loopexit.us ] ; 2 uses
  %.163 = phi ptr [ %i.be, %.lr.ph65.split ], [ %.05868, %.loopexit.us ] ; 2 uses
  %i.au = load ptr, ptr %25, align 8, !tbaa !41
  %i.av = xor i32 %.04364, -1
  %i.aw = add i32 %i.at, %i.av
  %i.ax = load i32, ptr %26, align 4, !tbaa !33
  %i.ay = mul nsw i32 %i.ax, %i.aw
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.au, i64 %i.az
  %i.bb = sext i32 %i.as to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.163, ptr align 1 %i.ba, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %i.k, align 8, !tbaa !35  ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %.163, i64 %i.bd ; 2 uses
  %i.bf = add nuw nsw i32 %.04364, 1              ; 2 uses
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !34  ; 3 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph65.split, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph65.split, %.loopexit.us.loopexit
  %27 = phi i32 [ %21, %.loopexit.us.loopexit ], [ %i.bg, %.lr.ph65.split ]
  %.1.lcssa = phi ptr [ %.05868, %.loopexit.us.loopexit ], [ %i.be, %.lr.ph65.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split71.us, label %.loopexit.us.loopexit, !llvm.loop !11

.split71.us:                                      ; preds = %._crit_edge, %._crit_edge.us, %bb.g
  %.us-phi72 = phi ptr [ %i.v, %bb.g ], [ %.1.lcssa.us, %._crit_edge.us ], [ %.1.lcssa, %._crit_edge ]
  %i.bi = trunc i64 %i.r to i32
  %i.bj = sub i32 %i.bi, %i.n
  %i.bk = sext i32 %i.bj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.us-phi72, i8 0, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = or i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !42
  store i32 1, ptr %3, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.split71.us, %bb.e
  %.046 = phi i32 [ -22, %bb.e ], [ 0, %.split71.us ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39, !40}
!11 = distinct !{!11, !39, !40}
!12 = distinct !{!12, !39}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!15 = !{!"p1 _ZTS7AVCodec", !13, i64 0}
!16 = !{!"p1 _ZTS15AVCodecInternal", !13, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"AVRational", !6, i64 0, !6, i64 4}
!20 = !{!"float", !5, i64 0}
!21 = !{!"p1 short", !13, i64 0}
!22 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !13, i64 16}
!23 = !{!"p1 _ZTS10RcOverride", !13, i64 0}
!24 = !{!"p1 _ZTS9AVHWAccel", !13, i64 0}
!25 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!26 = !{!"p1 _ZTS17AVCodecDescriptor", !13, i64 0}
!27 = !{!"p1 _ZTS16AVPacketSideData", !13, i64 0}
!28 = !{!"p1 int", !13, i64 0}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p2 _ZTS15AVFrameSideData", !29, i64 0}
!31 = !{!"AVCodecContext", !14, i64 0, !6, i64 8, !6, i64 12, !15, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !16, i64 40, !13, i64 48, !17, i64 56, !6, i64 64, !6, i64 68, !18, i64 72, !6, i64 80, !19, i64 84, !19, i64 92, !19, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !19, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !13, i64 184, !13, i64 192, !6, i64 200, !20, i64 204, !20, i64 208, !20, i64 212, !20, i64 216, !20, i64 220, !20, i64 224, !20, i64 228, !20, i64 232, !20, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !21, i64 288, !21, i64 296, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !22, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !13, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !20, i64 428, !20, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !23, i64 456, !17, i64 464, !17, i64 472, !20, i64 480, !20, i64 484, !6, i64 488, !6, i64 492, !18, i64 496, !18, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !24, i64 536, !13, i64 544, !25, i64 552, !25, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !13, i64 672, !13, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !26, i64 728, !18, i64 736, !6, i64 744, !6, i64 748, !18, i64 752, !18, i64 760, !18, i64 768, !27, i64 776, !6, i64 784, !6, i64 788, !17, i64 792, !6, i64 800, !6, i64 804, !17, i64 808, !13, i64 816, !17, i64 824, !28, i64 832, !6, i64 840, !30, i64 848, !6, i64 856, !6, i64 860}
!32 = !{!31, !6, i64 136}
!33 = !{!6, !6, i64 0}
!34 = !{!31, !6, i64 116}
!35 = !{!31, !6, i64 112}
!36 = !{!"AVPacket", !25, i64 0, !17, i64 8, !17, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !27, i64 48, !6, i64 56, !17, i64 64, !17, i64 72, !13, i64 80, !25, i64 88, !19, i64 96}
!37 = !{!36, !18, i64 24}
!38 = !{!5, !5, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = !{!18, !18, i64 0}
!42 = !{!36, !6, i64 40}
end_hunk_0
