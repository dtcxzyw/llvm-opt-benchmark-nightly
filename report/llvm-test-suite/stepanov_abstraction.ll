begin_hunk_0
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %i.j = load double, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.k = shl nuw i64 %.0, 1
  %i.l = add nuw i64 %i.k, 2                      ; 3 uses
  %i.m = icmp slt i64 %i.l, %i.d
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  %i.j = load double, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.k = shl nuw i64 %.0, 1
  %i.l = add nuw i64 %i.k, 2                      ; 3 uses
  %i.m = icmp slt i64 %i.l, %i.d
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

end_hunk_1
begin_hunk_2
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %.sroa.03.0.copyload = load double, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw i64 %i.j, 2                      ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

end_hunk_2
begin_hunk_3
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  %.sroa.05.0.copyload = load double, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw i64 %i.j, 2                      ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

end_hunk_3
begin_hunk_4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %.sroa.03.0.copyload = load double, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw i64 %i.j, 2                      ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

end_hunk_4
begin_hunk_5
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  %.sroa.05.0.copyload = load double, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw i64 %i.j, 2                      ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

end_hunk_5
