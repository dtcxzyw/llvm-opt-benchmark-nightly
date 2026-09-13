Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangOptionDocEmitter?download=true
inline.NumInlined: 1926
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZNSt17_Function_handlerIFN12_GLOBAL__N_113DocumentationEPKN4llvm6RecordEEZNS0_20extractDocumentationERKNS2_12RecordKeeperES5_E3$_0E9_M_invokeERKSt9_Any_dataOS5_":bb.a
  %i.ir = select i1 %i.ip, i64 288230376151711743, i64 %i.iq ; 3 uses
  %.not.i.i.i.i54.i.i.i = icmp ne i64 %i.ir, 0
  call void @llvm.assume(i1 %.not.i.i.i.i54.i.i.i)
  %i.is = shl nuw nsw i64 %i.ir, 5
  %i.it = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #23, !noalias !316 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ik ; 4 uses
  store ptr %i.hz, ptr %i.iu, align 8, !tbaa !135, !noalias !316
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.ia, ptr %i.iv, align 8, !tbaa !112, !noalias !316
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store ptr %i.ib, ptr %i.iw, align 8, !tbaa !110, !noalias !316
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store ptr %i.id, ptr %i.ix, align 8, !tbaa !111, !noalias !316
  br i1 %i.in, label %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i55.i.i.i

.lr.ph.i.i.i.i.i.i55.i.i.i:                       ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i55.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i55.i.i.i ], [ %i.it, %_ZNKSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i55.i.i.i ], [ %.val.i.i.i53.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.iy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 8
  %i.iz = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !332, !noalias !333
  store <2 x ptr> %i.iz, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !331, !noalias !334
  %i.ja = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 16
  %i.jc = load <2 x ptr>, ptr %i.jb, align 8, !tbaa !109, !alias.scope !332, !noalias !333
  store <2 x ptr> %i.jc, ptr %i.ja, align 8, !tbaa !109, !alias.scope !331, !noalias !334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i8 0, i64 24, i1 false), !alias.scope !332, !noalias !333
  %i.jd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i56.i.i.i = icmp eq ptr %i.jd, %i.hf
  br i1 %.not.i.i.i.i.i.i56.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i55.i.i.i, !llvm.loop !311

