begin_hunk_0
  %.sroa.065.0.copyload = load double, ptr %i.m, align 8 ; 3 uses
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = load <2 x double>, ptr %.sroa.668.0..sroa_idx, align 8 ; 4 uses
  %i.o = add nsw i64 %i.k, -2                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.critedge, label %.lr.ph88.preheader

end_hunk_0
begin_hunk_1
  %i.r = insertelement <2 x double> %i.q, double %.sroa.065.0.copyload, i64 1
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %._crit_edge.thread
  %.02386 = phi i64 [ %i.s, %._crit_edge.thread ], [ 0, %.lr.ph88.preheader ] ; 3 uses
  %i.s = add nuw i64 %.02386, 1                   ; 4 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

end_hunk_1
begin_hunk_2
bb.b:                                             ; preds = %bb.c
  %i.ad = add i64 %.073, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.l
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.c, !llvm.loop !115

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.073 = phi i64 [ %i.s, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
end_hunk_2
begin_hunk_3
  %i.ba = fcmp ogt double %i.az, 0x3E45798EE0000000
  br i1 %i.ba, label %._crit_edge89.thread121, label %bb.b

._crit_edge.thread:                               ; preds = %bb.b, %.lr.ph88
  %.not = icmp ult i64 %i.s, %i.o
  br i1 %.not, label %.lr.ph88, label %.critedge, !llvm.loop !119

.critedge:                                        ; preds = %._crit_edge.thread, %bb.a
  store i8 0, ptr %2, align 1
  br label %bb.d

end_hunk_3
