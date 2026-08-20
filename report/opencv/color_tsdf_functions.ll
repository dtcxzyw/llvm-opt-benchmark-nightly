inline.NumInlined: 1109
inline.NumDeleted: 434
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 30
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayESD_SD_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  br i1 %.not11.i.i.i.i.i.i81.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i86.i.i.i, label %.lr.ph.i.i.i.i.i.i82.i.i.i

.lr.ph.i.i.i.i.i.i82.i.i.i:                       ; preds = %.noexc90.i.i.i, %.lr.ph.i.i.i.i.i.i82.i.i.i
  %.013.i.i.i.i.i.i83.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i82.i.i.i ], [ %i.ij, %.noexc90.i.i.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i84.i.i.i = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i82.i.i.i ], [ %i.in, %.noexc90.i.i.i ] ; 5 uses
  %i.ip = load float, ptr %.sroa.08.012.i.i.i.i.i.i84.i.i.i, align 4, !tbaa !8
  store float %i.ip, ptr %.013.i.i.i.i.i.i83.i.i.i, align 4, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i84.i.i.i, i64 4
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i83.i.i.i, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i84.i.i.i, i64 8
  %i.iu = load float, ptr %i.it, align 4, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i83.i.i.i, i64 8
  store float %i.iu, ptr %i.iv, align 4, !tbaa !8
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i84.i.i.i, i64 12
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i83.i.i.i, i64 12
  store float %i.ix, ptr %i.iy, align 4, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i84.i.i.i, i64 16 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i83.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i85.i.i.i = icmp eq ptr %i.iz, %i.io
  br i1 %.not.i.i.i.i.i.i85.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i86.i.i.i, label %.lr.ph.i.i.i.i.i.i82.i.i.i, !llvm.loop !332

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i86.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i82.i.i.i, %.noexc90.i.i.i
  %.0.lcssa.i.i.i.i.i.i87.i.i.i = phi ptr [ %i.ij, %.noexc90.i.i.i ], [ %i.ja, %.lr.ph.i.i.i.i.i.i82.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i87.i.i.i, ptr %i.ik, align 8, !tbaa !190
  %i.jb = load ptr, ptr %i.hx, align 8, !tbaa !186
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  store ptr %i.jc, ptr %i.hx, align 8, !tbaa !186
  br label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit92.i.i.i

bb.q:                                             ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit77.i.i.i
  invoke void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit92.i.i.i unwind label %bb.v

_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit92.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i86.i.i.i
  %i.jd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #22 ; 0 uses
  %i.je = load ptr, ptr %4, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit92.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !206
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jj) #26
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit92.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.jk = load ptr, ptr %3, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i93.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i93.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit94.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !206
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jp) #26
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit94.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit94.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.jq = load ptr, ptr %2, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i95.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i95.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayES9_S9_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit94.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !206
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jv) #26
  br label %"_ZSt10__invoke_rIvRZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayES9_S9_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

bb.u:                                             ; preds = %bb.b
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i80.i.i.i, %.noexc.i.i.i88.invoke.i.i.i, %bb.n, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i65.i.i.i, %bb.k, %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  %i.jy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.g
  %.pn57.pn.i.i.i = phi { ptr, i32 } [ %i.jw, %bb.u ], [ %i.ey, %bb.g ], [ %i.jx, %bb.v ]
  %i.jz = load ptr, ptr %4, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i97.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i97.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit98.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !206
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.jz to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ke) #26
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit98.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit98.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.kf = load ptr, ptr %3, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i99.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i99.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit98.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !206
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kk) #26
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit98.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.kl = load ptr, ptr %2, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i101.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i101.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit102.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100.i.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !206
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kq) #26
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit102.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit102.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn57.pn.i.i.i

