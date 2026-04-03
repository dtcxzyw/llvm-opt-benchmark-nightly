begin_hunk_0
define internal fastcc void @cftmdl(i32 noundef range(i32 9, -2147483648) %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef readonly captures(none) %3) unnamed_addr #15 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 3 uses
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
end_hunk_0
begin_hunk_1
  %i.ky = fneg double %i.ku
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.ks, double %i.ky) ; 2 uses
  %i.la = add nsw i64 %indvars.iv419, %i.ge
  br i1 %i.b, label %.lr.ph404.preheader, label %._crit_edge409

.lr.ph404.preheader:                              ; preds = %.lr.ph413
  %min.iters.check1069 = icmp ult i64 %i.iw, 22
end_hunk_1
begin_hunk_2
  %i.ox = icmp slt i64 %indvars.iv.next422, %i.la
  br i1 %i.ox, label %.lr.ph404, label %._crit_edge405, !llvm.loop !63

._crit_edge405:                                   ; preds = %.lr.ph404, %middle.block1105
  %i.oy = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !8 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
end_hunk_2
begin_hunk_3
  %i.pf = fneg double %i.pb
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.oz, double %i.pf) ; 2 uses
  %.reass = add i64 %indvars.iv419, %invariant.op
  %4 = fneg double %i.kq                          ; 2 uses
  %min.iters.check877 = icmp ult i64 %i.jv, 14
  br i1 %min.iters.check877, label %scalar.ph876.preheader, label %vector.memcheck733

vector.memcheck733:                               ; preds = %._crit_edge405
  %bound0764 = icmp ult ptr %scevgep734, %scevgep740
  %bound1765 = icmp ult ptr %scevgep738, %scevgep736
  %found.conflict766 = and i1 %bound0764, %bound1765
end_hunk_3
begin_hunk_4
  %cmp.n914 = icmp eq i64 %i.jx, %n.vec880
  br i1 %cmp.n914, label %._crit_edge409, label %scalar.ph876.preheader

scalar.ph876.preheader:                           ; preds = %vector.memcheck733, %._crit_edge405, %middle.block913
  %indvars.iv426.ph = phi i64 [ %i.kl, %vector.memcheck733 ], [ %i.kl, %._crit_edge405 ], [ %i.pi, %middle.block913 ]
  %i.qw = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.qx = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qy = insertelement <2 x double> poison, double %4, i64 0
end_hunk_4
begin_hunk_5
  %i.so = icmp slt i64 %indvars.iv.next427, %.reass
  br i1 %i.so, label %scalar.ph876, label %._crit_edge409, !llvm.loop !65

._crit_edge409:                                   ; preds = %scalar.ph876, %middle.block913, %.lr.ph413
  %indvars.iv.next420 = add nsw i64 %indvars.iv419, %i.gd ; 2 uses
  %i.sp = icmp slt i64 %indvars.iv.next420, %i.gh
  %indvars.iv.next425 = add i32 %indvars.iv424, %i.gb
end_hunk_5
