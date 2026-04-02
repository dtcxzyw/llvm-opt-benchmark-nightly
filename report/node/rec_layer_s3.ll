begin_hunk_0
  %.0297 = phi i64 [ %i.ei, %bb.at ], [ %.1298, %bb.bc ]
  %.1292 = phi ptr [ %.0291.ph491, %bb.at ], [ %i.er, %bb.bc ] ; 2 uses
  %i.ej = sub i64 %4, %.0299
  %i.ek = getelementptr inbounds nuw i8, ptr %.0308, i64 32 ; 5 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !24
  %. = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.el) ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0308, i64 16
end_hunk_0
begin_hunk_1
  %i.fe = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ff = add i64 %i.fe, 1
  store i64 %i.ff, ptr %i.av, align 8, !tbaa !81
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
end_hunk_1
