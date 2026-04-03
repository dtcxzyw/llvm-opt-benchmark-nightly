begin_hunk_0
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw i64 %i.b, %.sroa.05.020.i        ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !3, !noalias !8, !noundef !9
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !9 ; 2 uses
  %i.g = sub i64 %.sroa.01.021.i, %i.b            ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw i64 %i.b, %.sroa.05.020.i        ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !10, !noalias !15, !noundef !9
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !9 ; 2 uses
  %i.g = sub i64 %.sroa.01.021.i, %i.b            ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_1
