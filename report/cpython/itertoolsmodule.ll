inline.NumInlined: 375
inline.NumDeleted: 64
begin_hunk_0_@combinations_next:bb.a
  br i1 %i.cf, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.critedge.i
  %1 = sub i64 %i.i, %indvar
  %i.cg = shl i64 %1, 3
  %2 = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep = getelementptr i8, ptr %2, i64 -8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.ch = add i64 %indvar, -1
  %xtraiter = and i64 %indvar, 3                  ; 2 uses
end_hunk_0
