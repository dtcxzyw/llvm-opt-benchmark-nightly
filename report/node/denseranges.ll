inline.NumInlined: 8
inline.NumDeleted: 7
begin_hunk_0_@uprv_makeDenseRanges:bb.a
  br label %_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit

_ZN12_GLOBAL__N_111LargestGaps8truncateEi.exit:   ; preds = %bb.p, %bb.q
  %i.ce = phi i32 [ %.val, %bb.p ], [ %i.cd, %bb.q ] ; 6 uses
  store i32 %i.b, ptr %3, align 4
  %.not7286 = icmp samesign ult i32 %.05885, 2
  br i1 %.not7286, label %._crit_edge, label %.lr.ph89
end_hunk_0
begin_hunk_1_@uprv_makeDenseRanges:bb.a
  br i1 %exitcond114.not, label %._crit_edge, label %.lr.ph.i74.us, !llvm.loop !25

.lr.ph89.split:                                   ; preds = %.lr.ph89
  %6 = add nsw i32 %i.ce, -1                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = trunc i64 %i.dl to i32
  %7 = add i32 %i.ce, %i.dm                       ; 2 uses
  %wide.trip.count106 = zext nneg i32 %indvars.iv103 to i64 ; 3 uses
  %min.iters.check174 = icmp samesign ult i32 %indvars.iv103, 4
  br i1 %min.iters.check174, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph89.split
  %n.vec177 = and i64 %wide.trip.count106, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %6, i64 0
  %broadcast.splatinsert178 = insertelement <2 x i32> poison, i32 %7, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert178, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph175
end_hunk_1
begin_hunk_2_@uprv_makeDenseRanges:bb.a
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit ], [ %indvars.iv100.ph, %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %6, ptr %i.dt, align 4
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 3 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next101
  store i32 %7, ptr %8, align 4
  %exitcond107.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge, label %_ZNK12_GLOBAL__N_111LargestGaps10firstAfterEi.exit, !llvm.loop !27

end_hunk_2
