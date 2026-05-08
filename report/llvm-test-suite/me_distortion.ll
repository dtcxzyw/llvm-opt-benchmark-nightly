inline.NumInlined: 51
inline.NumDeleted: 4
begin_hunk_0_@computeBiPredSAD1:bb.a
bb.e:                                             ; preds = %bb.e, %.preheader.us.us.1
  %.498.us.us.1 = phi i32 [ %.3115.us.us.1, %.preheader.us.us.1 ], [ %i.fb, %bb.e ]
  %.16297.us.us.1 = phi i32 [ 0, %.preheader.us.us.1 ], [ %i.fc, %bb.e ]
  %i.er = phi ptr [ %.lcssa99110111.us.us.1, %.preheader.us.us.1 ], [ %i.eu, %bb.e ] ; 2 uses
  %i.es = phi ptr [ %.lcssa100106112.us.us.1, %.preheader.us.us.1 ], [ %i.ev, %bb.e ] ; 2 uses
  %i.et = phi ptr [ %.lcssa101103113.us.us.1, %.preheader.us.us.1 ], [ %i.ew, %bb.e ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %8 = load <2 x i16>, ptr %i.er, align 2, !tbaa !40
  %9 = zext <2 x i16> %8 to <2 x i32>
  %10 = load <2 x i16>, ptr %i.es, align 2, !tbaa !40
  %11 = zext <2 x i16> %10 to <2 x i32>
  %12 = load <2 x i16>, ptr %i.et, align 2, !tbaa !40
  %13 = zext <2 x i16> %12 to <2 x i32>
  %14 = add nuw nsw <2 x i32> %11, splat (i32 1)
  %15 = add nuw nsw <2 x i32> %14, %13
  %16 = lshr <2 x i32> %15, splat (i32 1)
  %17 = sub nsw <2 x i32> %9, %16                 ; 2 uses
  %18 = extractelement <2 x i32> %17, i64 0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !4
  %i.ex = add i32 %21, %.498.us.us.1
  %22 = extractelement <2 x i32> %17, i64 1
  %i.ey = sext i32 %22 to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = add i32 %i.ex, %i.fa                    ; 5 uses
  %i.fc = add nuw nsw i32 %.16297.us.us.1, 1      ; 2 uses
  %exitcond177.1.not = icmp eq i32 %i.fc, %i.bt
  br i1 %exitcond177.1.not, label %._crit_edge.us118.us.1, label %bb.e, !llvm.loop !53
end_hunk_0
begin_hunk_1_@computeBiPredSAD1:bb.a
bb.h:                                             ; preds = %bb.h, %.preheader.us.us
  %.498.us.us = phi i32 [ %.3115.us.us, %.preheader.us.us ], [ %i.ft, %bb.h ]
  %.16297.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.fu, %bb.h ]
  %i.fj = phi ptr [ %.lcssa99110111.us.us, %.preheader.us.us ], [ %i.fm, %bb.h ] ; 2 uses
  %i.fk = phi ptr [ %.lcssa100106112.us.us, %.preheader.us.us ], [ %i.fn, %bb.h ] ; 2 uses
  %i.fl = phi ptr [ %.lcssa101103113.us.us, %.preheader.us.us ], [ %i.fo, %bb.h ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %23 = load <2 x i16>, ptr %i.fj, align 2, !tbaa !40
  %24 = zext <2 x i16> %23 to <2 x i32>
  %25 = load <2 x i16>, ptr %i.fk, align 2, !tbaa !40
  %26 = zext <2 x i16> %25 to <2 x i32>
  %27 = load <2 x i16>, ptr %i.fl, align 2, !tbaa !40
  %28 = zext <2 x i16> %27 to <2 x i32>
  %29 = add nuw nsw <2 x i32> %26, splat (i32 1)
  %30 = add nuw nsw <2 x i32> %29, %28
  %31 = lshr <2 x i32> %30, splat (i32 1)
  %32 = sub nsw <2 x i32> %24, %31                ; 2 uses
  %33 = extractelement <2 x i32> %32, i64 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !4
  %i.fp = add i32 %36, %.498.us.us
  %37 = extractelement <2 x i32> %32, i64 1
  %i.fq = sext i32 %37 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.ft = add i32 %i.fp, %i.fs                    ; 5 uses
  %i.fu = add nuw nsw i32 %.16297.us.us, 1        ; 2 uses
  %exitcond177.not = icmp eq i32 %i.fu, %i.bt
  br i1 %exitcond177.not, label %._crit_edge.us118.us, label %bb.h, !llvm.loop !53
end_hunk_1
begin_hunk_2_@computeBiPredSSE1:bb.a
bb.e:                                             ; preds = %bb.e, %.preheader.us.us.1
  %.4104.us.us.1 = phi i32 [ %.3121.us.us.1, %.preheader.us.us.1 ], [ %i.fb, %bb.e ]
  %.168103.us.us.1 = phi i32 [ 0, %.preheader.us.us.1 ], [ %i.fc, %bb.e ]
  %i.er = phi ptr [ %.lcssa105116117.us.us.1, %.preheader.us.us.1 ], [ %i.eu, %bb.e ] ; 2 uses
  %i.es = phi ptr [ %.lcssa106112118.us.us.1, %.preheader.us.us.1 ], [ %i.ev, %bb.e ] ; 2 uses
  %i.et = phi ptr [ %.lcssa107109119.us.us.1, %.preheader.us.us.1 ], [ %i.ew, %bb.e ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %8 = load <2 x i16>, ptr %i.er, align 2, !tbaa !40
  %9 = zext <2 x i16> %8 to <2 x i32>
  %10 = load <2 x i16>, ptr %i.es, align 2, !tbaa !40
  %11 = zext <2 x i16> %10 to <2 x i32>
  %12 = load <2 x i16>, ptr %i.et, align 2, !tbaa !40
  %13 = zext <2 x i16> %12 to <2 x i32>
  %14 = add nuw nsw <2 x i32> %11, splat (i32 1)
  %15 = add nuw nsw <2 x i32> %14, %13
  %16 = lshr <2 x i32> %15, splat (i32 1)
  %17 = sub nsw <2 x i32> %9, %16                 ; 2 uses
  %18 = extractelement <2 x i32> %17, i64 0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !4
  %i.ex = add nsw i32 %21, %.4104.us.us.1
  %22 = extractelement <2 x i32> %17, i64 1
  %i.ey = sext i32 %22 to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = add nsw i32 %i.ex, %i.fa                ; 5 uses
  %i.fc = add nuw nsw i32 %.168103.us.us.1, 1     ; 2 uses
  %exitcond183.1.not = icmp eq i32 %i.fc, %i.bv
  br i1 %exitcond183.1.not, label %._crit_edge.us124.us.1, label %bb.e, !llvm.loop !87
end_hunk_2
begin_hunk_3_@computeBiPredSSE1:bb.a
bb.h:                                             ; preds = %bb.h, %.preheader.us.us
  %.4104.us.us = phi i32 [ %.3121.us.us, %.preheader.us.us ], [ %i.ft, %bb.h ]
  %.168103.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.fu, %bb.h ]
  %i.fj = phi ptr [ %.lcssa105116117.us.us, %.preheader.us.us ], [ %i.fm, %bb.h ] ; 2 uses
  %i.fk = phi ptr [ %.lcssa106112118.us.us, %.preheader.us.us ], [ %i.fn, %bb.h ] ; 2 uses
  %i.fl = phi ptr [ %.lcssa107109119.us.us, %.preheader.us.us ], [ %i.fo, %bb.h ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %23 = load <2 x i16>, ptr %i.fj, align 2, !tbaa !40
  %24 = zext <2 x i16> %23 to <2 x i32>
  %25 = load <2 x i16>, ptr %i.fk, align 2, !tbaa !40
  %26 = zext <2 x i16> %25 to <2 x i32>
  %27 = load <2 x i16>, ptr %i.fl, align 2, !tbaa !40
  %28 = zext <2 x i16> %27 to <2 x i32>
  %29 = add nuw nsw <2 x i32> %26, splat (i32 1)
  %30 = add nuw nsw <2 x i32> %29, %28
  %31 = lshr <2 x i32> %30, splat (i32 1)
  %32 = sub nsw <2 x i32> %24, %31                ; 2 uses
  %33 = extractelement <2 x i32> %32, i64 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !4
  %i.fp = add nsw i32 %36, %.4104.us.us
  %37 = extractelement <2 x i32> %32, i64 1
  %i.fq = sext i32 %37 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.ft = add nsw i32 %i.fp, %i.fs                ; 5 uses
  %i.fu = add nuw nsw i32 %.168103.us.us, 1       ; 2 uses
  %exitcond183.not = icmp eq i32 %i.fu, %i.bv
  br i1 %exitcond183.not, label %._crit_edge.us124.us, label %bb.h, !llvm.loop !87
end_hunk_3
