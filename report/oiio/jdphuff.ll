inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@decode_mcu_AC_first:bb.a
  br label %bb.aa

bb.u:                                             ; preds = %bb.p
  switch i32 %i.cc, label %bb.w [
    i32 15, label %bb.v
    i32 0, label %.loopexit
  ]

bb.v:                                             ; preds = %bb.u
  %i.dc = add nsw i32 %.0106148, 15
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.dd = icmp slt i32 %.4.ph, %i.cc
  br i1 %i.dd, label %bb.x, label %bb.z

end_hunk_0
begin_hunk_1_@decode_mcu_AC_first:bb.a
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 %.6102, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %notmask166 = shl nsw i32 -1, %i.cc
  %3 = xor i32 %notmask166, -1                    ; 2 uses
  %4 = and i32 %3, %i.dk
  %i.dl = add nuw i32 %4, %3
  br label %.loopexit

bb.aa:                                            ; preds = %bb.t, %bb.v
end_hunk_1
begin_hunk_2_@decode_mcu_AC_first:bb.a
  %.not127.not = icmp slt i32 %.1107, %i.d
  br i1 %.not127.not, label %bb.i, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %bb.aa, %bb.u, %bb.h, %bb.z
  %.1109 = phi i32 [ 0, %bb.h ], [ %i.dl, %bb.z ], [ 0, %bb.aa ], [ %i.cc, %bb.u ]
  %.9105 = phi i64 [ %i.ax, %bb.h ], [ %.6102, %bb.z ], [ %.8104, %bb.aa ], [ %.4100.ph, %bb.u ]
  %.9 = phi i32 [ %i.az, %bb.h ], [ %i.dh, %bb.z ], [ %.8, %bb.aa ], [ %.4.ph, %bb.u ]
  %i.dn = load ptr, ptr %2, align 8, !tbaa !87
  %i.do = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !85
end_hunk_2