_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i55.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.it, %_ZNKSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.je, %.lr.ph.i.i.i.i.i.i55.i.i.i ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i53.i.i.i, null
  br i1 %.not.i27.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i53.i.i.i, i64 noundef %i.ik) #22, !noalias !316
  br label %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.aj, %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i.i.i
  store ptr %i.it, ptr %i.dg, align 8, !tbaa !124, !alias.scope !316
  store ptr %i.jf, ptr %i.di, align 8, !tbaa !125, !alias.scope !316
  %i.jg = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.ir ; 2 uses
  store ptr %i.jg, ptr %i.dj, align 8, !tbaa !126, !alias.scope !316
  br label %_ZN12_GLOBAL__N_116DocumentedOptionD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_116DocumentedOptionD2Ev.exit.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, %bb.ag, %bb.ad
  %.val.i.i.i53.i8.i.i = phi ptr [ %i.it, %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %.val.i.i.i53.i.i.i, %bb.ag ], [ %.val.i.i.i53.i.i.i, %bb.ad ]
  %i.jh = phi ptr [ %i.jg, %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %i.hf, %bb.ag ], [ %i.hf, %bb.ad ]
  %i.ji = phi ptr [ %i.jf, %_ZNSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %i.ih, %bb.ag ], [ %i.hg, %bb.ad ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.063.077.i.i.i, i64 8 ; 2 uses
  %.not70.i.i.i = icmp eq ptr %i.jj, %i.de
  br i1 %.not70.i.i.i, label %"_ZSt10__invoke_rIN12_GLOBAL__N_113DocumentationERZNS0_20extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.ad

"_ZSt10__invoke_rIN12_GLOBAL__N_113DocumentationERZNS0_20extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %_ZN12_GLOBAL__N_116DocumentedOptionD2Ev.exit.i.i.i, %_ZNSt3mapIPKN4llvm6RecordESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit38.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !315
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN12_GLOBAL__N_113DocumentationEPKN4llvm6RecordEEZNS0_20extractDocumentationERKNS2_12RecordKeeperES5_E3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !115
  store ptr %.val, ptr %0, align 8, !tbaa !115
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !336
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val5, i64 56, i1 false), !tbaa.struct !337
  store ptr %i.a, ptr %0, align 8, !tbaa !115
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !115 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 56) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS2_6RecordEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZN12_GLOBAL__N_120extractDocumentationERKNS_12RecordKeeperES4_E3$_1EEvOT_T0_"(ptr %.0.val, ptr %.8.val) unnamed_addr #8 {
bb.a:
  %.not.i.i.i = icmp eq ptr %.0.val, %.8.val
  br i1 %.not.i.i.i, label %"_ZN4llvm4sortIN9__gnu_cxx17__normal_iteratorIPPKNS_6RecordESt6vectorIS5_SaIS5_EEEEZN12_GLOBAL__N_120extractDocumentationERKNS_12RecordKeeperES5_E3$_1EEvT_SG_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_T0_T1_"(ptr %.0.val, ptr %.8.val, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 128
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 128 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_T0_"(ptr %.0.val, ptr nonnull %i.i)
  %.not6.i.i.i.i.i = icmp eq ptr %i.i, %.8.val
  br i1 %.not6.i.i.i.i.i, label %"_ZN4llvm4sortIN9__gnu_cxx17__normal_iteratorIPPKNS_6RecordESt6vectorIS5_SaIS5_EEEEZN12_GLOBAL__N_120extractDocumentationERKNS_12RecordKeeperES5_E3$_1EEvT_SG_T0_.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.w, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit.i.i.i.i.i" ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.k = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !27
  %i.l = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %i.n = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.k, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.m) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = extractvalue { ptr, i64 } %i.n, 0
  %i.r = extractvalue { ptr, i64 } %i.l, 0
  %i.s = tail call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #19
  %.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.s      ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i"

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.t = icmp ult i64 %i.m, %i.o
  br i1 %i.t, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %i.u = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i", %.thread.i.i.i.i.i.i.i.i.i.i
  %i.v = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !27
  store ptr %i.v, ptr %.sroa.03.0.i.i.i.i.i.i, align 8, !tbaa !27
  br label %bb.d, !llvm.loop !7

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i", %.thread.i.i.i.i.i.i.i.i.i.i
  store ptr %i.j, ptr %.sroa.03.0.i.i.i.i.i.i, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %.8.val
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm4sortIN9__gnu_cxx17__normal_iteratorIPPKNS_6RecordESt6vectorIS5_SaIS5_EEEEZN12_GLOBAL__N_120extractDocumentationERKNS_12RecordKeeperES5_E3$_1EEvT_SG_T0_.exit", label %.lr.ph.i.i.i.i.i, !llvm.loop !338

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_T0_"(ptr %.0.val, ptr %.8.val)
  br label %"_ZN4llvm4sortIN9__gnu_cxx17__normal_iteratorIPPKNS_6RecordESt6vectorIS5_SaIS5_EEEEZN12_GLOBAL__N_120extractDocumentationERKNS_12RecordKeeperES5_E3$_1EEvT_SG_T0_.exit"

