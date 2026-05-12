inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0_@_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm:bb.a
  %i.dm = sub i32 %i.dl, %i.a
  %i.dn = add i32 %i.dl, 65536
  %i.do = sub i32 %i.dn, %i.a
  %umax231 = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %wide.trip.count232 = zext i32 %umax231 to i64
  br label %bb.n
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm:bb.a
  %i.et = sext i16 %i.em to i32                   ; 4 uses
  %i.eu = add nsw i32 %i.et, -1
  %i.ev = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.eu, i1 true)
  %6 = xor i32 %i.ev, 31
  %7 = sub i32 %3, %6                             ; 2 uses
  %i.ew = shl i32 %i.et, %7
  %i.ex = shl i32 %7, 16
  %i.ey = sub i32 %i.ex, %i.ew
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv228 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd28FSE_optimalTableLog_internalEjmjj:bb.a
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %4 = xor i32 %i.c, 31
  %i.d = sub i32 %4, %3
  %i.e = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
end_hunk_2