"_ZSt10__invoke_rIvRZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayES9_S9_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit94.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayESD_SD_E3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKNS_12_OutputArrayES8_S8_E3$_0", ptr %0, align 8, !tbaa !234
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %.val, ptr %0, align 8, !tbaa !75
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(112) %.val6, i64 112, i1 false), !tbaa.struct !335
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !75 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 112) #26
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv47fetchPointsNormalsColorsFromColorTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5coordERKNS_3MatEPKNS_12RGBTsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_SB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbbiiiNSC_IfEEfi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef byval(%"class.cv::Point3_") align 8 %5, ptr noundef align 4 dead_on_return %6, ptr noundef align 4 dead_on_return %7, ptr noundef byval(%"class.cv::Affine3") align 8 %8, float noundef %9, float noundef %10, i1 noundef zeroext %11, i1 noundef zeroext %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, <2 x float> %16, float %17, float noundef %18, i32 noundef %19) local_unnamed_addr #18 comdat {
bb.a:
  %20 = alloca %"class.cv::Vec.22", align 8       ; 6 uses
  %21 = alloca %"class.cv::Vec.22", align 8       ; 6 uses
  %22 = alloca %"class.cv::Point3_.9", align 8    ; 5 uses
  %23 = alloca %"class.cv::Vec.22", align 8       ; 6 uses
  %24 = alloca %"class.cv::Point3_.9", align 8    ; 5 uses
  switch i32 %19, label %.thread167 [
    i32 0, label %.thread
    i32 1, label %bb.b
    i32 2, label %.split
  ]

.thread:                                          ; preds = %bb.a
  %i.a = add nsw i32 %13, 1
  %i.b = load i32, ptr %5, align 8, !tbaa !174
  %i.c = icmp slt i32 %i.a, %i.b
  %.sroa.078.0.vec.extract = extractelement <2 x float> %16, i64 0
  br i1 %i.c, label %bb.c, label %.thread167

.split:                                           ; preds = %bb.a
  %i.d = add nsw i32 %15, 1
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %.thread167

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %14, 1
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !214
  %i.k = icmp slt i32 %i.h, %i.j
  %.sroa.078.4.vec.extract = extractelement <2 x float> %16, i64 1
  br i1 %i.k, label %bb.c, label %.thread167

