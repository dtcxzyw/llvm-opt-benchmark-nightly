inline.NumInlined: 444
inline.NumDeleted: 284
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_M_default_appendEm:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2305843009213693944     ; 4 uses
  %i.ag = shl i64 %n.vec, 4
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %2 = shl i64 %n.vec, 4
  %i.ai = getelementptr i8, ptr %i.c, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 4                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %offset.idx
  %3 = getelementptr i8, ptr %i.u, i64 %offset.idx
  %next.gep48.a = getelementptr i8, ptr %3, i64 64
  %offset.idx49 = shl i64 %index, 4               ; 2 uses
  %next.gep50.a = getelementptr i8, ptr %i.c, i64 %offset.idx49 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.c, i64 %offset.idx49
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %wide.vec = load <8 x ptr>, ptr %next.gep50.a, align 8, !tbaa !33, !alias.scope !134, !noalias !131
  %wide.vec53 = load <8 x ptr>, ptr %next.gep51, align 8, !tbaa !33, !alias.scope !134, !noalias !131
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !33, !alias.scope !131, !noalias !134
  store <8 x ptr> %wide.vec53, ptr %next.gep48.a, align 8, !tbaa !33, !alias.scope !131, !noalias !134
  store <8 x ptr> zeroinitializer, ptr %next.gep50.a, align 8, !tbaa !33, !alias.scope !134, !noalias !131
  store <8 x ptr> zeroinitializer, ptr %next.gep51, align 8, !tbaa !33, !alias.scope !134, !noalias !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
end_hunk_0
