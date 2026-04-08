inline.NumInlined: 74
begin_hunk_0_@dfst:bb.a
  %.pre-phi = phi i64 [ %.pre268, %makect.exit.thread.._crit_edge_crit_edge ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %.lr.ph ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi ; 7 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !8
  %i.di = sub nuw nsw i32 %0, %i.be
  %5 = zext nneg i32 %i.di to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %5 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !8
  %i.dl = fsub double %i.dh, %i.dk
  store double %i.dl, ptr %2, align 8, !tbaa !8
end_hunk_0
