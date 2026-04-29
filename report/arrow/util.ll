inline.NumInlined: 6631
inline.NumDeleted: 2675
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  br i1 %or.cond740, label %.lr.ph.i.i.i103.preheader, label %vector.ph653

vector.ph653:                                     ; preds = %.lr.ph.i101
  %n.vec655 = and i64 %i.bhb, 9223372036854775800 ; 4 uses
  %i.bhe = shl i64 %n.vec655, 2
  %i.bhf = getelementptr i8, ptr %i.bgk, i64 %i.bhe
  %65 = shl i64 %n.vec655, 2
  %i.bhg = getelementptr i8, ptr %i.bgy, i64 %65
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph653
  %index657 = phi i64 [ 0, %vector.ph653 ], [ %index.next664, %vector.body656 ] ; 3 uses
  %offset.idx658 = shl i64 %index657, 2
  %next.gep659 = getelementptr i8, ptr %i.bgk, i64 %offset.idx658 ; 2 uses
  %offset.idx660 = shl i64 %index657, 2
  %next.gep661 = getelementptr i8, ptr %i.bgy, i64 %offset.idx660 ; 2 uses
  %i.bhh = getelementptr i8, ptr %next.gep659, i64 16
  %wide.load662 = load <4 x i32>, ptr %next.gep659, align 4, !noalias !482
  %wide.load663 = load <4 x i32>, ptr %i.bhh, align 4, !noalias !482
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  br i1 %or.cond742, label %.lr.ph.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i74
  %n.vec = and i64 %i.bkq, 4611686018427387900    ; 4 uses
  %i.bkt = shl i64 %n.vec, 3
  %i.bku = getelementptr i8, ptr %i.bjz, i64 %i.bkt
  %66 = shl i64 %n.vec, 3
  %i.bkv = getelementptr i8, ptr %i.bkn, i64 %66
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bjz, i64 %offset.idx ; 2 uses
  %offset.idx645 = shl i64 %index, 3
  %next.gep646 = getelementptr i8, ptr %i.bkn, i64 %offset.idx645 ; 2 uses
  %i.bkw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !501
  %wide.load647 = load <2 x i64>, ptr %i.bkw, align 8, !noalias !501
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader344, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 4 uses
  %i.bn = shl i64 %n.vec, 3
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn  ; 2 uses
  %3 = shl i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %.sroa.0115.0198, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.be, i64 %offset.idx ; 2 uses
  %offset.idx335 = shl i64 %index, 3
  %next.gep336 = getelementptr i8, ptr %.sroa.0115.0198, i64 %offset.idx335 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.bq = getelementptr i8, ptr %next.gep336, i64 16
end_hunk_2
