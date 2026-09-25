Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_holders?download=true
inline.NumInlined: 1757
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8nanobind6detail11type_casterISt10shared_ptrIZL35nanobind_test_holders_ext_exec_implNS_7module_EE4BaseEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.f, align 8, !tbaa !40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  store ptr %.val7, ptr %4, align 8, !tbaa !64, !alias.scope !438
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.val8, ptr %i.g, align 8, !tbaa !40, !alias.scope !438
  %.not.i.i.i.i = icmp eq ptr %.val8, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIvZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4BaseESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val8, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !438
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !20, !noalias !438
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !20, !noalias !438
  br label %_ZSt19static_pointer_castIvZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4BaseESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !438 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !64
  %.pre11 = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !24
  br label %_ZSt19static_pointer_castIvZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4BaseESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt19static_pointer_castIvZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4BaseESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.n = phi ptr [ null, %bb.b ], [ %.val8, %bb.d ], [ %.pre11, %bb.e ]
  %i.o = phi ptr [ %.val7, %bb.b ], [ %.val7, %bb.d ], [ %.pre, %bb.e ]
  %i.p = phi <2 x ptr> [ splat (ptr null), %bb.b ], [ splat (ptr null), %bb.d ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %3, align 16, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !40
  store <2 x ptr> %i.p, ptr %2, align 16, !tbaa !24
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN8nanobind6detail15shared_from_cppEOSt10shared_ptrIvEP7_object(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.c) #28
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZSt19static_pointer_castIvZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4BaseESt10shared_ptrIT_ERKS3_IT0_E.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE8SubclassLN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE8SubclassLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE8SubclassLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE8SubclassLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_39St10shared_ptrIZL35nanobind_test_holders_ext_exec_implS2_E4BaseEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.610", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.a = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #32, !noalias !441 ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !122, !alias.scope !441
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_39clEv.exit" unwind label %bb.b, !noalias !441 ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #29, !noalias !441 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #33, !noalias !441
  invoke void @__cxa_rethrow() #34
          to label %bb.f unwind label %bb.c, !noalias !441

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e, !noalias !441

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31, !noalias !441
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_39clEv.exit": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <2 x i32> splat (i32 1), ptr %i.j, align 8, !tbaa !20, !noalias !441
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15AnotherSubclassLN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !35, !noalias !441
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.k, align 8, !tbaa !128, !noalias !441
  store ptr %i.b, ptr %i.i, align 8, !tbaa !40, !alias.scope !441
  %i.l = call fastcc ptr @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL35nanobind_test_holders_ext_exec_implNS_7module_EE4BaseEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %3) #28
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %i.l
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15AnotherSubclassLN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15AnotherSubclassLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15AnotherSubclassLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15AnotherSubclassLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11enum_createEPNS0_12nb_internalsEPKNS0_14enum_data_initE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN8nanobind6detail11enum_appendEP7_objectPKclS4_S4_(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_40P3PetJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail16enum_from_pythonEPNS0_12nb_internalsEPKSt9type_infoP7_objectPlj(ptr noundef %i.c, ptr noundef nonnull @_ZTI7PetKind, ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %2) #28
  br i1 %i.d, label %bb.b, label %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_40P3PetJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSA_jPNS0_12cleanup_listEE_clESO_SP_jSR_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !107
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %_ZN8nanobind6detail9type_hookI3PetiE3getEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.66) #30
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #29
  resume { ptr, i32 } %i.h

_ZN8nanobind6detail9type_hookI3PetiE3getEPS2_.exit: ; preds = %bb.b
  %i.i = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #32 ; 2 uses
  store i32 %i.f, ptr %i.i, align 4, !tbaa !131
  %switch.selectcmp.i = icmp eq i32 %i.f, 0
  %switch.select5.i = select i1 %switch.selectcmp.i, ptr @_ZTI3Cat, ptr @_ZTI3Dog
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.k = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.j, ptr noundef nonnull %switch.select5.i, ptr noundef null, ptr noundef nonnull %i.i, i8 2, ptr noundef %3, ptr noundef null) #28
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_40P3PetJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSA_jPNS0_12cleanup_listEE_clESO_SP_jSR_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_40P3PetJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSA_jPNS0_12cleanup_listEE_clESO_SP_jSR_.exit": ; preds = %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %_ZN8nanobind6detail9type_hookI3PetiE3getEPS2_.exit
  %.0.i = phi ptr [ %i.k, %_ZN8nanobind6detail9type_hookI3PetiE3getEPS2_.exit ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit ]
  ret ptr %.0.i
}

; Function Attrs: nounwind optsize
declare noundef zeroext i1 @_ZN8nanobind6detail16enum_from_pythonEPNS0_12nb_internalsEPKSt9type_infoP7_objectPlj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_41St10unique_ptrI3PetSt14default_deleteIS5_EEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSD_jPNS0_12cleanup_listEE_8__invokeESR_SS_jSU_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.629", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail16enum_from_pythonEPNS0_12nb_internalsEPKSt9type_infoP7_objectPlj(ptr noundef %i.c, ptr noundef nonnull @_ZTI7PetKind, ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %2) #28
  br i1 %i.d, label %bb.b, label %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i

