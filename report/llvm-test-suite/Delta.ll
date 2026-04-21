inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Delta_Encode(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %MyMemCpy.exit, label %MyMemCpy.exit.thread
end_hunk_0
begin_hunk_1_@Delta_Encode:bb.a
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.02749.us = phi i64 [ %.lcssa58, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 9 uses
  %i.d = add i64 %.02749.us, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.d)
  %i.e = xor i64 %.02749.us, -1
  %i.f = add i64 %umax, %i.e
  %i.g = freeze i64 %i.f
  %umin = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.c)
  %i.h = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.preheader.us
  %min.iters.check59 = icmp ult i64 %i.h, 16
  br i1 %min.iters.check59, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 6 uses
  %i.i = add i64 %.02749.us, %n.vec               ; 3 uses
  %i.j = add nuw i64 %.02749.us, 15
  %i.k = getelementptr i8, ptr %2, i64 %.02749.us
  br label %vector.body
end_hunk_1
begin_hunk_2_@Delta_Encode:bb.a
  %i.r = add nuw i64 %i.l, 1
  %i.s = icmp ult i64 %i.r, %3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %scalar.ph.preheader, !prof !13

scalar.ph.preheader:                              ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %indvars.iv.ph.a = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %.12846.us.ph.a = phi i64 [ %i.i, %vec.epilog.iter.check ], [ %.02749.us, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.h, -4                     ; 5 uses
  %4 = add i64 %.02749.us, %n.vec64               ; 2 uses
  %5 = add nuw i64 %.12846.us.ph.a, 3
  %6 = getelementptr i8, ptr %2, i64 %.02749.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %scalar.ph.preheader
  %index70 = phi i64 [ %indvars.iv.ph.a, %scalar.ph.preheader ], [ %index.next74, %vec.epilog.vector.body ] ; 3 uses
  %7 = phi i64 [ %5, %scalar.ph.preheader ], [ %11, %vec.epilog.vector.body ] ; 2 uses
  %8 = getelementptr i8, ptr %6, i64 %index70     ; 2 uses
  %wide.load72 = load <4 x i8>, ptr %8, align 1, !tbaa !8 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 %index70 ; 2 uses
  %wide.load73 = load <4 x i8>, ptr %9, align 4, !tbaa !8
  %10 = sub <4 x i8> %wide.load72, %wide.load73
  store <4 x i8> %10, ptr %8, align 1, !tbaa !8
  store <4 x i8> %wide.load72, ptr %9, align 4, !tbaa !8
  %index.next74 = add nuw i64 %index70, 4         ; 2 uses
  %11 = add nuw i64 %7, 4
  %12 = icmp eq i64 %index.next74, %n.vec64
  br i1 %12, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %13 = add nuw i64 %7, 1
  %14 = icmp ult i64 %13, %3
  %cmp.n76 = icmp eq i64 %i.h, %n.vec64
  br i1 %cmp.n76, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %.preheader.us, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec64, %vec.epilog.middle.block ]
  %.12846.us.ph = phi i64 [ %.02749.us, %.preheader.us ], [ %i.i, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %vec.epilog.scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.12846.us = phi i64 [ %i.y, %scalar.ph ], [ %.12846.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.12846.us ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
end_hunk_2
begin_hunk_3_@Delta_Encode:bb.a
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.b
  %i.aa = icmp ult i64 %i.y, %3                   ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %scalar.ph, label %..loopexit_crit_edge.us, !llvm.loop !15

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa58 = phi i64 [ %4, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.y, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %n.vec64, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %.lcssa = phi i1 [ %14, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.aa, %scalar.ph ]
  br i1 %.lcssa, label %.preheader.us, label %._crit_edge.loopexit, !llvm.loop !16

.preheader:                                       ; preds = %MyMemCpy.exit, %.preheader
  br label %.preheader
end_hunk_3
begin_hunk_4_@Delta_Encode:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Delta_Decode(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %MyMemCpy.exit, label %MyMemCpy.exit.thread
end_hunk_4
begin_hunk_5_@Delta_Decode:bb.a
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.047.us = phi i64 [ %.lcssa56, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 9 uses
  %i.d = add i64 %.047.us, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.d)
  %i.e = xor i64 %.047.us, -1
  %i.f = add i64 %umax, %i.e
  %i.g = freeze i64 %i.f
  %umin = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.c)
  %i.h = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.preheader.us
  %min.iters.check57 = icmp ult i64 %i.h, 16
  br i1 %min.iters.check57, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 6 uses
  %i.i = add i64 %.047.us, %n.vec                 ; 3 uses
  %i.j = add nuw i64 %.047.us, 15
  %i.k = getelementptr i8, ptr %2, i64 %.047.us
  br label %vector.body
end_hunk_5
begin_hunk_6_@Delta_Decode:bb.a
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = add nuw i64 %i.l, 16
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.r = add nuw i64 %i.l, 1
  %i.s = icmp ult i64 %i.r, %3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %scalar.ph.preheader, !prof !13

scalar.ph.preheader:                              ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %indvars.iv.ph.a = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %.145.us.ph.a = phi i64 [ %i.i, %vec.epilog.iter.check ], [ %.047.us, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.h, -4                     ; 5 uses
  %4 = add i64 %.047.us, %n.vec62                 ; 2 uses
  %5 = add nuw i64 %.145.us.ph.a, 3
  %6 = getelementptr i8, ptr %2, i64 %.047.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %scalar.ph.preheader
  %index68 = phi i64 [ %indvars.iv.ph.a, %scalar.ph.preheader ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %7 = phi i64 [ %5, %scalar.ph.preheader ], [ %11, %vec.epilog.vector.body ] ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 %index68 ; 2 uses
  %wide.load70 = load <4 x i8>, ptr %8, align 4, !tbaa !8
  %9 = getelementptr i8, ptr %6, i64 %index68     ; 2 uses
  %wide.load71 = load <4 x i8>, ptr %9, align 1, !tbaa !8
  %10 = add <4 x i8> %wide.load71, %wide.load70   ; 2 uses
  store <4 x i8> %10, ptr %9, align 1, !tbaa !8
  store <4 x i8> %10, ptr %8, align 4, !tbaa !8
  %index.next72 = add nuw i64 %index68, 4         ; 2 uses
  %11 = add nuw i64 %7, 4
  %12 = icmp eq i64 %index.next72, %n.vec62
  br i1 %12, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %13 = add nuw i64 %7, 1
  %14 = icmp ult i64 %13, %3
  %cmp.n74 = icmp eq i64 %i.h, %n.vec62
  br i1 %cmp.n74, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %.preheader.us, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec62, %vec.epilog.middle.block ]
  %.145.us.ph = phi i64 [ %.047.us, %.preheader.us ], [ %i.i, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %vec.epilog.scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.145.us = phi i64 [ %i.y, %scalar.ph ], [ %.145.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.145.us ; 2 uses
end_hunk_6
begin_hunk_7_@Delta_Decode:bb.a
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.b
  %i.aa = icmp ult i64 %i.y, %3                   ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %scalar.ph, label %..loopexit_crit_edge.us, !llvm.loop !19

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa56 = phi i64 [ %4, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.y, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %n.vec62, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %.lcssa = phi i1 [ %14, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.aa, %scalar.ph ]
  br i1 %.lcssa, label %.preheader.us, label %._crit_edge.loopexit, !llvm.loop !20

.preheader:                                       ; preds = %MyMemCpy.exit, %.preheader
  br label %.preheader
end_hunk_7
begin_hunk_8_@llvm.umin.i64
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !12, !11}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !12, !11}
!20 = distinct !{!20, !10}
end_hunk_8
