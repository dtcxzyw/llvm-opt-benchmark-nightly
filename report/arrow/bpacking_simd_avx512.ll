inline.NumInlined: 10913
inline.NumDeleted: 449
begin_hunk_0_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 536870896               ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.at = getelementptr i8, ptr %.026.lcssa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %4 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %4 ; 4 uses
  %5 = and i64 %index, 2305843009213693936
  %i.au = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %5 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.an, 536870908             ; 3 uses
  %i.bg = shl nuw nsw i64 %n.vec48, 3             ; 2 uses
  %i.bh = getelementptr i8, ptr %.026.lcssa, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %6 = shl i64 %index49, 3
  %next.gep49 = getelementptr i8, ptr %.026.lcssa, i64 %6
  %7 = and i64 %index49, 2305843009213693948
  %i.bi = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %7
  %wide.load51 = load <4 x i8>, ptr %i.bi, align 1, !alias.scope !236
  %i.bj = zext <4 x i8> %wide.load51 to <4 x i64>
  store <4 x i64> %i.bj, ptr %next.gep49, align 8, !tbaa !19, !alias.scope !239, !noalias !236
  %index.next52 = add nuw i64 %index49, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !243
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  br i1 %cmp.n53, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.024.i.ph = phi ptr [ %.026.lcssa, %iter.check ], [ %.026.lcssa, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i28

end_hunk_2
