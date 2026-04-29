inline.NumInlined: 22183
inline.NumDeleted: 7890
begin_hunk_0_@_ZN6google8protobuf14DescriptorPool6Tables9AddSymbolESt17basic_string_viewIcSt11char_traitsIcEENS0_6SymbolE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.da, 4611686018427387900     ; 4 uses
  %i.dc = shl i64 %n.vec, 3
  %i.dd = getelementptr i8, ptr %i.cu, i64 %i.dc  ; 2 uses
  %5 = shl i64 %n.vec, 3
  %i.de = getelementptr i8, ptr %i.cj, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cu, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 3
  %next.gep29 = getelementptr i8, ptr %i.cj, i64 %offset.idx28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.df = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf14DescriptorPool6Tables13AllocateBytesEi:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 4 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.k, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %offset.idx ; 2 uses
  %offset.idx14 = shl i64 %index, 3
  %next.gep15 = getelementptr i8, ptr %i.k, i64 %offset.idx14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.ai = getelementptr i8, ptr %next.gep15, i64 16
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_default_appendEm:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i37.preheader76, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i.i37.preheader
  %n.vec63 = and i64 %i.an, 4611686018427387900   ; 4 uses
  %i.ap = shl i64 %n.vec63, 3
  %i.aq = getelementptr i8, ptr %i.aa, i64 %i.ap
  %2 = shl i64 %n.vec63, 3
  %i.ar = getelementptr i8, ptr %i.c, i64 %2
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body64 ] ; 3 uses
  %offset.idx66 = shl i64 %index65, 3
  %next.gep67 = getelementptr i8, ptr %i.aa, i64 %offset.idx66 ; 2 uses
  %offset.idx68 = shl i64 %index65, 3
  %next.gep69 = getelementptr i8, ptr %i.c, i64 %offset.idx68 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.as = getelementptr i8, ptr %next.gep69, i64 16
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_default_appendEm:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader45, label %vector.ph

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
  %offset.idx41 = shl i64 %index, 3
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %offset.idx41 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  %i.ai = getelementptr i8, ptr %next.gep42, i64 16
end_hunk_3