bb.c:                                             ; preds = %.thread, %.split, %bb.b
  %.286176 = phi float [ %17, %.split ], [ %.sroa.078.4.vec.extract, %bb.b ], [ %.sroa.078.0.vec.extract, %.thread ] ; 2 uses
  %.not89 = phi i1 [ false, %.split ], [ true, %bb.b ], [ true, %.thread ]
  %.sroa.14157.2175 = phi i32 [ 1, %.split ], [ 0, %bb.b ], [ 0, %.thread ]
  %.sroa.8155.2174 = phi i32 [ 0, %.split ], [ 1, %bb.b ], [ 0, %.thread ]
  %.sroa.0153.2173 = phi i32 [ 0, %.split ], [ 0, %bb.b ], [ 1, %.thread ]
  %i.l = phi <2 x i1> [ splat (i1 true), %.split ], [ <i1 true, i1 false>, %bb.b ], [ <i1 false, i1 true>, %.thread ]
  %i.m = add nsw i32 %.sroa.0153.2173, %13
  %i.n = load i32, ptr %6, align 4, !tbaa !38
  %i.o = mul nsw i32 %i.m, %i.n
  %i.p = add nsw i32 %.sroa.8155.2174, %14
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = add nsw i32 %i.s, %i.o
  %i.u = add nsw i32 %.sroa.14157.2175, %15
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = add nsw i32 %i.t, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !268
  %i.ac = sitofp i8 %i.ab to float
  %i.ad = fmul nnan float %i.ac, -7.812500e-03    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !319
  %i.ag = icmp ne i8 %i.af, 0
  %i.ah = fcmp une float %i.ad, 1.000000e+00
  %or.cond = and i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.d, label %.thread167

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp ogt float %18, 0.000000e+00
  %i.aj = fcmp olt float %i.ad, 0.000000e+00
  %or.cond3 = and i1 %i.ai, %i.aj
  br i1 %or.cond3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = fcmp olt float %18, 0.000000e+00
  %i.al = fcmp ogt float %i.ad, 0.000000e+00
  %or.cond5 = and i1 %i.ak, %i.al
  br i1 %or.cond5, label %bb.f, label %.thread167

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = fadd float %9, %.286176
  %i.an = tail call noundef float @llvm.fabs.f32(float %18) ; 2 uses
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = fdiv float 1.000000e+00, %i.ap
  %i.ar = fmul float %i.an, %i.am
  %i.as = tail call float @llvm.fmuladd.f32(float %.286176, float %i.ao, float %i.ar)
  %i.at = fmul float %i.as, %i.aq                 ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = select <2 x i1> %i.l, <2 x float> %16, <2 x float> %i.av ; 4 uses
  %i.ax = select i1 %.not89, float %17, float %i.at ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bf = load <2 x float>, ptr %8, align 8, !tbaa !8 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.ba, align 8, !tbaa !8 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bd, align 8, !tbaa !8 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bk = load <2 x float>, ptr %i.ay, align 4, !tbaa !8 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bb, align 4, !tbaa !8 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.be, align 4, !tbaa !8 ; 3 uses
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bo = load <4 x float>, ptr %i.az, align 8    ; 2 uses
  %i.bp = load <4 x float>, ptr %i.bc, align 8    ; 2 uses
  %i.bq = shufflevector <2 x float> %i.aw, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.br = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float 1.000000e+00, i64 3
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bu = fmul <4 x float> %i.bq, %i.bt
  %i.bv = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bw = insertelement <4 x float> %i.bv, float 0.000000e+00, i64 3
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.by = shufflevector <2 x float> %i.aw, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.by, <4 x float> %i.bu)
  %i.ca = load <4 x float>, ptr %i.bj, align 8    ; 2 uses
  %i.cb = insertelement <4 x float> %i.bo, float 0.000000e+00, i64 3
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.bp, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ce = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ax, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.cf, <4 x float> %i.bz)
  %i.ch = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.bo, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.bp, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ck = fadd <4 x float> %i.cj, %i.cg           ; 3 uses
  %25 = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %25, ptr %20, align 8, !tbaa !8, !alias.scope !336
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %27 = extractelement <4 x float> %i.ck, i64 2
  store float %27, ptr %26, align 8, !tbaa !8, !alias.scope !336
  %28 = getelementptr inbounds nuw i8, ptr %20, i64 12
  store float 0.000000e+00, ptr %28, align 4, !tbaa !8, !alias.scope !336
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !190 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !190
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %20)
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br i1 %11, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %.sroa.032.0.copyload = load i64, ptr %5, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.233.0.copyload = load i32, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.cq = insertelement <2 x float> poison, float %10, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.aw
  %i.ct = fmul float %10, %i.ax
  store <2 x float> %i.cs, ptr %22, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store float %i.ct, ptr %.sroa.231.0..sroa_idx, align 8
  %i.cu = call { <2 x float>, float } @_ZN2cv19getNormalColorVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 %.sroa.032.0.copyload, i32 %.sroa.233.0.copyload, ptr noundef nonnull align 4 dereferenceable(12) %22) ; 2 uses
  %.fca.0.extract22 = extractvalue { <2 x float>, float } %i.cu, 0 ; 2 uses
  %.fca.1.extract23 = extractvalue { <2 x float>, float } %i.cu, 1
  %i.cv = shufflevector <2 x float> %.fca.0.extract22, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.cv, <4 x float> zeroinitializer)
  %i.cx = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cy = insertelement <4 x float> %i.cx, float 0.000000e+00, i64 3
  %i.cz = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.db = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dd = shufflevector <2 x float> %.fca.0.extract22, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.dd, <4 x float> %i.cw)
  %i.df = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cx, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cz, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.di = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract23, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dj, <4 x float> %i.de) ; 3 uses
  %29 = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %29, ptr %21, align 8, !tbaa !8, !alias.scope !339
  %30 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %31 = extractelement <4 x float> %i.dk, i64 2
  store float %31, ptr %30, align 8, !tbaa !8, !alias.scope !339
  %32 = getelementptr inbounds nuw i8, ptr %21, i64 12
  store float 0.000000e+00, ptr %32, align 4, !tbaa !8, !alias.scope !339
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !190 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !206
  %.not.i.i96 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i.i96, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <4 x float> %i.dk, ptr %i.dm, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !190
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit97

