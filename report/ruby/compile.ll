inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@compile_builtin_mandatory_only_method:bb.a
  br i1 %i.ap, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ], [ %i.v, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aq = icmp slt i32 %.0.lcssa, %i.o
  br i1 %i.aq, label %.lr.ph44, label %._crit_edge

end_hunk_0
begin_hunk_1_@compile_builtin_mandatory_only_method:bb.a
vector.ph6:                                       ; preds = %vector.memcheck2
  %n.vec8 = and i64 %i.aw, -4                     ; 3 uses
  %i.bp = add nsw i64 %n.vec8, %i.av
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph6
  %index10 = phi i64 [ 0, %vector.ph6 ], [ %index.next14, %vector.body9 ] ; 2 uses
  %5 = add i64 %index10, %i.av                    ; 2 uses
  %i.bq = trunc i64 %5 to i32
  %.reass = add i32 %i.l, %i.bq
  %i.br = sext i32 %.reass to i64
  %i.bs = getelementptr [8 x i8], ptr %i.as, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %wide.load12.a = load <2 x i64>, ptr %i.bs, align 8, !tbaa !36
  %wide.load13 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !36
  %gep = getelementptr [8 x i8], ptr %i.au, i64 %5 ; 2 uses
  %i.bu = getelementptr i8, ptr %gep, i64 16
  store <2 x i64> %wide.load12.a, ptr %gep, align 8, !tbaa !36
  store <2 x i64> %wide.load13, ptr %i.bu, align 8, !tbaa !36
end_hunk_1
