inline.NumInlined: 4997
inline.NumDeleted: 1755
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput24read_native_tiles_lockedEiiiiiiiimNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

.preheader209.lr.ph:                              ; preds = %.critedge
  %.not126258 = icmp slt i32 %5, %6
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cf = load ptr, ptr %10, align 8
  %.not124255 = icmp slt i32 %3, %4
  %or.cond348 = and i1 %.not126258, %.not124255
  br i1 %or.cond348, label %.preheader209.us.us, label %_ZNSt10unique_ptrIA_St4byteSt14default_deleteIS1_EED2Ev.exit158

.preheader209.us.us:                              ; preds = %.preheader209.lr.ph, %..critedge152_crit_edge.split.us.us.us
  %.095262.us.us = phi i32 [ %i.dd, %..critedge152_crit_edge.split.us.us.us ], [ %7, %.preheader209.lr.ph ] ; 3 uses
  %i.cg = sub nsw i32 %.095262.us.us, %7
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.w, %i.ch
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19TIFFInput24read_native_tiles_lockedEiiiiiiiimNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

bb.k:                                             ; preds = %bb.n, %.preheader.us.us.us
  %.0105256.us.us.us = phi i32 [ %3, %.preheader.us.us.us ], [ %i.cz, %bb.n ] ; 3 uses
  store ptr %i.cc, ptr %14, align 8
  store i64 %i.x, ptr %19, align 8
  %i.co = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput23read_native_tile_lockedEiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 poison, i32 poison, i32 noundef %.0105256.us.us.us, i32 noundef %.0101259.us.us.us, i32 noundef %.095262.us.us, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.40") align 8 %14)
          to label %bb.l unwind label %_ZNSt10unique_ptrIA_St4byteSt14default_deleteIS1_EED2Ev.exit.split.us.split.us.split.us

end_hunk_1
