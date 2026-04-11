begin_hunk_0_@hypre_SemiInterp:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
end_hunk_0
begin_hunk_1_@hypre_SemiInterp:bb.a

.preheader542:                                    ; preds = %._crit_edge, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not = icmp eq i32 %i.i, 0
end_hunk_1
begin_hunk_2_@hypre_SemiInterp:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1444.in = phi ptr [ %5, %bb.l ], [ %4, %bb.k ]
  %.1444 = load ptr, ptr %.1444.in, align 8, !tbaa !25 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1444, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !60 ; 2 uses
end_hunk_2