"_ZN4llvm4sortIN9__gnu_cxx17__normal_iteratorIPPKNS_6RecordESt6vectorIS5_SaIS5_EEEEZN12_GLOBAL__N_120extractDocumentationERKNS_12RecordKeeperES5_E3$_1EEvT_SG_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit.i.i.i.i.i", %bb.a, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph61

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.du, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph61, !llvm.loop !339

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fe, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.au, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.us.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val2.i.i.us.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.ae = load ptr, ptr %.val.i.i.us.i.i.i, align 8, !tbaa !163
  %i.af = load ptr, ptr %.val2.i.i.us.i.i.i, align 8, !tbaa !163
  %i.ag = icmp ult ptr %i.ae, %i.af
  %spec.select.i.us.i.i.i = select i1 %i.ag, i64 %i.y, i64 %i.w ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !27
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ak, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !340

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.al = getelementptr i8, ptr %i.t, i64 8
  %.val.val.i.i.us.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !87
  %.val.val.val.i.i.us.i.i.i = load ptr, ptr %.val.val.i.i.us.i.i.i, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !87
  %i.ap = load ptr, ptr %.val.i.i.i.us.i.i.i, align 8, !tbaa !163
  %i.aq = icmp ult ptr %i.ap, %.val.val.val.i.i.us.i.i.i
  br i1 %i.aq, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !27
  %i.as = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.as, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !341

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.at, align 8, !tbaa !27
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.au = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !342

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.ca, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.ax = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ay = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bb
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !27
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !87
  %i.bg = getelementptr i8, ptr %i.be, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !87
  %i.bh = load ptr, ptr %.val.i.i.i.i.i, align 8, !tbaa !163
  %i.bi = load ptr, ptr %.val2.i.i.i.i.i, align 8, !tbaa !163
  %i.bj = icmp ult ptr %i.bh, %i.bi
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !27
  %i.bn = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !340

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bo = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !27
  store ptr %i.bp, ptr %i.r, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bq = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.br = getelementptr i8, ptr %i.aw, i64 8
  %.val.val.i.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !87
  %.val.val.val.i.i.i.i.i = load ptr, ptr %.val.val.i.i.i.i.i, align 8, !tbaa !163
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !27 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !87
  %i.bv = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !163
  %i.bw = icmp ult ptr %i.bv, %.val.val.val.i.i.i.i.i
  br i1 %i.bw, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !27
  %i.by = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.by, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !341

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.aw, ptr %i.bz, align 8, !tbaa !27
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ca = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !342

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.cb, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_RT0_.exit.i.i" ]
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27 ; 2 uses
  %i.cd = load ptr, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !27
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.ce, %i.a                     ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = icmp sgt i64 %i.cg, 2
  br i1 %i.cj, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i20.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i20.i
  %.034.i.i.i21.i = phi i64 [ %spec.select.i.i.i24.i, %.lr.ph.i.i.i20.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ck = shl i64 %.034.i.i.i21.i, 1              ; 2 uses
  %i.cl = add i64 %i.ck, 2                        ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cl
  %i.cn = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cn
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !27
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !27
  %i.cr = getelementptr i8, ptr %i.cp, i64 8
  %.val.i.i.i.i22.i = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.cs = getelementptr i8, ptr %i.cq, i64 8
  %.val2.i.i.i.i23.i = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.ct = load ptr, ptr %.val.i.i.i.i22.i, align 8, !tbaa !163
  %i.cu = load ptr, ptr %.val2.i.i.i.i23.i, align 8, !tbaa !163
  %i.cv = icmp ult ptr %i.ct, %i.cu
  %spec.select.i.i.i24.i = select i1 %i.cv, i64 %i.cn, i64 %i.cl ; 4 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i24.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !27
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i21.i
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !27
  %i.cz = icmp slt i64 %spec.select.i.i.i24.i, %i.ci
  br i1 %i.cz, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i10.i, !llvm.loop !340

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i20.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i24.i, %.lr.ph.i.i.i20.i ] ; 5 uses
  %i.da = and i64 %i.cf, 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.dc = add nsw i64 %i.cg, -2
  %i.dd = ashr exact i64 %i.dc, 1
  %i.de = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.dd
  br i1 %i.de, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.df = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.dg = or disjoint i64 %i.df, 1                ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.dg, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dk = getelementptr i8, ptr %i.cc, i64 8
  %.val.val.i.i.i.i14.i = load ptr, ptr %i.dk, align 8, !tbaa !87
  %.val.val.val.i.i.i.i15.i = load ptr, ptr %.val.val.i.i.i.i14.i, align 8, !tbaa !163
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i16.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i17.i = add nsw i64 %.010.i.i.i.i16.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i17.i, 1 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !27 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %.val.i.i.i.i.i18.i = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.do = load ptr, ptr %.val.i.i.i.i.i18.i, align 8, !tbaa !163
  %i.dp = icmp ult ptr %i.do, %.val.val.val.i.i.i.i15.i
  br i1 %i.dp, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i16.i
  store ptr %i.dm, ptr %i.dq, align 8, !tbaa !27
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i", label %bb.k, !llvm.loop !341

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i19.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i16.i, %bb.k ], [ 0, %bb.l ]
  %i.dr = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i19.i
  store ptr %i.cc, ptr %i.dr, align 8, !tbaa !27
  %i.ds = icmp sgt i64 %i.cf, 8
  br i1 %i.ds, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_T0_.exit", !llvm.loop !343

