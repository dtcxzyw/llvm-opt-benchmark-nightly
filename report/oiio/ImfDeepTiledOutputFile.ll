inline.NumInlined: 1001
inline.NumDeleted: 476
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  %i.bh = icmp eq i32 %i.bg, 1                    ; 2 uses
  %spec.select = select i1 %i.bh, i32 -1, i32 1   ; 3 uses
  %.081.sroa.speculated = select i1 %i.bh, i32 %.0211, i32 %.0210 ; 3 uses
  %reass.sub = sub nsw i32 %spec.select214, %spec.select215
  %i.bi = add nsw i32 %reass.sub, 1
  %reass.sub278 = sub nsw i32 %.0211, %.0210
  %i.bj = add nsw i32 %reass.sub278, 1
  %i.bk = mul i32 %i.bj, %i.bi                    ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %.val125 = load ptr, ptr %i.bl, align 8, !tbaa !72
end_hunk_0
