begin_hunk_0
_ZNSt8functionIFbN2v88internal12InstanceTypeEEEC2ERKS4_.exit.i:
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_negate.2171", align 8 ; 10 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.2170", align 8 ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.2170", align 8 ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %0, align 8 ; 3 uses
  %i.b = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, 1
  br i1 %i.b, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ERKSH_.exit.i.i.i.i", label %bb.a
end_hunk_0
begin_hunk_1
"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ERKSH_.exit.i.i.i.i": ; preds = %bb.b, %bb.a, %_ZNSt8functionIFbN2v88internal12InstanceTypeEEEC2ERKS4_.exit.i
  %.0.i.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %_ZNSt8functionIFbN2v88internal12InstanceTypeEEEC2ERKS4_.exit.i ], [ 1, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5.0..sroa_idx, i8 0, i64 14, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i16 %1, ptr %5, align 8
  store ptr @"_ZNSt17_Function_handlerIFbN2v88internal12InstanceTypeEEZNS1_6maglev12_GLOBAL__N_121AllOfInstanceTypesAreERKNS1_14ZoneCompactSetINS1_8compiler6MapRefEEES2_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.i, align 8, !alias.scope !146
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbN2v88internal12InstanceTypeEEZNS1_6maglev12_GLOBAL__N_121AllOfInstanceTypesAreERKNS1_14ZoneCompactSetINS1_8compiler6MapRefEEES2_E3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.j, align 8, !alias.scope !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  %i.k = call noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN2v88internal12InstanceTypeEEZNS1_6maglev12_GLOBAL__N_121AllOfInstanceTypesAreERKNS1_14ZoneCompactSetINS1_8compiler6MapRefEEES2_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2) #34 ; 0 uses
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.not.i.i.i7.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i.i7.i.i.i.i, label %"_ZZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS0_14ZoneCompactSetINS0_8compiler6MapRefEEESt8functionIFbNS0_12InstanceTypeEEEEN3$_0C2EOSD_.exit.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ESG_.exit.i.i.i.i.i"

"_ZZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS0_14ZoneCompactSetINS0_8compiler6MapRefEEESt8functionIFbNS0_12InstanceTypeEEEEN3$_0C2EOSD_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ERKSH_.exit.i.i.i.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false), !alias.scope !149
  br label %"_ZN9__gnu_cxx5__ops8__negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EENS0_12_Iter_negateIT_EENS0_10_Iter_predISI_EE.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ESG_.exit.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ERKSH_.exit.i.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !149
  br label %"_ZN9__gnu_cxx5__ops8__negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EENS0_12_Iter_negateIT_EENS0_10_Iter_predISI_EE.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops8__negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EENS0_12_Iter_negateIT_EENS0_10_Iter_predISI_EE.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EC2ESG_.exit.i.i.i.i.i", %"_ZZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS0_14ZoneCompactSetINS0_8compiler6MapRefEEESt8functionIFbNS0_12InstanceTypeEEEEN3$_0C2EOSD_.exit.thread.i.i.i.i.i"
end_hunk_1
begin_hunk_2
  %i.r = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.r, ptr %i.a, align 2
  %i.s = load ptr, ptr %i.p, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EclINS9_14const_iteratorEEEbT_.exit.i.i.i.i.i"

end_hunk_2
begin_hunk_3

"_ZSt9__find_ifIN2v88internal14ZoneCompactSetINS1_8compiler6MapRefEE14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS1_6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKS5_St8functionIFbNS1_12InstanceTypeEEEE3$_0EEET_SK_SK_T0_St18input_iterator_tag.exit.i.i.i.loopexit.i": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EclINS9_14const_iteratorEEEbT_.exit.i.i.i.i.i"
  %.sroa.4.0.lcssa.i.i.i.i.ph.i = phi i64 [ %.0.i.i.i, %bb.c ], [ %.sroa.4.09.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKNS3_14ZoneCompactSetINS3_8compiler6MapRefEEESt8functionIFbNS3_12InstanceTypeEEEE3$_0EclINS9_14const_iteratorEEEbT_.exit.i.i.i.i.i" ]
  %.pre.i = load ptr, ptr %i.p, align 8
  %i.w = icmp eq i64 %.0.i.i.i, %.sroa.4.0.lcssa.i.i.i.i.ph.i
  br label %"_ZSt9__find_ifIN2v88internal14ZoneCompactSetINS1_8compiler6MapRefEE14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS1_6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKS5_St8functionIFbNS1_12InstanceTypeEEEE3$_0EEET_SK_SK_T0_St18input_iterator_tag.exit.i.i.i.i"

end_hunk_3
begin_hunk_4
  br label %"_ZSt13__find_if_notIN2v88internal14ZoneCompactSetINS1_8compiler6MapRefEE14const_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS1_6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKS5_St8functionIFbNS1_12InstanceTypeEEEE3$_0EEET_SK_SK_T0_.exit.i.i.i"

"_ZSt13__find_if_notIN2v88internal14ZoneCompactSetINS1_8compiler6MapRefEE14const_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS1_6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKS5_St8functionIFbNS1_12InstanceTypeEEEE3$_0EEET_SK_SK_T0_.exit.i.i.i": ; preds = %bb.d, %"_ZSt9__find_ifIN2v88internal14ZoneCompactSetINS1_8compiler6MapRefEE14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS1_6maglev12_GLOBAL__N_124AllOfInstanceTypesUnsafeERKS5_St8functionIFbNS1_12InstanceTypeEEEE3$_0EEET_SK_SK_T0_St18input_iterator_tag.exit.i.i.i.i"
  %.pre43 = load ptr, ptr %i.i, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre43, null
end_hunk_4
