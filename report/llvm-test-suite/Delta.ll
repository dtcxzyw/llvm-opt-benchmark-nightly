inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Delta_Encode(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %MyMemCpy.exit, label %MyMemCpy.exit.thread
end_hunk_0
begin_hunk_1_@Delta_Encode:bb.a
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.02749.us = phi i64 [ %.lcssa58, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 6 uses
  %i.d = add i64 %.02749.us, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.d)
  %i.e = xor i64 %.02749.us, -1
  %i.f = add i64 %umax, %i.e
  %i.g = freeze i64 %i.f
  %umin = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.c)
  %i.h = add i64 %umin, 1                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %n.vec = and i64 %i.h, -16                      ; 5 uses
  %i.i = add i64 %.02749.us, %n.vec               ; 2 uses
  %i.j = add nuw i64 %.02749.us, 15
  %i.k = getelementptr i8, ptr %2, i64 %.02749.us
  br label %vector.body
end_hunk_1
begin_hunk_2_@Delta_Encode:bb.a
  %i.r = add nuw i64 %i.l, 1
  %i.s = icmp ult i64 %i.r, %3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph.a = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.12846.us.ph.a = phi i64 [ %.02749.us, %.preheader.us ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph.a, %scalar.ph.preheader ] ; 2 uses
  %.12846.us = phi i64 [ %i.y, %scalar.ph ], [ %.12846.us.ph.a, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.12846.us ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
end_hunk_2
begin_hunk_3_@Delta_Encode:bb.a
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.b
  %i.aa = icmp ult i64 %i.y, %3                   ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %scalar.ph, label %..loopexit_crit_edge.us, !llvm.loop !13

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %middle.block
  %.lcssa58 = phi i64 [ %i.i, %middle.block ], [ %i.y, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %.lcssa = phi i1 [ %i.s, %middle.block ], [ %i.aa, %scalar.ph ]
  br i1 %.lcssa, label %.preheader.us, label %._crit_edge.loopexit, !llvm.loop !14

.preheader:                                       ; preds = %MyMemCpy.exit, %.preheader
  br label %.preheader
end_hunk_3
begin_hunk_4_@Delta_Encode:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Delta_Decode(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %MyMemCpy.exit, label %MyMemCpy.exit.thread
end_hunk_4
begin_hunk_5_@Delta_Decode:bb.a
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.047.us = phi i64 [ %.lcssa56, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 6 uses
  %i.d = add i64 %.047.us, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.d)
  %i.e = xor i64 %.047.us, -1
  %i.f = add i64 %umax, %i.e
  %i.g = freeze i64 %i.f
  %umin = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.c)
  %i.h = add i64 %umin, 1                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %n.vec = and i64 %i.h, -16                      ; 5 uses
  %i.i = add i64 %.047.us, %n.vec                 ; 2 uses
  %i.j = add nuw i64 %.047.us, 15
  %i.k = getelementptr i8, ptr %2, i64 %.047.us
  br label %vector.body
end_hunk_5
begin_hunk_6_@Delta_Decode:bb.a
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = add nuw i64 %i.l, 16
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.r = add nuw i64 %i.l, 1
  %i.s = icmp ult i64 %i.r, %3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph.a = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.145.us.ph.a = phi i64 [ %.047.us, %.preheader.us ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph.a, %scalar.ph.preheader ] ; 2 uses
  %.145.us = phi i64 [ %i.y, %scalar.ph ], [ %.145.us.ph.a, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.145.us ; 2 uses
end_hunk_6
begin_hunk_7_@Delta_Decode:bb.a
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.b
  %i.aa = icmp ult i64 %i.y, %3                   ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %scalar.ph, label %..loopexit_crit_edge.us, !llvm.loop !16

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %middle.block
  %.lcssa56 = phi i64 [ %i.i, %middle.block ], [ %i.y, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %.lcssa = phi i1 [ %i.s, %middle.block ], [ %i.aa, %scalar.ph ]
  br i1 %.lcssa, label %.preheader.us, label %._crit_edge.loopexit, !llvm.loop !17

.preheader:                                       ; preds = %MyMemCpy.exit, %.preheader
  br label %.preheader
end_hunk_7
begin_hunk_8_@llvm.umin.i64
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !12, !11}
!17 = distinct !{!17, !10}
end_hunk_8
