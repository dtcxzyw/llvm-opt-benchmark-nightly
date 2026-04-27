inline.NumInlined: 94
inline.NumDeleted: 45
begin_hunk_0_@_ZN4geos5shape7fractal10MortonCode10interleaveEj:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos5shape7fractal10MortonCode6decodeEj(ptr dead_on_unwind noalias writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1
  %2 = insertelement <2 x i32> poison, i32 %1, i64 0
  %3 = insertelement <2 x i32> %2, i32 %i.a, i64 1
  %4 = and <2 x i32> %3, splat (i32 1431655765)   ; 2 uses
  %5 = lshr <2 x i32> %4, splat (i32 1)
  %6 = or disjoint <2 x i32> %5, %4
  %7 = and <2 x i32> %6, splat (i32 858993459)    ; 2 uses
  %i.b = lshr <2 x i32> %7, splat (i32 2)
  %i.c = or disjoint <2 x i32> %i.b, %7
  %i.d = and <2 x i32> %i.c, splat (i32 252645135) ; 2 uses
  %i.e = lshr <2 x i32> %i.d, splat (i32 4)
  %i.f = or disjoint <2 x i32> %i.e, %i.d         ; 2 uses
end_hunk_0
