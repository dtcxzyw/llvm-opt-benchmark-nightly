inline.NumInlined: 375
inline.NumDeleted: 64
begin_hunk_0_@combinations_next:bb.a
  br i1 %i.cf, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.critedge.i
  %1 = shl i64 %i.i, 3
  %2 = add i64 %1, -8
  %i.cg = shl i64 %indvar, 3
  %3 = sub i64 %2, %i.cg
  %scevgep = getelementptr i8, ptr %i.d, i64 %3
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.ch = add i64 %indvar, -1
  %xtraiter = and i64 %indvar, 3                  ; 2 uses
end_hunk_0
