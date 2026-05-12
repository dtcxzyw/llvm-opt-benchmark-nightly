inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_charset_load:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  %.079 = phi i32 [ %i.ae, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %narrow = sub nuw nsw i32 65535, %.079
  %i.aj = zext i16 %i.z to i32
  %i.ak = icmp samesign ult i32 %narrow, %i.aj
  %i.al = xor i16 %i.z, -1
  %i.am = zext i16 %i.al to i32
  %.180 = select i1 %i.ak, i32 %i.am, i32 %.079
end_hunk_0
