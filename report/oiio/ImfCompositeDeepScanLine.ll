inline.NumInlined: 1174
inline.NumDeleted: 651
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine10readPixelsEii:bb.a
  store i32 0, ptr %i.gn, align 4, !tbaa !3
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.0116306 ; 3 uses
  store i32 0, ptr %i.go, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %._crit_edge304, label %.lr.ph303.preheader.a

.lr.ph303.preheader.a:                            ; preds = %bb.z
  %.promoted.a = load i32, ptr %i.gn, align 4, !tbaa !3
  br label %.lr.ph303

._crit_edge304:                                   ; preds = %bb.ab, %bb.z
  %11 = load i32, ptr %i.gn, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %i.gp = add nuw nsw i64 %.0117305, %12          ; 2 uses
  %i.gq = add nuw i64 %.0116306, 1                ; 2 uses
  %exitcond365.not = icmp eq i64 %i.gq, %i.ev
  br i1 %exitcond365.not, label %._crit_edge309, label %bb.z, !llvm.loop !150

.lr.ph303:                                        ; preds = %.lr.ph303.preheader.a, %bb.ab
  %i.gr = phi i32 [ %i.gw, %bb.ab ], [ %.promoted.a, %.lr.ph303.preheader.a ]
  %.0115301 = phi i64 [ %i.ha, %bb.ab ], [ 0, %.lr.ph303.preheader.a ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %.0115301
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !110
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.0116306 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine10readPixelsEii:bb.a
bb.ab:                                            ; preds = %.lr.ph303, %bb.aa
  %i.ha = add nuw i64 %.0115301, 1                ; 2 uses
  %exitcond364.not = icmp eq i64 %i.ha, %.fr351
  br i1 %exitcond364.not, label %._crit_edge304, label %.lr.ph303, !llvm.loop !151

bb.ac:                                            ; preds = %._crit_edge309
  %i.hb = tail call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
end_hunk_1
