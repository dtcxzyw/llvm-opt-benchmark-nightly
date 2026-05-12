inline.NumInlined: 156
inline.NumDeleted: 84
begin_hunk_0_@_ZN6Assimp3FBX4Util12EncodeBase64B5cxx11EPKcm:bb.a
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 7 uses
  %i.a = urem i64 %2, 3                           ; 3 uses
  %3 = xor i64 %i.a, 3                            ; 2 uses
  %i.b = add i64 %3, %2
  %i.c = shl i64 %i.b, 2
  %i.d = udiv i64 %i.c, 3                         ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX4Util12EncodeBase64B5cxx11EPKcm:bb.a
  br i1 %i.ci, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i64 %.zext, 60
  br label %.lr.ph39

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph39
end_hunk_1
