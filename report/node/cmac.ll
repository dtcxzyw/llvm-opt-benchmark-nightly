begin_hunk_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 31                         ; 7 uses
  %i.l = zext nneg i32 %i.k to i64                ; 29 uses
  %i.m = icmp samesign ult i32 %i.k, 17
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 6 uses
end_hunk_0
begin_hunk_1
  br i1 %.not.i96, label %.preheader88.us.preheader, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph
  %i.at = and i64 %i.l, 24                        ; 2 uses
  %i.au = add nsw i64 %i.at, -8
  %i.av = or disjoint i64 %i.at, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.av, i64 %i.l)
  %i.aw = sub nsw i64 %umax, %i.au                ; 2 uses
  %3 = and i64 %i.l, 24                           ; 2 uses
  %4 = or disjoint i64 %3, 1
  %umax174 = call i64 @llvm.umax.i64(i64 %4, i64 %i.l) ; 2 uses
  %i.ax = sub nsw i64 %umax174, %3                ; 6 uses
  %.not.i = icmp samesign ult i32 %i.k, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %min.iters.check175 = icmp ult i64 %i.ax, 4
end_hunk_1
