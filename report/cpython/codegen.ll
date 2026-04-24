inline.NumInlined: 724
inline.NumDeleted: 94
begin_hunk_0_@codegen_addcompare:bb.a
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.a = phi i32 [ 5, %bb.f ], [ 3, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 4, %bb.e ], [ 2, %bb.a ] ; 2 uses
  %i.i = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #11
  %4 = shl nuw nsw i32 %.0.a, 5
  %5 = zext nneg i32 %.0.a to i64
  %i.j = getelementptr [4 x i8], ptr @compare_masks, i64 %5
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = or i32 %i.k, %4
  %i.m = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.i, i32 noundef 56, i32 noundef %i.l, i64 %1, i64 %2) #11
  br label %bb.m

end_hunk_0
begin_hunk_1_@codegen_call:bb.a
  br i1 %.not149.i, label %bb.cf, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar, %bb.as, %bb.at, %bb.au
  %.ph = phi i1 [ false, %bb.au ], [ false, %bb.ar ], [ true, %bb.at ], [ false, %bb.as ], [ false, %bb.av ] ; 2 uses
  %.ph89 = phi i1 [ true, %bb.au ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.as ], [ false, %bb.av ] ; 2 uses
  %.ph90 = phi i1 [ false, %bb.au ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.as ], [ true, %bb.av ] ; 3 uses
  %or.cond5.i.ph = phi i1 [ false, %bb.au ], [ true, %bb.ar ], [ false, %bb.at ], [ true, %bb.as ], [ false, %bb.av ]
  %.0141.i.ph = phi i32 [ 5, %bb.au ], [ 3, %bb.ar ], [ 2, %bb.at ], [ 4, %bb.as ], [ 6, %bb.av ]
  %.0140.i.ph = phi ptr [ null, %bb.au ], [ @_Py_TrueStruct, %bb.ar ], [ null, %bb.at ], [ @_Py_FalseStruct, %bb.as ], [ null, %bb.av ]
  %.0139.i.ph = phi i32 [ -1, %bb.au ], [ 103, %bb.ar ], [ -1, %bb.at ], [ 100, %bb.as ], [ -1, %bb.av ]
  %i.ho = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #11, !inline_history !290
end_hunk_1
