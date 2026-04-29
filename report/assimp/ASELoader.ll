inline.NumInlined: 2170
inline.NumDeleted: 1074
begin_hunk_0_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
  br i1 %found.conflict314, label %.lr.ph.i.i.i.i.i.i.preheader348, label %vector.ph317

vector.ph317:                                     ; preds = %vector.memcheck309
  %n.vec319 = and i64 %i.nh, 9223372036854775804  ; 4 uses
  %i.ob = and i64 %i.nh, 3
  %i.oc = shl i64 %n.vec319, 3
  %i.od = getelementptr i8, ptr %i.nk, i64 %i.oc
  %7 = shl i64 %n.vec319, 3
  %i.oe = getelementptr i8, ptr %i.nd, i64 %7
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph317
  %index321 = phi i64 [ 0, %vector.ph317 ], [ %index.next336, %vector.body320 ] ; 3 uses
  %offset.idx322 = shl i64 %index321, 3           ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.nk, i64 %offset.idx322
  %8 = getelementptr i8, ptr %i.nk, i64 %offset.idx322
  %next.gep324 = getelementptr i8, ptr %8, i64 16
  %offset.idx325 = shl i64 %index321, 3           ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.nd, i64 %offset.idx325
  %i.of = getelementptr i8, ptr %i.nd, i64 %offset.idx325
  %next.gep327 = getelementptr i8, ptr %i.of, i64 16
  %wide.vec328342 = load <4 x float>, ptr %next.gep326, align 4, !alias.scope !24
  %wide.vec331343 = load <4 x float>, ptr %next.gep327, align 4, !alias.scope !24
  store <4 x float> %wide.vec328342, ptr %next.gep323, align 4, !alias.scope !27, !noalias !24
  store <4 x float> %wide.vec331343, ptr %next.gep324, align 4, !alias.scope !27, !noalias !24
  %index.next336 = add nuw i64 %index321, 4       ; 2 uses
  %i.og = icmp eq i64 %index.next336, %n.vec319
  br i1 %i.og, label %middle.block337, label %vector.body320, !llvm.loop !29
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i26.i.preheader347, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck283
  %n.vec289 = and i64 %i.op, 9223372036854775804  ; 4 uses
  %i.or = and i64 %i.op, 3
  %i.os = shl i64 %n.vec289, 3
  %i.ot = getelementptr i8, ptr %i.nk, i64 %i.os
  %9 = shl i64 %n.vec289, 3
  %i.ou = getelementptr i8, ptr %i.nd, i64 %9
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph287
  %index291 = phi i64 [ 0, %vector.ph287 ], [ %index.next303, %vector.body290 ] ; 3 uses
  %offset.idx292 = shl i64 %index291, 3           ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.nk, i64 %offset.idx292
  %10 = getelementptr i8, ptr %i.nk, i64 %offset.idx292
  %next.gep294.a = getelementptr i8, ptr %10, i64 16
  %offset.idx295 = shl i64 %index291, 3           ; 2 uses
  %next.gep296 = getelementptr i8, ptr %i.nd, i64 %offset.idx295
  %i.ov = getelementptr i8, ptr %i.nd, i64 %offset.idx295
  %next.gep297 = getelementptr i8, ptr %i.ov, i64 16
  %wide.vec344 = load <4 x float>, ptr %next.gep296, align 4, !alias.scope !33
  %wide.vec299345 = load <4 x float>, ptr %next.gep297, align 4, !alias.scope !33
  store <4 x float> %wide.vec344, ptr %next.gep293, align 4, !alias.scope !36, !noalias !33
  store <4 x float> %wide.vec299345, ptr %next.gep294.a, align 4, !alias.scope !36, !noalias !33
  %index.next303 = add nuw i64 %index291, 4       ; 2 uses
  %i.ow = icmp eq i64 %index.next303, %n.vec289
  br i1 %i.ow, label %middle.block304, label %vector.body290, !llvm.loop !38
end_hunk_1
begin_hunk_2_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader346, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pr, 4611686018427387900     ; 4 uses
  %i.pu = shl i64 %n.vec, 3
  %i.pv = getelementptr i8, ptr %i.pg, i64 %i.pu
  %11 = shl i64 %n.vec, 3
  %i.pw = getelementptr i8, ptr %i.pk, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.pg, i64 %offset.idx ; 2 uses
  %offset.idx279 = shl i64 %index, 3
  %next.gep280 = getelementptr i8, ptr %i.pk, i64 %offset.idx279 ; 2 uses
  %i.px = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep280, align 4
  %wide.load281 = load <2 x i64>, ptr %i.px, align 4
end_hunk_2
begin_hunk_3_@_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader706, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.lm, 4611686018427387900     ; 4 uses
  %i.lo = shl i64 %n.vec, 3
  %i.lp = getelementptr i8, ptr %i.le, i64 %i.lo  ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.lq = getelementptr i8, ptr %i.kt, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.le, i64 %offset.idx ; 2 uses
  %offset.idx678 = shl i64 %index, 3
  %next.gep679 = getelementptr i8, ptr %i.kt, i64 %offset.idx678 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.lr = getelementptr i8, ptr %next.gep679, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE:bb.a
  br i1 %or.cond702, label %.lr.ph.i.i.i.i.i319.preheader704, label %vector.ph686

vector.ph686:                                     ; preds = %.lr.ph.i.i.i.i.i319.preheader
  %n.vec688 = and i64 %i.aky, 4611686018427387900 ; 4 uses
  %i.ala = shl i64 %n.vec688, 3
  %i.alb = getelementptr i8, ptr %i.aks, i64 %i.ala ; 2 uses
  %5 = shl i64 %n.vec688, 3
  %i.alc = getelementptr i8, ptr %i.akh, i64 %5
  br label %vector.body689

vector.body689:                                   ; preds = %vector.body689, %vector.ph686
  %index690 = phi i64 [ 0, %vector.ph686 ], [ %index.next697, %vector.body689 ] ; 3 uses
  %offset.idx691 = shl i64 %index690, 3
  %next.gep692 = getelementptr i8, ptr %i.aks, i64 %offset.idx691 ; 2 uses
  %offset.idx693 = shl i64 %index690, 3
  %next.gep694 = getelementptr i8, ptr %i.akh, i64 %offset.idx693 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ald = getelementptr i8, ptr %next.gep694, i64 16
end_hunk_4
