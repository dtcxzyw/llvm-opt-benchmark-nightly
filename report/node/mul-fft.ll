inline.NumInlined: 151
inline.NumDeleted: 43
begin_hunk_0_@_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj:bb.a
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph340
  %index344 = phi i64 [ 0, %vector.ph340 ], [ %index.next348, %vector.body343 ] ; 2 uses
  %5 = or disjoint i64 %index344, 1               ; 2 uses
  %6 = trunc i64 %5 to i32
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %5 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load = load <2 x i64>, ptr %i.gt, align 8
  %wide.load347 = load <2 x i64>, ptr %i.gu, align 8
  %i.gv = add i32 %.0112, %6
  %i.gw = zext i32 %i.gv to i64
end_hunk_0
