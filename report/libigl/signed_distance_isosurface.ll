Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 86
begin_hunk_0_@"_ZNSt17_Function_handlerIFdN4CGAL7Point_3INS0_5EpickEEEEZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS9_IiLin1ELin1ELi0ELin1ELin1EEEddddNS5_18SignedDistanceTypeERSA_RSD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFdN4CGAL7Point_3INS0_5EpickEEEEZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS9_IiLin1ELin1ELi0ELin1ELin1EEEddddNS5_18SignedDistanceTypeERSA_RSD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #8 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEEddddNS_18SignedDistanceTypeERS4_RS7_E3$_0", ptr %0, align 8, !tbaa !633
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %.val, ptr %0, align 8, !tbaa !15
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #47 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !635
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !15 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #43
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEERiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef double @"_ZNSt17_Function_handlerIFdN4CGAL7Point_3INS0_5EpickEEEEZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS9_IiLin1ELin1ELi0ELin1ELin1EEEddddNS5_18SignedDistanceTypeERSA_RSD_E3$_1E9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) #8 align 2 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !15    ; 5 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !636, !nonnull !14, !align !519
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !638, !nonnull !14, !align !519
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !639, !nonnull !14, !align !519
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !640, !nonnull !14, !align !519
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x double>, ptr %1, align 8, !tbaa !27
  store <2 x double> %i.i, ptr %2, align 16, !tbaa !27
  %i.j = load double, ptr %i.h, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.j, ptr %i.k, align 16, !tbaa !27
  %i.l = call noundef double @_ZN3igl30signed_distance_winding_numberIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEEENT_6ScalarERKNS_4AABBIS6_Li3EEERKNS1_10MatrixBaseIS6_EERKNSC_IT0_EERKNS_17WindingNumberAABBIS7_NSG_6ScalarEEERKNSC_IT1_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(228) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !641, !nonnull !14, !align !519
  %i.o = load double, ptr %i.n, align 8, !tbaa !27
  %i.p = fsub double %i.l, %i.o
  ret double %i.p
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFdN4CGAL7Point_3INS0_5EpickEEEEZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS9_IiLin1ELin1ELi0ELin1ELin1EEEddddNS5_18SignedDistanceTypeERSA_RSD_E3$_1E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #8 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEEddddNS_18SignedDistanceTypeERS4_RS7_E3$_1", ptr %0, align 8, !tbaa !633
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %.val, ptr %0, align 8, !tbaa !15
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #47 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !642
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !15 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #43
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef double @_ZN3igl30signed_distance_winding_numberIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEEENT_6ScalarERKNS_4AABBIS6_Li3EEERKNS1_10MatrixBaseIS6_EERKNSC_IT0_EERKNS_17WindingNumberAABBIS7_NSG_6ScalarEEERKNSC_IT1_EE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(228), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef double @"_ZNSt17_Function_handlerIFdN4CGAL7Point_3INS0_5EpickEEEEZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS9_IiLin1ELin1ELi0ELin1ELin1EEEddddNS5_18SignedDistanceTypeERSA_RSD_E3$_2E9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) #8 align 2 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.38", align 16 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !15    ; 8 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !643, !nonnull !14, !align !519
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !645, !nonnull !14, !align !519
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !646, !nonnull !14, !align !519
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !647, !nonnull !14, !align !519
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !648, !nonnull !14, !align !519
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !649, !nonnull !14, !align !519
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !650, !nonnull !14, !align !519
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x double>, ptr %1, align 8, !tbaa !27
  store <2 x double> %i.o, ptr %2, align 16, !tbaa !27
  %i.p = load double, ptr %i.n, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.p, ptr %i.q, align 16, !tbaa !27
  %i.r = call noundef double @_ZN3igl28signed_distance_pseudonormalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEENT_6ScalarERKNS_4AABBIS7_Li3EEERKNS1_10MatrixBaseIS7_EERKNSD_IT0_EERKNSD_IT1_EERKNSD_IT2_EERKNSD_IT3_EERKNSD_IT4_EERKNSD_IT5_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !651, !nonnull !14, !align !519
  %i.u = load double, ptr %i.t, align 8, !tbaa !27
  %i.v = fsub double %i.r, %i.u
  ret double %i.v
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFdN4CGAL7Point_3INS0_5EpickEEEEZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS9_IiLin1ELin1ELi0ELin1ELin1EEEddddNS5_18SignedDistanceTypeERSA_RSD_E3$_2E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #8 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEEddddNS_18SignedDistanceTypeERS4_RS7_E3$_2", ptr %0, align 8, !tbaa !633
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %.val, ptr %0, align 8, !tbaa !15
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !652
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !15 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #43
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl8copyleft4cgal26signed_distance_isosurfaceERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEEddddNS1_18SignedDistanceTypeERS6_RS9_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef double @_ZN3igl28signed_distance_pseudonormalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEENT_6ScalarERKNS_4AABBIS7_Li3EEERKNS1_10MatrixBaseIS7_EERKNSD_IT0_EERKNSD_IT1_EERKNSD_IT2_EERKNSD_IT3_EERKNSD_IT4_EERKNSD_IT5_EE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK4CGAL19Robust_constructionINS_20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS4_INS5_IN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEEEEEENS_19Cartesian_converterINS_5EpickES2_NS_12NT_converterIdNS_13Lazy_exact_ntISM_EEEEEENSQ_IS2_SR_NSS_ISU_dEEEEdEclIJNS_8Sphere_3ISR_EEEEEdDpRKT_(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.540, align 8            ; 5 uses
  %3 = alloca %class.anon.539, align 8            ; 4 uses
  %4 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %5 = alloca %"class.CGAL::Sphere_3.532", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @_ZNK4CGAL19Cartesian_converterINS_5EpickENS_5EpeckENS_12NT_converterIdNS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEEEclERKNS_8Sphere_3IS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Sphere_3.532") align 8 %5, ptr noundef nonnull align 1 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  invoke void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Sphere_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !653    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %6 = load <2 x double>, ptr %i.c, align 16, !tbaa !24 ; 4 uses
  %7 = extractelement <2 x double> %6, i64 0      ; 2 uses
  %i.f = fneg double %7                           ; 2 uses
  %i.g = fcmp oeq double %i.e, %i.f
  br i1 %i.g, label %_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKSI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %6) ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = call noundef <2 x double> @llvm.x86.sse2.max.sd(<2 x double> %i.h, <2 x double> %i.i)
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i.i, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i.i

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i.i: ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE40relative_precision_of_to_double_internalEvE31relative_precision_of_to_double)
  %i.n = load double, ptr %i.m, align 8, !tbaa !27
  %shift = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %6, %shift
  %i.o = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.p = fmul double %i.o, 5.000000e-01
  %i.q = fmul double %i.k, %i.n
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i.i, label %bb.d

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i.i: ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i.i, %bb.c
  %i.s = fsub double %i.e, %7
  %i.t = fmul double %i.s, 5.000000e-01
  br label %_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKSI_.exit

bb.d:                                             ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %i.b, ptr %3, align 8, !tbaa !656
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %3, ptr %2, align 8, !tbaa !15
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.v, align 8, !tbaa !15
  %i.w = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.w, align 8, !tbaa !15
  %i.x = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i.i unwind label %.body ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i.i:    ; preds = %bb.d
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.x) #46
          to label %bb.f unwind label %.body

bb.f:                                             ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.v, align 8, !tbaa !15
  store ptr null, ptr %i.w, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #38
  br label %bb.w

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i.i
  store ptr null, ptr %i.v, align 8, !tbaa !15
  store ptr null, ptr %i.w, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load atomic ptr, ptr %i.z monotonic, align 16 ; 0 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !653   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %8 = load <2 x double>, ptr %i.ac, align 16, !tbaa !24
  %9 = extractelement <2 x double> %8, i64 0
  %i.af = fsub double %i.ae, %9
  %i.ag = fmul double %i.af, 5.000000e-01
  br label %_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKSI_.exit

_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKSI_.exit: ; preds = %bb.b, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i.i, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i.i
  %i.ah = phi ptr [ %i.ab, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i.i ], [ %i.b, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.0.i.i.i.i = phi double [ %i.ag, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i.i ], [ %i.t, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i.i ], [ %i.f, %bb.b ]
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKSI_.exit
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %i.ak, -1
  store atomic i32 %i.ap, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKSI_.exit
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %_ZN4CGAL6HandleD2Ev.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.as = load ptr, ptr %4, align 8, !tbaa !653   ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %i.ax = load ptr, ptr %5, align 8, !tbaa !653   ; 4 uses
  %.not.i.i5 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i5, label %_ZN4CGAL6HandleD2Ev.exit7, label %bb.n

bb.n:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i6 = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1                    ; 2 uses
  br i1 %.not.i.i.i6, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit7

bb.q:                                             ; preds = %bb.o
  %i.bf = add nsw i32 %i.ba, -1
  store atomic i32 %i.bf, ptr %i.az monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit7

bb.r:                                             ; preds = %bb.n
  br i1 %i.bb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = atomicrmw sub ptr %i.az, i32 1 release, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.t, label %_ZN4CGAL6HandleD2Ev.exit7

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.bi = load ptr, ptr %5, align 8, !tbaa !653   ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4CGAL6HandleD2Ev.exit7, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit7

_ZN4CGAL6HandleD2Ev.exit7:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret double %.0.i.i.i.i

bb.v:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.v
  %.pn = phi { ptr, i32 } [ %i.y, %.body ], [ %i.bn, %bb.v ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Sphere_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.584, align 8            ; 5 uses
  %5 = alloca %class.anon.583, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.boost::multiprecision::number", align 16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !653
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i = load <2 x double>, ptr %i.q, align 16, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !660
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %.sroa.0.0.copyload.i.i, ptr %i.s, align 16, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 16, !tbaa !662
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !665
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Sphere_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %2, align 8, !tbaa !653    ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !653
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Sphere_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Sphere_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Sphere_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = and i32 %i.ac, -24577
  %i.ae = or disjoint i32 %i.ad, %i.i
  store i32 %i.ae, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4CGAL19Robust_constructionINS_17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors24Construct_circumcenter_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS4_INS5_IN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEENS_19Cartesian_converterINS_5EpickES2_NS_12NT_converterIdNS_13Lazy_exact_ntISM_EEEEEENSR_IS2_SS_NST_ISV_dEEEENS_7Point_3ISS_EEEclIJS11_S11_S11_EEES11_DpRKT_:bb.a

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit13

bb.q:                                             ; preds = %bb.o
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit13

bb.r:                                             ; preds = %bb.n
  br i1 %i.w, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.t, label %_ZN4CGAL6HandleD2Ev.exit13

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.ad = load ptr, ptr %8, align 8, !tbaa !653   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit13

_ZN4CGAL6HandleD2Ev.exit13:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.ai = load ptr, ptr %7, align 8, !tbaa !653   ; 4 uses
  %.not.i.i14 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i14, label %_ZN4CGAL6HandleD2Ev.exit16, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit13
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i15 = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1                    ; 2 uses
  br i1 %.not.i.i.i15, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.am, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit16

bb.y:                                             ; preds = %bb.w
  %i.aq = add nsw i32 %i.al, -1
  store atomic i32 %i.aq, ptr %i.ak monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit16

bb.z:                                             ; preds = %bb.v
  br i1 %i.am, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ar = atomicrmw sub ptr %i.ak, i32 1 release, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.ab, label %_ZN4CGAL6HandleD2Ev.exit16

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.at = load ptr, ptr %7, align 8, !tbaa !653   ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4CGAL6HandleD2Ev.exit16, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.at) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit16

_ZN4CGAL6HandleD2Ev.exit16:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit13, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.ay = load ptr, ptr %6, align 8, !tbaa !653   ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i17, label %_ZN4CGAL6HandleD2Ev.exit19, label %bb.ad

bb.ad:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit16
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i18 = icmp eq i8 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1                    ; 2 uses
  br i1 %.not.i.i.i18, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(12) %i.ay) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit19

