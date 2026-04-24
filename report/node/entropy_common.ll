inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@HUF_readStats_wksp:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %10 = and i64 %index, 9223372036854775792
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %10 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %wide.load.a = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !17
  %wide.load31.a = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !17
  %i.u = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.v = lshr <8 x i8> %wide.load31.a, splat (i8 4)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load32 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !17
  %wide.load33 = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !17
  %i.y = and <8 x i8> %wide.load32, splat (i8 15)
  %i.z = and <8 x i8> %wide.load33, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.u, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %11, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.a = shufflevector <8 x i8> %i.v, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.a, ptr %i.x, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@HUF_readStats_wksp:bb.a
  store <8 x i8> %interleaved.vec40, ptr %i.ag, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.l, %n.vec36
end_hunk_1
begin_hunk_2_@HUF_readStats_wksp:bb.a
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next.i, %i.f
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !27

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
end_hunk_2
begin_hunk_3_@HUF_readStats_wksp:bb.a
  %i.bj = add i32 %.075.i11.i, 1                  ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not90.i.i = icmp ugt i64 %.074.i25.i, %i.bk
  br i1 %.not90.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.bi, 0
end_hunk_3
begin_hunk_4_@HUF_readStats_body_bmi2:bb.a
  %i.s = and i64 %index, 9223372036854775792
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !29
  %wide.load36 = load <8 x i8>, ptr %i.u, align 1, !tbaa !16, !alias.scope !29
  %i.v = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.w = lshr <8 x i8> %wide.load36, splat (i8 4)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load37 = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !29
  %wide.load38 = load <8 x i8>, ptr %i.u, align 1, !tbaa !16, !alias.scope !29
  %i.aa = and <8 x i8> %wide.load37, splat (i8 15)
  %i.ab = and <8 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.v, <8 x i8> %i.aa, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.x, align 1, !tbaa !16, !alias.scope !32, !noalias !29
  %interleaved.vec39 = shufflevector <8 x i8> %i.w, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec39, ptr %i.z, align 1, !tbaa !16, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
end_hunk_4
begin_hunk_5_@HUF_readStats_body_bmi2:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_5
begin_hunk_6_@HUF_readStats_body_bmi2:bb.a
  %i.ae = shl i64 %index42, 1
  %i.af = and i64 %index42, 9223372036854775804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.af
  %wide.load43 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !16, !alias.scope !29 ; 2 uses
  %i.ah = lshr <4 x i8> %wide.load43, splat (i8 4)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.aj = and <4 x i8> %wide.load43, splat (i8 15)
  %interleaved.vec45 = shufflevector <4 x i8> %i.ah, <4 x i8> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec45, ptr %i.ai, align 1, !tbaa !16, !alias.scope !32, !noalias !29
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec41, %i.k
end_hunk_6
begin_hunk_7_@HUF_readStats_body_bmi2:bb.a
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.au = icmp ugt i32 %i.h, %indvars
  br i1 %i.au, label %.lr.ph, label %.loopexit.thread, !llvm.loop !36

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
end_hunk_7
begin_hunk_8_@HUF_readStats_body_bmi2:bb.a
  %i.bm = add i32 %.075.i11, 1                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i25, %i.bn
  br i1 %.not90.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.bl, 0
end_hunk_8
begin_hunk_9_@llvm.umax.i32
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !12, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = distinct !{!26, !12, !23, !24}
!27 = distinct !{!27, !12, !23}
!28 = distinct !{!28, !12}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !12, !23, !24}
!35 = distinct !{!35, !12, !23, !24}
!36 = distinct !{!36, !12, !23}
end_hunk_9
