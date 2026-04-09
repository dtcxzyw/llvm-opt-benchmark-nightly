inline.NumInlined: 374
inline.NumDeleted: 162
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_519TiledRgbaOutputFile4ToYa9writeTileEiiii:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = load i32, ptr %6, align 4, !tbaa !36     ; 2 uses
  %10 = add i32 %i.q, 1
  %11 = sub i32 %10, %i.r
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_518TiledRgbaInputFile6FromYa8readTileEiiii:bb.a
  br i1 %.not3943, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %7 = add i32 %i.r, 1
  %8 = sub i32 %7, %i.s                           ; 2 uses
  %i.ag = sext i32 %i.y to i64
  %wide.trip.count = zext i32 %8 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %9 = add i32 %8, -1
  %i.ah = icmp ult i32 %9, 3
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
end_hunk_1