bb.ag:                                            ; preds = %bb.ae
  %i.bg = add nsw i32 %i.bb, -1
  store atomic i32 %i.bg, ptr %i.ba monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit19

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.bc, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bh = atomicrmw sub ptr %i.ba, i32 1 release, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.aj, label %_ZN4CGAL6HandleD2Ev.exit19

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  fence acquire
  %i.bj = load ptr, ptr %6, align 8, !tbaa !653   ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4CGAL6HandleD2Ev.exit19, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(12) %i.bj) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit19

_ZN4CGAL6HandleD2Ev.exit19:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit16, %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  ret void

bb.al:                                            ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.br, %bb.ao ], [ %i.bq, %bb.an ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #38
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %i.bp, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #38
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aq ], [ %i.bo, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL19Cartesian_converterINS_5EpeckENS_5EpickENS_12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEdEEEclERKNS_7Point_3IS1_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.540, align 8            ; 5 uses
  %4 = alloca %class.anon.539, align 8            ; 4 uses
  %5 = alloca %"struct.CGAL::Lazy_construction_nt.698", align 1 ; 3 uses
  %6 = alloca %class.anon.540, align 8            ; 5 uses
  %7 = alloca %class.anon.539, align 8            ; 4 uses
  %8 = alloca %"struct.CGAL::Lazy_construction_nt.694", align 1 ; 3 uses
  %9 = alloca %class.anon.540, align 8            ; 5 uses
  %10 = alloca %class.anon.539, align 8           ; 4 uses
  %11 = alloca %"struct.CGAL::Lazy_construction_nt.681", align 1 ; 3 uses
  %12 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %13 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %14 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38, !noalias !794
  call void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %12, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !794
  %i.a = load ptr, ptr %12, align 8, !tbaa !653   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %15 = load <2 x double>, ptr %i.b, align 16, !tbaa !24 ; 4 uses
  %16 = extractelement <2 x double> %15, i64 0    ; 2 uses
  %i.e = fneg double %16                          ; 2 uses
  %i.f = fcmp oeq double %i.d, %i.e
  br i1 %i.f, label %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %15) ; 2 uses
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.i = call noundef <2 x double> @llvm.x86.sse2.max.sd(<2 x double> %i.g, <2 x double> %i.h)
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i: ; preds = %bb.b
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE40relative_precision_of_to_double_internalEvE31relative_precision_of_to_double)
  %i.m = load double, ptr %i.l, align 8, !tbaa !27
  %shift = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %15, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = fmul double %i.j, %i.m
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i, label %bb.c

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i: ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i, %bb.b
  %i.r = fsub double %i.d, %16
  %i.s = fmul double %i.r, 5.000000e-01
  br label %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit

bb.c:                                             ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  store ptr %i.a, ptr %10, align 8, !tbaa !656
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  store ptr %10, ptr %9, align 8, !tbaa !15
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %9, ptr %i.u, align 8, !tbaa !15
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.v, align 8, !tbaa !15
  %i.w = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i unwind label %bb.f ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i:      ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.w) #46
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.u, align 8, !tbaa !15
  store ptr null, ptr %i.v, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i
  store ptr null, ptr %i.u, align 8, !tbaa !15
  store ptr null, ptr %i.v, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load atomic ptr, ptr %i.y monotonic, align 16 ; 0 uses
  %i.aa = load ptr, ptr %12, align 8, !tbaa !653  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  %17 = load <2 x double>, ptr %i.ab, align 16, !tbaa !24
  %18 = extractelement <2 x double> %17, i64 0
  %i.ae = fsub double %i.ad, %18
  %i.af = fmul double %i.ae, 5.000000e-01
  br label %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit

_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit: ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i, %bb.a
  %.0.i.i.i = phi double [ %i.af, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i ], [ %i.s, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38, !noalias !797
  invoke void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %13, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.ap

bb.g:                                             ; preds = %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38, !noalias !797
  %i.ag = load ptr, ptr %13, align 8, !tbaa !653  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %19 = load <2 x double>, ptr %i.ah, align 16, !tbaa !24 ; 4 uses
  %20 = extractelement <2 x double> %19, i64 0    ; 2 uses
  %i.ak = fneg double %20                         ; 2 uses
  %i.al = fcmp oeq double %i.aj, %i.ak
  br i1 %i.al, label %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %19) ; 2 uses
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = call noundef <2 x double> @llvm.x86.sse2.max.sd(<2 x double> %i.am, <2 x double> %i.an)
  %i.ap = extractelement <2 x double> %i.ao, i64 0 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i18, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i13

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i13: ; preds = %bb.h
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE40relative_precision_of_to_double_internalEvE31relative_precision_of_to_double)
  %i.as = load double, ptr %i.ar, align 8, !tbaa !27
  %shift60 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop61 = fadd <2 x double> %19, %shift60
  %i.at = extractelement <2 x double> %foldExtExtBinop61, i64 0
  %i.au = fmul double %i.at, 5.000000e-01
  %i.av = fmul double %i.ap, %i.as
  %i.aw = fcmp olt double %i.au, %i.av
  br i1 %i.aw, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i18, label %bb.i

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i18: ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i13, %bb.h
  %i.ax = fsub double %i.aj, %20
  %i.ay = fmul double %i.ax, 5.000000e-01
  br label %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit21

bb.i:                                             ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %i.ag, ptr %7, align 8, !tbaa !656
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store ptr %7, ptr %6, align 8, !tbaa !15
  %i.ba = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %6, ptr %i.ba, align 8, !tbaa !15
  %i.bb = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bb, align 8, !tbaa !15
  %i.bc = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i14 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i14:    ; preds = %bb.i
  %.not.i.i.i.i.i.i15 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i15, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i16, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i14
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #46
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ba, align 8, !tbaa !15
  store ptr null, ptr %i.bb, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.body19

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i16: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i14
  store ptr null, ptr %i.ba, align 8, !tbaa !15
  store ptr null, ptr %i.bb, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 16 ; 0 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !653  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24
  %21 = load <2 x double>, ptr %i.bh, align 16, !tbaa !24
  %22 = extractelement <2 x double> %21, i64 0
  %i.bk = fsub double %i.bj, %22
  %i.bl = fmul double %i.bk, 5.000000e-01
  br label %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit21

_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit21: ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i16, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i18, %bb.g
  %.0.i.i.i17 = phi double [ %i.bl, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i16 ], [ %i.ay, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i18 ], [ %i.ak, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !800
  invoke void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.aq

bb.m:                                             ; preds = %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !800
  %i.bm = load ptr, ptr %14, align 8, !tbaa !653  ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %23 = load <2 x double>, ptr %i.bn, align 16, !tbaa !24 ; 4 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  %i.bq = fneg double %24                         ; 2 uses
  %i.br = fcmp oeq double %i.bp, %i.bq
  br i1 %i.br, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %23) ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = call noundef <2 x double> @llvm.x86.sse2.max.sd(<2 x double> %i.bs, <2 x double> %i.bt)
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bw = fcmp oeq double %i.bv, 0.000000e+00
  br i1 %i.bw, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i27, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i22

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i22: ; preds = %bb.n
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE40relative_precision_of_to_double_internalEvE31relative_precision_of_to_double)
  %i.by = load double, ptr %i.bx, align 8, !tbaa !27
  %shift63 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fadd <2 x double> %23, %shift63
  %i.bz = extractelement <2 x double> %foldExtExtBinop64, i64 0
  %i.ca = fmul double %i.bz, 5.000000e-01
  %i.cb = fmul double %i.bv, %i.by
  %i.cc = fcmp olt double %i.ca, %i.cb
  br i1 %i.cc, label %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i27, label %bb.o

_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i27: ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i22, %bb.n
  %i.cd = fsub double %i.bp, %24
  %i.ce = fmul double %i.cd, 5.000000e-01
  br label %bb.r

bb.o:                                             ; preds = %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.i.i.i22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %i.bm, ptr %4, align 8, !tbaa !656
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %4, ptr %3, align 8, !tbaa !15
  %i.cg = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.cg, align 8, !tbaa !15
  %i.ch = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ch, align 8, !tbaa !15
  %i.ci = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i23 unwind label %.body28 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i23:    ; preds = %bb.o
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i24, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i25, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i23
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ci) #46
          to label %bb.q unwind label %.body28

bb.q:                                             ; preds = %bb.p
  unreachable

.body28:                                          ; preds = %bb.p, %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cg, align 8, !tbaa !15
  store ptr null, ptr %i.ch, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %14) #38
  br label %bb.ar

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i25: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i.i23
  store ptr null, ptr %i.cg, align 8, !tbaa !15
  store ptr null, ptr %i.ch, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.cl = load atomic ptr, ptr %i.ck monotonic, align 16 ; 0 uses
  %i.cm = load ptr, ptr %14, align 8, !tbaa !653  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !24
  %25 = load <2 x double>, ptr %i.cn, align 16, !tbaa !24
  %26 = extractelement <2 x double> %25, i64 0
  %i.cq = fsub double %i.cp, %26
  %i.cr = fmul double %i.cq, 5.000000e-01
  br label %bb.r

bb.r:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i25, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i27, %bb.m
  %i.cs = phi ptr [ %i.cm, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i25 ], [ %i.bm, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i27 ], [ %i.bm, %bb.m ] ; 3 uses
  %.0.i.i.i26 = phi double [ %i.cr, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i.i.i25 ], [ %i.ce, %_ZN4CGAL30has_smaller_relative_precisionILb0EEEbRKNS_11Interval_ntIXT_EEEd.exit.thread.i.i.i27 ], [ %i.bq, %bb.m ]
  store double %.0.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.0.i.i.i17, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.0.i.i.i26, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ct, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cv = load atomic i32, ptr %i.cu monotonic, align 4 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.da = add nsw i32 %i.cv, -1
  store atomic i32 %i.da, ptr %i.cu monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.v:                                             ; preds = %bb.r
  br i1 %i.cw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = atomicrmw sub ptr %i.cu, i32 1 release, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.x, label %_ZN4CGAL6HandleD2Ev.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  fence acquire
  %i.dd = load ptr, ptr %14, align 8, !tbaa !653  ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(12) %i.dd) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.t, %bb.u, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.di = load ptr, ptr %13, align 8, !tbaa !653  ; 4 uses
  %.not.i.i31 = icmp eq ptr %i.di, null
  br i1 %.not.i.i31, label %_ZN4CGAL6HandleD2Ev.exit33, label %bb.z

bb.z:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i32 = icmp eq i8 %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dl = load atomic i32, ptr %i.dk monotonic, align 4 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 1                    ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !68
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(12) %i.di) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit33

bb.ac:                                            ; preds = %bb.aa
  %i.dq = add nsw i32 %i.dl, -1
  store atomic i32 %i.dq, ptr %i.dk monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit33

bb.ad:                                            ; preds = %bb.z
  br i1 %i.dm, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = atomicrmw sub ptr %i.dk, i32 1 release, align 4
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.af, label %_ZN4CGAL6HandleD2Ev.exit33

bb.af:                                            ; preds = %bb.ae, %bb.ad
  fence acquire
  %i.dt = load ptr, ptr %13, align 8, !tbaa !653  ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN4CGAL6HandleD2Ev.exit33, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(12) %i.dt) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit33

_ZN4CGAL6HandleD2Ev.exit33:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %i.dy = load ptr, ptr %12, align 8, !tbaa !653  ; 4 uses
  %.not.i.i34 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i34, label %_ZN4CGAL6HandleD2Ev.exit36, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit33
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i35 = icmp eq i8 %i.dz, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.eb = load atomic i32, ptr %i.ea monotonic, align 4 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 1                    ; 2 uses
  br i1 %.not.i.i.i35, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ec, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !68
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(12) %i.dy) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit36

