inline.NumInlined: 5606
inline.NumDeleted: 3138
begin_hunk_0_@_ZN2v88internal4wasm12NativeModule18AddCodeSpaceLockedENS_4base13AddressRegionE:bb.a
  %i.a = alloca [134 x i64], align 16             ; 5 uses
  %7 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 7 uses
  %8 = alloca %"class.v8::internal::WritableJumpTablePair", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal4wasm12_GLOBAL__N_123current_code_refs_scopeE) ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12NativeModule18AddCodeSpaceLockedENS_4base13AddressRegionE:bb.a
  store ptr %.0111, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.051, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %i.k, align 8             ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %.not.i.i = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %1, ptr %i.dt, align 8
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %2, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %.0111, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12NativeModule18AddCodeSpaceLockedENS_4base13AddressRegionE:bb.a
  call void @llvm.assume(i1 %.not.i.i.i.i57)
  %i.ei = shl nuw nsw i64 %i.eh, 5
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #33 ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb ; 4 uses
  store i64 %1, ptr %9, align 8
  %.sroa.0.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %.sroa.0.sroa.10.0..sroa_idx103, align 8
  %.sroa.10.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.0111, ptr %.sroa.10.0..sroa_idx75, align 8
  %.sroa.12.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.051, ptr %.sroa.12.0..sroa_idx81, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dy, %i.dt
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm12NativeModule13CodeSpaceDataESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12NativeModule18AddCodeSpaceLockedENS_4base13AddressRegionE:bb.a
  br label %bb.as

.critedge:                                        ; preds = %bb.y
  %i.eo = load ptr, ptr %i.k, align 8             ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  %.not.i.i59 = icmp eq ptr %i.eo, %i.eq
  br i1 %.not.i.i59, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  store i64 %1, ptr %i.eo, align 8
  %.sroa.0.sroa.10.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %2, ptr %.sroa.0.sroa.10.0..sroa_idx105, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %.0111, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.12.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm12NativeModule18AddCodeSpaceLockedENS_4base13AddressRegionE:bb.a
  call void @llvm.assume(i1 %.not.i.i.i.i62)
  %i.fd = shl nuw nsw i64 %i.fc, 5
  %i.fe = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #33 ; 5 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew ; 4 uses
  store i64 %1, ptr %10, align 8
  %.sroa.0.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %.sroa.0.sroa.10.0..sroa_idx107, align 8
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.0111, ptr %.sroa.10.0..sroa_idx79, align 8
  %.sroa.12.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %.051, ptr %.sroa.12.0..sroa_idx85, align 8
  %.not10.i.i.i.i.i.i63 = icmp eq ptr %i.et, %i.eo
  br i1 %.not10.i.i.i.i.i.i63, label %_ZNSt6vectorIN2v88internal4wasm12NativeModule13CodeSpaceDataESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i68, label %.lr.ph.i.i.i.i.i.i64
end_hunk_4
