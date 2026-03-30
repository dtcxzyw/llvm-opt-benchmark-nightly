begin_hunk_0
  %.sroa.13320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float %i.mi, ptr %.sroa.13320.0..sroa_idx, align 4
  %.sroa.14321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store <4 x float> zeroinitializer, ptr %.sroa.14321.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  br label %bb.ae
end_hunk_0
begin_hunk_1
  %i.na = load float, ptr %i.mz, align 8
  %i.nb = fmul float %i.na, 0xBF91DF46A0000000    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1032 ; 2 uses
  store <4 x float> zeroinitializer, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1052
  store <4 x float> zeroinitializer, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store <4 x float> zeroinitializer, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.nd = call noundef float @cosf(float noundef %i.nb) #25 ; 2 uses
end_hunk_1