bb.ak:                                            ; preds = %bb.ai
  %i.eg = add nsw i32 %i.eb, -1
  store atomic i32 %i.eg, ptr %i.ea monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit36

bb.al:                                            ; preds = %bb.ah
  br i1 %i.ec, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = atomicrmw sub ptr %i.ea, i32 1 release, align 4
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.an, label %_ZN4CGAL6HandleD2Ev.exit36

bb.an:                                            ; preds = %bb.am, %bb.al
  fence acquire
  %i.ej = load ptr, ptr %12, align 8, !tbaa !653  ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN4CGAL6HandleD2Ev.exit36, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(12) %i.ej) #38, !inline_history !659
  br label %_ZN4CGAL6HandleD2Ev.exit36

_ZN4CGAL6HandleD2Ev.exit36:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit33, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  ret void

bb.ap:                                            ; preds = %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %_ZNK4CGAL12NT_converterINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEdEclERKSF_.exit21
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.body28, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.cj, %.body28 ], [ %i.ep, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %.body19

.body19:                                          ; preds = %bb.l, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ar ], [ %i.bd, %bb.l ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %13) #38
  br label %bb.as

bb.as:                                            ; preds = %.body19, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body19 ], [ %i.eo, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %.body

.body:                                            ; preds = %bb.f, %bb.as
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.as ], [ %i.x, %bb.f ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors24Construct_circumcenter_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_3IS1_EESS_SS_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.587") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %class.anon.676, align 8            ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_:bb.a
  %i.ag = insertelement <2 x double> poison, double %i.a, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x double> %i.af, %i.ah          ; 5 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj) ; 2 uses
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.an = fcmp olt double %i.j, %i.ak
  %.0103 = select i1 %i.an, double %i.ak, double %i.j ; 2 uses
  %i.ao = fcmp olt double %.0103, %i.am
  %.1104 = select i1 %i.ao, double %i.am, double %.0103 ; 4 uses
  %i.ap = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ai, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.au, <2 x double> %i.ar) ; 2 uses
  %i.aw = fneg <2 x double> %i.p
  %i.ax = shufflevector <2 x double> %i.ai, <2 x double> %i.av, <2 x i32> <i32 1, i32 3>
  %i.ay = fmul <2 x double> %i.ax, %i.aw
  %i.az = shufflevector <2 x double> %i.ai, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.q, <2 x double> %i.ay) ; 2 uses
  %i.bb = extractelement <2 x double> %i.o, i64 1
  %i.bc = extractelement <2 x double> %i.ba, i64 0
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  %i.be = tail call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.bd) ; 2 uses
  %i.bf = fmul double %.1104, f0x3CF704402C00000A
  %i.bg = fmul double %i.bf, %.1102
  %i.bh = fmul double %i.bg, %.1100               ; 2 uses
  %i.bi = fcmp ogt double %.1104, %.1100          ; 2 uses
  %.2105 = select i1 %i.bi, double %.1100, double %.1104 ; 3 uses
  %.2 = select i1 %i.bi, double %.1104, double %.1100 ; 3 uses
  %i.bj = fcmp ogt double %.1102, %.2
  br i1 %i.bj, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bk = fcmp olt double %.1102, %.2105
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.3106 = phi double [ %.2105, %bb.b ], [ %.1102, %bb.c ], [ %.2105, %bb.a ] ; 2 uses
  %.3 = phi double [ %.2, %bb.b ], [ %.2, %bb.c ], [ %.1102, %bb.a ]
  %i.bl = fcmp olt double %.3106, 1.000000e-97
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = fcmp oeq double %.3106, 0.000000e+00
  br i1 %i.bm, label %.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bn = fcmp olt double %.3, f0x551C931E8AB87173
  br i1 %i.bn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bo = fcmp ogt double %i.be, %i.bh
  br i1 %i.bo, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = fneg double %i.bh
  %i.bq = fcmp olt double %i.be, %i.bp
  br i1 %i.bq, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %i.br = tail call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.e, %bb.g, %bb.i
  %.1 = phi i32 [ %i.br, %bb.i ], [ -1, %bb.h ], [ 0, %bb.e ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %6 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %7 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %8 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !27, !noalias !1493 ; 3 uses
  %i.n = fneg <2 x double> %i.m                   ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 2, i32 0>
  %i.p = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 3, i32 1>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !27, !noalias !1493 ; 2 uses
  %i.s = fneg double %i.r
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = load double, ptr %2, align 8, !tbaa !27, !noalias !1496 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !27, !noalias !1496 ; 3 uses
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = load <2 x double>, ptr %3, align 8, !tbaa !27, !noalias !1499 ; 3 uses
  %i.af = fneg <2 x double> %i.ae                 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !27, !noalias !1499 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = load double, ptr %4, align 8, !tbaa !27, !noalias !1502 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !27, !noalias !1502 ; 3 uses
  %i.at = fneg <2 x double> %i.as                 ; 2 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.aw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #38, !srcloc !816
  %i.ax = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o) #37, !srcloc !814 ; 3 uses
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ay) #38, !srcloc !816
  store <2 x double> %i.az, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.ba = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #38, !srcloc !816
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #38, !srcloc !816
  store <2 x double> %i.bc, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.bd = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #38, !srcloc !816
  %i.be = fadd <2 x double> %i.ax, %i.bd
  %i.bf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.be) #38, !srcloc !816
  store <2 x double> %i.bf, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.bg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #38, !srcloc !816
  %i.bh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #37, !srcloc !814 ; 3 uses
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #38, !srcloc !816
  store <2 x double> %i.bj, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.bk = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #38, !srcloc !816
  %i.bl = fadd <2 x double> %i.bh, %i.bk
  %i.bm = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bl) #38, !srcloc !816
  store <2 x double> %i.bm, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.bn = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.au) #38, !srcloc !816
  %i.bo = fadd <2 x double> %i.bh, %i.bn
  %i.bp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bo) #38, !srcloc !816
  store <2 x double> %i.bp, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.bq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad) #38, !srcloc !816
  %i.br = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #37, !srcloc !814 ; 3 uses
  %i.bs = fadd <2 x double> %i.bq, %i.br
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #38, !srcloc !816
  store <2 x double> %i.bt, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.bu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am) #38, !srcloc !816
  %i.bv = fadd <2 x double> %i.br, %i.bu
  %i.bw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bv) #38, !srcloc !816
  store <2 x double> %i.bw, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.bx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.av) #38, !srcloc !816
  %i.by = fadd <2 x double> %i.br, %i.bx
  %i.bz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.by) #38, !srcloc !816
  store <2 x double> %i.bz, ptr %13, align 16
  %i.ca = invoke <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.cb = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.cc = fneg double %i.cb
  %i.cd = fcmp olt double %i.cb, 0.000000e+00
  %14 = extractelement <2 x double> %i.ca, i64 1  ; 2 uses
  br i1 %i.cd, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.ce = fcmp olt double %14, 0.000000e+00
  br i1 %i.ce, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cf = fcmp une double %14, %i.cc
  %i.cg = select i1 %i.cf, i64 8589934591, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.c ], [ 4294967297, %.noexc ], [ -1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.ch = icmp ne i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ci = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.323 = extractvalue { ptr, i32 } %i.ci, 1
  %i.cj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.ck = icmp eq i32 %.323, %i.cj
  br i1 %i.ck, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.327 = extractvalue { ptr, i32 } %i.ci, 0
  %i.cl = call ptr @__cxa_begin_catch(ptr %.327) #38 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.f
  %.2 = phi i32 [ undef, %bb.f ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  %.1 = phi i1 [ true, %bb.f ], [ %i.ch, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.cm = load i32, ptr %i.c, align 4
  %i.cn = and i32 %i.cm, -24577
  %i.co = or disjoint i32 %i.cn, %i.i
  store i32 %i.co, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.1, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.merged = phi { ptr, i32 } [ %i.cq, %bb.i ], [ %i.ci, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cr = load i32, ptr %i.a, align 4
  %i.cs = and i32 %i.cr, -24577
  %i.ct = or disjoint i32 %i.cs, %i.i
  store i32 %i.ct, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %.merged

bb.k:                                             ; preds = %bb.g, %bb.h
  %.3 = phi i32 [ %i.cp, %bb.h ], [ %.2, %bb.g ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %6 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %7 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %8 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.637") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.637") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.637") align 16 %7, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.637") align 16 %8, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.i = invoke noundef i32 @_ZN4CGAL13orientationC3INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(288) %5, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(288) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c, ptr noundef nonnull align 16 dereferenceable(84) %i.d, ptr noundef nonnull align 16 dereferenceable(288) %7, ptr noundef nonnull align 16 dereferenceable(84) %i.e, ptr noundef nonnull align 16 dereferenceable(84) %i.f, ptr noundef nonnull align 16 dereferenceable(288) %8, ptr noundef nonnull align 16 dereferenceable(84) %i.g, ptr noundef nonnull align 16 dereferenceable(84) %i.h)
          to label %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit unwind label %bb.t

_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 265
  %i.k = load i8, ptr %i.j, align 1, !tbaa !743, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 266
  %i.n = load i8, ptr %i.m, align 2, !range !13
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.h, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.e, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 169
  %i.u = load i8, ptr %i.t, align 1, !tbaa !743, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 170
  %i.x = load i8, ptr %i.w, align 2, !range !13
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.g, align 16
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.f, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !743, !range !13, !noundef !14
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.ah = load i8, ptr %i.ag, align 2, !range !13
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i64, ptr %8, align 16
  %i.am = shl i64 %i.al, 3
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #43
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 265
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !743, !range !13, !noundef !14
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 266
  %i.ar = load i8, ptr %i.aq, align 2, !range !13
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i.i.i.i.i.i12 = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i.i.i.i12, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i64, ptr %i.f, align 16
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.aw) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13:              ; preds = %bb.h, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 169
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !743, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 170
  %i.bb = load i8, ptr %i.ba, align 2, !range !13
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i.i.1.i.i.i14 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i.1.i.i.i14, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i15, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load i64, ptr %i.e, align 16
end_hunk_2
begin_hunk_3_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_:bb.a
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i12

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i12:              ; preds = %bb.i, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 169
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !743, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 170
  %i.bb = load i8, ptr %i.ba, align 2, !range !13
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i.i.1.i.i.i13 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i.1.i.i.i13, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i14, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i12
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load i64, ptr %i.c, align 16
  %i.bg = shl i64 %i.bf, 3
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i14

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i14:            ; preds = %bb.j, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i12
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !743, !range !13, !noundef !14
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.bl = load i8, ptr %i.bk, align 2, !range !13
  %i.bm = trunc nuw i8 %i.bl to i1
  %or.cond.i.i.i.2.i.i.i15 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %or.cond.i.i.i.2.i.i.i15, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i14
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load i64, ptr %5, align 16
  %i.bq = shl i64 %i.bp, 3
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bq) #43
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i14, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 265
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !743, !range !13, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 266
  %i.bv = load i8, ptr %i.bu, align 2, !range !13
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i.i.i.i17 = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i18, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load i64, ptr %i.b, align 16
  %i.ca = shl i64 %i.bz, 3
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.ca) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i18

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i18:              ; preds = %bb.l, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !743, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.cf = load i8, ptr %i.ce, align 2, !range !13
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond.i.i.i.1.i.i.i19 = select i1 %i.cd, i1 true, i1 %i.cg
  br i1 %or.cond.i.i.i.1.i.i.i19, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i20, label %bb.m

