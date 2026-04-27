inline.NumInlined: 150
inline.NumDeleted: 50
begin_hunk_0_@StoreImageToBitMask:bb.a
bb.w:                                             ; preds = %bb.u
  %i.eb = zext i16 %i.ds to i32
  %i.ec = add nsw i32 %i.eb, -1                   ; 3 uses
  %i.ed = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.ec, i1 true) ; 2 uses
  %i.ee = sub nuw nsw i32 30, %i.ed               ; 3 uses
  %i.ef = lshr i32 %i.ec, %i.ee
  %i.eg = and i32 %i.ef, 1
  %notmask.i.i = shl nsw i32 -1, %i.ee
  %8 = xor i32 %notmask.i.i, -1
  %i.eh = and i32 %i.ec, %8
  %i.ei = shl nuw nsw i32 %i.ed, 1
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = xor i32 %i.ej, 62
end_hunk_0
begin_hunk_1_@StoreImageToBitMask:bb.a

bb.ab:                                            ; preds = %WriteHuffmanCodeWithExtraBits.exit
  %i.fq = add nsw i32 %.val91, -1                 ; 3 uses
  %i.fr = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.fq, i1 true) ; 2 uses
  %i.fs = sub nuw nsw i32 30, %i.fr               ; 3 uses
  %i.ft = lshr i32 %i.fq, %i.fs
  %i.fu = and i32 %i.ft, 1
  %notmask.i.i99 = shl nsw i32 -1, %i.fs
  %9 = xor i32 %notmask.i.i99, -1
  %i.fv = and i32 %i.fq, %9
  %i.fw = shl nuw nsw i32 %i.fr, 1
  %i.fx = or disjoint i32 %i.fu, %i.fw
  %i.fy = xor i32 %i.fx, 62
end_hunk_1
