begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsERKNS1_12NativeModuleENS2_17OnlyLazyFunctionsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(552) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::function.1504", align 16 ; 11 uses
  %4 = alloca %"class.std::function.1504", align 8 ; 12 uses
  %5 = alloca %"class.v8::internal::wasm::WasmDetectedFeatures", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
end_hunk_0
begin_hunk_1

_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false), !noalias !261
  %i.o = and i32 %.sroa.0.0.copyload.i, 512
  %.not13.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i, label %.thread.i, label %bb.d

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false), !noalias !261
  br label %.thread.i

.thread.i:                                        ; preds = %.critedge.i, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread.i
end_hunk_1
begin_hunk_2

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread.i
  %i.q = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.q, i64 0
  store <2 x i64> %.sroa.0.0.vec.insert.i, ptr %3, align 16, !noalias !261
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbiEZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.r, align 16, !noalias !261
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @"_ZNSt17_Function_handlerIFbiEZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.s, align 8, !noalias !261
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_2
begin_hunk_3
bb.a:
  %2 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.1221", align 8 ; 5 uses
  %4 = alloca %"class.std::function.1504", align 16 ; 9 uses
  %5 = alloca %"class.std::function.1504", align 8 ; 12 uses
  %6 = alloca [2 x %"class.std::unique_ptr.1514"], align 16 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::Result.1205", align 16 ; 17 uses
end_hunk_3
begin_hunk_4

_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !371
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false), !noalias !371
  %i.cx = and i32 %.sroa.01.0.copyload, 512
  %.not13.i = icmp eq i32 %i.cx, 0
  br i1 %.not13.i, label %.thread.i, label %bb.x
end_hunk_4
begin_hunk_5

bb.x:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread.i
  %i.cz = ptrtoint ptr %.pre101 to i64            ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cz, i64 0
  store <2 x i64> %.sroa.0.0.vec.insert.i, ptr %4, align 16, !noalias !371
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbiEZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.da, align 16, !noalias !371
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @"_ZNSt17_Function_handlerIFbiEZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.db, align 8, !noalias !371
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_5