bb.m:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i18
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load i64, ptr %i.a, align 16
  %i.ck = shl i64 %i.cj, 3
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.ck) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i20

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i20:            ; preds = %bb.m, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i18
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !743, !range !13, !noundef !14
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.cp = load i8, ptr %i.co, align 2, !range !13
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond.i.i.i.2.i.i.i21 = select i1 %i.cn, i1 true, i1 %i.cq
  br i1 %or.cond.i.i.i.2.i.i.i21, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit22, label %bb.n

bb.n:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i20
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load i64, ptr %4, align 16
  %i.cu = shl i64 %i.ct, 3
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cu) #43
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit22

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit22: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i20, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret i32 %.1.i.i

bb.o:                                             ; preds = %bb.a
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %6) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.q ], [ %i.cw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %5) #38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.cv, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4CGAL22coplanar_orientationC3INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_S9_S9_S9_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #5 comdat {
bb.a:
  %9 = alloca %"class.CGAL::Uncertain.795", align 2 ; 4 uses
  %10 = alloca %"class.CGAL::Uncertain.795", align 2 ; 4 uses
  %i.a = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.c = load <2 x double>, ptr %3, align 16, !tbaa !24
  %i.d = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.c) #38, !srcloc !816
  %i.e = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.b) #37, !srcloc !814
  %i.f = fadd <2 x double> %i.d, %i.e
  %i.g = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.f) #38, !srcloc !816
  %i.h = load <2 x double>, ptr %1, align 16, !tbaa !24
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.j = load <2 x double>, ptr %4, align 16, !tbaa !24
  %i.k = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.j) #38, !srcloc !816
  %i.l = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.i) #37, !srcloc !814
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #38, !srcloc !816
  %i.o = bitcast <2 x double> %i.n to <2 x i64>
  %i.p = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x double>, ptr %6, align 16, !tbaa !24
  %i.s = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #38, !srcloc !816
  %i.t = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #37, !srcloc !814
  %i.u = fadd <2 x double> %i.s, %i.t
  %i.v = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #38, !srcloc !816
  %i.w = load <2 x double>, ptr %1, align 16, !tbaa !24
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = load <2 x double>, ptr %7, align 16, !tbaa !24
  %i.z = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #38, !srcloc !816
  %i.aa = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.x) #37, !srcloc !814
  %i.ab = fadd <2 x double> %i.z, %i.aa
  %i.ac = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ab) #38, !srcloc !816
  %i.ad = bitcast <2 x double> %i.ac to <2 x i64>
  %i.ae = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.g) #37, !srcloc !814 ; 3 uses
  %i.af = fneg <2 x double> %i.ae
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = xor <2 x i64> %i.ad, <i64 -9223372036854775808, i64 0>
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double>
  %i.aj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #38, !srcloc !816 ; 3 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = fmul <2 x double> %i.ae, %i.aj
  %i.am = fmul <2 x double> %i.ae, %i.ak
  %i.an = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.am, <2 x double> splat (double +inf))
  %i.ao = fmul <2 x double> %i.ag, %i.aj
  %i.ap = fmul <2 x double> %i.ag, %i.ak
  %i.aq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ap, <2 x double> splat (double +inf))
  %i.ar = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.al, <2 x double> %i.an)
  %i.as = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ao, <2 x double> %i.aq)
  %i.at = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ar, <2 x double> %i.as)
  %i.au = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at) #38, !srcloc !816 ; 2 uses
  %i.av = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #37, !srcloc !814 ; 3 uses
  %i.aw = fneg <2 x double> %i.av
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ay = xor <2 x i64> %i.o, <i64 -9223372036854775808, i64 0>
  %i.az = bitcast <2 x i64> %i.ay to <2 x double>
  %i.ba = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #38, !srcloc !816 ; 3 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = fmul <2 x double> %i.av, %i.ba
  %i.bd = fmul <2 x double> %i.av, %i.bb
  %i.be = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bd, <2 x double> splat (double +inf))
  %i.bf = fmul <2 x double> %i.ax, %i.ba
  %i.bg = fmul <2 x double> %i.ax, %i.bb
  %i.bh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bg, <2 x double> splat (double +inf))
  %i.bi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bc, <2 x double> %i.be)
  %i.bj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bf, <2 x double> %i.bh)
  %i.bk = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bi, <2 x double> %i.bj)
  %i.bl = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #38, !srcloc !816 ; 2 uses
  %i.bm = extractelement <2 x double> %i.au, i64 0
  %i.bn = fneg double %i.bm                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bo = fcmp olt double %.sroa.0.8.vec.extract.i.i, %i.bn
  %11 = extractelement <2 x double> %i.au, i64 1  ; 2 uses
  br i1 %i.bo, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = extractelement <2 x double> %i.bl, i64 0
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = fcmp olt double %11, %i.bq
  br i1 %i.br, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = fcmp une double %11, %i.bq
  %i.bt = fcmp une double %.sroa.0.8.vec.extract.i.i, %i.bn
  %or.cond.not.i.i.i.i.i = or i1 %i.bt, %i.bs
  %i.bu = select i1 %or.cond.not.i.i.i.i.i, i64 8589934591, i64 0
  br label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit

_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.bu, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32
  %i.bv = icmp slt i64 %.sroa.5.0.i.i.i.i.i, 0
  %i.bw = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i, 0
  %or.cond.i.i = or i1 %i.bv, %i.bw
  %i.bx = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.3.0.extract.trunc.i.i
  %i.by = zext i1 %i.bx to i16
  %i.bz = or disjoint i16 %i.by, 256
  %i.ca = trunc nuw i16 %i.bz to i9
  %i.cb = xor i9 %i.ca, -255
  %i.cc = tail call i9 @llvm.bitreverse.i9(i9 %i.cb)
  %i.cd = zext i9 %i.cc to i16
  %.sroa.01.0.insert.insert.i.i = select i1 %or.cond.i.i, i16 257, i16 %i.cd
  store i16 %.sroa.01.0.insert.insert.i.i, ptr %9, align 2
  %i.ce = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br i1 %i.ce, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit34, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit
  %i.cf = load <2 x double>, ptr %1, align 16, !tbaa !24
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = load <2 x double>, ptr %4, align 16, !tbaa !24
  %i.ci = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ch) #38, !srcloc !816
  %i.cj = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg) #37, !srcloc !814
  %i.ck = fadd <2 x double> %i.ci, %i.cj
  %i.cl = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ck) #38, !srcloc !816
  %i.cm = load <2 x double>, ptr %2, align 16, !tbaa !24
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.co = load <2 x double>, ptr %5, align 16, !tbaa !24
  %i.cp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co) #38, !srcloc !816
  %i.cq = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cn) #37, !srcloc !814
  %i.cr = fadd <2 x double> %i.cp, %i.cq
  %i.cs = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cr) #38, !srcloc !816
  %i.ct = bitcast <2 x double> %i.cs to <2 x i64>
  %i.cu = load <2 x double>, ptr %1, align 16, !tbaa !24
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = load <2 x double>, ptr %7, align 16, !tbaa !24
  %i.cx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cw) #38, !srcloc !816
  %i.cy = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cv) #37, !srcloc !814
  %i.cz = fadd <2 x double> %i.cx, %i.cy
  %i.da = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz) #38, !srcloc !816
  %i.db = load <2 x double>, ptr %2, align 16, !tbaa !24
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = load <2 x double>, ptr %8, align 16, !tbaa !24
  %i.de = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dd) #38, !srcloc !816
  %i.df = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dc) #37, !srcloc !814
  %i.dg = fadd <2 x double> %i.de, %i.df
  %i.dh = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dg) #38, !srcloc !816
  %i.di = bitcast <2 x double> %i.dh to <2 x i64>
  %i.dj = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cl) #37, !srcloc !814 ; 3 uses
  %i.dk = fneg <2 x double> %i.dj
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dm = xor <2 x i64> %i.di, <i64 -9223372036854775808, i64 0>
  %i.dn = bitcast <2 x i64> %i.dm to <2 x double>
  %i.do = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dn) #38, !srcloc !816 ; 3 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dq = fmul <2 x double> %i.dj, %i.do
  %i.dr = fmul <2 x double> %i.dj, %i.dp
  %i.ds = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dr, <2 x double> splat (double +inf))
  %i.dt = fmul <2 x double> %i.dl, %i.do
  %i.du = fmul <2 x double> %i.dl, %i.dp
  %i.dv = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.du, <2 x double> splat (double +inf))
  %i.dw = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dq, <2 x double> %i.ds)
  %i.dx = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dt, <2 x double> %i.dv)
  %i.dy = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dw, <2 x double> %i.dx)
  %i.dz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dy) #38, !srcloc !816 ; 2 uses
  %i.ea = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.da) #37, !srcloc !814 ; 3 uses
  %i.eb = fneg <2 x double> %i.ea
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ed = xor <2 x i64> %i.ct, <i64 -9223372036854775808, i64 0>
  %i.ee = bitcast <2 x i64> %i.ed to <2 x double>
  %i.ef = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ee) #38, !srcloc !816 ; 3 uses
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eh = fmul <2 x double> %i.ea, %i.ef
  %i.ei = fmul <2 x double> %i.ea, %i.eg
  %i.ej = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ei, <2 x double> splat (double +inf))
  %i.ek = fmul <2 x double> %i.ec, %i.ef
  %i.el = fmul <2 x double> %i.ec, %i.eg
  %i.em = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.el, <2 x double> splat (double +inf))
  %i.en = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eh, <2 x double> %i.ej)
  %i.eo = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ek, <2 x double> %i.em)
  %i.ep = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.en, <2 x double> %i.eo)
  %i.eq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ep) #38, !srcloc !816 ; 2 uses
  %i.er = extractelement <2 x double> %i.dz, i64 0
  %i.es = fneg double %i.er                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i22 = extractelement <2 x double> %i.eq, i64 1 ; 2 uses
  %i.et = fcmp olt double %.sroa.0.8.vec.extract.i.i22, %i.es
  %12 = extractelement <2 x double> %i.dz, i64 1  ; 2 uses
  br i1 %i.et, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eu = extractelement <2 x double> %i.eq, i64 0
  %i.ev = fneg double %i.eu                       ; 2 uses
  %i.ew = fcmp olt double %12, %i.ev
  br i1 %i.ew, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ex = fcmp une double %12, %i.ev
  %i.ey = fcmp une double %.sroa.0.8.vec.extract.i.i22, %i.es
  %or.cond.not.i.i.i.i.i23 = or i1 %i.ey, %i.ex
  %i.ez = select i1 %or.cond.not.i.i.i.i.i23, i64 8589934591, i64 0
  br label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25

