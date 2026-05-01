inline.NumInlined: 13240
inline.NumDeleted: 6779
begin_hunk_0_@_ZN8facebook6hermes3cdp7message13valueFromJsonISt6vectorINS2_7runtime12EntryPreviewESaIS6_EEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEPKN6hermes6parser9JSONValueE:bb.a

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit: ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24, !noalias !2178, !inline_history !2183 ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message7runtime12EntryPreviewE, i64 16), ptr @_ZN8facebook6hermes3cdp7message7deleterINS2_7runtime13ObjectPreviewEEEvPT_>, ptr %i.n, align 8, !noalias !2178
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !tbaa !15, !noalias !2178
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvPN8facebook6hermes3cdp7message7runtime13ObjectPreviewEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvPN8facebook6hermes3cdp7message7runtime13ObjectPreviewEEPS7_E9_M_invokeERKSt9_Any_dataOS6_>, ptr %i.q, align 8, !tbaa !316, !noalias !2178
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 0, ptr %i.r, align 8, !noalias !2178
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 4 uses
  store ptr @_ZN8facebook6hermes3cdp7message7deleterINS2_7runtime13ObjectPreviewEEEvPT_, ptr %i.s, align 8, !noalias !2178
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !15, !noalias !2178
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvPN8facebook6hermes3cdp7message7runtime13ObjectPreviewEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvPN8facebook6hermes3cdp7message7runtime13ObjectPreviewEEPS7_E9_M_invokeERKSt9_Any_dataOS6_>, ptr %i.u, align 8, !tbaa !316, !noalias !2178
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  store ptr null, ptr %i.v, align 8, !tbaa !394, !noalias !2178
  %i.w = tail call noundef zeroext i1 @_ZN8facebook6hermes3cdp7message6assignINS2_7runtime13ObjectPreviewEA4_cS5_EEbRSt10unique_ptrIT_St8functionIFvPT1_EEEPKN6hermes6parser10JSONObjectERKT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull %i.k, ptr noundef nonnull align 1 dereferenceable(4) @.str.47), !noalias !2184, !inline_history !2183
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_:bb.a
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 15 uses
  %.0911.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12heapProfiler23SamplingHeapProfileNodeE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message7runtime9CallFrameE, i64 16)>, ptr %.012.i.i, align 8, !tbaa !84, !alias.scope !2303, !noalias !2306
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 3 uses
end_hunk_1
