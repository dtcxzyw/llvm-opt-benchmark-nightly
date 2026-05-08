inline.NumInlined: 2596
inline.NumDeleted: 1332
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator12AssembleCodeEv:bb.a
  %i.ii = load ptr, ptr %i.gw, align 8            ; 3 uses
  %i.ij = ptrtoint ptr %i.ii to i64               ; 3 uses
  %.idx43.i171 = mul nuw nsw i64 %i.gt, 12        ; 2 uses
  %i.ik = add nuw i64 %.idx43.i171, %i.ij
  %i.il = add i64 %i.ik, -12                      ; 2 uses
  %i.im = icmp ne i64 %i.il, %i.ij
  %umin326 = zext i1 %i.im to i64                 ; 2 uses
end_hunk_0
