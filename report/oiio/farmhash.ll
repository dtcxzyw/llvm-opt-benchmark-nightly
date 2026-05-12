inline.NumInlined: 326
inline.NumDeleted: 64
begin_hunk_0_@_ZN11OpenImageIO4v3_18farmhash10farmhashcc19CityHash128WithSeedEPKcmSt4pairImmE:bb.a
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 22)
  %i.gm = mul i64 %i.gl, -4348849565147123417
  %i.gn = add i64 %i.gm, %.sroa.16138.1166        ; 2 uses
  %4 = xor i64 %.069172, -32
  %i.go = getelementptr inbounds i8, ptr %i.er, i64 %4 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load i64, ptr %i.gp, align 1            ; 2 uses
end_hunk_0
