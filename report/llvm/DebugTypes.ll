Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugTypes?download=true
inline.NumInlined: 4156
inline.NumDeleted: 1873
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEEvT_SE_RKT0_RNS0_9TaskGroupEm:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.d, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 -8 ; 9 uses
  %.val31.i = load i64, ptr %0, align 8, !tbaa !538 ; 5 uses
  %.val32.i = load i64, ptr %i.i, align 8, !tbaa !538 ; 6 uses
  %i.j = icmp ult i64 %.val31.i, %.val32.i
  %.val29.i = load i64, ptr %i.h, align 8, !tbaa !538 ; 6 uses
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %.val29.i, %.val32.i
  br i1 %i.k, label %bb.e, label %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult i64 %.val31.i, %.val29.i
  %.sroa.06.0.copyload.i = select i1 %i.l, ptr %i.h, ptr %0
  %i.m = tail call i64 @llvm.umax.i64(i64 %.val31.i, i64 %.val29.i)
  br label %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %.val29.i, %.val31.i
  br i1 %i.n, label %bb.g, label %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ult i64 %.val32.i, %.val29.i
  %spec.select.i = select i1 %i.o, ptr %i.h, ptr %i.i
  %i.p = tail call i64 @llvm.umax.i64(i64 %.val32.i, i64 %.val29.i)
  br label %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit

_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.q = phi i64 [ %i.m, %bb.e ], [ %i.p, %bb.g ], [ %.val32.i, %bb.d ], [ %.val31.i, %bb.f ]
  %.sroa.06.0.i = phi ptr [ %.sroa.06.0.copyload.i, %bb.e ], [ %spec.select.i, %bb.g ], [ %i.i, %bb.d ], [ %0, %bb.f ]
  store i64 %i.q, ptr %i.i, align 8, !tbaa !138
  store i64 %.val32.i, ptr %.sroa.06.0.i, align 8, !tbaa !138
  %i.r = icmp eq ptr %0, %i.i
  br i1 %i.r, label %_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit, %bb.k
  %.sroa.016.026.i.i = phi ptr [ %i.x, %bb.k ], [ %0, %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit ]
  %.sroa.014.025.i.i = phi ptr [ %.sroa.014.1.i.i, %bb.k ], [ %i.i, %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit ] ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.i, align 8, !tbaa !538 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.016.122.i.i = phi ptr [ %.sroa.016.026.i.i, %.lr.ph.i.i ], [ %i.t, %bb.i ] ; 6 uses
  %.val12.i.i = load i64, ptr %.sroa.016.122.i.i, align 8, !tbaa !538 ; 2 uses
  %i.s = icmp ult i64 %.val12.i.i, %.val3.i.i.i
  br i1 %i.s, label %bb.i, label %.preheader.i.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.122.i.i, i64 8 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.sroa.014.025.i.i
  br i1 %i.u, label %_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit, label %bb.h, !llvm.loop !1129

.preheader.i.i:                                   ; preds = %bb.h, %bb.j
  %.sroa.014.0.pn.i.i = phi ptr [ %.sroa.014.1.i.i, %bb.j ], [ %.sroa.014.025.i.i, %bb.h ]
  %.sroa.014.1.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.pn.i.i, i64 -8 ; 6 uses
  %i.v = icmp eq ptr %.sroa.016.122.i.i, %.sroa.014.1.i.i
  br i1 %i.v, label %_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %.val10.i.i = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !538 ; 2 uses
  %i.w = icmp ult i64 %.val10.i.i, %.val3.i.i.i
  br i1 %i.w, label %bb.k, label %.preheader.i.i, !llvm.loop !1130

bb.k:                                             ; preds = %bb.j
  store i64 %.val10.i.i, ptr %.sroa.016.122.i.i, align 8, !tbaa !138
  store i64 %.val12.i.i, ptr %.sroa.014.1.i.i, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.122.i.i, i64 8 ; 3 uses
  %i.y = icmp eq ptr %i.x, %.sroa.014.1.i.i
  br i1 %i.y, label %_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit, label %.lr.ph.i.i, !llvm.loop !1131

