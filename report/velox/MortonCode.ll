inline.NumInlined: 94
inline.NumDeleted: 45
begin_hunk_0_@_ZN4geos5shape7fractal10MortonCode10interleaveEj:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos5shape7fractal10MortonCode6decodeEj(ptr dead_on_unwind noalias writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = and i32 %1, 1431655765                     ; 2 uses
  %3 = lshr i32 %2, 1
  %i.a = lshr i32 %1, 1
  %4 = and i32 %i.a, 1145324612
  %5 = or disjoint i32 %3, %2
  %6 = and i32 %1, 572662306
  %7 = or disjoint i32 %4, %6                     ; 2 uses
  %8 = and i32 %5, 858993459
  %9 = lshr exact i32 %7, 1
  %10 = insertelement <2 x i32> poison, i32 %8, i64 0 ; 2 uses
  %11 = insertelement <2 x i32> %10, i32 %7, i64 1
  %i.b = lshr <2 x i32> %11, <i32 2, i32 3>
  %12 = insertelement <2 x i32> %10, i32 %9, i64 1
  %i.c = or disjoint <2 x i32> %i.b, %12
  %i.d = and <2 x i32> %i.c, splat (i32 252645135) ; 2 uses
  %i.e = lshr <2 x i32> %i.d, splat (i32 4)
  %i.f = or disjoint <2 x i32> %i.e, %i.d         ; 2 uses
end_hunk_0