_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i.i.i.i.i24 = phi i64 [ %i.ez, %bb.f ], [ 4294967297, %bb.d ], [ -1, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %.sroa.0.0.extract.trunc.i.i26 = trunc i64 %.sroa.5.0.i.i.i.i.i24 to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i27 = lshr i64 %.sroa.5.0.i.i.i.i.i24, 32
  %.sroa.3.0.extract.trunc.i.i28 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i27 to i32
  %i.fa = icmp slt i64 %.sroa.5.0.i.i.i.i.i24, 0
  %i.fb = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i26, 0
  %or.cond.i.i29 = or i1 %i.fa, %i.fb
  %i.fc = icmp eq i32 %.sroa.0.0.extract.trunc.i.i26, %.sroa.3.0.extract.trunc.i.i28
  %i.fd = zext i1 %i.fc to i16
  %i.fe = or disjoint i16 %i.fd, 256
  %i.ff = trunc nuw i16 %i.fe to i9
  %i.fg = xor i9 %i.ff, -255
  %i.fh = call i9 @llvm.bitreverse.i9(i9 %i.fg)
  %i.fi = zext i9 %i.fh to i16
  %.sroa.01.0.insert.insert.i.i30 = select i1 %or.cond.i.i29, i16 257, i16 %i.fi
  store i16 %.sroa.01.0.insert.insert.i.i30, ptr %10, align 2
  %i.fj = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br i1 %i.fj, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit34, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25
  %i.fk = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = load <2 x double>, ptr %3, align 16, !tbaa !24
  %i.fn = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fm) #38, !srcloc !816
  %i.fo = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fl) #37, !srcloc !814
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  %i.fq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fp) #38, !srcloc !816
  %i.fr = load <2 x double>, ptr %2, align 16, !tbaa !24
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = load <2 x double>, ptr %5, align 16, !tbaa !24
  %i.fu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ft) #38, !srcloc !816
  %i.fv = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fs) #37, !srcloc !814
  %i.fw = fadd <2 x double> %i.fu, %i.fv
  %i.fx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fw) #38, !srcloc !816
  %i.fy = bitcast <2 x double> %i.fx to <2 x i64>
  %i.fz = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gb = load <2 x double>, ptr %6, align 16, !tbaa !24
  %i.gc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gb) #38, !srcloc !816
  %i.gd = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ga) #37, !srcloc !814
  %i.ge = fadd <2 x double> %i.gc, %i.gd
  %i.gf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ge) #38, !srcloc !816
  %i.gg = load <2 x double>, ptr %2, align 16, !tbaa !24
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = load <2 x double>, ptr %8, align 16, !tbaa !24
  %i.gj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gi) #38, !srcloc !816
  %i.gk = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gh) #37, !srcloc !814
  %i.gl = fadd <2 x double> %i.gj, %i.gk
  %i.gm = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gl) #38, !srcloc !816
  %i.gn = bitcast <2 x double> %i.gm to <2 x i64>
  %i.go = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fq) #37, !srcloc !814 ; 3 uses
  %i.gp = fneg <2 x double> %i.go
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = xor <2 x i64> %i.gn, <i64 -9223372036854775808, i64 0>
  %i.gs = bitcast <2 x i64> %i.gr to <2 x double>
  %i.gt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gs) #38, !srcloc !816 ; 3 uses
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gv = fmul <2 x double> %i.go, %i.gt
  %i.gw = fmul <2 x double> %i.go, %i.gu
  %i.gx = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gw, <2 x double> splat (double +inf))
  %i.gy = fmul <2 x double> %i.gq, %i.gt
  %i.gz = fmul <2 x double> %i.gq, %i.gu
  %i.ha = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gz, <2 x double> splat (double +inf))
  %i.hb = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gv, <2 x double> %i.gx)
  %i.hc = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gy, <2 x double> %i.ha)
  %i.hd = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hb, <2 x double> %i.hc)
  %i.he = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hd) #38, !srcloc !816 ; 2 uses
  %i.hf = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gf) #37, !srcloc !814 ; 3 uses
  %i.hg = fneg <2 x double> %i.hf
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hi = xor <2 x i64> %i.fy, <i64 -9223372036854775808, i64 0>
  %i.hj = bitcast <2 x i64> %i.hi to <2 x double>
  %i.hk = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hj) #38, !srcloc !816 ; 3 uses
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hm = fmul <2 x double> %i.hf, %i.hk
  %i.hn = fmul <2 x double> %i.hf, %i.hl
  %i.ho = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hn, <2 x double> splat (double +inf))
  %i.hp = fmul <2 x double> %i.hh, %i.hk
  %i.hq = fmul <2 x double> %i.hh, %i.hl
  %i.hr = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hq, <2 x double> splat (double +inf))
  %i.hs = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hm, <2 x double> %i.ho)
  %i.ht = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hp, <2 x double> %i.hr)
  %i.hu = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hs, <2 x double> %i.ht)
  %i.hv = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hu) #38, !srcloc !816 ; 2 uses
  %i.hw = extractelement <2 x double> %i.he, i64 0
  %i.hx = fneg double %i.hw                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i31 = extractelement <2 x double> %i.hv, i64 1 ; 2 uses
  %i.hy = fcmp olt double %.sroa.0.8.vec.extract.i.i31, %i.hx
  %13 = extractelement <2 x double> %i.he, i64 1  ; 2 uses
  br i1 %i.hy, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit34, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hz = extractelement <2 x double> %i.hv, i64 0
  %i.ia = fneg double %i.hz                       ; 2 uses
  %i.ib = fcmp olt double %13, %i.ia
  br i1 %i.ib, label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ic = fcmp une double %13, %i.ia
  %i.id = fcmp une double %.sroa.0.8.vec.extract.i.i31, %i.hx
  %or.cond.not.i.i.i.i.i32 = or i1 %i.id, %i.ic
  %i.ie = select i1 %or.cond.not.i.i.i.i.i32, i64 8589934591, i64 0
  br label %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit34

_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit34: ; preds = %bb.i, %bb.h, %bb.g, %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25, %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit
  %.sroa.021.1 = phi i64 [ %.sroa.5.0.i.i.i.i.i, %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit ], [ %.sroa.5.0.i.i.i.i.i24, %_ZN4CGAL13orientationC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_.exit25 ], [ %i.ie, %bb.i ], [ 4294967297, %bb.g ], [ -1, %bb.h ]
  ret i64 %.sroa.021.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !1541, !range !13, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1543, !range !13, !noundef !14
  %i.d = icmp eq i8 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %i.a to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.131, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL30Uncertain_conversion_exceptionE, i64 16), ptr %i.f, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE, ptr nonnull @_ZNSt11range_errorD2Ev) #46
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !24
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #38
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.g ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #18

declare void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL30Uncertain_conversion_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4CGAL13orientationC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.CGAL::cpp_float", align 16  ; 13 uses
  %7 = alloca %"class.CGAL::cpp_float", align 16  ; 13 uses
  %8 = alloca %"class.CGAL::cpp_float", align 16  ; 13 uses
  %9 = alloca %"class.CGAL::cpp_float", align 16  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %6, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %7, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %1)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %8, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %0)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %9, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %1)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.a = invoke noundef i32 @_ZN4CGAL19sign_of_determinantINS_9cpp_floatEEENS_3SgnIT_E11result_typeERKS3_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8, ptr noundef nonnull align 16 dereferenceable(84) %9)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.c = load i8, ptr %i.b, align 1, !tbaa !743, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.f = load i8, ptr %i.e, align 2, !range !13
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %9, align 16
  %i.k = shl i64 %i.j, 3
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.m = load i8, ptr %i.l, align 1, !tbaa !743, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.p = load i8, ptr %i.o, align 2, !range !13
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i.i15 = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i15, label %_ZN4CGAL9cpp_floatD2Ev.exit16, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %8, align 16
  %i.u = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.u) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit16

_ZN4CGAL9cpp_floatD2Ev.exit16:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 73
  %i.w = load i8, ptr %i.v, align 1, !tbaa !743, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 74
  %i.z = load i8, ptr %i.y, align 2, !range !13
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i.i17 = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit18, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i64, ptr %7, align 16
  %i.ae = shl i64 %i.ad, 3
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit18

_ZN4CGAL9cpp_floatD2Ev.exit18:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit16, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !743, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.aj = load i8, ptr %i.ai, align 2, !range !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i19 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i19, label %_ZN4CGAL9cpp_floatD2Ev.exit20, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %6, align 16
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit20

