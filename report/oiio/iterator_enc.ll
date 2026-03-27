begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorImport(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = load i32, ptr %0, align 8, !tbaa !16     ; 4 uses
end_hunk_0
begin_hunk_1
  %i.x = mul i32 %i.w, %i.f
  %i.y = add i32 %i.x, %i.d
  %i.z = shl i32 %i.y, 3
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 2 uses
  %2 = ptrtoaddr ptr %i.ad to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.aa ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !71
end_hunk_1
begin_hunk_2
  br i1 %exitcond.not.i174.3, label %.preheader.i175, label %vec.epilog.scalar.ph291, !llvm.loop !98

iter.check310:                                    ; preds = %.preheader.i175, %.lr.ph18.i163..lr.ph.i183_crit_edge
  %wide.trip.count.i184.pre-phi = phi i64 [ %.pre223, %.lr.ph18.i163..lr.ph.i183_crit_edge ], [ 8, %.preheader.i175 ] ; 6 uses
  %.pn197.in = load i32, ptr %i.v, align 4, !tbaa !69
  %.pn197 = sext i32 %.pn197.in to i64            ; 2 uses
  %.pn = sub nsw i64 0, %.pn197
  %i.pz = getelementptr inbounds i8, ptr %i.ae, i64 %.pn ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %min.iters.check308 = icmp samesign ult i64 %wide.trip.count.i184.pre-phi, 8
  br i1 %min.iters.check308, label %vec.epilog.scalar.ph321.preheader, label %vector.memcheck306

vector.memcheck306:                               ; preds = %iter.check310
  %3 = add i64 %i.a, %.pn197
  %4 = add i64 %3, 24
  %5 = add i64 %2, %i.aa
  %6 = sub i64 %4, %5
  %diff.check307 = icmp ult i64 %6, 32
  br i1 %diff.check307, label %vec.epilog.scalar.ph321.preheader, label %vec.epilog.ph324

vec.epilog.ph324:                                 ; preds = %vector.memcheck306
  %n.vec326 = and i64 %wide.trip.count.i184.pre-phi, 2147483640 ; 3 uses
  %7 = getelementptr i8, ptr %i.pz, i64 %n.vec326
  %wide.load329 = load <8 x i8>, ptr %i.pz, align 1, !tbaa !43
  store <8 x i8> %wide.load329, ptr %i.qa, align 1, !tbaa !43
  %cmp.n331 = icmp eq i64 %wide.trip.count.i184.pre-phi, %n.vec326
  br i1 %cmp.n331, label %.preheader.i189, label %vec.epilog.scalar.ph321.preheader

vec.epilog.scalar.ph321.preheader:                ; preds = %vector.memcheck306, %iter.check310, %vec.epilog.ph324
  %indvars.iv.i185.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %iter.check310 ], [ %n.vec326, %vec.epilog.ph324 ] ; 3 uses
  %.01415.i186.ph = phi ptr [ %i.pz, %vector.memcheck306 ], [ %i.pz, %iter.check310 ], [ %7, %vec.epilog.ph324 ] ; 2 uses
  %xtraiter413 = and i64 %wide.trip.count.i184.pre-phi, 3 ; 2 uses
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod414.not, label %vec.epilog.scalar.ph321.prol.loopexit, label %vec.epilog.scalar.ph321.prol

vec.epilog.scalar.ph321.prol:                     ; preds = %vec.epilog.scalar.ph321.preheader, %vec.epilog.scalar.ph321.prol
  %indvars.iv.i185.prol = phi i64 [ %indvars.iv.next.i187.prol, %vec.epilog.scalar.ph321.prol ], [ %indvars.iv.i185.ph, %vec.epilog.scalar.ph321.preheader ] ; 2 uses
  %.01415.i186.prol = phi ptr [ %i.qd, %vec.epilog.scalar.ph321.prol ], [ %.01415.i186.ph, %vec.epilog.scalar.ph321.preheader ] ; 2 uses
  %prol.iter415 = phi i64 [ %prol.iter415.next, %vec.epilog.scalar.ph321.prol ], [ 0, %vec.epilog.scalar.ph321.preheader ]
  %i.qb = load i8, ptr %.01415.i186.prol, align 1, !tbaa !43
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185.prol
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !43
  %indvars.iv.next.i187.prol = add nuw nsw i64 %indvars.iv.i185.prol, 1 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.01415.i186.prol, i64 1 ; 2 uses
  %prol.iter415.next = add i64 %prol.iter415, 1   ; 2 uses
  %prol.iter415.cmp.not = icmp eq i64 %prol.iter415.next, %xtraiter413
  br i1 %prol.iter415.cmp.not, label %vec.epilog.scalar.ph321.prol.loopexit, label %vec.epilog.scalar.ph321.prol, !llvm.loop !99

