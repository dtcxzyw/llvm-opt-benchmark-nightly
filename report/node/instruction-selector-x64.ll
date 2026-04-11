inline.NumInlined: 9610
inline.NumDeleted: 1506
begin_hunk_0_@_ZN2v88internal8compiler12_GLOBAL__N_112VisitCompareEPNS1_19InstructionSelectorEjNS1_18InstructionOperandES5_PNS1_17FlagsContinuationE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 18
  br i1 %i.f, label %bb.c, label %7

bb.c:                                             ; preds = %bb.b
  store i8 19, ptr %i.d, align 4
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 132
  br label %bb.d

7:                                                ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 136
  br label %bb.d

bb.d:                                             ; preds = %7, %bb.c
  %.sroa.0.0.copyload.i27.sink39.in = phi ptr [ %8, %7 ], [ %6, %bb.c ]
  %.sink38 = phi i64 [ 132, %7 ], [ 136, %bb.c ]
  %.sroa.0.0.copyload.i27.sink39 = load i32, ptr %.sroa.0.0.copyload.i27.sink39.in, align 4 ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i27.sink39) #26
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i27.sink39) #26
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %.sink38
end_hunk_0