_ZN4CGAL9cpp_floatD2Ev.exit20:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
end_hunk_3
begin_hunk_4_@_ZN4CGAL33coplanar_side_of_bounded_circleC3INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_12Bounded_sideET_E4typeERKS5_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_:bb.a
  %i.ge = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = load <2 x double>, ptr %3, align 16, !tbaa !24
  %i.gh = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gg) #38, !srcloc !816
  %i.gi = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gf) #37, !srcloc !814
  %i.gj = fadd <2 x double> %i.gh, %i.gi
  %i.gk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gj) #38, !srcloc !816
  %i.gl = load <2 x double>, ptr %1, align 16, !tbaa !24
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = load <2 x double>, ptr %4, align 16, !tbaa !24
  %i.go = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gn) #38, !srcloc !816
  %i.gp = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gm) #37, !srcloc !814
  %i.gq = fadd <2 x double> %i.go, %i.gp
  %i.gr = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gq) #38, !srcloc !816
  %i.gs = load <2 x double>, ptr %2, align 16, !tbaa !24
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = load <2 x double>, ptr %5, align 16, !tbaa !24
  %i.gv = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gu) #38, !srcloc !816
  %i.gw = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gt) #37, !srcloc !814
  %i.gx = fadd <2 x double> %i.gv, %i.gw
  %i.gy = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gx) #38, !srcloc !816
  %i.gz = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hb = load <2 x double>, ptr %6, align 16, !tbaa !24
  %i.hc = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hb) #38, !srcloc !816
  %i.hd = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ha) #37, !srcloc !814
  %i.he = fadd <2 x double> %i.hc, %i.hd
  %i.hf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.he) #38, !srcloc !816
  %i.hg = bitcast <2 x double> %i.hf to <2 x i64>
  %i.hh = load <2 x double>, ptr %1, align 16, !tbaa !24
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hj = load <2 x double>, ptr %7, align 16, !tbaa !24
  %i.hk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hj) #38, !srcloc !816
  %i.hl = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hi) #37, !srcloc !814
  %i.hm = fadd <2 x double> %i.hk, %i.hl
  %i.hn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hm) #38, !srcloc !816
  %i.ho = bitcast <2 x double> %i.hn to <2 x i64>
  %i.hp = load <2 x double>, ptr %2, align 16, !tbaa !24
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = load <2 x double>, ptr %8, align 16, !tbaa !24
  %i.hs = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hr) #38, !srcloc !816
  %i.ht = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hq) #37, !srcloc !814
  %i.hu = fadd <2 x double> %i.hs, %i.ht
  %i.hv = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hu) #38, !srcloc !816
  %i.hw = bitcast <2 x double> %i.hv to <2 x i64>
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.hx = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gr) #37, !srcloc !814 ; 5 uses
  %i.hy = fneg <2 x double> %i.hx
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ia = xor <2 x i64> %i.hw, <i64 -9223372036854775808, i64 0>
  %i.ib = bitcast <2 x i64> %i.ia to <2 x double> ; 2 uses
  %i.ic = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ib) #38, !srcloc !816 ; 3 uses
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ie = fmul <2 x double> %i.hx, %i.ic
  %i.if = fmul <2 x double> %i.hx, %i.id
  %i.ig = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.if, <2 x double> splat (double +inf))
  %i.ih = fmul <2 x double> %i.hz, %i.ic
  %i.ii = fmul <2 x double> %i.hz, %i.id
  %i.ij = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ii, <2 x double> splat (double +inf))
  %i.ik = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ie, <2 x double> %i.ig)
  %i.il = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ih, <2 x double> %i.ij)
  %i.im = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ik, <2 x double> %i.il)
  %i.in = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.im) #38, !srcloc !816
  %i.io = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gy) #37, !srcloc !814 ; 5 uses
  %i.ip = fneg <2 x double> %i.io
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ir = xor <2 x i64> %i.ho, <i64 -9223372036854775808, i64 0>
  %i.is = bitcast <2 x i64> %i.ir to <2 x double> ; 2 uses
  %i.it = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.is) #38, !srcloc !816 ; 3 uses
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iv = fmul <2 x double> %i.io, %i.it
  %i.iw = fmul <2 x double> %i.io, %i.iu
  %i.ix = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iw, <2 x double> splat (double +inf))
  %i.iy = fmul <2 x double> %i.iq, %i.it
  %i.iz = fmul <2 x double> %i.iq, %i.iu
  %i.ja = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iz, <2 x double> splat (double +inf))
  %i.jb = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iv, <2 x double> %i.ix)
  %i.jc = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iy, <2 x double> %i.ja)
  %i.jd = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jb, <2 x double> %i.jc)
  %i.je = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jd) #38, !srcloc !816
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.in) #38, !srcloc !816
  %i.jh = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jf) #37, !srcloc !814
  %i.ji = fadd <2 x double> %i.jg, %i.jh
  %i.jj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ji) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.jj, ptr %24, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.jk = xor <2 x i64> %i.hg, <i64 -9223372036854775808, i64 0>
  %i.jl = bitcast <2 x i64> %i.jk to <2 x double> ; 2 uses
  %i.jm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jl) #38, !srcloc !816 ; 3 uses
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jo = fmul <2 x double> %i.io, %i.jm
  %i.jp = fmul <2 x double> %i.io, %i.jn
  %i.jq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.jp, <2 x double> splat (double +inf))
  %i.jr = fmul <2 x double> %i.iq, %i.jm
  %i.js = fmul <2 x double> %i.iq, %i.jn
  %i.jt = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.js, <2 x double> splat (double +inf))
  %i.ju = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jo, <2 x double> %i.jq)
  %i.jv = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jr, <2 x double> %i.jt)
  %i.jw = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ju, <2 x double> %i.jv)
  %i.jx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jw) #38, !srcloc !816
  %i.jy = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gk) #37, !srcloc !814 ; 5 uses
  %i.jz = fneg <2 x double> %i.jy
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.kb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ib) #38, !srcloc !816 ; 3 uses
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kd = fmul <2 x double> %i.jy, %i.kb
  %i.ke = fmul <2 x double> %i.jy, %i.kc
  %i.kf = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ke, <2 x double> splat (double +inf))
  %i.kg = fmul <2 x double> %i.ka, %i.kb
  %i.kh = fmul <2 x double> %i.ka, %i.kc
  %i.ki = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.kh, <2 x double> splat (double +inf))
  %i.kj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kd, <2 x double> %i.kf)
  %i.kk = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kg, <2 x double> %i.ki)
  %i.kl = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kj, <2 x double> %i.kk)
  %i.km = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.kl) #38, !srcloc !816
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jx) #38, !srcloc !816
  %i.kp = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.kn) #37, !srcloc !814
  %i.kq = fadd <2 x double> %i.ko, %i.kp
  %i.kr = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.kq) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.kr, ptr %25, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.ks = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.is) #38, !srcloc !816 ; 3 uses
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ku = fmul <2 x double> %i.jy, %i.ks
  %i.kv = fmul <2 x double> %i.jy, %i.kt
  %i.kw = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.kv, <2 x double> splat (double +inf))
  %i.kx = fmul <2 x double> %i.ka, %i.ks
  %i.ky = fmul <2 x double> %i.ka, %i.kt
  %i.kz = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ky, <2 x double> splat (double +inf))
  %i.la = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ku, <2 x double> %i.kw)
  %i.lb = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kx, <2 x double> %i.kz)
  %i.lc = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.la, <2 x double> %i.lb)
  %i.ld = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.lc) #38, !srcloc !816
  %i.le = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.jl) #38, !srcloc !816 ; 3 uses
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lg = fmul <2 x double> %i.hx, %i.le
  %i.lh = fmul <2 x double> %i.hx, %i.lf
  %i.li = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.lh, <2 x double> splat (double +inf))
  %i.lj = fmul <2 x double> %i.hz, %i.le
  %i.lk = fmul <2 x double> %i.hz, %i.lf
  %i.ll = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.lk, <2 x double> splat (double +inf))
  %i.lm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.lg, <2 x double> %i.li)
  %i.ln = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.lj, <2 x double> %i.ll)
  %i.lo = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.lm, <2 x double> %i.ln)
  %i.lp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.lo) #38, !srcloc !816
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lr = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ld) #38, !srcloc !816
  %i.ls = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.lq) #37, !srcloc !814
  %i.lt = fadd <2 x double> %i.lr, %i.ls
  %i.lu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.lt) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.lu, ptr %26, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  %i.lv = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lw = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.jj, <2 x double> %i.lv)
  %i.lx = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.jj, <2 x double> %i.lv)
  %i.ly = shufflevector <2 x double> %i.lw, <2 x double> %i.lx, <2 x i32> <i32 0, i32 3>
  %i.lz = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ly, <2 x double> <double -0.000000e+00, double poison>)
  %i.ma = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.lz) #38, !srcloc !816 ; 2 uses
  %i.mb = bitcast <2 x double> %i.ma to <2 x i64>
  %i.mc = xor <2 x i64> %i.mb, <i64 -9223372036854775808, i64 0>
  %i.md = bitcast <2 x i64> %i.mc to <2 x double>
  %i.me = fmul <2 x double> %i.ma, %i.md
  %i.mf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.me) #38, !srcloc !816
  %i.mg = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.kr, <2 x double> %i.mg)
  %i.mi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.kr, <2 x double> %i.mg)
  %i.mj = shufflevector <2 x double> %i.mh, <2 x double> %i.mi, <2 x i32> <i32 0, i32 3>
  %i.mk = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.mj, <2 x double> <double -0.000000e+00, double poison>)
  %i.ml = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mk) #38, !srcloc !816 ; 2 uses
  %i.mm = bitcast <2 x double> %i.ml to <2 x i64>
  %i.mn = xor <2 x i64> %i.mm, <i64 -9223372036854775808, i64 0>
  %i.mo = bitcast <2 x i64> %i.mn to <2 x double>
  %i.mp = fmul <2 x double> %i.ml, %i.mo
  %i.mq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mp) #38, !srcloc !816
  %i.mr = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mf) #38, !srcloc !816
  %i.ms = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mq) #37, !srcloc !814
  %i.mt = fadd <2 x double> %i.mr, %i.ms
  %i.mu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mt) #38, !srcloc !816
  %i.mv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mw = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.lu, <2 x double> %i.mv)
  %i.mx = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.lu, <2 x double> %i.mv)
  %i.my = shufflevector <2 x double> %i.mw, <2 x double> %i.mx, <2 x i32> <i32 0, i32 3>
  %i.mz = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.my, <2 x double> <double -0.000000e+00, double poison>)
  %i.na = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mz) #38, !srcloc !816 ; 2 uses
  %i.nb = bitcast <2 x double> %i.na to <2 x i64>
  %i.nc = xor <2 x i64> %i.nb, <i64 -9223372036854775808, i64 0>
  %i.nd = bitcast <2 x i64> %i.nc to <2 x double>
  %i.ne = fmul <2 x double> %i.na, %i.nd
  %i.nf = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ne) #38, !srcloc !816
  %i.ng = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.mu) #38, !srcloc !816
  %i.nh = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.nf) #37, !srcloc !814
  %i.ni = fadd <2 x double> %i.ng, %i.nh
  %i.nj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ni) #38, !srcloc !816
  store <2 x double> %i.nj, ptr %27, align 16
  %i.nk = call <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %20, ptr noundef nonnull align 16 dereferenceable(16) %21, ptr noundef nonnull align 16 dereferenceable(16) %22, ptr noundef nonnull align 16 dereferenceable(16) %23, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %27) ; 2 uses
  %i.nl = extractelement <2 x double> %i.nk, i64 0 ; 2 uses
  %i.nm = fneg double %i.nl
  %i.nn = fcmp olt double %i.nl, 0.000000e+00
  %28 = extractelement <2 x double> %i.nk, i64 1  ; 2 uses
  br i1 %i.nn, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.no = fcmp olt double %28, 0.000000e+00
  br i1 %i.no, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.np = fcmp une double %28, %i.nm
  %i.nq = select i1 %i.np, i64 8589934591, i64 0
  br label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit

