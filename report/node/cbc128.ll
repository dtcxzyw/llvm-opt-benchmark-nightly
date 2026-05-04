begin_hunk_0_@CRYPTO_cbc128_decrypt:bb.a
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ag, -1
  %cmp.n = icmp eq i64 %.282144, %n.vec
  br i1 %cmp.n, label %iter.check208, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_0
begin_hunk_1_@CRYPTO_cbc128_decrypt:bb.a
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape188 = add i64 %i.as, -1
  %cmp.n189 = icmp eq i64 %.282144, %n.vec182
  br i1 %cmp.n189, label %iter.check208, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 3 uses
end_hunk_1
begin_hunk_2_@CRYPTO_cbc128_decrypt:bb.a
  br label %iter.check208

iter.check208:                                    ; preds = %iter.check208.loopexit.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.middle.block, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape188, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check208.loopexit.unr-lcssa ] ; 3 uses
  %i.bj = sub i64 16, %.282144                    ; 7 uses
  %min.iters.check194 = icmp ult i64 %i.bj, 4
  %i.bk = sub i64 %i.a, %.2146193
end_hunk_2
