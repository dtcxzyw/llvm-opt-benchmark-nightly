begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@VP8LTransformColorInverse = external local_unnamed_addr global ptr, align 8
@VP8LConvertBGRAToRGB = external local_unnamed_addr global ptr, align 8
@VP8LConvertBGRAToBGR = external local_unnamed_addr global ptr, align 8
@VP8LTransformColorInverse_SSE = external local_unnamed_addr global ptr, align 8
@VP8LConvertBGRAToRGB_SSE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LDspInitSSE41() local_unnamed_addr #0 {
bb.a:
  store ptr @TransformColorInverse_SSE41, ptr @VP8LTransformColorInverse, align 8, !tbaa !7
  store ptr @ConvertBGRAToRGB_SSE41, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !7
  store ptr @ConvertBGRAToBGR_SSE41, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !7
  store ptr @TransformColorInverse_SSE41, ptr @VP8LTransformColorInverse_SSE, align 8, !tbaa !7
  store ptr @ConvertBGRAToRGB_SSE41, ptr @VP8LConvertBGRAToRGB_SSE, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformColorInverse_SSE41(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %.not37 = icmp slt i32 %2, 4
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9
  %4 = load i8, ptr %0, align 1, !tbaa !11
  %5 = zext i8 %4 to i16
  %6 = zext i8 %i.b to i16
  %7 = insertelement <2 x i16> poison, i16 %6, i64 0
  %8 = insertelement <2 x i16> %7, i16 %5, i64 1
  %9 = shl nuw <2 x i16> %8, splat (i16 8)
  %10 = ashr exact <2 x i16> %9, splat (i16 5)
  %11 = sext <2 x i16> %10 to <2 x i32>           ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 1
  %i.c = shl nsw i32 %12, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i16
  %i.g = shl nuw i16 %i.f, 8
  %i.h = ashr exact i16 %i.g, 5
  %i.i = zext i16 %i.h to i32
  %i.j = or disjoint i32 %i.c, %i.i
  %i.k = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.l = bitcast <4 x i32> %i.k to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %13 = bitcast <2 x i32> %11 to <4 x i16>
  %i.n = shufflevector <4 x i16> %13, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.o = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv39 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next40, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv39
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !13 ; 3 uses
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 1, i32 16, i32 1, i32 16, i32 5, i32 16, i32 5, i32 16, i32 9, i32 16, i32 9, i32 16, i32 13, i32 16, i32 13>
  %i.s = bitcast <16 x i8> %i.r to <8 x i16>
  %i.t = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.s, <8 x i16> %i.m)
  %i.u = bitcast <8 x i16> %i.t to <16 x i8>
  %i.v = add <16 x i8> %i.q, %i.u                 ; 2 uses
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16>
  %i.x = bitcast <16 x i8> %i.w to <8 x i16>
  %i.y = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.x, <8 x i16> %i.n)
  %i.z = bitcast <8 x i16> %i.y to <16 x i8>
  %i.aa = add <16 x i8> %i.v, %i.z
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> %i.q, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv39
  store <16 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.o
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 4
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ad = add nuw i32 %2, 2147483644
  %i.ae = and i32 %i.ad, 2147483644
  %narrow = add nuw i32 %i.ae, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not36 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.af = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af
  %i.ah = sub nsw i32 %2, %.0.lcssa
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af
  tail call void @VP8LTransformColorInverse_C(ptr noundef nonnull %0, ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %i.ai) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGB_SSE41(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 15
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi i32 [ %i.t, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03639 = phi ptr [ %i.r, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.03738 = phi ptr [ %i.s, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.b = load <16 x i8>, ptr %.03639, align 1, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.03639, i64 16
  %i.d = load <16 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.03639, i64 32
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.03639, i64 48
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !13
  %i.i = shufflevector <16 x i8> %i.b, <16 x i8> poison, <16 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 16, i32 16, i32 16, i32 16, i32 2, i32 1, i32 0, i32 6> ; 2 uses
  %i.k = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 14, i32 13, i32 12, i32 16, i32 16, i32 16, i32 16, i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9> ; 2 uses
  %i.l = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12>
  %i.m = shufflevector <16 x i8> %i.i, <16 x i8> %i.j, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31>
  %i.n = shufflevector <16 x i8> %i.j, <16 x i8> %i.k, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.o = shufflevector <16 x i8> %i.k, <16 x i8> %i.l, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x i8> %i.m, ptr %.03738, align 1, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.03738, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.03738, i64 32
  store <16 x i8> %i.o, ptr %i.q, align 1, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.03639, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03738, i64 48 ; 2 uses
  %i.t = add nsw i32 %.040, -16                   ; 2 uses
  %i.u = icmp samesign ugt i32 %.040, 31
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.037.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %.lr.ph ]
  %.036.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.v = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToRGB_C(ptr noundef %.036.lcssa, i32 noundef %.0.lcssa, ptr noundef %.037.lcssa) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToBGR_SSE41(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 15
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi i32 [ %i.t, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03639 = phi ptr [ %i.r, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.03738 = phi ptr [ %i.s, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.b = load <16 x i8>, ptr %.03639, align 1, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.03639, i64 16
  %i.d = load <16 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.03639, i64 32
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.03639, i64 48
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !13
  %i.i = shufflevector <16 x i8> %i.b, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 16, i32 16, i32 16, i32 16, i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.k = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 12, i32 13, i32 14, i32 16, i32 16, i32 16, i32 16, i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9> ; 2 uses
  %i.l = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14>
  %i.m = shufflevector <16 x i8> %i.i, <16 x i8> %i.j, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31>
  %i.n = shufflevector <16 x i8> %i.j, <16 x i8> %i.k, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.o = shufflevector <16 x i8> %i.k, <16 x i8> %i.l, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x i8> %i.m, ptr %.03738, align 1, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.03738, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.03738, i64 32
  store <16 x i8> %i.o, ptr %i.q, align 1, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.03639, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03738, i64 48 ; 2 uses
  %i.t = add nsw i32 %.040, -16                   ; 2 uses
  %i.u = icmp samesign ugt i32 %.040, 31
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.037.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %.lr.ph ]
  %.036.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.v = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @VP8LConvertBGRAToBGR_C(ptr noundef %.036.lcssa, i32 noundef %.0.lcssa, ptr noundef %.037.lcssa) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

declare void @VP8LTransformColorInverse_C(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #3

declare void @VP8LConvertBGRAToRGB_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @VP8LConvertBGRAToBGR_C(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !5, i64 2}
!10 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2}
!11 = !{!10, !5, i64 0}
!12 = !{!10, !5, i64 1}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
end_hunk_0
