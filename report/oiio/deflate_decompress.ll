inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@build_decode_table:.preheader222
  %i.ez = getelementptr inbounds nuw i8, ptr %.1147, i64 2 ; 3 uses
  %i.fa = xor i32 %.1181, %i.ea
  %i.fb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fa, i1 true)
  %8 = xor i32 %i.fb, 31
  %9 = shl nuw i32 1, %8                          ; 2 uses
  %i.fc = add i32 %9, -1
  %i.fd = and i32 %i.fc, %.1181
  %i.fe = or i32 %i.fd, %9                        ; 3 uses
  %i.ff = add i32 %.1168, -1                      ; 2 uses
  %.not204 = icmp eq i32 %i.ff, 0
  br i1 %.not204, label %.preheader218, label %bb.k, !llvm.loop !62
end_hunk_0
begin_hunk_1_@build_decode_table:.preheader222
  %i.gv = getelementptr inbounds nuw i8, ptr %.2148, i64 2 ; 2 uses
  %i.gw = xor i32 %.3183, %i.fs
  %i.gx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gw, i1 true)
  %10 = xor i32 %i.gx, 31
  %11 = shl nuw i32 1, %10                        ; 2 uses
  %i.gy = add i32 %11, -1
  %i.gz = and i32 %i.gy, %.3183
  %i.ha = or i32 %i.gz, %11                       ; 2 uses
  %i.hb = add i32 %.2169, -1                      ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph268, label %.loopexit
end_hunk_1
