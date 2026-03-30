begin_hunk_0
  %96 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %97 = alloca %"class.v8::internal::compiler::JSGraphAssembler", align 8 ; 21 uses
  %98 = alloca %"class.v8::internal::TNode.264", align 8 ; 4 uses
  %99 = alloca %"class.v8::internal::compiler::JSGraphAssembler::IfBuilder1", align 8 ; 13 uses
  %100 = alloca %"class.v8::internal::TNode.273", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8
end_hunk_0
begin_hunk_1
  store i8 0, ptr %i.tr, align 8, !alias.scope !172
  %i.ts = getelementptr inbounds nuw i8, ptr %99, i64 17
  %i.tt = getelementptr inbounds nuw i8, ptr %99, i64 24 ; 3 uses
  %i.tu = ptrtoint ptr %97 to i64
  %.sroa.0.0.vec.insert = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.tu, i64 0 ; 2 uses
  store <2 x i64> %.sroa.0.0.vec.insert, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %99, i64 40 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_7BooleanEEEvEZNS1_8compiler29JSNativeContextSpecialization50BuildElementAccessForTypedArrayOrRabGsabTypedArrayEPNS6_4NodeES9_S9_S9_S9_S9_NS1_12ElementsKindERKNS6_15KeyedAccessModeEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.tv, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %99, i64 48
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_7BooleanEEEvEZNS1_8compiler29JSNativeContextSpecialization50BuildElementAccessForTypedArrayOrRabGsabTypedArrayEPNS6_4NodeES9_S9_S9_S9_S9_NS1_12ElementsKindERKNS6_15KeyedAccessModeEE3$_4E9_M_invokeERKSt9_Any_data", ptr %i.tw, align 8
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %99, i64 56 ; 3 uses
  store <2 x i64> %.sroa.0.0.vec.insert, ptr %.sroa.5312.0..sroa_idx, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %99, i64 72 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_7BooleanEEEvEZNS1_8compiler29JSNativeContextSpecialization50BuildElementAccessForTypedArrayOrRabGsabTypedArrayEPNS6_4NodeES9_S9_S9_S9_S9_NS1_12ElementsKindERKNS6_15KeyedAccessModeEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.tx, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %99, i64 80
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit148
  %i.ub = call noundef zeroext i1 %i.ua(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5312.0..sroa_idx, i32 noundef 3) #19 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.bd, %_ZNSt14_Function_baseD2Ev.exit148
  %i.uc = load ptr, ptr %i.tv, align 8            ; 2 uses
  %.not.i1.i = icmp eq ptr %i.uc, null
  br i1 %.not.i1.i, label %_ZN2v88internal8compiler16JSGraphAssembler10IfBuilder1INS0_7BooleanENS0_7Word32TEED2Ev.exit, label %bb.be

end_hunk_2
begin_hunk_3
  %3 = alloca %"struct.std::array.882", align 8   ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.264", align 8 ; 4 uses
  %5 = alloca %"struct.std::array.882", align 8   ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.907", align 8 ; 11 uses
end_hunk_3
begin_hunk_4
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8
end_hunk_4
