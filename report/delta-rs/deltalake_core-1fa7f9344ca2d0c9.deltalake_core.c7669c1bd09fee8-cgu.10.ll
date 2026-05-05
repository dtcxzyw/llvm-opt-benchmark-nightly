inline.NumInlined: 7791
inline.NumDeleted: 3011
begin_hunk_0_@_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylE7try_newCs14kWLkQVSKO_14deltalake_core:bb.a

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !16, !noundef !16
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !16
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  store i64 %i.ah, ptr %i.o, align 8
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE7try_newCs14kWLkQVSKO_14deltalake_core:bb.a

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !16, !noundef !16
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !16 ; 2 uses
  store i64 %i.ag, ptr %i.o, align 8
  %i.ah = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
end_hunk_1
begin_hunk_2_@_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0, ptr nonnull align 1 %i.q, i64 %.pre-phi, i1 false), !noalias !20425
  %i.r = xor i64 %i.b, -1
  %i.s = getelementptr [16 x i8], ptr %i.q, i64 %i.r
  %i.t = xor i64 %.sroa.5.0, -1
  %i.u = getelementptr [16 x i8], ptr %.sroa.09.0, i64 %i.t
  %i.v = shl i64 %.sroa.5.0, 4
  %i.w = add i64 %i.v, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr align 8 %i.s, i64 %i.w, i1 false), !noalias !20425
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.09.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
