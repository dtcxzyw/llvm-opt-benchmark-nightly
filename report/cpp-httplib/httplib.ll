Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_dataOmSO_S2_":bb.a
_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i:       ; preds = %bb.d
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !403
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(472) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !3352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.az, label %select.unfold.backedge.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

select.unfold.backedge.i.i.i:                     ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i, %.lr.ph116.i.i.i
  %.155.be.i.i.i = phi i64 [ %i.ar, %.lr.ph116.i.i.i ], [ 0, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i ] ; 2 uses
  %.not66.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not66.i.i.i, label %select.unfold._crit_edge.loopexit.i.i.i, label %.lr.ph116.i.i.i, !llvm.loop !3353

select.unfold._crit_edge.loopexit.i.i.i:          ; preds = %select.unfold.backedge.i.i.i
  %.val69.pre.i.i.i = load ptr, ptr %.val, align 8, !tbaa !498
  br label %select.unfold._crit_edge.i.i.i

select.unfold._crit_edge.i.i.i:                   ; preds = %select.unfold._crit_edge.loopexit.i.i.i, %bb.c
  %.val69.i.i.i = phi ptr [ %.val69132.i.i.i, %bb.c ], [ %.val69.pre.i.i.i, %select.unfold._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i64 [ %.090120.i.i.i, %bb.c ], [ %i.au, %select.unfold._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.155.lcssa.i.i.i = phi i64 [ %.054121.i.i.i, %bb.c ], [ %.155.be.i.i.i, %select.unfold._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.ba = add nuw i64 %.150122.i.i.i, 1           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val69.i.i.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.val69.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !495
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !493 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %i.bj = icmp ult i64 %i.ba, %i.bi
  %i.bk = icmp ne i64 %.1.lcssa.i.i.i, 0
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %bb.c, label %._crit_edge126.i.i.i, !llvm.loop !3354

._crit_edge126.i.i.i:                             ; preds = %select.unfold._crit_edge.i.i.i
  %.not65.i.i.i = icmp eq i64 %.155.lcssa.i.i.i, 0
  br i1 %.not65.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge126.i.i.i
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !310
  store i64 %.155.lcssa.i.i.i, ptr %i.b, align 8, !tbaa !190
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !256
  %.not.i.i75.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i75.i.i.i, label %bb.g, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i:     ; preds = %bb.f
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !403
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(472) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !3352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.b, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i, %._crit_edge.i.i.i, %._crit_edge126.i.i.i, %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i
  %.461.i.i.i = phi i1 [ true, %._crit_edge126.i.i.i ], [ %i.bp, %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i ], [ false, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i ], [ true, %._crit_edge.i.i.i ], [ true, %bb.b ]
  ret i1 %.461.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !183
  store ptr %.val, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val2.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !316 ; 2 uses
  %i.c = load <2 x ptr>, ptr %.val6, align 8, !tbaa !183
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !183
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %i.d, align 4, !tbaa !266
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !266
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i"

bb.g:                                             ; preds = %bb.e
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.f, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.h:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !183 ; 3 uses
  %i.i = icmp eq ptr %.val7.i, null
  br i1 %i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !316 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.k, align 8, !tbaa !318
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !319
  %i.p = load ptr, ptr %.val.i.i, align 8, !tbaa !194
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !3358
  %i.s = load ptr, ptr %.val.i.i, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !3358
  br label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i"

bb.l:                                             ; preds = %bb.j
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.m ], [ %i.x, %bb.n ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.o, label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", !prof !195

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23
  br label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i"

"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 16) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", %bb.h, %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #41 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr26, i64 24 ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEET_SG_SG_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !3359

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dq, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.u, align 8
  %i.w = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.aa
  %.val.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !504
  %.val1.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !504
  %i.ac = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.aa, i64 %i.y ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i.i
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !190
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !190
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3360

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load <2 x i64>, ptr %i.s, align 8, !tbaa !190
  store <2 x i64> %i.ai, ptr %i.t, align 8, !tbaa !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !504 ; 2 uses
  %i.al = icmp slt i64 %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i.i ; 2 uses
  store i64 %.val.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !190
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !505
  %i.aq = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !3361

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.v, ptr %i.ar, align 8, !tbaa !190
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.as = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i", label %bb.c, !llvm.loop !3362

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.at, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i" ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %i.au = load <2 x i64>, ptr %i.at, align 8
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.at, align 8
  %i.av = load i64, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.av, ptr %i.at, align 8, !tbaa !504
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !190
  store i64 %i.aw, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !505
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 3 uses
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = icmp sgt i64 %i.az, 2
  br i1 %i.bc, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bd = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bg
  %.val.i.i.i.i23.i = load i64, ptr %i.bf, align 8, !tbaa !504
  %.val1.i.i.i.i24.i = load i64, ptr %i.bh, align 8, !tbaa !504
  %i.bi = icmp slt i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bi, i64 %i.bg, i64 %i.be ; 4 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i
  %i.bk = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i22.i
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !190
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !190
  %i.bm = icmp slt i64 %spec.select.i.i.i25.i, %i.bb
  br i1 %i.bm, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3360

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bn = and i64 %i.ay, 16
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bp = add nsw i64 %i.az, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !tbaa !190
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !tbaa !190
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bt, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load i64, ptr %i.bx, align 8, !tbaa !504 ; 2 uses
  %i.by = icmp slt i64 %.val.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.by, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bz = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i17.i ; 2 uses
  store i64 %.val.i.i.i.i.i19.i, ptr %i.bz, align 8, !tbaa !504
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !190
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !505
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !3361

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.au, ptr %i.cd, align 8, !tbaa !190
  %i.ce = icmp sgt i64 %i.ay, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !3363

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 5 uses
  %.02440 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.dr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02440, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !504 ; 5 uses
  %.val1.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !504 ; 5 uses
  %i.ck = icmp slt i64 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i64, ptr %i.cj, align 8, !tbaa !504 ; 6 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.cl = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !190
  %i.co = load <2 x i64>, ptr %.fr26, align 8, !tbaa !190
  store i64 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cn, ptr %i.g, align 8, !tbaa !190
  store <2 x i64> %i.co, ptr %i.ci, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cp = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  %i.cq = load i64, ptr %.fr26, align 8, !tbaa !190 ; 2 uses
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cq, ptr %i.cj, align 8, !tbaa !190
  %i.cr = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !190
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !190
  store i64 %i.ct, ptr %i.g, align 8, !tbaa !190
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i64 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cq, ptr %i.f, align 8, !tbaa !190
  %i.cu = load i64, ptr %i.g, align 8, !tbaa !190
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !190
  store i64 %i.cv, ptr %i.g, align 8, !tbaa !190
  store i64 %i.cu, ptr %i.h, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.cw = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !190
  %i.cy = load <2 x i64>, ptr %.fr26, align 8, !tbaa !190
  store i64 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cx, ptr %i.g, align 8, !tbaa !190
  store <2 x i64> %i.cy, ptr %i.f, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.da = load i64, ptr %.fr26, align 8, !tbaa !190 ; 2 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.da, ptr %i.cj, align 8, !tbaa !190
  %i.db = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.dc = load i64, ptr %i.g, align 8, !tbaa !190
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !190
  store i64 %i.dd, ptr %i.g, align 8, !tbaa !190
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i64 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.da, ptr %i.ci, align 8, !tbaa !190
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.g, align 8, !tbaa !190
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !190
  store i64 %i.dg, ptr %i.g, align 8, !tbaa !190
  store i64 %i.df, ptr %i.de, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.di, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %.fr26, align 8, !tbaa !504 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.di, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !504 ; 2 uses
  %i.dh = icmp slt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.t, label %.preheader.i.i, !llvm.loop !3364

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.val1.i9.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !504 ; 2 uses
  %i.dj = icmp slt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dj, label %.preheader.i.i, label %bb.u, !llvm.loop !3365

bb.u:                                             ; preds = %.preheader.i.i
  %i.dk = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dk, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEET_SG_SG_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i64 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 8, !tbaa !190
  store i64 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !190
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !190
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !190
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !190
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !3366

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2341, i64 noundef %i.cg)
  %i.dp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dq = sub i64 %i.dp, %i.a                     ; 2 uses
  %i.dr = ashr exact i64 %i.dq, 4                 ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 16
  br i1 %i.ds, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !3359

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !1221
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #50 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !261
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !175
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !176  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !189
  %i.m = load i64, ptr %i.g, align 8, !tbaa !177
  store i64 %i.m, ptr %i.e, align 8, !tbaa !177
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !176
  store ptr %i.g, ptr %i.d, align 8, !tbaa !189
  store i64 0, ptr %i.p, align 8, !tbaa !176
  store i8 0, ptr %i.g, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 4 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !175
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.t, align 8, !tbaa !176
  store i8 0, ptr %i.s, align 8, !tbaa !177
  store ptr %i.a, ptr %i.o, align 8, !tbaa !1224
  %i.u = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 5 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.v, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.q, align 8, !tbaa !176  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !176 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !189
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !189
  %i.ag = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ah = sub i64 %i.z, %i.ab
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !460
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !460
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.an

bb.h:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !189 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.s
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.aq = load i64, ptr %i.s, align 8, !tbaa !177
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !189 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.e
  br i1 %i.at, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.au = load i64, ptr %i.e, align 8, !tbaa !177
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #46
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #46
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.v, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %.sroa.0.011
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !189    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !189    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !176  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !195

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !177
  store i8 %i.j, ptr %i.a, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !176  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !176
  %i.m = load ptr, ptr %0, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !177
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !176
end_hunk_0
