inline.NumInlined: 3941
inline.NumDeleted: 1451
begin_hunk_0_@_ZN2v88internal29Runtime_WasmStringToUtf8ArrayEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 5 uses
  %5 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 11 uses
  %6 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal29Runtime_WasmStringToUtf8ArrayEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  store ptr %i.m, ptr %i.a, align 8
  store i64 %i.h, ptr %.0.i.i2, align 8
  %i.n = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_111MeasureWtf8EPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %.0.i.i2) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, -55464
end_hunk_1
begin_hunk_2_@_ZN2v88internal29Runtime_WasmStringToUtf8ArrayEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  store i64 %i.y, ptr %.0.i.i, align 8
  store i32 6928, ptr %6, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.412.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ag = tail call ptr @_ZN2v88internal7Factory12NewWasmArrayENS0_4wasm9ValueTypeEjNS2_9WasmValueENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 6928, i32 noundef %i.n, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %6, ptr nonnull %.0.i.i) #18 ; 2 uses
  %i.ah = load i64, ptr %.0.i.i2, align 8         ; 2 uses
  %i.ai = add i64 %i.ah, -1
end_hunk_2
begin_hunk_3_@_ZN2v88internal29Runtime_WasmStringToUtf8ArrayEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit

bb.ak:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i, %bb.ah
  %i.hx = load i64, ptr %i.ag, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.hy = load i32, ptr %i.e, align 8
  %i.hz = add nsw i32 %i.hy, -1
end_hunk_3
