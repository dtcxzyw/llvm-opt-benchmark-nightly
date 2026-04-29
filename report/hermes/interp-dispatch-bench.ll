inline.NumInlined: 1651
inline.NumDeleted: 1097
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 4 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %2 = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.c, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.u, i64 %offset.idx ; 2 uses
  %offset.idx34 = shl i64 %index, 3
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %offset.idx34 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.ai = getelementptr i8, ptr %next.gep35, i64 16
end_hunk_0
