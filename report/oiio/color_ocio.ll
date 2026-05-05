inline.NumInlined: 6229
inline.NumDeleted: 1603
begin_hunk_0_@_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_:bb.a
  %i.q = mul i64 %i.p, 28411
  br label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit

_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit: ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i, %bb.e
  %.0.i12.i = phi i64 [ %i.q, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i ]
  %i.r = add i64 %.0.i6.i, %.0.i.i
  %i.s = add i64 %i.r, %.0.i9.i
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_111ColorConfig22createDisplayTransformENS0_7ustringES2_S2_S2_bS2_S2_:bb.a
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !197
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i:    ; preds = %bb.g, %bb.h
  %.0.i.i65 = phi i64 [ %i.aq, %bb.h ], [ 0, %bb.g ]
  %.not.i8.i = icmp eq i64 %7, 0                  ; 2 uses
  br i1 %.not.i8.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i, label %bb.i
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_7ustringEbS2_S2_:_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %i.m = mul i64 %i.l, 28411
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit25.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit25.i:   ; preds = %bb.b, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %.0.i12.i = phi i64 [ %i.m, %bb.b ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i ]
  %.not.i26.i = icmp eq ptr %2, null
  br i1 %.not.i26.i, label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit, label %bb.c
end_hunk_2
