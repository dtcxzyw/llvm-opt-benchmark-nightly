begin_hunk_0_@SizeGalley:bb.a
  br label %bb.hn

bb.hj:                                            ; preds = %bb.hh
  %15 = sitofp i32 %i.ajr to float
  %16 = sitofp i32 %i.aje to float
  %17 = fdiv float %15, %16                       ; 2 uses
  %18 = sitofp i32 %i.aju to float
  %19 = sitofp i32 %i.aji to float
  %20 = fdiv float %18, %19                       ; 2 uses
  %i.akc = fcmp olt float %17, %20
  %i.akd = select i1 %i.akc, float %20, float %17
  %i.ake = fmul float %i.akd, 1.280000e+02
  %i.akf = fptosi float %i.ake to i32             ; 4 uses
  %i.akg = mul nsw i32 %i.aje, %i.akf
end_hunk_0
