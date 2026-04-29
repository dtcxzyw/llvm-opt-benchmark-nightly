inline.NumInlined: 1816
inline.NumDeleted: 629
begin_hunk_0_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader341, label %vector.ph277

vector.ph277:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec279 = and i64 %i.cj, 4611686018427387900  ; 4 uses
  %i.cl = shl i64 %n.vec279, 3
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.cl
  %18 = shl i64 %n.vec279, 3
  %i.cn = getelementptr i8, ptr %i.bt, i64 %18
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph277
  %index281 = phi i64 [ 0, %vector.ph277 ], [ %index.next288, %vector.body280 ] ; 3 uses
  %offset.idx282 = shl i64 %index281, 3
  %next.gep283 = getelementptr i8, ptr %i.ce, i64 %offset.idx282 ; 2 uses
  %offset.idx284 = shl i64 %index281, 3
  %next.gep285 = getelementptr i8, ptr %i.bt, i64 %offset.idx284 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.co = getelementptr i8, ptr %next.gep285, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a
  br i1 %or.cond333, label %.lr.ph.i.i.i.i.i.preheader337, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec319 = and i64 %i.dw, 4611686018427387900  ; 4 uses
  %i.dy = shl i64 %n.vec319, 3
  %i.dz = getelementptr i8, ptr %i.dq, i64 %i.dy  ; 2 uses
  %19 = shl i64 %n.vec319, 3
  %i.ea = getelementptr i8, ptr %i.df, i64 %19
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph317
  %index321 = phi i64 [ 0, %vector.ph317 ], [ %index.next328, %vector.body320 ] ; 3 uses
  %offset.idx322 = shl i64 %index321, 3
  %next.gep323 = getelementptr i8, ptr %i.dq, i64 %offset.idx322 ; 2 uses
  %offset.idx324 = shl i64 %index321, 3
  %next.gep325 = getelementptr i8, ptr %i.df, i64 %offset.idx324 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.eb = getelementptr i8, ptr %next.gep325, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a
  br i1 %or.cond334, label %.lr.ph.i.i.i.i.i101.preheader338, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i.i.i.i101.preheader
  %n.vec299 = and i64 %i.fk, 4611686018427387900  ; 4 uses
  %i.fm = shl i64 %n.vec299, 3
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm  ; 2 uses
  %20 = shl i64 %n.vec299, 3
  %i.fo = getelementptr i8, ptr %i.et, i64 %20
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph297
  %index301 = phi i64 [ 0, %vector.ph297 ], [ %index.next308, %vector.body300 ] ; 3 uses
  %offset.idx302 = shl i64 %index301, 3
  %next.gep303 = getelementptr i8, ptr %i.fe, i64 %offset.idx302 ; 2 uses
  %offset.idx304 = shl i64 %index301, 3
  %next.gep305 = getelementptr i8, ptr %i.et, i64 %offset.idx304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fp = getelementptr i8, ptr %next.gep305, i64 16
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a
  br i1 %or.cond335, label %.lr.ph.i.i.i.i115.preheader344, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i115.preheader
  %n.vec = and i64 %i.hg, 4611686018427387900     ; 4 uses
  %i.hi = shl i64 %n.vec, 3
  %i.hj = getelementptr i8, ptr %i.hb, i64 %i.hi
  %21 = shl i64 %n.vec, 3
  %i.hk = getelementptr i8, ptr %i.gq, i64 %21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hb, i64 %offset.idx ; 2 uses
  %offset.idx249 = shl i64 %index, 3
  %next.gep250 = getelementptr i8, ptr %i.gq, i64 %offset.idx249 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.hl = getelementptr i8, ptr %next.gep250, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a
  br i1 %or.cond336, label %.lr.ph.i.i.i.i.i142.preheader342, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph.i.i.i.i.i142.preheader
  %n.vec259 = and i64 %i.kf, 4611686018427387900  ; 4 uses
  %i.kh = shl i64 %n.vec259, 3
  %i.ki = getelementptr i8, ptr %i.jz, i64 %i.kh  ; 2 uses
  %22 = shl i64 %n.vec259, 3
  %i.kj = getelementptr i8, ptr %i.jo, i64 %22
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph257
  %index261 = phi i64 [ 0, %vector.ph257 ], [ %index.next268, %vector.body260 ] ; 3 uses
  %offset.idx262 = shl i64 %index261, 3
  %next.gep263 = getelementptr i8, ptr %i.jz, i64 %offset.idx262 ; 2 uses
  %offset.idx264 = shl i64 %index261, 3
  %next.gep265 = getelementptr i8, ptr %i.jo, i64 %offset.idx264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.kk = getelementptr i8, ptr %next.gep265, i64 16
end_hunk_4
begin_hunk_5_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 4 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %2 = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.c, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx12 = shl i64 %index, 3
  %next.gep13 = getelementptr i8, ptr %i.c, i64 %offset.idx12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ai = getelementptr i8, ptr %next.gep13, i64 16
end_hunk_5