bb.k:                                             ; preds = %bb.i
  call void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %21)
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit97

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit97: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit97, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit
  br i1 %12, label %bb.m, label %.thread167

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %.sroa.016.0.copyload = load i64, ptr %5, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.217.0.copyload = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.dq = insertelement <2 x float> poison, float %10, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dr, %i.aw
  %i.dt = fmul float %10, %i.ax
  store <2 x float> %i.ds, ptr %24, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %i.dt, ptr %.sroa.215.0..sroa_idx, align 8
  %i.du = call { <2 x float>, float } @_ZN2cv13getColorVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEEfRKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 %.sroa.016.0.copyload, i32 %.sroa.217.0.copyload, float noundef %10, ptr noundef nonnull align 4 dereferenceable(12) %24) ; 2 uses
  %.fca.0.extract6 = extractvalue { <2 x float>, float } %i.du, 0 ; 2 uses
  %.fca.1.extract7 = extractvalue { <2 x float>, float } %i.du, 1
  %i.dv = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dw = insertelement <4 x float> %i.dv, float 0.000000e+00, i64 3
  %i.dx = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.dz = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dy, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.eb = shufflevector <2 x float> %.fca.0.extract6, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.eb, <4 x float> zeroinitializer)
  %i.ed = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.dv, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.eg = shufflevector <2 x float> %.fca.0.extract6, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.eh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.eg, <4 x float> %i.ec)
  %i.ei = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ei, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ek = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.em = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.eo = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.ep, <4 x float> %i.eh) ; 3 uses
  %33 = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %33, ptr %23, align 8, !tbaa !8, !alias.scope !342
  %34 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %35 = extractelement <4 x float> %i.eq, i64 2
  store float %35, ptr %34, align 8, !tbaa !8, !alias.scope !342
  %36 = getelementptr inbounds nuw i8, ptr %23, i64 12
  store float 0.000000e+00, ptr %36, align 4, !tbaa !8, !alias.scope !342
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !190 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !206
  %.not.i.i106 = icmp eq ptr %i.es, %i.eu
  br i1 %.not.i.i106, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store <4 x float> %i.eq, ptr %i.es, align 4, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !190
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit107

bb.o:                                             ; preds = %bb.m
  call void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.es, ptr noundef nonnull align 4 dereferenceable(16) %23)
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit107

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit107: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %.thread167

.thread167:                                       ; preds = %bb.a, %bb.l, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit107, %.thread, %.split, %bb.c, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !193    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <4 x float>, ptr %2, align 4, !tbaa !8
  store <4 x float> %i.r, ptr %i.q, align 4, !tbaa !8
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.s = load float, ptr %.01214.i.i.i.i.i, align 4, !tbaa !8
  store float %i.s, ptr %.015.i.i.i.i.i, align 4, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  store float %i.u, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12
  store float %i.aa, ptr %i.ab, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !345

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.af = load <4 x float>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !8
  store <4 x float> %i.af, ptr %.015.i.i.i.i.i30, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !345

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i29 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !206
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !193
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !190
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !206
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !189    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !193    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26.thread, label %bb.c

.noexc26.thread:                                  ; preds = %_ZNKSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !206
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775792
  br i1 %i.aa, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i, !prof !331

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %.noexc26 unwind label %bb.f   ; 4 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !193
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !190
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !206
end_hunk_0
