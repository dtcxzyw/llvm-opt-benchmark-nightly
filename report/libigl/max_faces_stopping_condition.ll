Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/max_faces_stopping_condition?download=true
inline.NumInlined: 37
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }

$__clang_call_terminate = comdat any

@"_ZTIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEEE3$_0" = internal constant [267 x i8] c"ZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEEE3$_0\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEE(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !14
  %5 = zext i32 %1 to i64
  %6 = zext i32 %2 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  store i64 %8, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEZN3igl28max_faces_stopping_conditionERiiiRSt8functionISM_EE3$_0E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation", ptr %i.b, align 8, !tbaa !10
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !10
  store ptr @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEZN3igl28max_faces_stopping_conditionERiiiRSt8functionISM_EE3$_0E9_M_invokeERKSt9_Any_dataS4_S7_S7_SA_S7_S7_SL_SA_S4_OiSX_SX_SX_SX_", ptr %i.c, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEEaSIZN3igl28max_faces_stopping_conditionERiiiRSN_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueESR_E4typeEOSU_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %"_ZNSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEEaSIZN3igl28max_faces_stopping_conditionERiiiRSN_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueESR_E4typeEOSU_.exit" unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #8
  unreachable

"_ZNSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEEaSIZN3igl28max_faces_stopping_conditionERiiiRSN_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueESR_E4typeEOSU_.exit": ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3igl28max_faces_stopping_conditionERiii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::function") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEE.exit:
  %4 = zext i32 %2 to i64
  %5 = zext i32 %3 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, %4
  store i64 %7, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEZN3igl28max_faces_stopping_conditionERiiiRSt8functionISM_EE3$_0E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation", ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEZN3igl28max_faces_stopping_conditionERiiiRSt8functionISM_EE3$_0E9_M_invokeERKSt9_Any_dataS4_S7_S7_SA_S7_S7_SL_SA_S4_OiSX_SX_SX_SX_", ptr %i.b, align 8, !tbaa !10
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEZN3igl28max_faces_stopping_conditionERiiiRSt8functionISM_EE3$_0E9_M_invokeERKSt9_Any_dataS4_S7_S7_SA_S7_S7_SL_SA_S4_OiSX_SX_SX_SX_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree nonnull readnone align 8 captures(none) %7, ptr nofree nonnull readnone align 8 captures(none) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree nonnull readonly align 4 captures(none) %10, ptr nofree nonnull readonly align 4 captures(none) %11, ptr nofree nonnull readonly align 4 captures(none) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #5 align 2 {
bb.a:
  %.val17 = load i32, ptr %13, align 4, !tbaa !11
  %.val18 = load i32, ptr %14, align 4, !tbaa !11
  %i.a = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = icmp slt i32 %.val17, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  br i1 %i.b, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !11
  %.pre.i.i.i = load i32, ptr %0, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %.pre.i.i.i, %bb.b ], [ %i.a, %bb.a ]
  %i.i = icmp slt i32 %.val18, %i.h
  br i1 %i.i, label %bb.c, label %"_ZSt10__invoke_rIbRZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEESA_RKNS4_IiLin1ELi1ELi0ELin1ELi1EEESA_SA_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISG_SaISG_EESt7greaterISG_EESD_S7_iiiiiEEE3$_0JS7_SA_SA_SD_SA_SA_SO_SD_S7_iiiiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESV_E4typeEOSW_DpOSX_.exit"

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 4, !tbaa !11
  br label %"_ZSt10__invoke_rIbRZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEESA_RKNS4_IiLin1ELi1ELi0ELin1ELi1EEESA_SA_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISG_SaISG_EESt7greaterISG_EESD_S7_iiiiiEEE3$_0JS7_SA_SA_SD_SA_SA_SO_SD_S7_iiiiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESV_E4typeEOSW_DpOSX_.exit"

"_ZSt10__invoke_rIbRZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEESA_RKNS4_IiLin1ELi1ELi0ELin1ELi1EEESA_SA_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISG_SaISG_EESt7greaterISG_EESD_S7_iiiiiEEE3$_0JS7_SA_SA_SD_SA_SA_SO_SD_S7_iiiiiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESV_E4typeEOSW_DpOSX_.exit": ; preds = %._crit_edge.i.i, %bb.c
  %i.k = phi i32 [ %i.j, %bb.c ], [ %i.g, %._crit_edge.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = icmp sle i32 %i.k, %i.m
  ret i1 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiiEZN3igl28max_faces_stopping_conditionERiiiRSt8functionISM_EE3$_0E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEESB_RKNS5_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISH_SaISH_EESt7greaterISH_EESE_S8_iiiiiEEE3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEEE3$_0", ptr %0, align 8, !tbaa !20
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEESB_RKNS5_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISH_SaISH_EESt7greaterISH_EESE_S8_iiiiiEEE3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !10
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEESB_RKNS5_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISH_SaISH_EESt7greaterISH_EESE_S8_iiiiiEEE3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEESB_RKNS5_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISH_SaISH_EESt7greaterISH_EESE_S8_iiiiiEEE3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS5_IiLin1ELin1ELi0ELin1ELin1EEESB_RKNS5_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISH_SaISH_EESt7greaterISH_EESE_S8_iiiiiEEE3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"p1 int", !9, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{i64 0, i64 16, !13}
!15 = !{!"_ZTSZN3igl28max_faces_stopping_conditionERiiiRSt8functionIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES9_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEES9_S9_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISF_SaISF_EESt7greaterISF_EESC_S6_iiiiiEEE3$_0", !6, i64 0, !6, i64 4, !12, i64 8}
!16 = !{!15, !6, i64 0}
!17 = !{!15, !12, i64 8}
!18 = !{!15, !6, i64 4}
!19 = !{!"p1 _ZTSSt9type_info", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!12, !12, i64 0}
!22 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 8, !21}
end_hunk_0
