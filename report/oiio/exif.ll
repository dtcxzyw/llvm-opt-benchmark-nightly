inline.NumInlined: 1716
inline.NumDeleted: 772
begin_hunk_0_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
  br i1 %.not, label %._crit_edge.i.i, label %.preheader, !llvm.loop !222

.critedge:                                        ; preds = %.preheader
  %lsr.iv.lcssa = phi i3 [ %lsr.iv, %.preheader ]
  %.sroa.9.0438.lcssa630 = phi i64 [ %.sroa.9.0438, %.preheader ]
  %.sroa.9.0438.lcssa622 = phi i64 [ %.sroa.9.0438, %.preheader ]
  %indvar.lcssa = phi i64 [ %indvar, %.preheader ] ; 2 uses
  %.sroa.9.0438.lcssa = phi i64 [ %.sroa.9.0438, %.preheader ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
  %n.vec = and i64 %.sroa.9.0438.lcssa, -32       ; 4 uses
  %i.im = getelementptr i8, ptr %.ph483, i64 %n.vec
  %i.in = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec
  %i.io = lshr i64 %.sroa.9.0438.lcssa622, 5
  %i.ip = shl nuw i64 %i.io, 5
  %scevgep = getelementptr i8, ptr %.sroa.011.0.i213480, i64 16
  %scevgep624.a = getelementptr i8, ptr %.ph483, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
  %n.vec499 = and i64 %.sroa.9.0438.lcssa, -4     ; 3 uses
  %i.ir = getelementptr i8, ptr %.ph483, i64 %n.vec499
  %i.is = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec499
  %i.it = lshr i64 %.sroa.9.0438.lcssa630, 2
  %i.iu = shl nuw i64 %i.it, 2
  br label %vec.epilog.vector.body

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.iz = trunc i64 %.068.i.i.i.ph610 to i3
  %i.ja = sub i3 0, %i.iz
  %i.jb = add i3 %i.ja, %lsr.iv.lcssa
  %i.jc = zext i3 %i.jb to i64
  %i.jd = mul nsw i64 %i.jc, -1
  br label %.lr.ph.i.i.i.prol
end_hunk_3