_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_41St10unique_ptrI3PetSt14default_deleteIS5_EEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !107
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_41clE7PetKind.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #29, !noalias !444 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.66) #30
          to label %bb.d unwind label %bb.e, !noalias !444

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34, !noalias !444
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #29, !noalias !444
  resume { ptr, i32 } %i.h

"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_41clE7PetKind.exit": ; preds = %bb.b
  %i.i = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #32, !noalias !444 ; 2 uses
  store i32 %i.f, ptr %i.i, align 4, !tbaa !131, !noalias !444
  store ptr %i.i, ptr %4, align 8, !tbaa !446, !alias.scope !444
  %i.j = call ptr @_ZN8nanobind6detail11type_casterISt10unique_ptrI3PetSt14default_deleteIS3_EEiE8from_cppIS6_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 0, ptr noundef %3) #28
  %i.k = load ptr, ptr %4, align 8, !tbaa !133    ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI3PetSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI3PetEclEPS0_.exit.i

_ZNKSt14default_deleteI3PetEclEPS0_.exit.i:       ; preds = %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_41clE7PetKind.exit"
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 4) #33
  br label %_ZNSt10unique_ptrI3PetSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI3PetSt14default_deleteIS0_EED2Ev.exit: ; preds = %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_41clE7PetKind.exit", %_ZNKSt14default_deleteI3PetEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_41St10unique_ptrI3PetSt14default_deleteIS5_EEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_41St10unique_ptrI3PetSt14default_deleteIS5_EEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit": ; preds = %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i, %_ZNSt10unique_ptrI3PetSt14default_deleteIS0_EED2Ev.exit
  %.0.i = phi ptr [ %i.j, %_ZNSt10unique_ptrI3PetSt14default_deleteIS0_EED2Ev.exit ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11type_casterISt10unique_ptrI3PetSt14default_deleteIS3_EEiE8from_cppIS6_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nanobind::none", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr null, ptr %3, align 8, !tbaa !22
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !131  ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.c, 0
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @_ZTI3Cat, ptr @_ZTI3Pet
  %switch.selectcmp4.i = icmp eq i32 %i.c, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr @_ZTI3Dog, ptr %switch.select.i
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.e = tail call noundef ptr @_ZN8nanobind6detail18nb_type_put_uniqueEPNS0_12nb_internalsEPKSt9type_infoS5_PvPNS0_12cleanup_listEb(ptr noundef %i.d, ptr noundef nonnull %switch.select5.i, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %2, i1 noundef zeroext true) #28 ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !133
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ @_Py_NoneStruct, %bb.b ], [ %i.e, %bb.d ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_42St10shared_ptrI3PetEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.666", align 16 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.669", align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::shared_ptr.663", align 8 ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail16enum_from_pythonEPNS0_12nb_internalsEPKSt9type_infoP7_objectPlj(ptr noundef %i.c, ptr noundef nonnull @_ZTI7PetKind, ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %2) #28
  br i1 %i.d, label %bb.b, label %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i

_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_42St10shared_ptrI3PetEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !107
  %i.f = trunc i64 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !453
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32, !noalias !454 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x i32> splat (i32 1), ptr %i.i, align 8, !tbaa !20, !noalias !454
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceI3DogSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !35, !noalias !454
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i32 1, ptr %i.j, align 8, !tbaa !131, !noalias !454
  store ptr %i.j, ptr %6, align 8, !tbaa !135, !alias.scope !453
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !40, !alias.scope !453
  store <2 x ptr> splat (ptr null), ptr %4, align 16, !tbaa !24, !noalias !453
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #28, !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !453
  br label %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_42clE7PetKind.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !453
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32, !noalias !455 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store <2 x i32> splat (i32 1), ptr %i.n, align 8, !tbaa !20, !noalias !455
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceI3CatSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.m, align 8, !tbaa !35, !noalias !455
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !131, !noalias !455
  store ptr %i.o, ptr %6, align 8, !tbaa !135, !alias.scope !453
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !40, !alias.scope !453
  store <2 x ptr> splat (ptr null), ptr %5, align 16, !tbaa !24, !noalias !453
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #28, !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !453
  br label %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_42clE7PetKind.exit"

bb.e:                                             ; preds = %bb.b
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #29, !noalias !453 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.66) #30
          to label %bb.f unwind label %bb.g, !noalias !453

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34, !noalias !453
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #29, !noalias !453
  resume { ptr, i32 } %i.r

"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_42clE7PetKind.exit": ; preds = %bb.c, %bb.d
  %i.s = call ptr @_ZN8nanobind6detail11type_casterISt10shared_ptrI3PetEiE8from_cppERKS4_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, ptr noundef %3) #28
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_42St10shared_ptrI3PetEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_42St10shared_ptrI3PetEJ7PetKindEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i, %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_42clE7PetKind.exit"
  %.0.i = phi ptr [ %i.s, %"_ZZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EENK4$_42clE7PetKind.exit" ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterI7PetKindiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.i ]
end_hunk_0
