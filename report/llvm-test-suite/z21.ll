begin_hunk_0_@SizeGalley:bb.a
  br label %bb.hn

bb.hj:                                            ; preds = %bb.hh
  %15 = insertelement <2 x i32> poison, i32 %i.ajr, i64 0
  %16 = insertelement <2 x i32> %15, i32 %i.aju, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = insertelement <2 x i32> poison, i32 %i.aje, i64 0
  %19 = insertelement <2 x i32> %18, i32 %i.aji, i64 1
  %20 = sitofp <2 x i32> %19 to <2 x float>
  %21 = fdiv <2 x float> %17, %20                 ; 2 uses
  %22 = extractelement <2 x float> %21, i64 0     ; 2 uses
  %23 = extractelement <2 x float> %21, i64 1     ; 2 uses
  %i.akc = fcmp olt float %22, %23
  %i.akd = select i1 %i.akc, float %23, float %22
  %i.ake = fmul float %i.akd, 1.280000e+02
  %i.akf = fptosi float %i.ake to i32             ; 4 uses
  %i.akg = mul nsw i32 %i.aje, %i.akf
end_hunk_0