.lr.ph61:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2660 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02759 = phi i64 [ %i.du, %bb.b ], [ %2, %.lr.ph ]
  %i.dt = phi i64 [ %i.ff, %bb.b ], [ %i.d, %.lr.ph ]
  %i.du = add nsw i64 %.02759, -1                 ; 3 uses
  %i.dv = lshr i64 %i.dt, 1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %storemerge2660, i64 -8 ; 3 uses
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !27  ; 3 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !27 ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  %.val.i.i.i = load ptr, ptr %i.ea, align 8, !tbaa !87
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  %.val2.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !87
  %i.ec = load ptr, ptr %.val.i.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ed = load ptr, ptr %.val2.i.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ee = icmp ult ptr %i.ec, %i.ed
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val2.i27.i.i = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.eh = load ptr, ptr %.val2.i27.i.i, align 8, !tbaa !163 ; 4 uses
  br i1 %i.ee, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph61
  %i.ei = icmp ult ptr %i.ed, %i.eh
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ej = load ptr, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.dz, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.ej, ptr %i.dw, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.ek = icmp ult ptr %i.ec, %i.eh
  %i.el = load ptr, ptr %.fr29, align 8, !tbaa !27 ; 2 uses
  br i1 %i.ek, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ef, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.el, ptr %i.dx, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dy, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.el, ptr %i.f, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph61
  %i.em = icmp ult ptr %i.ec, %i.eh
  br i1 %i.em, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.en = load ptr, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.dy, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.en, ptr %i.f, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.eo = icmp ult ptr %i.ed, %i.eh
  %i.ep = load ptr, ptr %.fr29, align 8, !tbaa !27 ; 2 uses
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.ef, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.ep, ptr %i.dx, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dz, ptr %.fr29, align 8, !tbaa !27
  store ptr %i.ep, ptr %i.dw, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ex, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2660, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %i.eq = load ptr, ptr %.fr29, align 8, !tbaa !27
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.er, align 8, !tbaa !87
  %i.es = load ptr, ptr %.val2.i.i13.i, align 8, !tbaa !163 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.ex, %bb.w ] ; 8 uses
  %i.et = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !27 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %.val.i.i14.i = load ptr, ptr %i.eu, align 8, !tbaa !87
  %i.ev = load ptr, ptr %.val.i.i14.i, align 8, !tbaa !163
  %i.ew = icmp ult ptr %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ew, label %bb.w, label %.preheader.i.i, !llvm.loop !344

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ey = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %.val2.i9.i.i = load ptr, ptr %i.ez, align 8, !tbaa !87
  %i.fa = load ptr, ptr %.val2.i9.i.i, align 8, !tbaa !163
  %i.fb = icmp ult ptr %i.es, %i.fa
  br i1 %i.fb, label %.preheader.i.i, label %bb.x, !llvm.loop !345

bb.x:                                             ; preds = %.preheader.i.i
  %i.fc = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.fc, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEET_SJ_SJ_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ey, ptr %.sroa.012.1.i.i, align 8, !tbaa !27
  store ptr %i.et, ptr %.sroa.0.1.i.i, align 8, !tbaa !27
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !346

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEET_SJ_SJ_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2660, i64 noundef %i.du)
  %i.fd = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fe = sub i64 %i.fd, %i.a                     ; 2 uses
  %i.ff = ashr exact i64 %i.fe, 3                 ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, 16
  br i1 %i.fg, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_T0_.exit", !llvm.loop !339

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_2EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_115DocumentedGroupEEvT_S3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #8 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_115DocumentedGroupEEEvT_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EED2Ev.exit
  %.0.i3 = phi ptr [ %i.v, %_ZNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EED2Ev.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %_ZSt8_DestroyIN12_GLOBAL__N_116DocumentedOptionEEvPT_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN12_GLOBAL__N_116DocumentedOptionEEvPT_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.e = getelementptr i8, ptr %.06.i.i.i.i.i, i64 8
  %.0.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_116DocumentedOptionEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.f = getelementptr i8, ptr %.06.i.i.i.i.i, i64 24
  %.0.val4.i.i.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = ptrtoint ptr %.0.val4.i.i.i.i.i to i64
  %i.h = ptrtoint ptr %.0.val.i.i.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i.i.i, i64 noundef %i.i) #22, !inline_history !347
  br label %_ZSt8_DestroyIN12_GLOBAL__N_116DocumentedOptionEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_116DocumentedOptionEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_116DocumentedOptionEEvPT_.exit.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exit.i.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exitthread-pre-split.i.i.i, %.lr.ph
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exitthread-pre-split.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %.not.i.i2.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i2.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115DocumentedGroupEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i3, i64 40
  %.val1.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !126
  %i.l = ptrtoint ptr %.val1.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.n) #22, !inline_history !347
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115DocumentedGroupEEvPT_.exit

