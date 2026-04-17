begin_hunk_0_@par_for___local_laplacian_f8.s0.v6:entry
  %i.au = shl i32 %f8.s0.v4.min, 1                ; 5 uses
  %f7.v4.min_realized = load i32, ptr %i.y, align 8 ; 5 uses
  %i.av = xor i32 %f7.v4.min_realized, -1
  %0 = or disjoint i32 %i.au, 1
  %1 = add i32 %i.au, 2
  %i.aw = sub i32 %1, %f7.v4.min_realized
  %i.ax = sub i32 %0, %f7.v4.min_realized
  %i.ay = sub i32 %i.au, %f7.v4.min_realized
  %i.az = add i32 %i.au, %i.av
  %i.ba = mul i32 %f7.stride.1, %i.aw             ; 2 uses
end_hunk_0
begin_hunk_1_@par_for___local_laplacian_f9.s0.v6:entry
  %i.ar = shl i32 %f9.s0.v4.min, 1                ; 5 uses
  %f8.v4.min_realized = load i32, ptr %i.aa, align 8 ; 5 uses
  %i.as = xor i32 %f8.v4.min_realized, -1
  %0 = or disjoint i32 %i.ar, 1
  %1 = add i32 %i.ar, 2
  %i.at = sub i32 %1, %f8.v4.min_realized
  %i.au = sub i32 %0, %f8.v4.min_realized
  %i.av = sub i32 %i.ar, %f8.v4.min_realized
  %i.aw = add i32 %i.ar, %i.as
  %i.ax = mul i32 %i.z, %i.at                     ; 2 uses
end_hunk_1
