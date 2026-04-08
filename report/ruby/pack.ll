inline.NumInlined: 148
inline.NumDeleted: 44
begin_hunk_0_@pack_pack:bb.a
  %.1343653 = phi i64 [ %i.qa, %.lr.ph656 ], [ %i.pp, %bb.dr ] ; 2 uses
  %i.pz = call i64 @llvm.umin.i64(i64 %.1343653, i64 %.16) ; 3 uses
  call fastcc void @encodes(i64 noundef %.0288, ptr noundef %.5341654, i64 noundef %i.pz, i32 noundef %i.bo, i32 noundef 1)
  %i.qa = sub nuw nsw i64 %.1343653, %i.pz        ; 2 uses
  %i.qb = getelementptr i8, ptr %.5341654, i64 %i.pz
  %.not912 = icmp eq i64 %i.qa, 0
  br i1 %.not912, label %.loopexit, label %.lr.ph656, !llvm.loop !39

bb.ds:                                            ; preds = %bb.aa
  %i.qc = load i64, ptr %i.at, align 8, !tbaa !13 ; 2 uses
end_hunk_0
begin_hunk_1_@pack_unpack_internal:bb.a
  store i8 %i.us, ptr %.2..sroa_idx, align 1, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.19591571, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.tg, i1 noundef false) #13
  %i.ut = getelementptr i8, ptr %.19591571, i64 %i.tg ; 2 uses
  %i.uu = sub nuw nsw i64 %.268611572, %i.tg      ; 2 uses
  %.not = icmp eq i64 %i.uu, 0
  br i1 %.not, label %._crit_edge1576, label %.lr.ph1575, !llvm.loop !68

._crit_edge1576:                                  ; preds = %bb.fq, %bb.fe
  %.1959.lcssa = phi ptr [ %.09581579, %bb.fe ], [ %i.ut, %bb.fq ]
end_hunk_1