_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.nq, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  ret i64 %.sroa.5.0.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %15) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load <2 x double>, ptr %4, align 16, !tbaa !24
  %i.b = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.a) #37, !srcloc !814 ; 3 uses
  %i.c = load <2 x i64>, ptr %1, align 16, !tbaa !24
  %i.d = fneg <2 x double> %i.b
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.f = xor <2 x i64> %i.c, <i64 -9223372036854775808, i64 0>
  %i.g = bitcast <2 x i64> %i.f to <2 x double>
  %i.h = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.g) #38, !srcloc !816 ; 3 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.j = fmul <2 x double> %i.b, %i.h
  %i.k = fmul <2 x double> %i.b, %i.i
  %i.l = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.k, <2 x double> splat (double +inf))
  %i.m = fmul <2 x double> %i.e, %i.h
  %i.n = fmul <2 x double> %i.e, %i.i
  %i.o = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.n, <2 x double> splat (double +inf))
  %i.p = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.j, <2 x double> %i.l)
  %i.q = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.m, <2 x double> %i.o)
  %i.r = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.p, <2 x double> %i.q)
  %i.s = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #38, !srcloc !816
  %i.t = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.u = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t) #37, !srcloc !814 ; 3 uses
  %i.v = load <2 x i64>, ptr %5, align 16, !tbaa !24
  %i.w = fneg <2 x double> %i.u
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = xor <2 x i64> %i.v, <i64 -9223372036854775808, i64 0>
  %i.z = bitcast <2 x i64> %i.y to <2 x double>
  %i.aa = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #38, !srcloc !816 ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ac = fmul <2 x double> %i.u, %i.aa
  %i.ad = fmul <2 x double> %i.u, %i.ab
  %i.ae = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ad, <2 x double> splat (double +inf))
  %i.af = fmul <2 x double> %i.x, %i.aa
  %i.ag = fmul <2 x double> %i.x, %i.ab
  %i.ah = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ag, <2 x double> splat (double +inf))
  %i.ai = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ac, <2 x double> %i.ae)
  %i.aj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.af, <2 x double> %i.ah)
  %i.ak = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ai, <2 x double> %i.aj)
  %i.al = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ak) #38, !srcloc !816
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.s) #38, !srcloc !816
  %i.ao = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am) #37, !srcloc !814
  %i.ap = fadd <2 x double> %i.an, %i.ao
  %i.aq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ap) #38, !srcloc !816
  %i.ar = load <2 x double>, ptr %8, align 16, !tbaa !24
  %i.as = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ar) #37, !srcloc !814 ; 3 uses
  %i.at = load <2 x i64>, ptr %1, align 16, !tbaa !24
  %i.au = fneg <2 x double> %i.as
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = xor <2 x i64> %i.at, <i64 -9223372036854775808, i64 0>
  %i.ax = bitcast <2 x i64> %i.aw to <2 x double>
  %i.ay = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ax) #38, !srcloc !816 ; 3 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ba = fmul <2 x double> %i.as, %i.ay
  %i.bb = fmul <2 x double> %i.as, %i.az
  %i.bc = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bb, <2 x double> splat (double +inf))
  %i.bd = fmul <2 x double> %i.av, %i.ay
  %i.be = fmul <2 x double> %i.av, %i.az
  %i.bf = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.be, <2 x double> splat (double +inf))
  %i.bg = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ba, <2 x double> %i.bc)
  %i.bh = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bd, <2 x double> %i.bf)
  %i.bi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bg, <2 x double> %i.bh)
  %i.bj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #38, !srcloc !816
  %i.bk = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.bl = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #37, !srcloc !814 ; 3 uses
  %i.bm = load <2 x i64>, ptr %9, align 16, !tbaa !24
  %i.bn = fneg <2 x double> %i.bl
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bp = xor <2 x i64> %i.bm, <i64 -9223372036854775808, i64 0>
  %i.bq = bitcast <2 x i64> %i.bp to <2 x double>
  %i.br = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bq) #38, !srcloc !816 ; 3 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bt = fmul <2 x double> %i.bl, %i.br
  %i.bu = fmul <2 x double> %i.bl, %i.bs
  %i.bv = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bu, <2 x double> splat (double +inf))
  %i.bw = fmul <2 x double> %i.bo, %i.br
  %i.bx = fmul <2 x double> %i.bo, %i.bs
  %i.by = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bx, <2 x double> splat (double +inf))
  %i.bz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bt, <2 x double> %i.bv)
  %i.ca = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bw, <2 x double> %i.by)
  %i.cb = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bz, <2 x double> %i.ca)
  %i.cc = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cb) #38, !srcloc !816
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bj) #38, !srcloc !816
  %i.cf = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cd) #37, !srcloc !814
  %i.cg = fadd <2 x double> %i.ce, %i.cf
  %i.ch = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg) #38, !srcloc !816
  %i.ci = load <2 x double>, ptr %12, align 16, !tbaa !24
  %i.cj = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ci) #37, !srcloc !814 ; 3 uses
  %i.ck = load <2 x i64>, ptr %1, align 16, !tbaa !24
  %i.cl = fneg <2 x double> %i.cj
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cn = xor <2 x i64> %i.ck, <i64 -9223372036854775808, i64 0>
  %i.co = bitcast <2 x i64> %i.cn to <2 x double>
  %i.cp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co) #38, !srcloc !816 ; 3 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cr = fmul <2 x double> %i.cj, %i.cp
  %i.cs = fmul <2 x double> %i.cj, %i.cq
  %i.ct = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.cs, <2 x double> splat (double +inf))
  %i.cu = fmul <2 x double> %i.cm, %i.cp
  %i.cv = fmul <2 x double> %i.cm, %i.cq
  %i.cw = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.cv, <2 x double> splat (double +inf))
  %i.cx = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cr, <2 x double> %i.ct)
  %i.cy = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cu, <2 x double> %i.cw)
  %i.cz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cx, <2 x double> %i.cy)
  %i.da = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz) #38, !srcloc !816
  %i.db = load <2 x double>, ptr %0, align 16, !tbaa !24
  %i.dc = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.db) #37, !srcloc !814 ; 3 uses
  %i.dd = load <2 x i64>, ptr %13, align 16, !tbaa !24
  %i.de = fneg <2 x double> %i.dc
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = xor <2 x i64> %i.dd, <i64 -9223372036854775808, i64 0>
  %i.dh = bitcast <2 x i64> %i.dg to <2 x double>
  %i.di = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dh) #38, !srcloc !816 ; 3 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dk = fmul <2 x double> %i.dc, %i.di
  %i.dl = fmul <2 x double> %i.dc, %i.dj
  %i.dm = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dl, <2 x double> splat (double +inf))
  %i.dn = fmul <2 x double> %i.df, %i.di
  %i.do = fmul <2 x double> %i.df, %i.dj
  %i.dp = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.do, <2 x double> splat (double +inf))
  %i.dq = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dk, <2 x double> %i.dm)
  %i.dr = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dn, <2 x double> %i.dp)
  %i.ds = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dq, <2 x double> %i.dr)
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #38, !srcloc !816
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.da) #38, !srcloc !816
  %i.dw = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.du) #37, !srcloc !814
  %i.dx = fadd <2 x double> %i.dv, %i.dw
  %i.dy = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dx) #38, !srcloc !816
  %i.dz = load <2 x double>, ptr %8, align 16, !tbaa !24
  %i.ea = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dz) #37, !srcloc !814 ; 3 uses
  %i.eb = load <2 x i64>, ptr %5, align 16, !tbaa !24
  %i.ec = fneg <2 x double> %i.ea
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ee = xor <2 x i64> %i.eb, <i64 -9223372036854775808, i64 0>
  %i.ef = bitcast <2 x i64> %i.ee to <2 x double>
  %i.eg = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ef) #38, !srcloc !816 ; 3 uses
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ei = fmul <2 x double> %i.ea, %i.eg
  %i.ej = fmul <2 x double> %i.ea, %i.eh
  %i.ek = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ej, <2 x double> splat (double +inf))
  %i.el = fmul <2 x double> %i.ed, %i.eg
  %i.em = fmul <2 x double> %i.ed, %i.eh
  %i.en = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.em, <2 x double> splat (double +inf))
  %i.eo = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ei, <2 x double> %i.ek)
  %i.ep = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.el, <2 x double> %i.en)
  %i.eq = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eo, <2 x double> %i.ep)
  %i.er = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eq) #38, !srcloc !816
  %i.es = load <2 x double>, ptr %4, align 16, !tbaa !24
  %i.et = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.es) #37, !srcloc !814 ; 3 uses
  %i.eu = load <2 x i64>, ptr %9, align 16, !tbaa !24
  %i.ev = fneg <2 x double> %i.et
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = xor <2 x i64> %i.eu, <i64 -9223372036854775808, i64 0>
  %i.ey = bitcast <2 x i64> %i.ex to <2 x double>
  %i.ez = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ey) #38, !srcloc !816 ; 3 uses
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fb = fmul <2 x double> %i.et, %i.ez
  %i.fc = fmul <2 x double> %i.et, %i.fa
  %i.fd = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fc, <2 x double> splat (double +inf))
  %i.fe = fmul <2 x double> %i.ew, %i.ez
  %i.ff = fmul <2 x double> %i.ew, %i.fa
  %i.fg = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ff, <2 x double> splat (double +inf))
  %i.fh = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fb, <2 x double> %i.fd)
  %i.fi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fe, <2 x double> %i.fg)
  %i.fj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fh, <2 x double> %i.fi)
  %i.fk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fj) #38, !srcloc !816
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.er) #38, !srcloc !816
  %i.fn = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fl) #37, !srcloc !814
  %i.fo = fadd <2 x double> %i.fm, %i.fn
  %i.fp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fo) #38, !srcloc !816
  %i.fq = load <2 x double>, ptr %12, align 16, !tbaa !24
end_hunk_4
begin_hunk_5_@_ZN4CGAL25side_of_oriented_sphereC3INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_:bb.a
  %i.bv = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #37, !srcloc !814
  %i.bw = fadd <2 x double> %i.bu, %i.bv
  %i.bx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bw) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.bx, ptr %20, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.by = load <2 x double>, ptr %14, align 16, !tbaa !24
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ca = load <2 x double>, ptr %5, align 16, !tbaa !24
  %i.cb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ca) #38, !srcloc !816
  %i.cc = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bz) #37, !srcloc !814
  %i.cd = fadd <2 x double> %i.cb, %i.cc
  %i.ce = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cd) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.ce, ptr %21, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.cf = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cg = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bq, <2 x double> %i.cf)
  %i.ch = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bq, <2 x double> %i.cf)
  %i.ci = shufflevector <2 x double> %i.cg, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cj = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ci, <2 x double> <double -0.000000e+00, double poison>)
  %i.ck = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cj) #38, !srcloc !816 ; 2 uses
  %i.cl = bitcast <2 x double> %i.ck to <2 x i64>
  %i.cm = xor <2 x i64> %i.cl, <i64 -9223372036854775808, i64 0>
  %i.cn = bitcast <2 x i64> %i.cm to <2 x double>
  %i.co = fmul <2 x double> %i.ck, %i.cn
  %i.cp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co) #38, !srcloc !816
  %i.cq = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cr = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bx, <2 x double> %i.cq)
  %i.cs = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bx, <2 x double> %i.cq)
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ct, <2 x double> <double -0.000000e+00, double poison>)
  %i.cv = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cu) #38, !srcloc !816 ; 2 uses
  %i.cw = bitcast <2 x double> %i.cv to <2 x i64>
  %i.cx = xor <2 x i64> %i.cw, <i64 -9223372036854775808, i64 0>
  %i.cy = bitcast <2 x i64> %i.cx to <2 x double>
  %i.cz = fmul <2 x double> %i.cv, %i.cy
  %i.da = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz) #38, !srcloc !816
  %i.db = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cp) #38, !srcloc !816
  %i.dc = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.da) #37, !srcloc !814
  %i.dd = fadd <2 x double> %i.db, %i.dc
  %i.de = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dd) #38, !srcloc !816
  %i.df = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ce, <2 x double> %i.df)
  %i.dh = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ce, <2 x double> %i.df)
  %i.di = shufflevector <2 x double> %i.dg, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  %i.dj = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.di, <2 x double> <double -0.000000e+00, double poison>)
  %i.dk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dj) #38, !srcloc !816 ; 2 uses
  %i.dl = bitcast <2 x double> %i.dk to <2 x i64>
  %i.dm = xor <2 x i64> %i.dl, <i64 -9223372036854775808, i64 0>
  %i.dn = bitcast <2 x i64> %i.dm to <2 x double>
  %i.do = fmul <2 x double> %i.dk, %i.dn
  %i.dp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.do) #38, !srcloc !816
  %i.dq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.de) #38, !srcloc !816
  %i.dr = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dp) #37, !srcloc !814
  %i.ds = fadd <2 x double> %i.dq, %i.dr
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #38, !srcloc !816
  store <2 x double> %i.dt, ptr %22, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.du = load <2 x double>, ptr %12, align 16, !tbaa !24
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = load <2 x double>, ptr %6, align 16, !tbaa !24
  %i.dx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dw) #38, !srcloc !816
  %i.dy = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dv) #37, !srcloc !814
  %i.dz = fadd <2 x double> %i.dx, %i.dy
  %i.ea = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dz) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.ea, ptr %23, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.eb = load <2 x double>, ptr %13, align 16, !tbaa !24
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = load <2 x double>, ptr %7, align 16, !tbaa !24
  %i.ee = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #38, !srcloc !816
  %i.ef = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ec) #37, !srcloc !814
  %i.eg = fadd <2 x double> %i.ee, %i.ef
  %i.eh = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eg) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.eh, ptr %24, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.ei = load <2 x double>, ptr %14, align 16, !tbaa !24
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = load <2 x double>, ptr %8, align 16, !tbaa !24
  %i.el = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ek) #38, !srcloc !816
  %i.em = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ej) #37, !srcloc !814
  %i.en = fadd <2 x double> %i.el, %i.em
  %i.eo = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.en) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.eo, ptr %25, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.ep = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ea, <2 x double> %i.ep)
  %i.er = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ea, <2 x double> %i.ep)
  %i.es = shufflevector <2 x double> %i.eq, <2 x double> %i.er, <2 x i32> <i32 0, i32 3>
  %i.et = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.es, <2 x double> <double -0.000000e+00, double poison>)
  %i.eu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.et) #38, !srcloc !816 ; 2 uses
  %i.ev = bitcast <2 x double> %i.eu to <2 x i64>
  %i.ew = xor <2 x i64> %i.ev, <i64 -9223372036854775808, i64 0>
  %i.ex = bitcast <2 x i64> %i.ew to <2 x double>
  %i.ey = fmul <2 x double> %i.eu, %i.ex
  %i.ez = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ey) #38, !srcloc !816
  %i.fa = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fb = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.eh, <2 x double> %i.fa)
  %i.fc = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eh, <2 x double> %i.fa)
  %i.fd = shufflevector <2 x double> %i.fb, <2 x double> %i.fc, <2 x i32> <i32 0, i32 3>
  %i.fe = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.fd, <2 x double> <double -0.000000e+00, double poison>)
  %i.ff = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fe) #38, !srcloc !816 ; 2 uses
  %i.fg = bitcast <2 x double> %i.ff to <2 x i64>
  %i.fh = xor <2 x i64> %i.fg, <i64 -9223372036854775808, i64 0>
  %i.fi = bitcast <2 x i64> %i.fh to <2 x double>
  %i.fj = fmul <2 x double> %i.ff, %i.fi
  %i.fk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fj) #38, !srcloc !816
  %i.fl = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez) #38, !srcloc !816
  %i.fm = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fk) #37, !srcloc !814
  %i.fn = fadd <2 x double> %i.fl, %i.fm
  %i.fo = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fn) #38, !srcloc !816
  %i.fp = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.eo, <2 x double> %i.fp)
  %i.fr = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eo, <2 x double> %i.fp)
  %i.fs = shufflevector <2 x double> %i.fq, <2 x double> %i.fr, <2 x i32> <i32 0, i32 3>
  %i.ft = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.fs, <2 x double> <double -0.000000e+00, double poison>)
  %i.fu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ft) #38, !srcloc !816 ; 2 uses
  %i.fv = bitcast <2 x double> %i.fu to <2 x i64>
  %i.fw = xor <2 x i64> %i.fv, <i64 -9223372036854775808, i64 0>
  %i.fx = bitcast <2 x i64> %i.fw to <2 x double>
  %i.fy = fmul <2 x double> %i.fu, %i.fx
  %i.fz = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fy) #38, !srcloc !816
  %i.ga = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fo) #38, !srcloc !816
  %i.gb = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fz) #37, !srcloc !814
  %i.gc = fadd <2 x double> %i.ga, %i.gb
  %i.gd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gc) #38, !srcloc !816
  store <2 x double> %i.gd, ptr %26, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  %i.ge = load <2 x double>, ptr %12, align 16, !tbaa !24
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = load <2 x double>, ptr %9, align 16, !tbaa !24
  %i.gh = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gg) #38, !srcloc !816
  %i.gi = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gf) #37, !srcloc !814
  %i.gj = fadd <2 x double> %i.gh, %i.gi
  %i.gk = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gj) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.gk, ptr %27, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  %i.gl = load <2 x double>, ptr %13, align 16, !tbaa !24
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = load <2 x double>, ptr %10, align 16, !tbaa !24
  %i.go = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gn) #38, !srcloc !816
  %i.gp = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gm) #37, !srcloc !814
  %i.gq = fadd <2 x double> %i.go, %i.gp
  %i.gr = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gq) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.gr, ptr %28, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.gs = load <2 x double>, ptr %14, align 16, !tbaa !24
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = load <2 x double>, ptr %11, align 16, !tbaa !24
  %i.gv = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gu) #38, !srcloc !816
  %i.gw = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gt) #37, !srcloc !814
  %i.gx = fadd <2 x double> %i.gv, %i.gw
  %i.gy = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gx) #38, !srcloc !816 ; 4 uses
  store <2 x double> %i.gy, ptr %29, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.gz = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ha = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gk, <2 x double> %i.gz)
  %i.hb = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gk, <2 x double> %i.gz)
  %i.hc = shufflevector <2 x double> %i.ha, <2 x double> %i.hb, <2 x i32> <i32 0, i32 3>
  %i.hd = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.hc, <2 x double> <double -0.000000e+00, double poison>)
  %i.he = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hd) #38, !srcloc !816 ; 2 uses
  %i.hf = bitcast <2 x double> %i.he to <2 x i64>
  %i.hg = xor <2 x i64> %i.hf, <i64 -9223372036854775808, i64 0>
  %i.hh = bitcast <2 x i64> %i.hg to <2 x double>
  %i.hi = fmul <2 x double> %i.he, %i.hh
  %i.hj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hi) #38, !srcloc !816
  %i.hk = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hl = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gr, <2 x double> %i.hk)
  %i.hm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gr, <2 x double> %i.hk)
  %i.hn = shufflevector <2 x double> %i.hl, <2 x double> %i.hm, <2 x i32> <i32 0, i32 3>
  %i.ho = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.hn, <2 x double> <double -0.000000e+00, double poison>)
  %i.hp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ho) #38, !srcloc !816 ; 2 uses
  %i.hq = bitcast <2 x double> %i.hp to <2 x i64>
  %i.hr = xor <2 x i64> %i.hq, <i64 -9223372036854775808, i64 0>
  %i.hs = bitcast <2 x i64> %i.hr to <2 x double>
  %i.ht = fmul <2 x double> %i.hp, %i.hs
  %i.hu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ht) #38, !srcloc !816
  %i.hv = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hj) #38, !srcloc !816
  %i.hw = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hu) #37, !srcloc !814
  %i.hx = fadd <2 x double> %i.hv, %i.hw
  %i.hy = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hx) #38, !srcloc !816
  %i.hz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ia = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gy, <2 x double> %i.hz)
  %i.ib = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gy, <2 x double> %i.hz)
  %i.ic = shufflevector <2 x double> %i.ia, <2 x double> %i.ib, <2 x i32> <i32 0, i32 3>
  %i.id = tail call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ic, <2 x double> <double -0.000000e+00, double poison>)
  %i.ie = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.id) #38, !srcloc !816 ; 2 uses
  %i.if = bitcast <2 x double> %i.ie to <2 x i64>
  %i.ig = xor <2 x i64> %i.if, <i64 -9223372036854775808, i64 0>
  %i.ih = bitcast <2 x i64> %i.ig to <2 x double>
  %i.ii = fmul <2 x double> %i.ie, %i.ih
  %i.ij = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ii) #38, !srcloc !816
  %i.ik = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hy) #38, !srcloc !816
  %i.il = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ij) #37, !srcloc !814
  %i.im = fadd <2 x double> %i.ik, %i.il
  %i.in = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.im) #38, !srcloc !816
  store <2 x double> %i.in, ptr %30, align 16
  %i.io = call <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %23, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 16 dereferenceable(16) %20, ptr noundef nonnull align 16 dereferenceable(16) %21, ptr noundef nonnull align 16 dereferenceable(16) %22, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull align 16 dereferenceable(16) %29, ptr noundef nonnull align 16 dereferenceable(16) %30) ; 2 uses
  %i.ip = extractelement <2 x double> %i.io, i64 0 ; 2 uses
  %i.iq = fneg double %i.ip
  %i.ir = fcmp olt double %i.ip, 0.000000e+00
  %31 = extractelement <2 x double> %i.io, i64 1  ; 2 uses
  br i1 %i.ir, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.is = fcmp olt double %31, 0.000000e+00
  br i1 %i.is, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.it = fcmp une double %31, %i.iq
  %i.iu = select i1 %i.it, i64 8589934591, i64 0
  br label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit

