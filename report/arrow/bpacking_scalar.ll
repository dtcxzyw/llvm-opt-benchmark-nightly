inline.NumInlined: 2245
inline.NumDeleted: 444
begin_hunk_0_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  br i1 %found.conflict, label %.lr.ph.i28.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 536870908               ; 4 uses
  %4 = shl nuw nsw i64 %n.vec, 3
  %i.as = shl nuw nsw i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %.026.lcssa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = and i64 %index, 2305843009213693948
  %offset.idx41 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %offset.idx41 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %offset.idx ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !alias.scope !320
  %wide.load42 = load <2 x i8>, ptr %i.av, align 1, !alias.scope !320
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader44

.lr.ph.i28.preheader44:                           ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader ], [ %4, %middle.block ]
  %.024.i.ph = phi ptr [ %.026.lcssa, %vector.memcheck ], [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i28

end_hunk_1
