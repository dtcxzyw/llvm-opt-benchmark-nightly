inline.NumInlined: 29
inline.NumDeleted: 1
begin_hunk_0_@sf_delset:bb.a
; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_print(ptr noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = icmp sgt i32 %i.c, 0
end_hunk_0
begin_hunk_1_@sf_print:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40.i = phi i32 [ %indvars.iv.next41.i, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.027.i = phi i32 [ %i.y, %bb.e ], [ %.02235.i, %bb.d ] ; 3 uses
  %i.u = urem i32 %.027.i, 10
end_hunk_1
begin_hunk_2_@sf_print:bb.a
  br i1 %.not31.i, label %.preheader.preheader.i, label %bb.e

.preheader.preheader.i:                           ; preds = %bb.e
  %i.z = sext i32 %indvars.iv40.i to i64          ; 4 uses
  %i.aa = sext i32 %.124.i to i64                 ; 3 uses
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %indvars.iv40.i, 32
  br i1 %min.iters.check, label %.preheader.i.preheader.a, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %i.ab, 2147483616              ; 4 uses
  %i.ac = add nsw i64 %n.vec, %i.aa               ; 3 uses
  %i.ad = sub nsw i64 %i.z, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.z
end_hunk_2
begin_hunk_3_@sf_print:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  %ind.escape = add nsw i64 %i.ac, -1
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.preheader.a

.preheader.i.preheader.a:                         ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv44.i.ph.a = phi i64 [ %i.aa, %.preheader.preheader.i ], [ %i.ac, %middle.block ]
  %indvars.iv42.i.ph = phi i64 [ %i.z, %.preheader.preheader.i ], [ %i.ad, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader.a, %.preheader.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %.preheader.i ], [ %indvars.iv44.i.ph.a, %.preheader.i.preheader.a ] ; 3 uses
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.preheader.i ], [ %indvars.iv42.i.ph, %.preheader.i.preheader.a ] ; 2 uses
  %indvars.iv.next43.i = add nsw i64 %indvars.iv42.i, -1 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !68
end_hunk_3
begin_hunk_4_@sf_print:bb.a
  %i.al = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !68
  %i.am = icmp sgt i64 %indvars.iv42.i, 1
  br i1 %i.am, label %.preheader.i, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %.preheader.i, %middle.block
  %indvars.iv44.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv44.i, %.preheader.i ] ; 3 uses
  %indvars.iv.next45.i.lcssa = phi i64 [ %i.ac, %middle.block ], [ %indvars.iv.next45.i, %.preheader.i ] ; 2 uses
  %i.an = trunc nsw i64 %indvars.iv.next45.i.lcssa to i32
  %i.ao = icmp sgt i64 %indvars.iv44.i.lcssa, 104
  br i1 %i.ao, label %bb.f, label %bb.g
end_hunk_4
begin_hunk_5_@sf_write:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %set_write.exit.peel.begin.loopexit, label %bb.b, !llvm.loop !71

set_write.exit.peel.begin.loopexit:               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.next.i
end_hunk_5
begin_hunk_6_@set_write:bb.a

bb.d:                                             ; preds = %bb.b, %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.peel.begin, label %bb.b, !llvm.loop !73

.peel.begin:                                      ; preds = %bb.a, %bb.d
  %i.j = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
end_hunk_6
begin_hunk_7_@getc
; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @ps1(ptr noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !4
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 32736                      ; 2 uses
end_hunk_7
begin_hunk_8_@ps1:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.027 = phi i32 [ %i.t, %bb.e ], [ %.02235, %bb.d ] ; 3 uses
  %i.p = urem i32 %.027, 10
end_hunk_8
begin_hunk_9_@ps1:bb.a
  br i1 %.not31, label %.preheader.preheader.a, label %bb.e

.preheader.preheader.a:                           ; preds = %bb.e
  %i.u = sext i32 %indvars.iv40 to i64            ; 4 uses
  %i.v = sext i32 %.124 to i64                    ; 3 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.u, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %indvars.iv40, 32
  br i1 %min.iters.check, label %.preheader.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.a
  %n.vec = and i64 %i.w, 2147483616               ; 4 uses
  %i.x = add nsw i64 %n.vec, %i.v                 ; 3 uses
  %i.y = sub nsw i64 %i.u, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.u
end_hunk_9
begin_hunk_10_@ps1:bb.a
  store <16 x i8> %reverse53, ptr %i.ac, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %ind.escape = add nsw i64 %i.x, -1
  br i1 %cmp.n, label %.loopexit55, label %.preheader.preheader56

.preheader.preheader56:                           ; preds = %.preheader.preheader.a, %middle.block
  %indvars.iv44.ph.a = phi i64 [ %i.v, %.preheader.preheader.a ], [ %i.x, %middle.block ]
  %indvars.iv42.ph = phi i64 [ %i.u, %.preheader.preheader.a ], [ %i.y, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader56, %.preheader
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader ], [ %indvars.iv44.ph.a, %.preheader.preheader56 ] ; 3 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.preheader ], [ %indvars.iv42.ph, %.preheader.preheader56 ] ; 2 uses
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !68
end_hunk_10
begin_hunk_11_@ps1:bb.a
  %i.ag = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !68
  %i.ah = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.ah, label %.preheader, label %.loopexit55, !llvm.loop !75

.loopexit55:                                      ; preds = %.preheader, %middle.block
  %indvars.iv44.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv44, %.preheader ] ; 3 uses
  %indvars.iv.next45.lcssa = phi i64 [ %i.x, %middle.block ], [ %indvars.iv.next45, %.preheader ] ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv.next45.lcssa to i32
  %i.aj = icmp sgt i64 %indvars.iv44.lcssa, 104
  br i1 %i.aj, label %bb.f, label %bb.g
end_hunk_11
begin_hunk_12_@sf_transpose:bb.a
  %i.ax = getelementptr inbounds [4 x i8], ptr %.03740.epil, i64 %i.an
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_12
begin_hunk_13_@llvm.assume
!67 = distinct !{!67, !9}
!68 = !{!6, !6, i64 0}
!69 = distinct !{!69, !9, !10}
!70 = distinct !{!70, !10, !9}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !9, !10}
!75 = distinct !{!75, !10, !9}
!76 = distinct !{!76, !12}
end_hunk_13
