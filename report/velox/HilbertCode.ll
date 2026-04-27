inline.NumInlined: 96
inline.NumDeleted: 45
begin_hunk_0_@_ZN4geos5shape7fractal11HilbertCode6decodeEjj:bb.a
  tail call void @_ZN4geos5shape7fractal11HilbertCode10checkLevelEj(i32 noundef %1)
  %i.a = shl i32 %1, 1
  %i.b = sub i32 32, %i.a
  %i.c = shl i32 %2, %i.b                         ; 3 uses
  %i.d = and i32 %i.c, 1431655765                 ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = or disjoint i32 %i.e, %i.d
end_hunk_0
begin_hunk_1_@_ZN4geos5shape7fractal11HilbertCode6decodeEjj:bb.a
  %.masked.i = and i32 %i.l, 255
  %i.o = or disjoint i32 %i.n, %.masked.i         ; 5 uses
  %i.p = lshr i32 %i.c, 1
  %i.q = and i32 %i.p, 1145324612
  %3 = and i32 %i.c, 572662306
  %i.r = or disjoint i32 %i.q, %3                 ; 2 uses
  %4 = lshr exact i32 %i.r, 1
  %i.s = lshr i32 %i.r, 3
  %i.t = or disjoint i32 %i.s, %4
  %i.u = and i32 %i.t, 252645135                  ; 2 uses
  %i.v = lshr i32 %i.u, 4
end_hunk_1
begin_hunk_2_@_ZN4geos5shape7fractal11HilbertCode6decodeEjj:bb.a
  %i.y = and i32 %i.x, 65280
  %.masked.i22 = and i32 %i.w, 255
  %i.z = or disjoint i32 %i.y, %.masked.i22       ; 3 uses
  %i.aa = or i32 %i.o, %i.z
  %i.ab = xor i32 %i.aa, 65535                    ; 2 uses
  %i.ac = and i32 %i.o, %i.z                      ; 2 uses
  %i.ad = lshr i32 %i.ab, 8
  %i.ae = xor i32 %i.ad, %i.ab                    ; 2 uses
  %i.af = lshr i32 %i.ae, 4
end_hunk_2
