inline.NumInlined: 1651
inline.NumDeleted: 1097
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %offset.idx ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.ai = getelementptr i8, ptr %next.gep35, i64 16
end_hunk_0