_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit: ; preds = %bb.k, %bb.i, %.preheader.i.i, %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit
  %.sroa.016.120.i.i = phi ptr [ %i.t, %bb.i ], [ %.sroa.016.122.i.i, %.preheader.i.i ], [ %0, %_ZN4llvm8parallel6detail9medianOf3IN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEET_SE_SE_RKT0_.exit ], [ %i.x, %bb.k ] ; 4 uses
  %.sroa.0.0.copyload.i31 = load i64, ptr %.sroa.016.120.i.i, align 8, !tbaa !138
  %i.z = load i64, ptr %i.i, align 8, !tbaa !138
  store i64 %i.z, ptr %.sroa.016.120.i.i, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i31, ptr %i.i, align 8, !tbaa !138
  %i.aa = ptrtoint ptr %.sroa.016.120.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ad, align 8
  %i.ae = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !inline_history !1132 ; 6 uses
  store ptr %2, ptr %i.ae, align 16, !tbaa !593
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !595
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !596
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !596
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !138
  store ptr %i.ae, ptr %5, align 8, !tbaa !525
  store ptr @_ZNSt17_Function_handlerIFvvEZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ac, align 8, !tbaa !1134
  store ptr @_ZNSt17_Function_handlerIFvvEZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation, ptr %i.ab, align 8, !tbaa !1135
  call void @_ZN4llvm8parallel9TaskGroup5spawnESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(97) %3, ptr nofree noundef nonnull align 8 dereferenceable(32) %5) #28
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1135 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #28, !inline_history !1133 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEEZN4llvm8parallel6detail19parallel_quick_sortIS8_St4lessIS3_EEEvT_SF_RKT0_RNSA_9TaskGroupEmEUlRS3_E_ESF_SF_SF_SG_.exit, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.120.i.i, i64 8
  %i.ai = add i64 %4, -1
  call fastcc void @_ZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEEvT_SE_RKT0_RNS0_9TaskGroupEm(ptr nonnull %i.ah, ptr nonnull %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(97) %3, i64 noundef %i.ai)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm8parallel9TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97)) unnamed_addr #5

