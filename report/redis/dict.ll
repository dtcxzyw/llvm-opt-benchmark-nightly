inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@dictCombineStats:vector.memcheck
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108  ; 32 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 400
  %scevgep22 = getelementptr i8, ptr %i.u, i64 400
  %bound0 = icmp uge ptr %i.w, %scevgep22
  %bound1 = icmp uge ptr %i.u, %scevgep
  %found.conflict.not = or i1 %bound0, %bound1    ; 2 uses
  br i1 %found.conflict.not, label %vector.body, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %vector.memcheck, %vector.body
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 48, %vector.body ]
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
end_hunk_0
begin_hunk_1_@dictCombineStats:vector.memcheck
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !114

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol
  br i1 %found.conflict.not, label %.unr-lcssa, label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
end_hunk_1