_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.iu, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  ret i64 %.sroa.5.0.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4CGAL25side_of_oriented_sphereC3INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %8, ptr noundef nonnull align 16 dereferenceable(84) %9, ptr noundef nonnull align 16 dereferenceable(84) %10, ptr noundef nonnull align 16 dereferenceable(84) %11, ptr noundef nonnull align 16 dereferenceable(84) %12, ptr noundef nonnull align 16 dereferenceable(84) %13, ptr noundef nonnull align 16 dereferenceable(84) %14) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %15 = alloca %"class.CGAL::cpp_float", align 16 ; 11 uses
  %16 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %17 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %18 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %19 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %20 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %21 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %22 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %23 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %24 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %25 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %26 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %27 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %28 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %29 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %30 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %31 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %32 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %33 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %34 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %35 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %36 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %37 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %38 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %39 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %40 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %41 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %42 = alloca %"class.CGAL::cpp_float", align 16 ; 16 uses
  %43 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %44 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %45 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %46 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %47 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %16, ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %17, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %13)
          to label %bb.b unwind label %bb.ca

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %18, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %14)
          to label %bb.c unwind label %bb.cb

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.b = load i32, ptr %i.a, align 16, !tbaa !745, !noalias !1995
  store i64 0, ptr %21, align 16, !tbaa !24, !alias.scope !1995
  %i.c = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i64 1, ptr %i.c, align 16, !tbaa !740, !alias.scope !1995
  %i.d = getelementptr inbounds nuw i8, ptr %21, i64 72
  store i8 0, ptr %i.d, align 8, !tbaa !742, !alias.scope !1995
  %i.e = getelementptr inbounds nuw i8, ptr %21, i64 73 ; 4 uses
  store i8 1, ptr %i.e, align 1, !tbaa !743, !alias.scope !1995
  %i.f = getelementptr inbounds nuw i8, ptr %21, i64 74 ; 4 uses
  store i8 0, ptr %i.f, align 2, !tbaa !744, !alias.scope !1995
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %21, ptr noundef nonnull align 16 dereferenceable(84) %16, ptr noundef nonnull align 16 dereferenceable(84) %16)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i8, ptr %i.e, align 1, !tbaa !743, !range !13, !alias.scope !1995, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i8, ptr %i.f, align 2, !range !13, !alias.scope !1995
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i.i.i.i, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = shl nsw i32 %i.b, 1
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 80
  store i32 %i.l, ptr %i.m, align 16, !tbaa !745, !alias.scope !1995
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.o = load i32, ptr %i.n, align 16, !tbaa !745, !noalias !2005
  store i64 0, ptr %22, align 16, !tbaa !24, !alias.scope !2005
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i64 1, ptr %i.p, align 16, !tbaa !740, !alias.scope !2005
  %i.q = getelementptr inbounds nuw i8, ptr %22, i64 72
  store i8 0, ptr %i.q, align 8, !tbaa !742, !alias.scope !2005
  %i.r = getelementptr inbounds nuw i8, ptr %22, i64 73 ; 4 uses
  store i8 1, ptr %i.r, align 1, !tbaa !743, !alias.scope !2005
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 74 ; 4 uses
  store i8 0, ptr %i.s, align 2, !tbaa !744, !alias.scope !2005
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %22, ptr noundef nonnull align 16 dereferenceable(84) %17, ptr noundef nonnull align 16 dereferenceable(84) %17)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i8, ptr %i.r, align 1, !tbaa !743, !range !13, !alias.scope !2005, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i8, ptr %i.s, align 2, !range !13, !alias.scope !2005
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i.i.i.i91 = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond.i.i.i.i.i.i91, label %.body93, label %.body93.sink.split

bb.g:                                             ; preds = %bb.e
  %i.y = shl nsw i32 %i.o, 1
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 80
  store i32 %i.y, ptr %i.z, align 16, !tbaa !745, !alias.scope !2005
  invoke void @_ZN4CGALplERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %20, ptr noundef nonnull align 16 dereferenceable(84) %21, ptr noundef nonnull align 16 dereferenceable(84) %22)
          to label %bb.h unwind label %bb.cc

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !745, !noalias !2015
  store i64 0, ptr %23, align 16, !tbaa !24, !alias.scope !2015
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i64 1, ptr %i.ac, align 16, !tbaa !740, !alias.scope !2015
  %i.ad = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i8 0, ptr %i.ad, align 8, !tbaa !742, !alias.scope !2015
  %i.ae = getelementptr inbounds nuw i8, ptr %23, i64 73 ; 4 uses
  store i8 1, ptr %i.ae, align 1, !tbaa !743, !alias.scope !2015
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 74 ; 4 uses
  store i8 0, ptr %i.af, align 2, !tbaa !744, !alias.scope !2015
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %23, ptr noundef nonnull align 16 dereferenceable(84) %18, ptr noundef nonnull align 16 dereferenceable(84) %18)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !743, !range !13, !alias.scope !2015, !noundef !14
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load i8, ptr %i.af, align 2, !range !13, !alias.scope !2015
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i.i.i.i96 = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i.i.i.i96, label %.body98, label %.body98.sink.split

bb.j:                                             ; preds = %bb.h
  %i.al = shl nsw i32 %i.ab, 1
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 80
  store i32 %i.al, ptr %i.am, align 16, !tbaa !745, !alias.scope !2015
  invoke void @_ZN4CGALplERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %19, ptr noundef nonnull align 16 dereferenceable(84) %20, ptr noundef nonnull align 16 dereferenceable(84) %23)
          to label %bb.k unwind label %bb.cd

bb.k:                                             ; preds = %bb.j
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !743, !range !13, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load i8, ptr %i.af, align 2, !range !13
  %i.aq = trunc nuw i8 %i.ap to i1
  %or.cond.i.i.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %23, align 16
  %i.au = shl i64 %i.at, 3
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #43
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 73
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !743, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 74
  %i.az = load i8, ptr %i.ay, align 2, !range !13
end_hunk_5
