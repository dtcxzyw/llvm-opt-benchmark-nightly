inline.NumInlined: 29
inline.NumDeleted: 1
begin_hunk_0_@sf_delset:bb.a
; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_print(ptr noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = icmp sgt i32 %i.c, 0
end_hunk_0
begin_hunk_1_@sf_print:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40.i = phi i32 [ %indvars.iv.next41.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.027.i = phi i32 [ %i.y, %bb.e ], [ %.02235.i, %bb.d ] ; 3 uses
  %i.u = urem i32 %.027.i, 10
end_hunk_1
begin_hunk_2_@sf_print:bb.a
  br i1 %.not31.i, label %.preheader.preheader.i, label %bb.e

.preheader.preheader.i:                           ; preds = %bb.e
  %i.z = sext i32 %indvars.iv40.i to i64          ; 6 uses
  %i.aa = sext i32 %.124.i to i64                 ; 5 uses
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.preheader.preheader.i
  %min.iters.check12 = icmp slt i32 %indvars.iv40.i, 32
  br i1 %min.iters.check12, label %.preheader.i.preheader.a, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 2147483616              ; 5 uses
  %i.ac = add nsw i64 %n.vec, %i.aa               ; 3 uses
  %i.ad = sub nsw i64 %i.z, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.z
end_hunk_2
begin_hunk_3_@sf_print:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  %ind.escape = add nsw i64 %i.ac, -1
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %.preheader.i.preheader.a, !prof !70

.preheader.i.preheader.a:                         ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %indvars.iv44.i.ph.a = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.ab, 2147483640            ; 4 uses
  %1 = add nsw i64 %n.vec18, %i.aa                ; 3 uses
  %2 = sub nsw i64 %i.z, %n.vec18
  %invariant.gep33 = getelementptr i8, ptr %i.a, i64 %i.z
  %invariant.gep35 = getelementptr i8, ptr @s1, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %.preheader.i.preheader.a
  %index19 = phi i64 [ %indvars.iv44.i.ph.a, %.preheader.i.preheader.a ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %3 = xor i64 %index19, -1
  %gep34 = getelementptr i8, ptr %invariant.gep33, i64 %3
  %4 = getelementptr inbounds i8, ptr %gep34, i64 -7
  %wide.load20 = load <8 x i8>, ptr %4, align 1, !tbaa !68
  %reverse21 = shufflevector <8 x i8> %wide.load20, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %index19
  store <8 x i8> %reverse21, ptr %gep36, align 1, !tbaa !68
  %index.next22 = add nuw i64 %index19, 8         ; 2 uses
  %5 = icmp eq i64 %index.next22, %n.vec18
  br i1 %5, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.ab, %n.vec18
  %ind.escape24 = add nsw i64 %1, -1
  br i1 %cmp.n23, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.i.ph = phi i64 [ %i.aa, %.preheader.preheader.i ], [ %i.ac, %vec.epilog.iter.check ], [ %1, %vec.epilog.middle.block ]
  %indvars.iv42.i.ph = phi i64 [ %i.z, %.preheader.preheader.i ], [ %i.ad, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %.preheader.i ], [ %indvars.iv44.i.ph, %.preheader.i.preheader ] ; 3 uses
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.preheader.i ], [ %indvars.iv42.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next43.i = add nsw i64 %indvars.iv42.i, -1 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !68
end_hunk_3
begin_hunk_4_@sf_print:bb.a
  %i.al = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !68
  %i.am = icmp sgt i64 %indvars.iv42.i, 1
  br i1 %i.am, label %.preheader.i, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.i.lcssa = phi i64 [ %ind.escape24, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44.i, %.preheader.i ] ; 3 uses
  %indvars.iv.next45.i.lcssa = phi i64 [ %1, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %indvars.iv.next45.i, %.preheader.i ] ; 2 uses
  %i.an = trunc nsw i64 %indvars.iv.next45.i.lcssa to i32
  %i.ao = icmp sgt i64 %indvars.iv44.i.lcssa, 104
  br i1 %i.ao, label %bb.f, label %bb.g
end_hunk_4
begin_hunk_5_@sf_write:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %set_write.exit.peel.begin.loopexit, label %bb.b, !llvm.loop !73

set_write.exit.peel.begin.loopexit:               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.next.i
end_hunk_5
begin_hunk_6_@set_write:bb.a

bb.d:                                             ; preds = %bb.b, %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.peel.begin, label %bb.b, !llvm.loop !75

.peel.begin:                                      ; preds = %bb.a, %bb.d
  %i.j = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
end_hunk_6
begin_hunk_7_@getc
; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @ps1(ptr noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !4
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 32736                      ; 2 uses
end_hunk_7
begin_hunk_8_@ps1:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.027 = phi i32 [ %i.t, %bb.e ], [ %.02235, %bb.d ] ; 3 uses
  %i.p = urem i32 %.027, 10
end_hunk_8
begin_hunk_9_@ps1:bb.a
  br i1 %.not31, label %.preheader.preheader.a, label %bb.e

.preheader.preheader.a:                           ; preds = %bb.e
  %i.u = sext i32 %indvars.iv40 to i64            ; 6 uses
  %i.v = sext i32 %.124 to i64                    ; 5 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.u, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.preheader.preheader.a
  %min.iters.check51 = icmp slt i32 %indvars.iv40, 32
  br i1 %min.iters.check51, label %.preheader.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.w, 24
  %n.vec = and i64 %i.w, 2147483616               ; 5 uses
  %i.x = add nsw i64 %n.vec, %i.v                 ; 3 uses
  %i.y = sub nsw i64 %i.u, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.u
end_hunk_9
begin_hunk_10_@ps1:bb.a
  store <16 x i8> %reverse53, ptr %i.ac, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %ind.escape = add nsw i64 %i.x, -1
  br i1 %cmp.n, label %.loopexit55, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %.preheader.preheader56, !prof !70

.preheader.preheader56:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %indvars.iv44.ph.a = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.w, 2147483640             ; 4 uses
  %1 = add nsw i64 %n.vec57, %i.v                 ; 3 uses
  %2 = sub nsw i64 %i.u, %n.vec57
  %invariant.gep73 = getelementptr i8, ptr %i.a, i64 %i.u
  %invariant.gep75 = getelementptr i8, ptr @s1, i64 %i.v
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %.preheader.preheader56
  %index58 = phi i64 [ %indvars.iv44.ph.a, %.preheader.preheader56 ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %3 = xor i64 %index58, -1
  %gep74 = getelementptr i8, ptr %invariant.gep73, i64 %3
  %4 = getelementptr inbounds i8, ptr %gep74, i64 -7
  %wide.load59 = load <8 x i8>, ptr %4, align 1, !tbaa !68
  %reverse60 = shufflevector <8 x i8> %wide.load59, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep76 = getelementptr i8, ptr %invariant.gep75, i64 %index58
  store <8 x i8> %reverse60, ptr %gep76, align 1, !tbaa !68
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %5 = icmp eq i64 %index.next61, %n.vec57
  br i1 %5, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.w, %n.vec57
  %ind.escape63 = add nsw i64 %1, -1
  br i1 %cmp.n62, label %.loopexit55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.ph = phi i64 [ %i.v, %.preheader.preheader.a ], [ %i.x, %vec.epilog.iter.check ], [ %1, %vec.epilog.middle.block ]
  %indvars.iv42.ph = phi i64 [ %i.u, %.preheader.preheader.a ], [ %i.y, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader ], [ %indvars.iv44.ph, %.preheader.preheader ] ; 3 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.preheader ], [ %indvars.iv42.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !68
end_hunk_10
begin_hunk_11_@ps1:bb.a
  %i.ag = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !68
  %i.ah = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.ah, label %.preheader, label %.loopexit55, !llvm.loop !78

.loopexit55:                                      ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.lcssa = phi i64 [ %ind.escape63, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44, %.preheader ] ; 3 uses
  %indvars.iv.next45.lcssa = phi i64 [ %1, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %indvars.iv.next45, %.preheader ] ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv.next45.lcssa to i32
  %i.aj = icmp sgt i64 %indvars.iv44.lcssa, 104
  br i1 %i.aj, label %bb.f, label %bb.g
end_hunk_11
begin_hunk_12_@sf_transpose:bb.a
  %i.ax = getelementptr inbounds [4 x i8], ptr %.03740.epil, i64 %i.an
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_12
begin_hunk_13_@llvm.assume
!67 = distinct !{!67, !9}
!68 = !{!6, !6, i64 0}
!69 = distinct !{!69, !9, !10}
!70 = !{!"branch_weights", i32 8, i32 24}
!71 = distinct !{!71, !9, !10}
!72 = distinct !{!72, !10, !9}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !9, !10}
!77 = distinct !{!77, !9, !10}
!78 = distinct !{!78, !10, !9}
!79 = distinct !{!79, !12}
end_hunk_13
