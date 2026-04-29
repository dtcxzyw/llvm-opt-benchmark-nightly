inline.NumInlined: 6631
inline.NumDeleted: 2675
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  br i1 %or.cond740, label %.lr.ph.i.i.i103.preheader, label %vector.ph653

vector.ph653:                                     ; preds = %.lr.ph.i101
  %n.vec655 = and i64 %i.bhb, 9223372036854775800 ; 3 uses
  %i.bhe = shl i64 %n.vec655, 2                   ; 2 uses
  %i.bhf = getelementptr i8, ptr %i.bgk, i64 %i.bhe
  %i.bhg = getelementptr i8, ptr %i.bgy, i64 %i.bhe
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph653
  %index657 = phi i64 [ 0, %vector.ph653 ], [ %index.next664, %vector.body656 ] ; 2 uses
  %offset.idx658 = shl i64 %index657, 2           ; 2 uses
  %next.gep659 = getelementptr i8, ptr %i.bgk, i64 %offset.idx658 ; 2 uses
  %next.gep661 = getelementptr i8, ptr %i.bgy, i64 %offset.idx658 ; 2 uses
  %i.bhh = getelementptr i8, ptr %next.gep659, i64 16
  %wide.load662 = load <4 x i32>, ptr %next.gep659, align 4, !noalias !482
  %wide.load663 = load <4 x i32>, ptr %i.bhh, align 4, !noalias !482
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  br i1 %or.cond742, label %.lr.ph.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i74
  %n.vec = and i64 %i.bkq, 4611686018427387900    ; 3 uses
  %i.bkt = shl i64 %n.vec, 3                      ; 2 uses
  %i.bku = getelementptr i8, ptr %i.bjz, i64 %i.bkt
  %i.bkv = getelementptr i8, ptr %i.bkn, i64 %i.bkt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bjz, i64 %offset.idx ; 2 uses
  %next.gep646 = getelementptr i8, ptr %i.bkn, i64 %offset.idx ; 2 uses
  %i.bkw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !501
  %wide.load647 = load <2 x i64>, ptr %i.bkw, align 8, !noalias !501
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader344, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.0115.0198, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %offset.idx ; 2 uses
  %next.gep336 = getelementptr i8, ptr %.sroa.0115.0198, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.bq = getelementptr i8, ptr %next.gep336, i64 16
end_hunk_2
