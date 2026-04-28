inline.NumInlined: 50
inline.NumDeleted: 13
begin_hunk_0_@ucnv_swap_78:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.eh = zext i8 %.sroa.4.0.copyload to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %i.ej = add nuw nsw i32 %i.ei, 256
  %5 = lshr exact i32 %i.ej, 5
  br label %bb.af

bb.af:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ac, %bb.ae, %bb.ad
  %.0374 = phi i32 [ %5, %bb.ae ], [ 0, %bb.ad ], [ 0, %switch.early.test ], [ 0, %bb.ac ], [ 0, %switch.early.test ] ; 3 uses
  %i.ek = icmp eq i32 %i.ed, 0                    ; 2 uses
  br i1 %i.ek, label %bb.ag, label %bb.ah

end_hunk_0
