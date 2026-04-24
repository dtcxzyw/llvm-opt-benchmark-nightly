inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@HUF_readStats_wksp:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 6 uses
  %i.r = shl i64 %n.vec, 1
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31 = load <8 x i8>, ptr %10, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %11 = lshr <8 x i8> %wide.load, splat (i8 4)
  %12 = lshr <8 x i8> %wide.load31, splat (i8 4)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = and <8 x i8> %wide.load, splat (i8 15)
  %15 = and <8 x i8> %wide.load31, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %11, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34 = shufflevector <8 x i8> %12, <8 x i8> %15, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %13, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %16 = icmp eq i64 %n.vec, 16
  br i1 %16, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 17
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %17, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31.1 = load <8 x i8>, ptr %18, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %19 = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %20 = lshr <8 x i8> %wide.load31.1, splat (i8 4)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %23 = and <8 x i8> %wide.load.1, splat (i8 15)
  %24 = and <8 x i8> %wide.load31.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %19, <8 x i8> %23, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %21, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.1 = shufflevector <8 x i8> %20, <8 x i8> %24, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.1, ptr %22, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %25 = icmp eq i64 %n.vec, 32
  br i1 %25, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.a = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31.a = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.u = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.v = lshr <8 x i8> %wide.load31.a, splat (i8 4)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = and <8 x i8> %wide.load.a, splat (i8 15)
  %i.z = and <8 x i8> %wide.load31.a, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.u, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %i.w, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.a = shufflevector <8 x i8> %i.v, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.a, ptr %i.x, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %i.aa = icmp eq i64 %n.vec, 48
  br i1 %i.aa, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 49
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %26, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31.3 = load <8 x i8>, ptr %27, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %28 = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %29 = lshr <8 x i8> %wide.load31.3, splat (i8 4)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = and <8 x i8> %wide.load.3, splat (i8 15)
  %33 = and <8 x i8> %wide.load31.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %28, <8 x i8> %32, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %30, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.3 = shufflevector <8 x i8> %29, <8 x i8> %33, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.3, ptr %31, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@HUF_readStats_wksp:bb.a
  store <8 x i8> %interleaved.vec40, ptr %i.ag, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.l, %n.vec36
end_hunk_1
begin_hunk_2_@HUF_readStats_wksp:bb.a
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next.i, %i.f
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !26

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
end_hunk_2
begin_hunk_3_@HUF_readStats_wksp:bb.a
  %i.bj = add i32 %.075.i11.i, 1                  ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not90.i.i = icmp ugt i64 %.074.i25.i, %i.bk
  br i1 %.not90.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !27

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.bi, 0
end_hunk_3
begin_hunk_4_@HUF_readStats_body_bmi2:bb.a
  %i.s = and i64 %index, 9223372036854775792
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !28
  %wide.load36 = load <8 x i8>, ptr %i.u, align 1, !tbaa !16, !alias.scope !28
  %i.v = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.w = lshr <8 x i8> %wide.load36, splat (i8 4)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load37 = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !28
  %wide.load38 = load <8 x i8>, ptr %i.u, align 1, !tbaa !16, !alias.scope !28
  %i.aa = and <8 x i8> %wide.load37, splat (i8 15)
  %i.ab = and <8 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.v, <8 x i8> %i.aa, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.x, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %interleaved.vec39 = shufflevector <8 x i8> %i.w, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec39, ptr %i.z, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
end_hunk_4
begin_hunk_5_@HUF_readStats_body_bmi2:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_5
begin_hunk_6_@HUF_readStats_body_bmi2:bb.a
  %i.ae = shl i64 %index42, 1
  %i.af = and i64 %index42, 9223372036854775804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.af
  %wide.load43 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %i.ah = lshr <4 x i8> %wide.load43, splat (i8 4)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.aj = and <4 x i8> %wide.load43, splat (i8 15)
  %interleaved.vec45 = shufflevector <4 x i8> %i.ah, <4 x i8> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec45, ptr %i.ai, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec41, %i.k
end_hunk_6
begin_hunk_7_@HUF_readStats_body_bmi2:bb.a
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.au = icmp ugt i32 %i.h, %indvars
  br i1 %i.au, label %.lr.ph, label %.loopexit.thread, !llvm.loop !35

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
end_hunk_7
begin_hunk_8_@HUF_readStats_body_bmi2:bb.a
  %i.bm = add i32 %.075.i11, 1                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i25, %i.bn
  br i1 %.not90.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !27

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.bl, 0
end_hunk_8
begin_hunk_9_@llvm.umax.i32
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = distinct !{!23, !12, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !12, !24}
!27 = distinct !{!27, !12}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !12, !24, !25}
!34 = distinct !{!34, !12, !24, !25}
!35 = distinct !{!35, !12, !24}
end_hunk_9