declare void @_ZN4llvm8parallel9TaskGroup5spawnESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(97), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFvvEZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E9_M_invokeERKSt9_Any_data(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !525   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !596
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !596
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1139, !nonnull !119
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1140, !nonnull !119, !align !141
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1141
  %i.h = add i64 %i.g, -1
  tail call fastcc void @_ZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS6_SaIS6_EEEESt4lessIS6_EEEvT_SE_RKT0_RNS0_9TaskGroupEm(ptr %.sroa.01.0.copyload.i.i.i, ptr %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(97) %i.e, i64 noundef %i.h), !inline_history !1136
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !525
  store ptr %.val, ptr %0, align 8, !tbaa !525
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1143
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val5, i64 40, i1 false), !tbaa.struct !1144
  store ptr %i.a, ptr %0, align 8, !tbaa !525
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !525 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 40) #27
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS8_SaIS8_EEEESt4lessIS8_EEEvT_SG_RKT0_RNS2_9TaskGroupEmEUlvE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph47

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEET_SE_SE_T0_.exit
  %i.h = icmp eq i64 %i.cn, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph47, !llvm.loop !1145

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i27.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i27.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i
  %.010.us.i.i.i = phi i64 [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.s, align 8, !tbaa !138 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.040.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.040.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.x
  %.val2.i.i.us.i.i.i = load i64, ptr %i.w, align 8, !tbaa !538
  %.val3.i.i.us.i.i.i = load i64, ptr %i.y, align 8, !tbaa !538
  %i.z = icmp ult i64 %.val2.i.i.us.i.i.i, %.val3.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.us.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !138
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !138
  %i.ad = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !1146

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.08.i.i.us.i.i.i = phi i64 [ %.099.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.099.in.i.i.us.i.i.i = add nsw i64 %.08.i.i.us.i.i.i, -1
  %.099.i.i.us.i.i.i = sdiv i64 %.099.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i.us.i.i.i
  %.val2.i.i.i.us.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !538 ; 2 uses
  %i.af = icmp ult i64 %.val2.i.i.i.us.i.i.i, %.sroa.03.0.copyload.us.i.i.i
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.08.i.i.us.i.i.i
  store i64 %.val2.i.i.i.us.i.i.i, ptr %i.ag, align 8, !tbaa !138
  %i.ah = icmp sgt i64 %.099.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i, !llvm.loop !1147

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.099.i.i.us.i.i.i, %bb.c ], [ %.08.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.ai, align 8, !tbaa !138
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.aj = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !1148

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.be, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !138 ; 2 uses
  %i.al = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.040.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.am = shl i64 %.040.i.i.i.i, 1                ; 2 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.an
  %i.ap = or disjoint i64 %i.am, 1                ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.ap
  %.val2.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !538
  %.val3.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !538
  %i.ar = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ar, i64 %i.ap, i64 %i.an ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !138
  store i64 %i.au, ptr %i.at, align 8, !tbaa !138
  %i.av = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1146

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aw = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !138
  store i64 %i.ax, ptr %i.r, align 8, !tbaa !138
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ay = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.08.i.i.i.i.i = phi i64 [ %.099.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.099.in.i.i.i.i.i = add nsw i64 %.08.i.i.i.i.i, -1
  %.099.i.i.i.i.i = sdiv i64 %.099.in.i.i.i.i.i, 2 ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !tbaa !538 ; 2 uses
  %i.ba = icmp ult i64 %.val2.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.ba, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.08.i.i.i.i.i
  store i64 %.val2.i.i.i.i.i.i, ptr %i.bb, align 8, !tbaa !138
  %i.bc = icmp sgt i64 %.099.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i, !llvm.loop !1147

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.099.i.i.i.i.i, %bb.f ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bd, align 8, !tbaa !138
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.be = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !1148

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.bf, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_RT0_.exit.i.i ]
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bf, align 8, !tbaa !138 ; 2 uses
  %i.bg = load i64, ptr %.fr28, align 8, !tbaa !138
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !138
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bh, %i.a                     ; 3 uses
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = lshr i64 %i.bk, 1
  %i.bm = icmp sgt i64 %i.bj, 2
  br i1 %i.bm, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.040.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bn = shl i64 %.040.i.i.i20.i, 1              ; 2 uses
  %i.bo = add i64 %i.bn, 2                        ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bo
  %i.bq = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bq
  %.val2.i.i.i.i21.i = load i64, ptr %i.bp, align 8, !tbaa !538
  %.val3.i.i.i.i22.i = load i64, ptr %i.br, align 8, !tbaa !538
  %i.bs = icmp ult i64 %.val2.i.i.i.i21.i, %.val3.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.bs, i64 %i.bq, i64 %i.bo ; 4 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i23.i
  %i.bu = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.i.i20.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !138
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !138
  %i.bw = icmp slt i64 %spec.select.i.i.i23.i, %i.bl
  br i1 %i.bw, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1146

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.bx = and i64 %i.bi, 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bz = add nsw i64 %i.bj, -2
  %i.ca = ashr exact i64 %i.bz, 1
  %i.cb = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.ca
  br i1 %i.cb, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cc = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cd = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i12.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !138
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !138
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.08.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.cd, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.08.i.i.i.i15.i = phi i64 [ %.099.i.i34.i.i.i, %bb.i ], [ %.08.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.099.in.i.i.i.i16.i = add nsw i64 %.08.i.i.i.i15.i, -1
  %.099.i.i34.i.i.i = lshr i64 %.099.in.i.i.i.i16.i, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i34.i.i.i
  %.val2.i.i.i.i.i17.i = load i64, ptr %i.ch, align 8, !tbaa !538 ; 2 uses
  %i.ci = icmp ult i64 %.val2.i.i.i.i.i17.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.ci, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cj = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.08.i.i.i.i15.i
  store i64 %.val2.i.i.i.i.i17.i, ptr %i.cj, align 8, !tbaa !138
  %.not5.i.i.i = icmp eq i64 %.099.i.i34.i.i.i, 0
  br i1 %.not5.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i14.i, !llvm.loop !1147

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.08.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.ck = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.ck, align 8, !tbaa !138
  %i.cl = icmp sgt i64 %i.bi, 8
  br i1 %i.cl, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_T0_.exit, !llvm.loop !1149

.lr.ph47:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2546 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02645 = phi i64 [ %i.cn, %bb.b ], [ %2, %.lr.ph ]
  %i.cm = phi i64 [ %i.dc, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cn = add nsw i64 %.02645, -1                 ; 3 uses
  %i.co = lshr i64 %i.cm, 1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %storemerge2546, i64 -8 ; 3 uses
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !tbaa !538 ; 5 uses
  %.val3.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !538 ; 5 uses
  %i.cr = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %.val3.i27.i.i = load i64, ptr %i.cq, align 8, !tbaa !538 ; 6 uses
  br i1 %i.cr, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph47
  %i.cs = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.fr28, align 8, !tbaa !138
  store i64 %.val3.i.i.i, ptr %.fr28, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.cp, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ct = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  %.sroa.0.0.copyload.i.i30.i.i = load i64, ptr %.fr28, align 8, !tbaa !138 ; 2 uses
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %.val3.i27.i.i, ptr %.fr28, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.cq, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  store i64 %.val2.i.i.i, ptr %.fr28, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph47
  %i.cu = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i34.i.i = load i64, ptr %.fr28, align 8, !tbaa !138
  store i64 %.val2.i.i.i, ptr %.fr28, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cv = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  %.sroa.0.0.copyload.i.i37.i.i = load i64, ptr %.fr28, align 8, !tbaa !138 ; 2 uses
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %.val3.i27.i.i, ptr %.fr28, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cq, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  store i64 %.val3.i.i.i, ptr %.fr28, align 8, !tbaa !138
  store i64 %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cp, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cx, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2546, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %.val3.i.i18.i = load i64, ptr %.fr28, align 8, !tbaa !538 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i ], [ %i.cx, %bb.t ] ; 8 uses
  %.val2.i.i19.i = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !538 ; 2 uses
  %i.cw = icmp ult i64 %.val2.i.i19.i, %.val3.i.i18.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.cw, label %bb.t, label %.preheader.i.i, !llvm.loop !1150

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val3.i10.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !538 ; 2 uses
  %i.cy = icmp ult i64 %.val3.i.i18.i, %.val3.i10.i.i
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !1151

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEET_SE_SE_T0_.exit

bb.v:                                             ; preds = %bb.u
  store i64 %.val3.i10.i.i, ptr %.sroa.012.1.i.i, align 8, !tbaa !138
  store i64 %.val2.i.i19.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !138
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_SE_T0_.exit.i, !llvm.loop !1152

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEET_SE_SE_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2546, i64 noundef %i.cn)
  %i.da = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 2 uses
  %i.dc = ashr exact i64 %i.db, 3                 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_T0_.exit, !llvm.loop !1145

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEET_SE_SE_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_19GHashCellESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SE_SE_RT0_.exit.i.i, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvmEE11callback_fnIZNS_15parallelForEachIPKPN3lld4coff9TpiSourceEZNS6_10TypeMerger19mergeTypesWithGHashEvE3$_3EEvT_SD_T0_EUlmE_EEvlm"(i64 noundef %0, i64 noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1155
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !1156
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !1158
  %.val2.val = load ptr, ptr %.val2, align 8, !tbaa !524
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val2.val, i64 %1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(392) %i.d, ptr noundef nonnull %.val.val) #28, !inline_history !1153
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.472", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !505
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !506
  store ptr %i.y, ptr %i.q, align 8, !tbaa !540
  store i32 0, ptr %i.p, align 16, !tbaa !541
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !525
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1159
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !525
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !525
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !525
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !445 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !445
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !445
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !445
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !445
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8codeview9TypeIndexES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #28
  br label %_ZN4llvm8DenseMapINS_8codeview9TypeIndexES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8codeview9TypeIndexES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !506
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !540
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !505  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !540  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !506
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !505
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !445  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.u, align 1 ; 2 uses
  %i.v = mul i32 %.0.copyload.i.i.i.i.i.i, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !445
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1160

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w ; 2 uses
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %i.af, align 1, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !124
  store i32 %i.ai, ptr %i.ag, align 1, !tbaa !124
  %i.aj = shl nuw i32 1, %i.aa
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !445
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !445
  %i.am = add i32 %.0.i19, -1
  %i.an = and i32 %i.am, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1161

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1162

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !505
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !541
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !541
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapINS_8codeview9TypeIndexES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !506
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 4) #28
  store i32 0, ptr %i.d, align 4, !tbaa !505
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8codeview9TypeIndexES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8codeview9TypeIndexES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8codeview9TypeIndexES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
