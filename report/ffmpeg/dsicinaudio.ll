Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsicinaudio?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"dsicinaudio\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Delphine Software International CIN audio\00", align 1
@ff_dsicinaudio_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86042, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 8, ptr null, ptr null, ptr null, ptr @cinaudio_decode_init, %union.anon { ptr @cinaudio_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@cinaudio_delta16_table = internal unnamed_addr constant <{ [237 x i16], [19 x i16] }> <{ [237 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -30210, i16 -27853, i16 -25680, i16 -23677, i16 -21829, i16 -20126, i16 -18556, i16 -17108, i16 -15774, i16 -14543, i16 -13408, i16 -12362, i16 -11398, i16 -10508, i16 -9689, i16 -8933, i16 -8236, i16 -7593, i16 -7001, i16 -6455, i16 -5951, i16 -5487, i16 -5059, i16 -4664, i16 -4300, i16 -3964, i16 -3655, i16 -3370, i16 -3107, i16 -2865, i16 -2641, i16 -2435, i16 -2245, i16 -2070, i16 -1908, i16 -1759, i16 -1622, i16 -1495, i16 -1379, i16 -1271, i16 -1172, i16 -1080, i16 -996, i16 -918, i16 -847, i16 -781, i16 -720, i16 -663, i16 -612, i16 -564, i16 -520, i16 -479, i16 -442, i16 -407, i16 -376, i16 -346, i16 -319, i16 -294, i16 -271, i16 -250, i16 -230, i16 -212, i16 -196, i16 -181, i16 -166, i16 -153, i16 -141, i16 -130, i16 -120, i16 -111, i16 -102, i16 -94, i16 -87, i16 -80, i16 -74, i16 -68, i16 -62, i16 -58, i16 -53, i16 -49, i16 -45, i16 -41, i16 -38, i16 -35, i16 -32, i16 -30, i16 -27, i16 -25, i16 -23, i16 -21, i16 -20, i16 -18, i16 -17, i16 -15, i16 -14, i16 -13, i16 -12, i16 -11, i16 -10, i16 -9, i16 -8, i16 -7, i16 -6, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 17, i16 18, i16 20, i16 21, i16 23, i16 25, i16 27, i16 30, i16 32, i16 35, i16 38, i16 41, i16 45, i16 49, i16 53, i16 58, i16 62, i16 68, i16 74, i16 80, i16 87, i16 94, i16 102, i16 111, i16 120, i16 130, i16 141, i16 153, i16 166, i16 181, i16 196, i16 212, i16 230, i16 250, i16 271, i16 294, i16 319, i16 346, i16 376, i16 407, i16 442, i16 479, i16 520, i16 564, i16 612, i16 663, i16 720, i16 781, i16 847, i16 918, i16 996, i16 1080, i16 1172, i16 1271, i16 1379, i16 1495, i16 1622, i16 1759, i16 1908, i16 2070, i16 2245, i16 2435, i16 2641, i16 2865, i16 3107, i16 3370, i16 3655, i16 3964, i16 4300, i16 4664, i16 5059, i16 5487, i16 5951, i16 6455, i16 7001, i16 7593, i16 8236, i16 8933, i16 9689, i16 10508, i16 11398, i16 12362, i16 13408, i16 14543, i16 15774, i16 17108, i16 18556, i16 20126, i16 21829, i16 23677, i16 25680, i16 27853, i16 30210], [19 x i16] zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cinaudio_decode_init(ptr noundef initializes((348, 352)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  store <2 x i32> <i32 1, i32 0>, ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 8000, ptr %i.d, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.f) #4
  store <2 x i32> splat (i32 1), ptr %i.f, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cinaudio_decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.e, align 4, !tbaa !37
  %i.k = sub nsw i32 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.k, ptr %i.l, align 8, !tbaa !39
  %i.m = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45
  %i.r = load i32, ptr %i.e, align 4, !tbaa !37
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 4, !tbaa !37
  %i.s = load i16, ptr %i.b, align 1, !tbaa !32   ; 2 uses
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 %i.s, ptr %i.o, align 2, !tbaa !46
  %.pre = ptrtoaddr ptr %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.03138.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.031 = phi ptr [ %i.u, %bb.c ], [ %i.b, %bb.b ] ; 5 uses
  %.029 = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %.0 = phi i32 [ %i.t, %bb.c ], [ %i.q, %bb.b ]  ; 3 uses
  %i.w = icmp ult ptr %.031, %i.i
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.x = add i64 %i.c, %i.h                       ; 2 uses
  %i.y = sub i64 %i.x, %.03138.pre-phi            ; 2 uses
  %scevgep = getelementptr i8, ptr %.031, i64 %i.y
  %.neg = add i64 %.03138.pre-phi, 1
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.aa = load i8, ptr %.031, align 1, !tbaa !32
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @cinaudio_delta16_table, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !46
  %i.ae = sext i16 %i.ad to i32
  %i.af = add nsw i32 %.0, %i.ae
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 -32768)
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 32767) ; 3 uses
  %.0.i.prol = trunc nsw i32 %i.ah to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 2
  store i16 %.0.i.prol, ptr %.029, align 2, !tbaa !46
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.137.unr = phi i32 [ %.0, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.13036.unr = phi ptr [ %.029, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.13235.unr = phi ptr [ %.031, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aj = icmp eq i64 %i.x, %.neg
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.137 = phi i32 [ %i.bb, %.lr.ph ], [ %.137.unr, %.lr.ph.prol.loopexit ]
  %.13036 = phi ptr [ %i.bc, %.lr.ph ], [ %.13036.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.13235 = phi ptr [ %i.au, %.lr.ph ], [ %.13235.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.13235, i64 1
  %i.al = load i8, ptr %.13235, align 1, !tbaa !32
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @cinaudio_delta16_table, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !46
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add nsw i32 %.137, %i.ap
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 -32768)
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 32767) ; 2 uses
  %.0.i = trunc nsw i32 %i.as to i16
  %i.at = getelementptr inbounds nuw i8, ptr %.13036, i64 2
  store i16 %.0.i, ptr %.13036, align 2, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %.13235, i64 2 ; 2 uses
  %i.av = load i8, ptr %i.ak, align 1, !tbaa !32
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @cinaudio_delta16_table, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !46
  %i.az = trunc nsw i32 %i.as to i16
  %i.ba = tail call i16 @llvm.sadd.sat.i16(i16 %i.az, i16 %i.ay) ; 2 uses
  %i.bb = sext i16 %i.ba to i32                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.13036, i64 4
  store i16 %i.ba, ptr %i.at, align 2, !tbaa !46
  %exitcond.not.1 = icmp eq ptr %i.au, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.1.lcssa = phi i32 [ %.0, %bb.d ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bb, %.lr.ph ]
  store i32 %.1.lcssa, ptr %i.p, align 4, !tbaa !45
  store i32 1, ptr %2, align 4, !tbaa !29
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.033 = phi i32 [ %i.bd, %._crit_edge ], [ %i.m, %bb.a ]
  ret i32 %.033
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!29 = !{!6, !6, i64 0}
!30 = !{!10, !6, i64 348}
!31 = !{!10, !6, i64 344}
!32 = !{!7, !7, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{!35, !16, i64 24}
!35 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!36 = !{!35, !6, i64 32}
!37 = !{!38, !6, i64 0}
!38 = !{!"CinAudioContext", !6, i64 0, !6, i64 4}
!39 = !{!40, !6, i64 112}
!40 = !{!"AVFrame", !7, i64 0, !7, i64 64, !41, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !42, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !43, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!41 = !{!"p2 omnipotent char", !28, i64 0}
!42 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!43 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!44 = !{!16, !16, i64 0}
!45 = !{!38, !6, i64 4}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !7, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
end_hunk_0
