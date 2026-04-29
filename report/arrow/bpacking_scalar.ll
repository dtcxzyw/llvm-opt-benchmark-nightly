inline.NumInlined: 2245
inline.NumDeleted: 444
begin_hunk_0_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  br i1 %found.conflict, label %.lr.ph.i28.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 536870908               ; 3 uses
  %i.as = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.at = getelementptr i8, ptr %.026.lcssa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %4 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %4 ; 2 uses
  %5 = and i64 %index, 2305843009213693948
  %i.au = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !alias.scope !320
  %wide.load42 = load <2 x i8>, ptr %i.av, align 1, !alias.scope !320
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader44

.lr.ph.i28.preheader44:                           ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader ], [ %i.as, %middle.block ]
  %.024.i.ph = phi ptr [ %.026.lcssa, %vector.memcheck ], [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i28

end_hunk_1
