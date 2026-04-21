inline.NumInlined: 142
inline.NumDeleted: 51
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513hufUncompressEPKciPti:bb.a
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv68.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !9  ; 2 uses
  %i.fo = lshr i64 %i.fn, 6                       ; 3 uses
  %i.fp = and i64 %i.fn, 63                       ; 5 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32          ; 2 uses
  %i.fr = lshr i64 %i.fo, %i.fp
  %.not49.i = icmp eq i64 %i.fr, 0
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513hufUncompressEPKciPti:bb.a
  br i1 %.not50.i, label %.loopexit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %5 = sub nuw nsw i32 14, %i.fq                  ; 2 uses
  %6 = zext nneg i32 %5 to i64
  %i.hu = shl i64 %i.fo, %6
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.hu
  %7 = shl nuw nsw i32 1, %5
  %i.hw = zext nneg i32 %7 to i64
  %i.hx = trunc nsw i64 %indvars.iv68.i to i32
  %i.hy = shl i32 %i.hx, 8
  %i.hz = or disjoint i32 %i.hy, %i.fq
end_hunk_1
