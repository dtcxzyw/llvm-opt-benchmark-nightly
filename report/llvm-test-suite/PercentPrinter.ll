inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@_ZN15CPercentPrinter12RePrintRatioEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.preheader24.preheader, %bb.c
  %i.x = phi i32 [ %spec.select, %.preheader24.preheader ], [ %i.u, %bb.c ] ; 4 uses
  %.118 = phi ptr [ %scevgep, %.preheader24.preheader ], [ %i.b, %bb.c ] ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader.a, label %._crit_edge

.lr.ph.preheader.a:                               ; preds = %bb.d
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.x, 32
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.a
  %n.vec = and i64 %i.z, 2147483616               ; 4 uses
  %i.aa = trunc nuw nsw i64 %n.vec to i32
  %i.ab = getelementptr i8, ptr %.118, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_ZN15CPercentPrinter12RePrintRatioEv:bb.a
  store <16 x i8> splat (i8 8), ptr %i.ac, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block.a, label %vector.body, !llvm.loop !17

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %n.vec, %i.z
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader.a, %middle.block.a
  %.128.ph = phi i32 [ 0, %.lr.ph.preheader.a ], [ %i.aa, %middle.block.a ]
  %.227.ph = phi ptr [ %.118, %.lr.ph.preheader.a ], [ %i.ab, %middle.block.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
end_hunk_1
begin_hunk_2_@_ZN15CPercentPrinter12RePrintRatioEv:bb.a
  store i8 8, ptr %.227, align 1, !tbaa !13
  %i.af = add nuw nsw i32 %.128, 1                ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %middle.block.a, %bb.d
  %.2.lcssa = phi ptr [ %.118, %bb.d ], [ %i.ab, %middle.block.a ], [ %i.ae, %.lr.ph ] ; 2 uses
  store i32 %spec.select, ptr %i.t, align 8, !tbaa !8
  %i.ah = icmp slt i32 %i.m, %spec.select
  br i1 %i.ah, label %.lr.ph32, label %.preheader.preheader
end_hunk_2
begin_hunk_3_@_ZN15CPercentPrinter12RePrintRatioEv:bb.a
  %i.aj = add nsw i32 %.02029, 1                  ; 2 uses
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !8
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph32, label %.preheader.preheader, !llvm.loop !22

.preheader.preheader:                             ; preds = %.lr.ph32, %._crit_edge
  %.0.i.ph = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.ai, %.lr.ph32 ]
end_hunk_3
begin_hunk_4_@_ZN15CPercentPrinter12RePrintRatioEv:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.an, ptr %.0.i, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %.preheader, !llvm.loop !23

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN15CPercentPrinter12RePrintRatioEv:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
end_hunk_5
begin_hunk_6_@_ZN15CPercentPrinter10PrintRatioEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.f = add i64 %i.e, %i.d
  %i.g = icmp uge i64 %i.b, %i.f
  %i.h = add i64 %i.e, %i.b
end_hunk_6
begin_hunk_7_@llvm.umax.i32
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18, !20, !19}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!9, !10, i64 8}
!25 = !{!9, !10, i64 0}
end_hunk_7
