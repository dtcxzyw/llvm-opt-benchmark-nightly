inline.NumInlined: 338
inline.NumDeleted: 52
begin_hunk_0_@HUFv06_readStats:bb.a
  %i.bw = shl nuw nsw i32 2, %i.bt
  %i.bx = sub i32 %i.bw, %i.bp                    ; 2 uses
  %i.by = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true) ; 2 uses
  %6 = xor i32 %i.by, 31
  %7 = shl nuw i32 1, %6
  %.not92 = icmp eq i32 %7, %i.bx
  br i1 %.not92, label %bb.k, label %.critedge95

bb.k:                                             ; preds = %bb.j
end_hunk_0
