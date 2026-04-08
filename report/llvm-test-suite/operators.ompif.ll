begin_hunk_0_@smooth:bb.a
  %i.bv = add i32 %i.af, -3
  %i.bw = shl nuw i32 %i.z, 1
  %i.bx = add i32 %i.bv, %i.bw
  %i.by = add i32 %i.am, %i.ak
  %i.bz = mul i32 %i.by, %i.bo
  %i.ca = add <2 x i32> %i.x, splat (i32 1)
  %i.cb = insertelement <4 x i32> poison, i32 %i.bz, i64 0
end_hunk_0
begin_hunk_1_@smooth:bb.a
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ci = sub <4 x i32> %i.cf, %i.ch              ; 2 uses
  %i.cj = shl nsw i64 %i.ap, 3                    ; 28 uses
  %i.ck = add i32 %i.am, %i.ak
  %i.cl = mul i32 %i.ck, %i.bo                    ; 4 uses
  %i.cm = add i32 %i.cl, 1
  %i.cn = sub i32 %i.cm, %i.z
end_hunk_1
begin_hunk_2_@initialize_grid_to_scalar:bb.a
  %i.ay = add i32 %i.x, -1
  %i.az = shl i32 %i.r, 1
  %i.ba = add i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = xor i32 %i.n, -1
  %i.bc = sub i32 %i.bb, %i.p
  %i.bd = mul i32 %i.r, %i.bc
  %i.be = zext i32 %i.ba to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
end_hunk_2
