inline.NumInlined: 704
inline.NumDeleted: 166
begin_hunk_0_@_ZN5arrow7compute12EncoderNulls6DecodeEjjRKNS0_12RowTableImplEPSt6vectorINS0_14KeyColumnArrayESaIS6_EE:bb.a
  br i1 %.not42, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %.not43 = icmp eq i32 %1, 0
  br i1 %.not43, label %.lr.ph41.split, label %.lr.ph41.split.us.preheader

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute12EncoderNulls6DecodeEjjRKNS0_12RowTableImplEPSt6vectorINS0_14KeyColumnArrayESaIS6_EE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !3    ; 3 uses
  %i.t = shl i32 255, %i.s
  %i.u = load i8, ptr %i.q, align 1, !tbaa !21
  %i.v = trunc i32 %i.t to i8
  %i.w = or i8 %i.u, %i.v
  store i8 %i.w, ptr %i.q, align 1, !tbaa !21
  %i.x = add i32 %i.s, %1                         ; 2 uses
  %i.y = icmp ugt i32 %i.x, 8
  br i1 %i.y, label %bb.c, label %.lr.ph.us

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.aa = add i32 %i.x, -8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 7
  %i.ad = lshr i64 %i.ac, 3
end_hunk_1
