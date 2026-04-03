begin_hunk_0
  %.sroa.679 = alloca [40 x i8], align 8          ; 6 uses
  %.sroa.576 = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 5 uses
  %.sroa.469 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.47 = alloca [24 x i8], align 8           ; 2 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

end_hunk_0
begin_hunk_1
  br i1 %.not207, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.47, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.04.0)
  store i64 -9223372036854775802, ptr %0, align 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47, i64 24, i1 false)
  br label %bb.p

bb.an:                                            ; preds = %bb.al
end_hunk_1
begin_hunk_2
  br i1 %.not206, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.469, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.066.0)
  store i64 -9223372036854775797, ptr %0, align 16
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469, i64 24, i1 false)
  br label %bb.p

bb.aq:                                            ; preds = %bb.ao
end_hunk_2