vec.epilog.scalar.ph321.prol.loopexit:            ; preds = %vec.epilog.scalar.ph321.prol, %vec.epilog.scalar.ph321.preheader
  %indvars.iv.i185.unr = phi i64 [ %indvars.iv.i185.ph, %vec.epilog.scalar.ph321.preheader ], [ %indvars.iv.next.i187.prol, %vec.epilog.scalar.ph321.prol ]
  %.01415.i186.unr = phi ptr [ %.01415.i186.ph, %vec.epilog.scalar.ph321.preheader ], [ %i.qd, %vec.epilog.scalar.ph321.prol ]
  %8 = sub nsw i64 %indvars.iv.i185.ph, %wide.trip.count.i184.pre-phi
  %9 = icmp ugt i64 %8, -4
  br i1 %9, label %.preheader.i189, label %vec.epilog.scalar.ph321

.preheader.i189:                                  ; preds = %vec.epilog.scalar.ph321.prol.loopexit, %vec.epilog.scalar.ph321, %vec.epilog.ph324
  %i.qe = icmp samesign ult i32 %i.aq, 8
  br i1 %i.qe, label %.preheader.i189..lr.ph18.i177_crit_edge, label %ImportLine.exit190

end_hunk_2
begin_hunk_3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep218, i8 %.pre.i179, i64 %i.qj, i1 false), !tbaa !43
  br label %ImportLine.exit190

vec.epilog.scalar.ph321:                          ; preds = %vec.epilog.scalar.ph321.prol.loopexit, %vec.epilog.scalar.ph321
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i187.3, %vec.epilog.scalar.ph321 ], [ %indvars.iv.i185.unr, %vec.epilog.scalar.ph321.prol.loopexit ] ; 5 uses
  %.01415.i186 = phi ptr [ %i.qy, %vec.epilog.scalar.ph321 ], [ %.01415.i186.unr, %vec.epilog.scalar.ph321.prol.loopexit ] ; 5 uses
  %i.qk = load i8, ptr %.01415.i186, align 1, !tbaa !43
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !43
end_hunk_3
begin_hunk_4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 3
  store i8 %i.qv, ptr %i.qx, align 1, !tbaa !43
  %indvars.iv.next.i187.3 = add nuw nsw i64 %indvars.iv.i185, 4 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 4
  %exitcond.not.i188.3 = icmp eq i64 %indvars.iv.next.i187.3, %wide.trip.count.i184.pre-phi
  br i1 %exitcond.not.i188.3, label %.preheader.i189, label %vec.epilog.scalar.ph321, !llvm.loop !100

ImportLine.exit190:                               ; preds = %.lr.ph18.i177, %.preheader.i189, %bb.o, %ImportBlock.exit117
  ret void
end_hunk_4
begin_hunk_5
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i32, ptr %i.d, align 4, !tbaa !102
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ExportBlock.exit52, label %bb.b

end_hunk_5
begin_hunk_6
  %i.av = getelementptr inbounds i8, ptr %.078.i, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  %i.ax = icmp samesign ugt i32 %.010.i, 1
  br i1 %i.ax, label %bb.c, label %ExportBlock.exit, !llvm.loop !105

ExportBlock.exit:                                 ; preds = %bb.c, %bb.b
  %i.ay = add nsw i32 %spec.store.select1, 1
end_hunk_6
begin_hunk_7
  %i.bi = getelementptr inbounds nuw i8, ptr %.069.i45.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !106

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i43
  %.010.i44.unr = phi i32 [ %i.az, %.lr.ph.i43 ], [ %i.bg, %.prol.preheader ]
end_hunk_7
begin_hunk_8
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %.069.i45, i64 128
  %i.bt = icmp sgt i32 %.010.i44, 4
  br i1 %i.bt, label %.lr.ph.i43.new, label %.lr.ph.i48, !llvm.loop !105

.lr.ph.i48:                                       ; preds = %.lr.ph.i43.new, %.prol.loopexit
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !69
end_hunk_8
begin_hunk_9
  %i.bx = getelementptr inbounds i8, ptr %.078.i51, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.069.i50, i64 32
  %i.bz = icmp samesign ugt i32 %.010.i49, 1
  br i1 %i.bz, label %bb.d, label %ExportBlock.exit52, !llvm.loop !105

ExportBlock.exit52:                               ; preds = %bb.d, %ExportBlock.exit, %bb.a
  ret void
end_hunk_9
begin_hunk_10
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
end_hunk_10
begin_hunk_11
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
end_hunk_11
begin_hunk_12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  %i.u = getelementptr i8, ptr %i.i, i64 -1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !43
  %i.v = load i32, ptr %i.a, align 8, !tbaa !107
  %i.w = and i32 %i.v, 3
  %.not = icmp eq i32 %i.w, 3
  br i1 %.not, label %.preheader.preheader, label %.preheader29.preheader
end_hunk_12
begin_hunk_13
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29.preheader, %.preheader.preheader
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !107
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !107
  %i.ai = icmp eq i32 %i.ah, 16
  br i1 %i.ai, label %bb.c, label %bb.b

end_hunk_13
begin_hunk_14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
end_hunk_14
begin_hunk_15
!97 = distinct !{!97, !76}
!98 = distinct !{!98, !74, !90}
!99 = distinct !{!99, !76}
!100 = distinct !{!100, !74, !90}
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
end_hunk_15
