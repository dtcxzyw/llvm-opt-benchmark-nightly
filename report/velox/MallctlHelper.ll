inline.NumInlined: 494
inline.NumDeleted: 248
begin_hunk_0_@_ZNK5folly11FormatValueIivE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_:bb.a
  br i1 %.not.i, label %.preheader.i.preheader, label %.preheader19.i, !llvm.loop !115

.preheader.i.preheader:                           ; preds = %.preheader19.i
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.preheader19.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %lsr.iv127 = phi i64 [ %lsr.iv.lcssa, %.preheader.i.preheader ], [ %lsr.iv.next128, %.preheader.i ] ; 2 uses
  %scevgep129 = getelementptr i8, ptr %i.b, i64 %lsr.iv127
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 1
  %i.fb = load i8, ptr %scevgep130, align 1, !tbaa !26
end_hunk_0
