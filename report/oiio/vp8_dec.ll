inline.NumInlined: 54
inline.NumDeleted: 14
begin_hunk_0_@VP8DecodeMB:bb.a
  %i.di = add nuw nsw i32 %i.dh, %i.cz
  %i.dj = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !29
  %i.dk = call i32 %i.dj(ptr noundef %1, ptr noundef nonnull %.0.i, i32 noundef %i.di, ptr noundef nonnull %i.v, i32 noundef %.0123.i, ptr noundef nonnull %i.df) #13, !inline_history !83 ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, %.0123.i            ; 2 uses
  %i.dm = select i1 %i.dl, i8 -128, i8 0
  %i.dn = load i16, ptr %i.df, align 2, !tbaa !84
  %i.do = icmp ne i16 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
end_hunk_0
begin_hunk_1_@VP8DecodeMB:bb.a
  %i.dy = or disjoint i32 %i.dx, %i.du
  %i.dz = getelementptr inbounds nuw i8, ptr %.0106142.i, i64 128 ; 3 uses
  %i.ea = lshr i8 %i.dc, 5
  %2 = select i1 %i.dl, i8 8, i8 0
  %i.eb = or disjoint i8 %2, %i.ea                ; 2 uses
  %i.ec = lshr i8 %.0114140.i, 1
  %i.ed = or disjoint i8 %i.dm, %i.ec             ; 2 uses
end_hunk_1
