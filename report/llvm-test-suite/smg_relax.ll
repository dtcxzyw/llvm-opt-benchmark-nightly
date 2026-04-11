inline.NumInlined: 9
begin_hunk_0_@hypre_SMGRelax:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.y, %bb.d ], [ 0, %bb.c ]
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %6 = icmp sgt i32 %.fr84, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %.166.us = load ptr, ptr %i.z, align 8, !tbaa !48 ; 2 uses
  %.168.us = load i32, ptr %4, align 8, !tbaa !4  ; 3 uses
  %i.ad = icmp sgt i32 %.168.us, 0                ; 2 uses
  br i1 %6, label %.preheader.lr.ph.us, label %.preheader.lr.ph

.preheader.us78.preheader:                        ; preds = %bb.g, %.preheader.lr.ph.us
  store i32 1, ptr %i.ac, align 8, !tbaa !49
  %i.ae = load i32, ptr %5, align 8, !tbaa !24    ; 3 uses
  %.166.us.1 = load ptr, ptr %i.ab, align 8, !tbaa !48
  %.168.us.1 = load i32, ptr %i.aa, align 4, !tbaa !4 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.preheader.lr.ph.us.1, label %.split83.us

end_hunk_0
begin_hunk_1_@hypre_SMGRelax:bb.a

._crit_edge.split.us.us.us.us.1:                  ; preds = %bb.f
  %i.aq = add nuw nsw i32 %.06472.us.us.us.1, 1   ; 3 uses
  store i32 %i.aq, ptr %i.ac, align 8, !tbaa !49
  %exitcond95.1.not = icmp eq i32 %i.aq, %i.ae
  br i1 %exitcond95.1.not, label %.split83.us, label %.preheader.us.us.us.1, !llvm.loop !51

end_hunk_1
begin_hunk_2_@hypre_SMGRelax:bb.a
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.h, !llvm.loop !50

.preheader.preheader:                             ; preds = %bb.h, %.preheader.lr.ph
  store i32 1, ptr %i.ac, align 8, !tbaa !49
  %i.bj = load i32, ptr %5, align 8, !tbaa !24    ; 3 uses
  %.166.1 = load ptr, ptr %i.ab, align 8, !tbaa !48
  %.168.1 = load i32, ptr %i.aa, align 4, !tbaa !4 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader.lr.ph.1, label %.split83.us

end_hunk_2
begin_hunk_3_@hypre_SMGRelax:bb.a

._crit_edge.split.us75.1:                         ; preds = %bb.i
  %i.bv = add nuw nsw i32 %.06472.us.1, 1         ; 3 uses
  store i32 %i.bv, ptr %i.ac, align 8, !tbaa !49
  %exitcond89.1.not = icmp eq i32 %i.bv, %i.bj
  br i1 %exitcond89.1.not, label %.split83.us, label %.preheader.us.1, !llvm.loop !51

.split83.us.sink.split:                           ; preds = %.preheader.lr.ph.1, %.preheader.lr.ph.us.1
  %.sink = phi i32 [ %i.ae, %.preheader.lr.ph.us.1 ], [ %i.bj, %.preheader.lr.ph.1 ]
  store i32 %.sink, ptr %i.ac, align 8, !tbaa !49
  br label %.split83.us

.split83.us:                                      ; preds = %._crit_edge.split.us75.1, %._crit_edge.split.us.us.us.us.1, %.split83.us.sink.split, %.preheader.preheader, %.preheader.us78.preheader
end_hunk_3
