inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0_@VP8IteratorImport:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !71
  %i.ah = shl nsw i32 %i.d, 4
  %i.ai = sub nsw i32 %i.ag, %i.ah                ; 6 uses
  %i.aj = tail call noundef range(i32 -2147483648, 17) i32 @llvm.smin.i32(i32 %i.ai, i32 16) ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !72
end_hunk_0
begin_hunk_1_@VP8IteratorImport:bb.a
  %i.mu = load i32, ptr %i.l, align 8, !tbaa !67
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.r, i64 %i.mw ; 6 uses
  %wide.trip.count.i156 = zext nneg i32 %i.aj to i64 ; 8 uses
  %min.iters.check = icmp slt i32 %i.ai, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

end_hunk_1
begin_hunk_2_@VP8IteratorImport:bb.a
  %i.my = add i64 %i.a, %i.mv
  %i.mz = add i64 %i.k, %i.q
  %i.na = sub i64 %i.my, %i.mz
  %diff.check = icmp ult i64 %i.na, 16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check261 = icmp slt i32 %i.ai, 16
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i156, 12
  %n.vec = and i64 %wide.trip.count.i156, 16      ; 4 uses
  %2 = getelementptr i8, ptr %i.mx, i64 %n.vec
  %wide.load = load <16 x i8>, ptr %i.mx, align 1, !tbaa !43
  store <16 x i8> %wide.load, ptr %1, align 1, !tbaa !43
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i156
  br i1 %cmp.n, label %.preheader.i161, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec264 = and i64 %wide.trip.count.i156, 28   ; 4 uses
  %i.nb = getelementptr i8, ptr %i.mx, i64 %n.vec264
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next268, %vec.epilog.vector.body ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %i.mx, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %next.gep266, align 1, !tbaa !43
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %index265
  store <4 x i8> %wide.load267, ptr %i.nc, align 1, !tbaa !43
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next268, %n.vec264
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !90

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n269 = icmp eq i64 %n.vec264, %wide.trip.count.i156
  br i1 %cmp.n269, label %.preheader.i161, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i157.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec264, %vec.epilog.middle.block ] ; 3 uses
  %.01415.i158.ph = phi ptr [ %i.mx, %iter.check ], [ %i.mx, %vector.memcheck ], [ %2, %vec.epilog.iter.check ], [ %i.nb, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter380 = and i64 %wide.trip.count.i156, 3 ; 2 uses
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol
end_hunk_2
begin_hunk_3_@VP8IteratorImport:bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %.01415.i158.prol, i64 1 ; 2 uses
  %prol.iter382.next = add i64 %prol.iter382, 1   ; 2 uses
  %prol.iter382.cmp.not = icmp eq i64 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !93

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i157.unr = phi i64 [ %indvars.iv.i157.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i159.prol, %vec.epilog.scalar.ph.prol ]
end_hunk_3
begin_hunk_4_@VP8IteratorImport:bb.a
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %.preheader.i161, label %vec.epilog.scalar.ph

.preheader.i161:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.nj = icmp samesign ult i32 %i.ai, 16
  br i1 %i.nj, label %.lr.ph18.i149, label %ImportLine.exit162

end_hunk_4
begin_hunk_5_@VP8IteratorImport:bb.a
  %indvars.iv.next.i159.3 = add nuw nsw i64 %indvars.iv.i157, 4 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 4
  %exitcond.not.i160.3 = icmp eq i64 %indvars.iv.next.i159.3, %wide.trip.count.i156
  br i1 %exitcond.not.i160.3, label %.preheader.i161, label %vec.epilog.scalar.ph, !llvm.loop !94

ImportLine.exit162:                               ; preds = %.lr.ph18.i149, %.preheader.i161
  %i.oe = icmp sgt i32 %i.aq, 0
end_hunk_5
begin_hunk_6_@VP8IteratorImport:bb.a
  store <16 x i8> %wide.load284, ptr %i.oq, align 1, !tbaa !43
  %index.next285 = add nuw i64 %index281, 32      ; 2 uses
  %i.or = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.or, label %middle.block286, label %vector.body280, !llvm.loop !95

middle.block286:                                  ; preds = %vector.body280
  %cmp.n287 = icmp eq i64 %n.vec279, %wide.trip.count.i170
end_hunk_6
begin_hunk_7_@VP8IteratorImport:bb.a

vec.epilog.iter.check291:                         ; preds = %middle.block286
  %min.epilog.iters.check292 = icmp eq i64 %n.mod.vf278, 0
  br i1 %min.epilog.iters.check292, label %vec.epilog.scalar.ph290.preheader, label %vec.epilog.ph293, !prof !96

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check291
  %vec.epilog.resume.val288 = phi i64 [ %n.vec279, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check275 ]
end_hunk_7
begin_hunk_8_@VP8IteratorImport:bb.a
  store <4 x i8> %wide.load299, ptr %i.ot, align 1, !tbaa !43
  %index.next300 = add nuw i64 %index297, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.ou, label %vec.epilog.middle.block301, label %vec.epilog.vector.body296, !llvm.loop !97

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body296
  %cmp.n302 = icmp eq i64 %n.vec295, %wide.trip.count.i170
end_hunk_8
begin_hunk_9_@VP8IteratorImport:bb.a
  %i.ox = getelementptr inbounds nuw i8, ptr %.01415.i172.prol, i64 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol, !llvm.loop !98

vec.epilog.scalar.ph290.prol.loopexit:            ; preds = %vec.epilog.scalar.ph290.prol, %vec.epilog.scalar.ph290.preheader
  %indvars.iv.i171.unr = phi i64 [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph290.preheader ], [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph290.prol ]
end_hunk_9
begin_hunk_10_@VP8IteratorImport:bb.a
  %indvars.iv.next.i173.3 = add nuw nsw i64 %indvars.iv.i171, 4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 4
  %exitcond.not.i174.3 = icmp eq i64 %indvars.iv.next.i173.3, %wide.trip.count.i170
  br i1 %exitcond.not.i174.3, label %.preheader.i175, label %vec.epilog.scalar.ph290, !llvm.loop !99

.lr.ph.i183:                                      ; preds = %.preheader.i175, %.lr.ph18.i163..lr.ph.i183_crit_edge
  %wide.trip.count.i184.pre-phi = phi i64 [ %.pre223, %.lr.ph18.i163..lr.ph.i183_crit_edge ], [ 8, %.preheader.i175 ] ; 3 uses
end_hunk_10
begin_hunk_11_@VP8IteratorImport:bb.a
  %i.qf = getelementptr inbounds nuw i8, ptr %.01415.i186.epil, i64 1
  %epil.iter388.next = add i64 %epil.iter388, 1   ; 2 uses
  %epil.iter388.cmp.not = icmp eq i64 %epil.iter388.next, %xtraiter387
  br i1 %epil.iter388.cmp.not, label %.preheader.i189, label %bb.q, !llvm.loop !100

.preheader.i189:                                  ; preds = %bb.q, %.preheader.i189.unr-lcssa
  %i.qg = icmp samesign ult i32 %i.aq, 8
end_hunk_11
begin_hunk_12_@VP8IteratorExport:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i32, ptr %i.d, align 4, !tbaa !102
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ExportBlock.exit52, label %bb.b

end_hunk_12
begin_hunk_13_@VP8IteratorExport:bb.a
  %i.av = getelementptr inbounds i8, ptr %.078.i, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  %i.ax = icmp samesign ugt i32 %.010.i, 1
  br i1 %i.ax, label %bb.c, label %ExportBlock.exit, !llvm.loop !105

ExportBlock.exit:                                 ; preds = %bb.c, %bb.b
  %i.ay = add nsw i32 %spec.store.select1, 1
end_hunk_13
begin_hunk_14_@VP8IteratorExport:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %.069.i45.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !106

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i43
  %.010.i44.unr = phi i32 [ %i.az, %.lr.ph.i43 ], [ %i.bg, %.prol.preheader ]
end_hunk_14
begin_hunk_15_@VP8IteratorExport:bb.a
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %.069.i45, i64 128
  %i.bt = icmp sgt i32 %.010.i44, 4
  br i1 %i.bt, label %.lr.ph.i43.new, label %.lr.ph.i48, !llvm.loop !105

.lr.ph.i48:                                       ; preds = %.lr.ph.i43.new, %.prol.loopexit
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !69
end_hunk_15
begin_hunk_16_@VP8IteratorExport:bb.a
  %i.bx = getelementptr inbounds i8, ptr %.078.i51, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.069.i50, i64 32
  %i.bz = icmp samesign ugt i32 %.010.i49, 1
  br i1 %i.bz, label %bb.d, label %ExportBlock.exit52, !llvm.loop !105

ExportBlock.exit52:                               ; preds = %bb.d, %ExportBlock.exit, %bb.a
  ret void
end_hunk_16
begin_hunk_17_@VP8IteratorStartI4:.preheader31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.f, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
end_hunk_17
begin_hunk_18_@VP8IteratorRotateI4
define hidden range(i32 0, 2) i32 @VP8IteratorRotateI4(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @VP8Scan, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !109
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load i8, ptr %i.j, align 1, !tbaa !43
  %i.l = getelementptr i8, ptr %i.i, i64 -4
end_hunk_18
begin_hunk_19_@VP8IteratorRotateI4:bb.a
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  %i.u = getelementptr i8, ptr %i.i, i64 -1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !43
  %i.v = load i32, ptr %i.a, align 8, !tbaa !107
  %i.w = and i32 %i.v, 3
  %.not = icmp eq i32 %i.w, 3
  br i1 %.not, label %.preheader.preheader, label %.preheader29.preheader
end_hunk_19
begin_hunk_20_@VP8IteratorRotateI4:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29.preheader, %.preheader.preheader
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !107
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !107
  %i.ai = icmp eq i32 %i.ah, 16
  br i1 %i.ai, label %bb.c, label %bb.b

end_hunk_20
begin_hunk_21_@VP8IteratorRotateI4:bb.a
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
end_hunk_21
begin_hunk_22_@llvm.vector.reduce.or.v8i32
!86 = distinct !{!86, !76}
!87 = !{!8, !9, i64 384}
!88 = !{!8, !9, i64 392}
!89 = !{!"branch_weights", i32 4, i32 12}
!90 = distinct !{!90, !74, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !76}
!94 = distinct !{!94, !74, !91}
!95 = distinct !{!95, !74, !91, !92}
!96 = !{!"branch_weights", i32 4, i32 28}
!97 = distinct !{!97, !74, !91, !92}
!98 = distinct !{!98, !76}
!99 = distinct !{!99, !74, !91}
!100 = distinct !{!100, !76}
!101 = !{!19, !20, i64 0}
!102 = !{!103, !4, i64 64}
!103 = !{!"WebPConfig", !4, i64 0, !104, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !104, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!104 = !{!"float", !5, i64 0}
!105 = distinct !{!105, !74}
!106 = distinct !{!106, !76}
!107 = !{!8, !4, i64 128}
!108 = !{!8, !9, i64 120}
!109 = !{!110, !110, i64 0}
!110 = !{!"short", !5, i64 0}
end_hunk_22
