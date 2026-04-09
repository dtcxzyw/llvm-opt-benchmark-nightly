inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@decode_mcu_AC_first:bb.a
  br label %bb.aa

bb.u:                                             ; preds = %bb.p
  %3 = icmp eq i32 %i.cc, 15
  br i1 %3, label %bb.v, label %4

bb.v:                                             ; preds = %bb.u
  %i.dc = add nsw i32 %.0106148, 15
  br label %bb.aa

4:                                                ; preds = %bb.u
  %5 = shl nuw i32 1, %i.cc                       ; 2 uses
  %.not130 = icmp eq i32 %i.cc, 0
  br i1 %.not130, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %4
  %i.dd = icmp slt i32 %.4.ph, %i.cc
  br i1 %i.dd, label %bb.x, label %bb.z

end_hunk_0
begin_hunk_1_@decode_mcu_AC_first:bb.a
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 %.6102, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %i.dk
  %8 = add nuw i32 %5, %7
  %i.dl = add i32 %8, -1
  br label %.loopexit

bb.aa:                                            ; preds = %bb.t, %bb.v
end_hunk_1
begin_hunk_2_@decode_mcu_AC_first:bb.a
  %.not127.not = icmp slt i32 %.1107, %i.d
  br i1 %.not127.not, label %bb.i, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %bb.aa, %bb.h, %4, %bb.z
  %.1109 = phi i32 [ 0, %4 ], [ %i.dl, %bb.z ], [ 0, %bb.h ], [ 0, %bb.aa ]
  %.9105 = phi i64 [ %.4100.ph, %4 ], [ %.6102, %bb.z ], [ %i.ax, %bb.h ], [ %.8104, %bb.aa ]
  %.9 = phi i32 [ %.4.ph, %4 ], [ %i.dh, %bb.z ], [ %i.az, %bb.h ], [ %.8, %bb.aa ]
  %i.dn = load ptr, ptr %2, align 8, !tbaa !87
  %i.do = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !85
end_hunk_2
