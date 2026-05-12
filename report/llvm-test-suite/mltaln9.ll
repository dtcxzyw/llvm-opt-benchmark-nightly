inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@calcimportance:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 8589934588              ; 3 uses
  %i.cr = load double, ptr %i.ec, align 8, !tbaa !24, !alias.scope !450
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = add nsw i64 %n.vec, %i.ch
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.ch
  br label %vector.body

end_hunk_0