_ZSt8_DestroyIN12_GLOBAL__N_115DocumentedGroupEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_116DocumentedOptionEEvT_S3_.exit.i.i.i, %bb.c
  %i.o = load ptr, ptr %.0.i3, align 8, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130
  tail call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_115DocumentedGroupEEvT_S3_(ptr noundef %i.o, ptr noundef %i.q), !inline_history !348
  %.val.i1.i.i = load ptr, ptr %.0.i3, align 8, !tbaa !129 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i1.i.i, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115DocumentedGroupEEvPT_.exit
  %i.r = getelementptr i8, ptr %.0.i3, i64 16
  %.val1.i2.i.i = load ptr, ptr %i.r, align 8, !tbaa !131
  %i.s = ptrtoint ptr %.val1.i2.i.i to i64
  %i.t = ptrtoint ptr %.val.i1.i.i to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i1.i.i, i64 noundef %i.u) #22
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115DocumentedGroupEEvPT_.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i3, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_115DocumentedGroupEEEvT_S5_.exit, label %.lr.ph, !llvm.loop !349

_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_115DocumentedGroupEEEvT_S5_.exit: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph36

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph36, !llvm.loop !350

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.do, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_SK_T1_T2_"(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, ptr noundef %i.l)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !351

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %i.p, ptr %i.n, align 8, !tbaa !27
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_SK_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.o)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_SJ_T0_.exit", !llvm.loop !352

.lr.ph36:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2235 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02334 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.do, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.02334, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge2235, i64 -8 ; 8 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.ab = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.z, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ad = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.aa, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ac) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.af, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph36
  %i.ag = extractvalue { ptr, i64 } %i.ad, 0
  %i.ah = extractvalue { ptr, i64 } %i.ab, 0
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #19
  %.fr.i.i.i.i.i.i = freeze i32 %i.ai             ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.i.i"

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph36
  %i.aj = icmp ult i64 %i.ac, %i.ae
  br i1 %i.aj, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread63.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.i.i": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.ak = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread63.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread63.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.i.i", %.thread.i.i.i.i.i.i
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.an = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.al, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %i.ap = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.am, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 2 uses
  %.sroa.speculated.i.i.i.i26.i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ao) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i.i26.i.i, 0
  br i1 %i.ar, label %.thread.i.i.i.i33.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i27.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i27.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread63.i.i"
  %i.as = extractvalue { ptr, i64 } %i.ap, 0
  %i.at = extractvalue { ptr, i64 } %i.an, 0
  %i.au = tail call i32 @memcmp(ptr noundef %i.at, ptr noundef %i.as, i64 noundef %.sroa.speculated.i.i.i.i26.i.i) #19
  %.fr.i.i.i.i28.i.i = freeze i32 %i.au           ; 2 uses
  %.not.not.i.i.i.i29.i.i = icmp eq i32 %.fr.i.i.i.i28.i.i, 0
  br i1 %.not.not.i.i.i.i29.i.i, label %.thread.i.i.i.i33.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit34.i.i"

.thread.i.i.i.i33.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i27.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread63.i.i"
  %i.av = icmp ult i64 %i.ao, %i.aq
  br i1 %i.av, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit34.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit34.i.i": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i27.i.i
  %i.aw = icmp slt i32 %.fr.i.i.i.i28.i.i, 0
  br i1 %i.aw, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_SJ_SJ_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit34.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit34.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit34.i.i", %.thread.i.i.i.i33.i.i
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.az = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.ax, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
end_hunk_0
